.class public Lcom/bytedance/sdk/openadsdk/core/i;
.super Ljava/lang/Object;
.source "IdUtils.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Z

.field private static k:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/r;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 352
    const-string v1, "MIUI-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    :cond_0
    :goto_0
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 353
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/r;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 354
    const-string v1, "FLYME-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 365
    :catch_0
    move-exception v1

    goto :goto_1

    .line 356
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/r;->b()Ljava/lang/String;

    move-result-object v1

    .line 357
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/r;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 358
    const-string v2, "EMUI-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/i;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/i;->j:Z

    if-nez v0, :cond_1

    .line 57
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/i;

    monitor-enter v1

    .line 58
    :try_start_0
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/i;->j:Z

    if-nez v0, :cond_0

    .line 59
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/i;->k(Landroid/content/Context;)V

    .line 61
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/i;->a:Ljava/lang/String;

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static declared-synchronized a(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TrulyRandom"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 228
    const-class v3, Lcom/bytedance/sdk/openadsdk/core/i;

    monitor-enter v3

    .line 230
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 236
    :goto_0
    if-eqz v1, :cond_0

    :try_start_1
    const-string v0, "9774d56d682e549c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xd

    if-ge v0, v2, :cond_6

    .line 239
    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v4

    .line 240
    const-string v0, "openudid"

    const/4 v2, 0x0

    invoke-virtual {v4, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 242
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 243
    new-instance v2, Ljava/math/BigInteger;

    const/16 v5, 0x40

    invoke-direct {v2, v5, v0}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/16 v0, 0x10

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 244
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x2d

    if-ne v0, v5, :cond_1

    .line 245
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 246
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0xd

    .line 247
    if-lez v0, :cond_3

    .line 248
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    :goto_1
    if-lez v0, :cond_2

    .line 250
    const/16 v6, 0x46

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 251
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 253
    :cond_2
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 256
    :cond_3
    if-eqz p1, :cond_5

    .line 257
    const-string v0, "openudid.dat"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 262
    :goto_2
    const-string v2, "openudid"

    invoke-virtual {v4, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    :cond_4
    :goto_3
    monitor-exit v3

    return-object v0

    .line 266
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_3

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 231
    :catch_1
    move-exception v0

    goto :goto_0

    :cond_5
    move-object v0, v2

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_3
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 277
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 278
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-object p1

    .line 280
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Android/data/com.snssdk.api/cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 284
    const/4 v3, 0x0

    .line 285
    const/4 v4, 0x0

    .line 287
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 289
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_3

    .line 315
    if-eqz v0, :cond_2

    .line 316
    :try_start_1
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 321
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 322
    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 323
    :catch_0
    move-exception v0

    goto :goto_0

    .line 292
    :cond_3
    :try_start_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rwd"

    invoke-direct {v1, v3, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 294
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v2

    .line 295
    :try_start_5
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 296
    const/16 v0, 0x81

    .line 297
    new-array v3, v0, [B

    .line 298
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v4

    .line 299
    if-lez v4, :cond_6

    if-ge v4, v0, :cond_6

    .line 300
    new-instance v0, Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "UTF-8"

    invoke-direct {v0, v3, v5, v4, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 301
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->a(Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_c
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result v3

    if-eqz v3, :cond_6

    .line 315
    if-eqz v2, :cond_4

    .line 316
    :try_start_6
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 321
    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    .line 322
    :try_start_7
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    :cond_5
    :goto_3
    move-object p1, v0

    .line 302
    goto/16 :goto_0

    .line 306
    :cond_6
    :try_start_8
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 307
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 308
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 315
    if-eqz v2, :cond_7

    .line 316
    :try_start_9
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 321
    :cond_7
    :goto_4
    if-eqz v1, :cond_0

    .line 322
    :try_start_a
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_0

    .line 323
    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 310
    :catch_2
    move-exception v1

    move-object v1, v0

    .line 315
    :goto_5
    if-eqz v1, :cond_8

    .line 316
    :try_start_b
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 321
    :cond_8
    :goto_6
    if-eqz v0, :cond_0

    .line 322
    :try_start_c
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_0

    .line 323
    :catch_3
    move-exception v0

    goto/16 :goto_0

    .line 314
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    .line 315
    :goto_7
    if-eqz v2, :cond_9

    .line 316
    :try_start_d
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    .line 321
    :cond_9
    :goto_8
    if-eqz v1, :cond_a

    .line 322
    :try_start_e
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    .line 325
    :cond_a
    :goto_9
    throw v0

    .line 317
    :catch_4
    move-exception v1

    goto/16 :goto_1

    :catch_5
    move-exception v2

    goto :goto_2

    .line 323
    :catch_6
    move-exception v1

    goto :goto_3

    .line 317
    :catch_7
    move-exception v0

    goto :goto_4

    :catch_8
    move-exception v1

    goto :goto_6

    :catch_9
    move-exception v2

    goto :goto_8

    .line 323
    :catch_a
    move-exception v1

    goto :goto_9

    .line 314
    :catchall_1
    move-exception v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_7

    .line 310
    :catch_b
    move-exception v2

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_5

    :catch_c
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_5
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 178
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/i;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v0

    .line 180
    const-string v1, "did"

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    sput-object p1, Lcom/bytedance/sdk/openadsdk/core/i;->a:Ljava/lang/String;

    .line 183
    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 332
    if-nez p0, :cond_1

    .line 342
    :cond_0
    :goto_0
    return v0

    .line 334
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 335
    const/16 v1, 0xd

    if-lt v2, v1, :cond_0

    const/16 v1, 0x80

    if-gt v2, v1, :cond_0

    move v1, v0

    .line 337
    :goto_1
    if-ge v1, v2, :cond_6

    .line 338
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 339
    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    const/16 v4, 0x39

    if-le v3, v4, :cond_5

    :cond_2
    const/16 v4, 0x61

    if-lt v3, v4, :cond_3

    const/16 v4, 0x66

    if-le v3, v4, :cond_5

    :cond_3
    const/16 v4, 0x41

    if-lt v3, v4, :cond_4

    const/16 v4, 0x46

    if-le v3, v4, :cond_5

    :cond_4
    const/16 v4, 0x2d

    if-ne v3, v4, :cond_0

    .line 337
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 342
    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b()Ljava/lang/String;
    .locals 7

    .prologue
    .line 371
    const-string v0, "/proc/version"

    .line 373
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/d;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-le v1, v2, :cond_0

    .line 374
    const-string v0, ""

    .line 396
    :goto_0
    return-object v0

    .line 377
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 378
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v0, 0x2000

    invoke-direct {v2, v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 380
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 381
    if-eqz v1, :cond_1

    array-length v0, v1

    const/4 v3, 0x6

    if-ge v0, v3, :cond_2

    .line 382
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 384
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_1
    array-length v4, v1

    add-int/lit8 v4, v4, -0x6

    if-lt v0, v4, :cond_3

    if-ltz v0, :cond_3

    .line 386
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 388
    :cond_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 389
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 390
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE MMM d HH:mm:ss z yyyy"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 391
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 393
    :catch_0
    move-exception v0

    .line 396
    const-string v0, ""

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/i;->h:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 69
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/i;->j:Z

    if-nez v0, :cond_1

    .line 70
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/i;

    monitor-enter v1

    .line 71
    :try_start_0
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/i;->j:Z

    if-nez v0, :cond_0

    .line 72
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/i;->k(Landroid/content/Context;)V

    .line 74
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/i;->h:Ljava/lang/String;

    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/i;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/i;->j:Z

    if-nez v0, :cond_1

    .line 83
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/i;

    monitor-enter v1

    .line 84
    :try_start_0
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/i;->j:Z

    if-nez v0, :cond_0

    .line 85
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/i;->k(Landroid/content/Context;)V

    .line 87
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/i;->b:Ljava/lang/String;

    return-object v0

    .line 87
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/i;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/i;->j:Z

    if-nez v0, :cond_1

    .line 96
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/i;

    monitor-enter v1

    .line 97
    :try_start_0
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/i;->j:Z

    if-nez v0, :cond_0

    .line 98
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/i;->k(Landroid/content/Context;)V

    .line 100
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/i;->c:Ljava/lang/String;

    return-object v0

    .line 100
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/i;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/i;->j:Z

    if-nez v0, :cond_1

    .line 109
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/i;

    monitor-enter v1

    .line 110
    :try_start_0
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/i;->j:Z

    if-nez v0, :cond_0

    .line 111
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/i;->k(Landroid/content/Context;)V

    .line 113
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/i;->i:Ljava/lang/String;

    return-object v0

    .line 113
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/i;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/i;->j:Z

    if-nez v0, :cond_1

    .line 122
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/i;

    monitor-enter v1

    .line 123
    :try_start_0
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/i;->j:Z

    if-nez v0, :cond_0

    .line 124
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/i;->k(Landroid/content/Context;)V

    .line 126
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/i;->f:Ljava/lang/String;

    return-object v0

    .line 126
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/i;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/i;->j:Z

    if-nez v0, :cond_1

    .line 135
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/i;

    monitor-enter v1

    .line 136
    :try_start_0
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/i;->j:Z

    if-nez v0, :cond_0

    .line 137
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/i;->k(Landroid/content/Context;)V

    .line 139
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/i;->d:Ljava/lang/String;

    return-object v0

    .line 139
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/i;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/i;->j:Z

    if-nez v0, :cond_1

    .line 148
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/i;

    monitor-enter v1

    .line 149
    :try_start_0
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/i;->j:Z

    if-nez v0, :cond_0

    .line 150
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/i;->k(Landroid/content/Context;)V

    .line 152
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/i;->g:Ljava/lang/String;

    return-object v0

    .line 152
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 159
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/i;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/i;->j:Z

    if-nez v0, :cond_1

    .line 161
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/i;

    monitor-enter v1

    .line 162
    :try_start_0
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/i;->j:Z

    if-nez v0, :cond_0

    .line 163
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/i;->k(Landroid/content/Context;)V

    .line 165
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/i;->e:Ljava/lang/String;

    return-object v0

    .line 165
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static j(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 213
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/i;->k:Z

    if-eqz v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 218
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/i;->c:Ljava/lang/String;

    .line 219
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/i;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/i;->k:Z

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static k(Landroid/content/Context;)V
    .locals 5
    .annotation build Landroid/support/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_WIFI_STATE"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 187
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/i;->j:Z

    if-eqz v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 191
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 193
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/bytedance/sdk/openadsdk/core/i;->c:Ljava/lang/String;

    .line 194
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/i;->f:Ljava/lang/String;

    .line 195
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_1

    .line 197
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/i;->d:Ljava/lang/String;

    .line 198
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/i;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :cond_1
    :goto_1
    invoke-static {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/i;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/i;->b:Ljava/lang/String;

    .line 204
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v0

    const-string v1, "did"

    invoke-virtual {v0, v1, v4}, Lcom/bytedance/sdk/openadsdk/core/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/i;->a:Ljava/lang/String;

    .line 205
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/i;->g:Ljava/lang/String;

    .line 206
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/i;->h:Ljava/lang/String;

    .line 207
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v0

    const-string v1, "uuid"

    invoke-virtual {v0, v1, v4}, Lcom/bytedance/sdk/openadsdk/core/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/i;->i:Ljava/lang/String;

    .line 208
    sput-boolean v3, Lcom/bytedance/sdk/openadsdk/core/i;->j:Z

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    goto :goto_1
.end method
