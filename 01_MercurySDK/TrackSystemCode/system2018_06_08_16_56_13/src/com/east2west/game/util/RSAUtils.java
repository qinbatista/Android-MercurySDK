package com.east2west.game.util;




import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.BigInteger;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.RSAPublicKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.List;

import javax.crypto.Cipher;

/**
 * @author Gaoke
 * @date 2014��8��22�� ����1:44:23
 */
public final class RSAUtils
{
	private static String RSA = "RSA";

	/**
	 * �������RSA��Կ��(Ĭ����Կ����Ϊ1024)
	 * 
	 * @return
	 */
	public static KeyPair generateRSAKeyPair()
	{
		return generateRSAKeyPair(1024);
	}

	/**
	 * �������RSA��Կ��
	 * 
	 * @param keyLength
	 *            ��Կ���ȣ���Χ��512��2048<br>
	 *            һ��1024
	 * @return
	 */
	public static KeyPair generateRSAKeyPair(int keyLength)
	{
		try
		{
			KeyPairGenerator kpg = KeyPairGenerator.getInstance(RSA);
			kpg.initialize(keyLength);
			return kpg.genKeyPair();
		} catch (NoSuchAlgorithmException e)
		{
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * �ù�Կ���� <br>
	 * ÿ�μ��ܵ��ֽ��������ܳ�����Կ�ĳ���ֵ��ȥ11
	 * 
	 * @param data
	 *            ��������ݵ�byte����
	 * @param pubKey
	 *            ��Կ
	 * @return ���ܺ��byte������
	 */
	public static byte[] encryptData(byte[] data, PublicKey publicKey)
	{
		try
		{ 
			 // 加密数据
	        //Cipher cp = Cipher.getInstance("RSA/ECB/PKCS1Padding");
	       // cp.init(Cipher.ENCRYPT_MODE, publicKey); 
	       // return cp.doFinal(data);  
			 // 对数据加密
		    Cipher cipher = Cipher.getInstance("RSA/None/PKCS1Padding");
		    cipher.init(Cipher.ENCRYPT_MODE, publicKey);
			int inputLen = data.length;
			ByteArrayOutputStream out = new ByteArrayOutputStream();
			int offSet = 0;
			byte[] cache;
			int i = 0;
			// 对数据分段加密
			while (inputLen - offSet > 0) {
			    if (inputLen - offSet > 117) {
			        cache = cipher.doFinal(data, offSet, 117);
			    } else {
			        cache = cipher.doFinal(data, offSet, inputLen - offSet);
			    }
			    out.write(cache, 0, cache.length);
			    	i++;
			    	offSet = i * 117;
			}
			byte[] encryptedData = out.toByteArray();
			out.close();
			return encryptedData;
		} catch (Exception e)
		{
			e.printStackTrace();
			return null;
		}
	}


	/**
	 * ��˽Կ����
	 * 
	 * @param encryptedData
	 *            ����encryptedData()���ܷ��ص�byte����
	 * @param privateKey
	 *            ˽Կ
	 * @return
	 */
	public static byte[] decryptData(byte[] encryptedData, PrivateKey privateKey)
	{
		try
		{
			Cipher cipher = Cipher.getInstance(RSA);
			cipher.init(Cipher.DECRYPT_MODE, privateKey);
			return cipher.doFinal(encryptedData);
		} catch (Exception e)
		{
			return null;
		}
	}

	/**
	 * ͨ����Կbyte[](publicKey.getEncoded())����Կ��ԭ��������RSA�㷨
	 * 
	 * @param keyBytes
	 * @return
	 * @throws NoSuchAlgorithmException
	 * @throws InvalidKeySpecException
	 */
	public static PublicKey getPublicKey(byte[] keyBytes) throws NoSuchAlgorithmException,
			InvalidKeySpecException
	{
		X509EncodedKeySpec keySpec = new X509EncodedKeySpec(keyBytes);
		KeyFactory keyFactory = KeyFactory.getInstance(RSA);
		PublicKey publicKey = keyFactory.generatePublic(keySpec);
		return publicKey;
	}

	/**
	 * ͨ��˽Կbyte[]����Կ��ԭ��������RSA�㷨
	 * 
	 * @param keyBytes
	 * @return
	 * @throws NoSuchAlgorithmException
	 * @throws InvalidKeySpecException
	 */
	public static PrivateKey getPrivateKey(byte[] keyBytes) throws NoSuchAlgorithmException,
			InvalidKeySpecException
	{
		PKCS8EncodedKeySpec keySpec = new PKCS8EncodedKeySpec(keyBytes);
		KeyFactory keyFactory = KeyFactory.getInstance(RSA);
		PrivateKey privateKey = keyFactory.generatePrivate(keySpec);
		return privateKey;
	}

	/**
	 * ʹ��N��eֵ��ԭ��Կ
	 * 
	 * @param modulus
	 * @param publicExponent
	 * @return
	 * @throws NoSuchAlgorithmException
	 * @throws InvalidKeySpecException
	 */
	public static PublicKey getPublicKey(String modulus, String publicExponent)
			throws NoSuchAlgorithmException, InvalidKeySpecException
	{
		BigInteger bigIntModulus = new BigInteger(modulus);
		BigInteger bigIntPrivateExponent = new BigInteger(publicExponent);
		RSAPublicKeySpec keySpec = new RSAPublicKeySpec(bigIntModulus, bigIntPrivateExponent);
		KeyFactory keyFactory = KeyFactory.getInstance(RSA);
		PublicKey publicKey = keyFactory.generatePublic(keySpec);
		return publicKey;
	}

	/**
	 * ʹ��N��dֵ��ԭ˽Կ
	 * 
	 * @param modulus
	 * @param privateExponent
	 * @return
	 * @throws NoSuchAlgorithmException
	 * @throws InvalidKeySpecException
	 */
	public static PrivateKey getPrivateKey(String modulus, String privateExponent)
			throws NoSuchAlgorithmException, InvalidKeySpecException
	{
		BigInteger bigIntModulus = new BigInteger(modulus);
		BigInteger bigIntPrivateExponent = new BigInteger(privateExponent);
		RSAPublicKeySpec keySpec = new RSAPublicKeySpec(bigIntModulus, bigIntPrivateExponent);
		KeyFactory keyFactory = KeyFactory.getInstance(RSA);
		PrivateKey privateKey = keyFactory.generatePrivate(keySpec);
		return privateKey;
	}

	/**
	 * ���ַ����м��ع�Կ
	 * 
	 * @param publicKeyStr
	 *            ��Կ�����ַ���
	 * @throws Exception
	 *             ���ع�Կʱ�������쳣
	 */
	public static PublicKey loadPublicKey(String publicKeyStr) throws Exception
	{
		try
		{
			//encodeToString
			byte[] buffer = Base64Utils.decode(publicKeyStr);
			KeyFactory keyFactory = KeyFactory.getInstance(RSA);
			X509EncodedKeySpec keySpec = new X509EncodedKeySpec(buffer);
			return (RSAPublicKey) keyFactory.generatePublic(keySpec);
		} catch (NoSuchAlgorithmException e)
		{
			throw new Exception("�޴��㷨");
		} catch (InvalidKeySpecException e)
		{
			throw new Exception("��Կ�Ƿ�");
		} catch (NullPointerException e)
		{
			throw new Exception("��Կ����Ϊ��");
		}
	}

	/**
	 * ���ַ����м���˽Կ<br>
	 * ����ʱʹ�õ���PKCS8EncodedKeySpec��PKCS#8�����Keyָ���
	 * 
	 * @param privateKeyStr
	 * @return
	 * @throws Exception
	 */
	public static PrivateKey loadPrivateKey(String privateKeyStr) throws Exception
	{
		try
		{
			byte[] buffer = Base64Utils.decode(privateKeyStr);
			// X509EncodedKeySpec keySpec = new X509EncodedKeySpec(buffer);
			PKCS8EncodedKeySpec keySpec = new PKCS8EncodedKeySpec(buffer);
			KeyFactory keyFactory = KeyFactory.getInstance(RSA);
			return (RSAPrivateKey) keyFactory.generatePrivate(keySpec);
		} catch (NoSuchAlgorithmException e)
		{
			throw new Exception("�޴��㷨");
		} catch (InvalidKeySpecException e)
		{
			throw new Exception("˽Կ�Ƿ�");
		} catch (NullPointerException e)
		{
			throw new Exception("˽Կ����Ϊ��");
		}
	}

	/**
	 * ���ļ����������м��ع�Կ
	 * 
	 * @param in
	 *            ��Կ������
	 * @throws Exception
	 *             ���ع�Կʱ�������쳣
	 */
	public static PublicKey loadPublicKey(InputStream in) throws Exception
	{
		try
		{
			return loadPublicKey(readKey(in));
		} catch (IOException e)
		{
			throw new Exception("��Կ��������ȡ����");
		} catch (NullPointerException e)
		{
			throw new Exception("��Կ������Ϊ��");
		}
	}

	/**
	 * ���ļ��м���˽Կ
	 * 
	 * @param keyFileName
	 *            ˽Կ�ļ���
	 * @return �Ƿ�ɹ�
	 * @throws Exception
	 */
	public static PrivateKey loadPrivateKey(InputStream in) throws Exception
	{
		try
		{
			return loadPrivateKey(readKey(in));
		} catch (IOException e)
		{
			throw new Exception("˽Կ���ݶ�ȡ����");
		} catch (NullPointerException e)
		{
			throw new Exception("˽Կ������Ϊ��");
		}
	}

	/**
	 * ��ȡ��Կ��Ϣ
	 * 
	 * @param in
	 * @return
	 * @throws IOException
	 */
	private static String readKey(InputStream in) throws IOException
	{
		BufferedReader br = new BufferedReader(new InputStreamReader(in));
		String readLine = null;
		StringBuilder sb = new StringBuilder();
		while ((readLine = br.readLine()) != null)
		{
			if (readLine.charAt(0) == '-')
			{
				continue;
			} else
			{
				sb.append(readLine);
				sb.append('\r');
			}
		}

		return sb.toString();
	}

	/**
	 * ��ӡ��Կ��Ϣ
	 * 
	 * @param publicKey
	 */
	public static void printPublicKeyInfo(PublicKey publicKey)
	{
		RSAPublicKey rsaPublicKey = (RSAPublicKey) publicKey;
		System.out.println("----------RSAPublicKey----------");
		System.out.println("Modulus.length=" + rsaPublicKey.getModulus().bitLength());
		System.out.println("Modulus=" + rsaPublicKey.getModulus().toString());
		System.out.println("PublicExponent.length=" + rsaPublicKey.getPublicExponent().bitLength());
		System.out.println("PublicExponent=" + rsaPublicKey.getPublicExponent().toString());
	}

	public static void printPrivateKeyInfo(PrivateKey privateKey)
	{
		RSAPrivateKey rsaPrivateKey = (RSAPrivateKey) privateKey;
		System.out.println("----------RSAPrivateKey ----------");
		System.out.println("Modulus.length=" + rsaPrivateKey.getModulus().bitLength());
		System.out.println("Modulus=" + rsaPrivateKey.getModulus().toString());
		System.out.println("PrivateExponent.length=" + rsaPrivateKey.getPrivateExponent().bitLength());
		System.out.println("PrivatecExponent=" + rsaPrivateKey.getPrivateExponent().toString());

	}

}
