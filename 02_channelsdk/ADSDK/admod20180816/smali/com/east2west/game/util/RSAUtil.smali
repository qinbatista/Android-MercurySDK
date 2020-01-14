.class public Lcom/east2west/game/util/RSAUtil;
.super Ljava/lang/Object;
.source "RSAUtil.java"


# static fields
.field public static final KEY_ALGORITHM:Ljava/lang/String; = "RSA"

.field public static final PRIVATE_KEY:Ljava/lang/String; = "RSAPrivateKey"

.field public static final PUBLIC_KEY:Ljava/lang/String; = "RSAPublicKey"

.field public static final SIGNATURE_ALGORITHM:Ljava/lang/String; = "SHA1WithRSA"

.field public static final SIGNATURE_ALGORITHM_SHA256:Ljava/lang/String; = "SHA256WithRSA"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doCheck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 58
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string v0, "RSA"

    .line 62
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 63
    invoke-static {p2}, Lcom/east2west/game/util/Base64Util;->decode(Ljava/lang/String;)[B

    move-result-object p2

    .line 64
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, p2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p2

    const-string v0, "SHA1WithRSA"

    .line 66
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 68
    invoke-virtual {v0, p2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    const-string p2, "utf-8"

    .line 69
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/Signature;->update([B)V

    .line 71
    invoke-static {p1}, Lcom/east2west/game/util/Base64Util;->decode(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/Signature;->verify([B)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v1
.end method

.method public static sha256WithRsa([BLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    invoke-static {p1}, Lcom/east2west/game/util/Base64Util;->decode(Ljava/lang/String;)[B

    move-result-object p1

    .line 37
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    const-string p1, "RSA"

    .line 38
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 39
    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    const-string v0, "SHA256WithRSA"

    .line 40
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 41
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 42
    invoke-virtual {v0, p0}, Ljava/security/Signature;->update([B)V

    .line 43
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object p0

    invoke-static {p0}, Lcom/east2west/game/util/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "utf-8"

    .line 83
    :try_start_0
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-static {p1}, Lcom/east2west/game/util/Base64Util;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    const-string p1, "RSA"

    .line 84
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 85
    invoke-virtual {p1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    const-string v2, "SHA1WithRSA"

    .line 87
    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    .line 89
    invoke-virtual {v2, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 90
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/security/Signature;->update([B)V

    .line 92
    invoke-virtual {v2}, Ljava/security/Signature;->sign()[B

    move-result-object p0

    .line 94
    invoke-static {p0}, Lcom/east2west/game/util/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static toBase64String(Ljava/security/Key;)Ljava/lang/String;
    .locals 0

    .line 32
    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lcom/east2west/game/util/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static verify([BLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    invoke-static {p1}, Lcom/east2west/game/util/Base64Util;->decode(Ljava/lang/String;)[B

    move-result-object p1

    .line 48
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string p1, "RSA"

    .line 49
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 50
    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    const-string v0, "SHA256WithRSA"

    .line 51
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 52
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 53
    invoke-virtual {v0, p0}, Ljava/security/Signature;->update([B)V

    .line 54
    invoke-static {p2}, Lcom/east2west/game/util/Base64Util;->decode(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/Signature;->verify([B)Z

    move-result p0

    return p0
.end method
