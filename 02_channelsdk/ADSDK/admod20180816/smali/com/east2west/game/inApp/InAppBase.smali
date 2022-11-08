.class public Lcom/east2west/game/inApp/InAppBase;
.super Ljava/lang/Object;
.source "InAppBase.java"


# static fields
.field public static OrderID:Ljava/lang/String; = ""

.field public static appinterface:Lcom/east2west/game/inApp/APPBaseInterface; = null

.field public static forbassonly:Landroid/content/Context; = null

.field public static key:Ljava/lang/String; = "MIICeAIBADANBgkqhkiG9w0BAQEFAASCAmIwggJeAgEAAoGBALnMsImln+S8fxJtf7NDqQhh8EA318buO6ScnyzNbaBkVmu4oL97ggRrgmI7z1YKYkPNs6ymufqjHDAAqqyMm+KgNYodKsr+LtWOxwHVYEI7rdZL6ioNoOyv396pGQjoyXDB6FfP+dGXGN/WMSyJrcXn2tdY025S+dBbQaMTnqhvAgMBAAECgYEAiaTJN//aF1NJdDZofz5lsA8WNAzqrrX4u3dIOKGrUEJk/4KUm6Z86JdYzTtv21bv+zkdnY8agkJp9GnaBuBX7mVEg3tHqzZrOCq5nVX9OHJoMytGwLxlHvejBZPVS1PmkfFnEYRAkBcti5nmsY+fCV5/lxVScrYGdzfrf1vio1ECQQDpxHmicfwYCTb0ZcUIKU0CQvfD9Te/94TIxr82EKcq/pPfoU3vQY+Ks7LI41Zc2kRYhT1dXezzKf/r2FjAMid3AkEAy3hXmEUZYdg+SPVURzrQt6PGjvLv/5Uxe75t8Ovx2JxHRgCD5j7IArzDg7ACMNn50xMHfQUD4QVdEG2vtvK0yQJBAJp/wiw8zXJNVMa+JDS6pyzhecNHZGs5eccApAtlgjaGPtFEWK/SUr5G+diPd9qyXw1qMh5tH1eu4HfNawrLmw0CQBRZ3hEJ4EcMFPbBKwPQ2y1zARotLFoY9xEUc/Sj9NWgk/Rpesfdwa2cacXTJfTy6Gz3O0mC5eds3OkWv3uB/RkCQQCEkR2M+vdStNq08KV7g+bOZKXElvnYjpUHMdVkO+oeXHPhLf9ltlpBOynA7WA60Jdg0OJa14ngZcu2loawd+q2"

.field public static qc:Lcom/east2west/game/QinConst; = null

.field public static sTestMode:Z = false


# instance fields
.field protected mAppContext:Landroid/content/Context;

.field protected mContext:Landroid/app/Activity;

.field protected mInstance:Lcom/east2west/game/inApp/InAppBase;

.field protected mProductDescription:Ljava/lang/String;

.field protected mProductId:Ljava/lang/String;

.field protected mProductPrice:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HttpUrlpost(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[InAppBase]-HttpUrlpost url:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[InAppBase]-HttpUrlpost params:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 187
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string p0, ""

    .line 192
    :try_start_0
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v1, p1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    .line 193
    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 194
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 196
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.connection.timeout"

    const/16 v4, 0x1388

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 198
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.socket.timeout"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 200
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v3, "UTF-8"

    invoke-direct {v2, p1, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 201
    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    .line 203
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 205
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 212
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 209
    invoke-virtual {p1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object p0
.end method

.method public static sendPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const-string v1, "IAP"

    .line 288
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 290
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    const-string v2, "accept"

    const-string v3, "*/*"

    .line 294
    invoke-virtual {p0, v2, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "connection"

    const-string v3, "Keep-Alive"

    .line 295
    invoke-virtual {p0, v2, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "user-agent"

    const-string v3, "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)"

    .line 296
    invoke-virtual {p0, v2, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 298
    invoke-virtual {p0, v2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 299
    invoke-virtual {p0, v2}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 301
    new-instance v2, Ljava/io/PrintWriter;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 303
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 307
    new-instance p1, Ljava/io/BufferedReader;

    .line 308
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 307
    invoke-direct {p1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 310
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p0, :cond_1

    if-eqz v2, :cond_0

    .line 321
    :try_start_3
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    if-eqz p1, :cond_3

    .line 324
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    .line 327
    :goto_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 311
    :cond_1
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object p1, v1

    :goto_3
    move-object v1, v2

    goto :goto_7

    :catch_2
    move-exception p0

    move-object p1, v1

    :goto_4
    move-object v1, v2

    goto :goto_5

    :catchall_2
    move-exception p0

    move-object p1, v1

    goto :goto_7

    :catch_3
    move-exception p0

    move-object p1, v1

    :goto_5
    :try_start_5
    const-string v2, "IAP"

    .line 314
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u53d1\u9001 POST \u8bf7\u6c42\u51fa\u73b0\u5f02\u5e38\uff01"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v1, :cond_2

    .line 321
    :try_start_6
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_2
    if-eqz p1, :cond_3

    .line 324
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_3
    :goto_6
    return-object v0

    :catchall_3
    move-exception p0

    :goto_7
    if-eqz v1, :cond_4

    .line 321
    :try_start_7
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    goto :goto_8

    :catch_4
    move-exception p1

    goto :goto_9

    :cond_4
    :goto_8
    if-eqz p1, :cond_5

    .line 324
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_a

    .line 327
    :goto_9
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 329
    :cond_5
    :goto_a
    throw p0
.end method

.method public static signal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "utf-8"

    .line 156
    :try_start_0
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 157
    invoke-static {p1}, Lcom/east2west/game/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p1

    .line 156
    invoke-direct {v1, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    const-string p1, "RSA"

    .line 158
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 159
    invoke-virtual {p1, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    const-string v1, "SHA1WithRSA"

    .line 162
    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 164
    invoke-virtual {v1, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 165
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/Signature;->update([B)V

    .line 167
    invoke-virtual {v1}, Ljava/security/Signature;->sign()[B

    move-result-object p0

    .line 169
    invoke-static {p0}, Lcom/east2west/game/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 171
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "test"

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sign err:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public ApplicationInit(Landroid/app/Application;)V
    .locals 2

    .line 91
    iput-object p1, p0, Lcom/east2west/game/inApp/InAppBase;->mAppContext:Landroid/content/Context;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[InAppBase]->init:InAppBase.ApplicationInit="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    return-void
.end method

.method public ExitGame()V
    .locals 1

    .line 126
    sget-object v0, Lcom/east2west/game/inApp/InAppBase;->qc:Lcom/east2west/game/QinConst;

    invoke-virtual {v0}, Lcom/east2west/game/QinConst;->ExitGame()V

    return-void
.end method

.method public FunctionL(Ljava/lang/String;)V
    .locals 1

    .line 122
    sget-object v0, Lcom/east2west/game/inApp/InAppBase;->qc:Lcom/east2west/game/QinConst;

    invoke-virtual {v0, p1}, Lcom/east2west/game/QinConst;->FunctionL(Ljava/lang/String;)V

    return-void
.end method

.method public QinUnityMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[E2WApp]->QinUnityMessage UnityPlayer.UnitySendMessage("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 270
    sget-object v0, Lcom/east2west/game/inApp/InAppBase;->qc:Lcom/east2west/game/QinConst;

    invoke-virtual {v0, p1, p2, p3}, Lcom/east2west/game/QinConst;->QinUnityMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public SharePicture(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public ShareResult(I)V
    .locals 1

    .line 279
    sget-object v0, Lcom/east2west/game/inApp/InAppBase;->qc:Lcom/east2west/game/QinConst;

    invoke-virtual {v0, p1}, Lcom/east2west/game/QinConst;->ShareResult(I)V

    return-void
.end method

.method public ShowTencentAd()V
    .locals 0

    return-void
.end method

.method protected ShowToast(Ljava/lang/String;)V
    .locals 2

    .line 274
    sget-object v0, Lcom/east2west/game/inApp/InAppBase;->forbassonly:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public TencentLoginOutOnly()V
    .locals 0

    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public init(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/east2west/game/inApp/APPBaseInterface;)V
    .locals 0

    .line 68
    iput-object p2, p0, Lcom/east2west/game/inApp/InAppBase;->mContext:Landroid/app/Activity;

    .line 69
    iput-object p1, p0, Lcom/east2west/game/inApp/InAppBase;->mAppContext:Landroid/content/Context;

    .line 70
    iput-object p0, p0, Lcom/east2west/game/inApp/InAppBase;->mInstance:Lcom/east2west/game/inApp/InAppBase;

    .line 72
    sput-object p5, Lcom/east2west/game/inApp/InAppBase;->appinterface:Lcom/east2west/game/inApp/APPBaseInterface;

    .line 73
    sput-object p2, Lcom/east2west/game/inApp/InAppBase;->forbassonly:Landroid/content/Context;

    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[InAppBase]->init:InAppBase.appinterface="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    return-void
.end method

.method public isPurchase()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public letUserLogin()V
    .locals 0

    return-void
.end method

.method public letUserLogout()V
    .locals 0

    return-void
.end method

.method public login(I)V
    .locals 0

    return-void
.end method

.method public logout()V
    .locals 0

    return-void
.end method

.method public onActivityResult()V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onFunctionCallBack(Ljava/lang/String;)V
    .locals 1

    .line 149
    sget-object v0, Lcom/east2west/game/inApp/InAppBase;->qc:Lcom/east2west/game/QinConst;

    invoke-virtual {v0, p1, p0}, Lcom/east2west/game/QinConst;->onFunctionCallBack(Ljava/lang/String;Lcom/east2west/game/inApp/InAppBase;)V

    return-void
.end method

.method public onLoadFailedCallBack(Ljava/lang/String;)V
    .locals 1

    .line 490
    sget-object v0, Lcom/east2west/game/inApp/InAppBase;->qc:Lcom/east2west/game/QinConst;

    invoke-virtual {v0, p1, p0}, Lcom/east2west/game/QinConst;->onLoadFailedCallBack(Ljava/lang/String;Lcom/east2west/game/inApp/InAppBase;)V

    return-void
.end method

.method public onLoadLib()V
    .locals 0

    return-void
.end method

.method public onLoadSuccessfulCallBack(Ljava/lang/String;)V
    .locals 1

    .line 485
    sget-object v0, Lcom/east2west/game/inApp/InAppBase;->qc:Lcom/east2west/game/QinConst;

    invoke-virtual {v0, p1, p0}, Lcom/east2west/game/QinConst;->onLoadSuccessfulCallBack(Ljava/lang/String;Lcom/east2west/game/inApp/InAppBase;)V

    return-void
.end method

.method public onLoginCancel(Ljava/lang/String;)V
    .locals 1

    .line 143
    sget-object v0, Lcom/east2west/game/inApp/InAppBase;->qc:Lcom/east2west/game/QinConst;

    invoke-virtual {v0, p1, p0}, Lcom/east2west/game/QinConst;->onLoginCancel(Ljava/lang/String;Lcom/east2west/game/inApp/InAppBase;)V

    return-void
.end method

.method public onLoginFailed(Ljava/lang/String;)V
    .locals 1

    .line 146
    sget-object v0, Lcom/east2west/game/inApp/InAppBase;->qc:Lcom/east2west/game/QinConst;

    invoke-virtual {v0, p1, p0}, Lcom/east2west/game/QinConst;->onLoginFailed(Ljava/lang/String;Lcom/east2west/game/inApp/InAppBase;)V

    return-void
.end method

.method public onLoginSuccess(Ljava/lang/String;)V
    .locals 1

    .line 140
    sget-object v0, Lcom/east2west/game/inApp/InAppBase;->qc:Lcom/east2west/game/QinConst;

    invoke-virtual {v0, p1, p0}, Lcom/east2west/game/QinConst;->onLoginSuccess(Ljava/lang/String;Lcom/east2west/game/inApp/InAppBase;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onOnVideoCompleted(Ljava/lang/String;)V
    .locals 1

    .line 478
    sget-object v0, Lcom/east2west/game/inApp/InAppBase;->qc:Lcom/east2west/game/QinConst;

    invoke-virtual {v0, p1, p0}, Lcom/east2west/game/QinConst;->onOnVideoCompletedCallBack(Ljava/lang/String;Lcom/east2west/game/inApp/InAppBase;)V

    return-void
.end method

.method public onOnVideoFailed(Ljava/lang/String;)V
    .locals 1

    .line 481
    sget-object v0, Lcom/east2west/game/inApp/InAppBase;->qc:Lcom/east2west/game/QinConst;

    invoke-virtual {v0, p1, p0}, Lcom/east2west/game/QinConst;->onOnVideoFailedCallBack(Ljava/lang/String;Lcom/east2west/game/inApp/InAppBase;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onPurchaseCanceled(Ljava/lang/String;)V
    .locals 2

    .line 137
    sget-object v0, Lcom/east2west/game/inApp/InAppBase;->qc:Lcom/east2west/game/QinConst;

    iget-object v1, p0, Lcom/east2west/game/inApp/InAppBase;->mProductId:Ljava/lang/String;

    invoke-virtual {v0, p1, p0, v1}, Lcom/east2west/game/QinConst;->onPurchaseFailed(Ljava/lang/String;Lcom/east2west/game/inApp/InAppBase;Ljava/lang/String;)V

    return-void
.end method

.method public onPurchaseFailed(Ljava/lang/String;)V
    .locals 2

    .line 134
    sget-object v0, Lcom/east2west/game/inApp/InAppBase;->qc:Lcom/east2west/game/QinConst;

    iget-object v1, p0, Lcom/east2west/game/inApp/InAppBase;->mProductId:Ljava/lang/String;

    invoke-virtual {v0, p1, p0, v1}, Lcom/east2west/game/QinConst;->onPurchaseFailed(Ljava/lang/String;Lcom/east2west/game/inApp/InAppBase;Ljava/lang/String;)V

    return-void
.end method

.method public onPurchaseSuccess(Ljava/lang/String;)V
    .locals 2

    .line 130
    sget-object v0, Lcom/east2west/game/inApp/InAppBase;->qc:Lcom/east2west/game/QinConst;

    iget-object v1, p0, Lcom/east2west/game/inApp/InAppBase;->mProductId:Ljava/lang/String;

    invoke-virtual {v0, p1, p0, v1}, Lcom/east2west/game/QinConst;->onPurchaseSuccess(Ljava/lang/String;Lcom/east2west/game/inApp/InAppBase;Ljava/lang/String;)V

    return-void
.end method

.method public onRestart()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onSaveFailedCallBack(Ljava/lang/String;)V
    .locals 1

    .line 500
    sget-object v0, Lcom/east2west/game/inApp/InAppBase;->qc:Lcom/east2west/game/QinConst;

    invoke-virtual {v0, p1, p0}, Lcom/east2west/game/QinConst;->onSaveFailedCallBack(Ljava/lang/String;Lcom/east2west/game/inApp/InAppBase;)V

    return-void
.end method

.method public onSaveSuccessfulCallBack(Ljava/lang/String;)V
    .locals 1

    .line 496
    sget-object v0, Lcom/east2west/game/inApp/InAppBase;->qc:Lcom/east2west/game/QinConst;

    invoke-virtual {v0, p1, p0}, Lcom/east2west/game/QinConst;->onSaveSuccessfulCallBack(Ljava/lang/String;Lcom/east2west/game/inApp/InAppBase;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public purchase(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/east2west/game/inApp/InAppBase;->mProductId:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lcom/east2west/game/inApp/InAppBase;->mProductDescription:Ljava/lang/String;

    .line 85
    iput p3, p0, Lcom/east2west/game/inApp/InAppBase;->mProductPrice:F

    return-void
.end method

.method public purchaseSuper(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0

    return-void
.end method

.method public readFileData(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 254
    :try_start_0
    sget-object v1, Lcom/east2west/game/E2WApp;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p1

    .line 255
    invoke-virtual {p1}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 256
    new-array v1, v1, [B

    .line 257
    invoke-virtual {p1, v1}, Ljava/io/FileInputStream;->read([B)I

    const-string v2, "UTF-8"

    .line 258
    invoke-static {v1, v2}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 259
    :try_start_1
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v1, v0

    .line 264
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object v1
.end method

.method public setExtraParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showDiffLogin()V
    .locals 0

    return-void
.end method

.method public showMessageDialog()V
    .locals 0

    return-void
.end method

.method public show_banner()V
    .locals 0

    return-void
.end method

.method public show_cp()V
    .locals 0

    return-void
.end method

.method public show_insert()V
    .locals 0

    return-void
.end method

.method public show_out()V
    .locals 0

    return-void
.end method

.method public show_push()V
    .locals 0

    return-void
.end method

.method public show_ts(Z)V
    .locals 0

    return-void
.end method

.method public show_tt()V
    .locals 0

    return-void
.end method

.method public show_video()V
    .locals 0

    return-void
.end method

.method public show_wt()V
    .locals 0

    return-void
.end method

.method public stopWaiting()V
    .locals 0

    return-void
.end method

.method public swtichuser()V
    .locals 0

    return-void
.end method

.method public uploadclick()V
    .locals 0

    return-void
.end method

.method public writeFileData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 222
    :try_start_0
    sget-object v0, Lcom/east2west/game/E2WApp;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p1

    .line 223
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    .line 224
    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 225
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 229
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public writeNullData(Ljava/lang/String;)V
    .locals 3

    const-string v0, ""

    .line 237
    :try_start_0
    sget-object v1, Lcom/east2west/game/E2WApp;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p1

    .line 238
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 239
    invoke-virtual {p1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 240
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 244
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
