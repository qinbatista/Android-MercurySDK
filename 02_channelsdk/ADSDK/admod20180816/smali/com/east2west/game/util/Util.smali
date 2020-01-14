.class public Lcom/east2west/game/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/east2west/game/util/Util$SSLSocketFactoryEx;
    }
.end annotation


# static fields
.field private static final MAX_DECODE_PICTURE_SIZE:I = 0x2a3000

.field private static final TAG:Ljava/lang/String; = "SDK_Sample.Util"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bmpToByteArray(Landroid/graphics/Bitmap;Z)[B
    .locals 3

    .line 83
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 84
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 89
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 91
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 93
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public static extractThumbNail(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;
    .locals 17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    const/4 v6, 0x1

    if-eqz v1, :cond_0

    const-string v7, ""

    .line 260
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    if-lez v2, :cond_0

    if-lez v3, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    invoke-static {v7}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 262
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 265
    :try_start_0
    iput-boolean v6, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 266
    invoke-static {v1, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 268
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    const-string v9, "SDK_Sample.Util"

    .line 272
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "extractThumbNail: round="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", crop="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget v9, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v9, v9

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    mul-double v9, v9, v11

    int-to-double v13, v2

    div-double/2addr v9, v13

    .line 274
    iget v15, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v5, v15

    mul-double v5, v5, v11

    int-to-double v11, v3

    div-double/2addr v5, v11

    const-string v15, "SDK_Sample.Util"

    .line 275
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v2, "extractThumbNail: extract beX = "

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", beY = "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_2

    cmpl-double v2, v9, v5

    if-lez v2, :cond_3

    goto :goto_1

    :cond_2
    cmpg-double v2, v9, v5

    if-gez v2, :cond_3

    :goto_1
    move-wide v2, v5

    goto :goto_2

    :cond_3
    move-wide v2, v9

    :goto_2
    double-to-int v2, v2

    .line 276
    iput v2, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 277
    iget v2, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v3, 0x1

    if-gt v2, v3, :cond_4

    .line 278
    iput v3, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 282
    :cond_4
    :goto_3
    iget v2, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v3, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int v2, v2, v3

    iget v3, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v2, v3

    const v3, 0x2a3000

    if-gt v2, v3, :cond_c

    if-eqz v4, :cond_6

    cmpl-double v2, v9, v5

    if-lez v2, :cond_5

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double v11, v11, v2

    .line 290
    iget v2, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v2, v2

    mul-double v11, v11, v2

    iget v2, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v2, v2

    div-double/2addr v11, v2

    double-to-int v2, v11

    :goto_4
    move v3, v2

    move/from16 v2, p2

    :goto_5
    const/4 v8, 0x0

    goto :goto_7

    :cond_5
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double v13, v13, v2

    .line 292
    iget v2, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v2, v2

    mul-double v13, v13, v2

    iget v2, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v2, v2

    div-double/2addr v13, v2

    double-to-int v2, v13

    :goto_6
    move/from16 v3, p1

    goto :goto_5

    :cond_6
    cmpg-double v2, v9, v5

    if-gez v2, :cond_7

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double v11, v11, v2

    .line 296
    iget v2, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v2, v2

    mul-double v11, v11, v2

    iget v2, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v2, v2

    div-double/2addr v11, v2

    double-to-int v2, v11

    goto :goto_4

    :cond_7
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double v13, v13, v2

    .line 298
    iget v2, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v2, v2

    mul-double v13, v13, v2

    iget v2, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v2, v2

    div-double/2addr v13, v2

    double-to-int v2, v13

    goto :goto_6

    .line 302
    :goto_7
    iput-boolean v8, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const-string v5, "SDK_Sample.Util"

    .line 304
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "bitmap required size="

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "x"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", orig="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "x"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", sample="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-static {v1, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_8

    const-string v1, "SDK_Sample.Util"

    const-string v2, "bitmap decode failed"

    .line 307
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_8
    const-string v5, "SDK_Sample.Util"

    .line 311
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "bitmap decoded size="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    .line 312
    invoke-static {v1, v2, v3, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 314
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    move-object v1, v2

    :cond_9
    if-eqz v4, :cond_b

    .line 319
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    move/from16 v15, p2

    sub-int/2addr v2, v15

    const/4 v3, 0x1

    shr-int/2addr v2, v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move/from16 v5, p1

    sub-int/2addr v4, v5

    shr-int/lit8 v3, v4, 0x1

    invoke-static {v1, v2, v3, v15, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_a

    return-object v1

    .line 324
    :cond_a
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const-string v1, "SDK_Sample.Util"

    .line 326
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bitmap croped size="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    :cond_b
    return-object v1

    :cond_c
    const/4 v8, 0x0

    move/from16 v15, p2

    .line 283
    iget v2, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v2, "SDK_Sample.Util"

    .line 331
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "decode bitmap failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private static getNewHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 7

    .line 191
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 192
    invoke-virtual {v0, v1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 194
    new-instance v1, Lcom/east2west/game/util/Util$SSLSocketFactoryEx;

    invoke-direct {v1, v0}, Lcom/east2west/game/util/Util$SSLSocketFactoryEx;-><init>(Ljava/security/KeyStore;)V

    .line 195
    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v1, v0}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 197
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 198
    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    const-string v2, "UTF-8"

    .line 199
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 201
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 202
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 203
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    const/16 v5, 0x1bb

    invoke-direct {v3, v4, v1, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 205
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, v0, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 207
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 209
    :catch_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    return-object v0
.end method

.method public static httpGet(Ljava/lang/String;)[B
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 100
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    invoke-static {}, Lcom/east2west/game/util/Util;->getNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    .line 106
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 109
    :try_start_0
    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    .line 110
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    const-string v1, "SDK_Sample.Util"

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "httpGet fail, status code = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 115
    :cond_1
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "SDK_Sample.Util"

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "httpGet exception, e = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0

    :cond_2
    :goto_0
    const-string p0, "SDK_Sample.Util"

    const-string v1, "httpGet, url is null"

    .line 101
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static httpPost(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 125
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    invoke-static {}, Lcom/east2west/game/util/Util;->getNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    .line 132
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 135
    :try_start_0
    new-instance p0, Lorg/apache/http/entity/StringEntity;

    invoke-direct {p0, p1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    const-string p0, "Accept"

    const-string p1, "application/json"

    .line 136
    invoke-virtual {v2, p0, p1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Content-type"

    const-string p1, "application/json"

    .line 137
    invoke-virtual {v2, p0, p1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    .line 140
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    const/16 v1, 0xc8

    if-eq p1, v1, :cond_1

    const-string p1, "SDK_Sample.Util"

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "httpGet fail, status code = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 145
    :cond_1
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "SDK_Sample.Util"

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "httpPost exception, e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0

    :cond_2
    :goto_0
    const-string p0, "SDK_Sample.Util"

    const-string p1, "httpPost, url is null"

    .line 126
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static readFromFile(Ljava/lang/String;II)[B
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 218
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    const-string p0, "SDK_Sample.Util"

    const-string p1, "readFromFile: file not found"

    .line 220
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    .line 225
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int p2, v2

    :cond_2
    const-string v2, "SDK_Sample.Util"

    .line 228
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "readFromFile : offset = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " len = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " offset + len = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v4, p1, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p1, :cond_3

    const-string p0, "SDK_Sample.Util"

    .line 231
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "readFromFile invalid offset:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_3
    if-gtz p2, :cond_4

    const-string p0, "SDK_Sample.Util"

    .line 235
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "readFromFile invalid len:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 238
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    if-le v4, v2, :cond_5

    const-string p0, "SDK_Sample.Util"

    .line 239
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "readFromFile invalid file len:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 245
    :cond_5
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    new-array p0, p2, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    int-to-long p1, p1

    .line 247
    :try_start_1
    invoke-virtual {v1, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 248
    invoke-virtual {v1, p0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 249
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object p0, v0

    :goto_0
    const-string p2, "SDK_Sample.Util"

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "readFromFile : errMsg = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object p0
.end method

.method public static setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V
    .locals 6

    .line 59
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, ""

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "listAdapter.getCount() = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 69
    :goto_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-lt v2, v4, :cond_1

    add-int/lit8 v3, v3, 0xa

    .line 76
    invoke-virtual {p0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 77
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v2

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int v2, v2, v0

    add-int/2addr v3, v2

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 78
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    const/4 v4, 0x0

    .line 70
    invoke-interface {v0, v2, v4, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 71
    invoke-virtual {v4, v1, v1}, Landroid/view/View;->measure(II)V

    .line 72
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v3, v5

    .line 73
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static sha1(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 339
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x10

    .line 343
    new-array v1, v1, [C

    fill-array-data v1, :array_0

    :try_start_0
    const-string v2, "SHA1"

    .line 346
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 347
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 349
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 350
    array-length v2, p0

    mul-int/lit8 v3, v2, 0x2

    .line 351
    new-array v3, v3, [C

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-lt v4, v2, :cond_1

    .line 358
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    return-object p0

    .line 354
    :cond_1
    aget-byte v6, p0, v4

    add-int/lit8 v7, v5, 0x1

    ushr-int/lit8 v8, v6, 0x4

    and-int/lit8 v8, v8, 0xf

    .line 355
    aget-char v8, v1, v8

    aput-char v8, v3, v5

    add-int/lit8 v5, v7, 0x1

    and-int/lit8 v6, v6, 0xf

    .line 356
    aget-char v6, v1, v6

    aput-char v6, v3, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    return-object v0

    :cond_2
    :goto_1
    return-object v0

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static stringsToList([Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 365
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 368
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 369
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_1

    return-object v0

    .line 370
    :cond_1
    aget-object v2, p0, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
