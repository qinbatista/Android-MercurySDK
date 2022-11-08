.class public Lcom/bytedance/sdk/openadsdk/c/n;
.super Ljava/lang/Object;
.source "Helpers.java"


# static fields
.field public static a:Ljava/util/Random;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/lang/Object;

.field private static d:Lcom/bytedance/sdk/openadsdk/c/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 28
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/c/n;->a:Ljava/util/Random;

    .line 31
    const-string v0, "attachment;\\s*filename\\s*=\\s*\"([^\"]*)\""

    .line 32
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/c/n;->b:Ljava/util/regex/Pattern;

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/c/n;->c:Ljava/lang/Object;

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/c/a/b;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/n;->d:Lcom/bytedance/sdk/openadsdk/c/a/b;

    return-object v0
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/c/u;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    if-nez p3, :cond_1

    .line 330
    :cond_0
    return-object v0

    .line 310
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v3, v1

    .line 326
    :goto_0
    const v0, 0x3b9aca00

    if-ge v3, v0, :cond_4

    .line 327
    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_1
    const/16 v0, 0x9

    if-ge v1, v0, :cond_3

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 329
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 332
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/c/b;->d:Z

    if-eqz v0, :cond_2

    .line 333
    const-string v0, "SsDownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file with sequence number "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " exists"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_2
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/n;->a:Ljava/util/Random;

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v2, v0

    .line 327
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 326
    :cond_3
    mul-int/lit8 v0, v3, 0xa

    move v3, v0

    move v1, v2

    goto :goto_0

    .line 338
    :cond_4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/u;

    const/16 v1, 0x1ec

    const-string v2, "failed to generate an unused filename on internal download storage"

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/c/u;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLcom/bytedance/sdk/openadsdk/c/v;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/c/u;
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 80
    cmp-long v2, p7, v0

    if-gez v2, :cond_0

    move-wide p7, v0

    .line 84
    :cond_0
    const/4 v0, 0x0

    .line 85
    const/4 v1, 0x1

    if-ne p6, v1, :cond_1

    .line 86
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 93
    :goto_0
    invoke-virtual {p9, p6, v1, p7, p8}, Lcom/bytedance/sdk/openadsdk/c/v;->b(ILjava/lang/String;J)V

    .line 94
    invoke-static {v1, p5, p6, v0}, Lcom/bytedance/sdk/openadsdk/c/n;->a(Ljava/lang/String;Ljava/lang/String;ILjava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 95
    return-object v0

    .line 88
    :cond_1
    invoke-virtual {p9, p5, p6, p7, p8}, Lcom/bytedance/sdk/openadsdk/c/v;->a(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v0

    .line 90
    invoke-static {p1, p2, p3, p4, p6}, Lcom/bytedance/sdk/openadsdk/c/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    :try_start_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/n;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    .line 61
    :catch_0
    move-exception v0

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 275
    const/4 v0, 0x0

    .line 276
    if-eqz p0, :cond_1

    .line 279
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    add-int/lit8 v2, p3, 0x1

    .line 280
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 279
    invoke-virtual {v1, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 281
    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 282
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/n;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_4

    .line 284
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/c/b;->d:Z

    if-eqz v1, :cond_1

    .line 285
    const-string v1, "SsDownloadManager"

    const-string v2, "substituting extension from type"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 295
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/c/b;->d:Z

    if-eqz v0, :cond_2

    .line 296
    const-string v0, "SsDownloadManager"

    const-string v1, "keeping extension"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_2
    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 300
    :cond_3
    return-object v0

    .line 288
    :cond_4
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/c/b;->d:Z

    if-eqz v1, :cond_1

    .line 289
    const-string v1, "SsDownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t find extension for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;ILjava/io/File;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/c/u;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 100
    .line 101
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 102
    if-ltz v3, :cond_0

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ge v3, v0, :cond_4

    :cond_0
    move v0, v2

    .line 103
    :goto_0
    if-ne p2, v2, :cond_6

    .line 105
    if-eqz v0, :cond_5

    .line 106
    const-string v0, ""

    .line 122
    :goto_1
    const-string v1, "recovery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 124
    if-eqz p3, :cond_1

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 128
    :cond_1
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/c/b;->d:Z

    if-eqz v2, :cond_2

    .line 129
    const-string v2, "SsDownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "target file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_2
    sget-object v2, Lcom/bytedance/sdk/openadsdk/c/n;->c:Ljava/lang/Object;

    monitor-enter v2

    .line 133
    :try_start_0
    invoke-static {p2, p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/c/n;->a(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 139
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 143
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 144
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 147
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v1

    :cond_4
    move v0, v1

    .line 102
    goto :goto_0

    .line 108
    :cond_5
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 114
    :cond_6
    if-eqz v0, :cond_7

    .line 115
    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/c/n;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 117
    :cond_7
    invoke-static {p1, p2, p0, v3}, Lcom/bytedance/sdk/openadsdk/c/n;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 148
    :catch_0
    move-exception v0

    .line 149
    :try_start_3
    new-instance v3, Lcom/bytedance/sdk/openadsdk/c/u;

    const/16 v4, 0x1ec

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to create target file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1, v0}, Lcom/bytedance/sdk/openadsdk/c/u;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x3f

    const/16 v3, 0x2f

    .line 158
    const/4 v1, 0x0

    .line 161
    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/c/b;->d:Z

    if-eqz v0, :cond_0

    .line 163
    const-string v0, "SsDownloadManager"

    const-string v1, "getting filename from hint"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 166
    if-lez v0, :cond_a

    .line 167
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 174
    :cond_1
    :goto_0
    if-nez v1, :cond_3

    if-eqz p2, :cond_3

    .line 175
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/c/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    if-eqz v1, :cond_3

    .line 177
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/c/b;->d:Z

    if-eqz v0, :cond_2

    .line 178
    const-string v0, "SsDownloadManager"

    const-string v2, "getting filename from content-disposition"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 181
    if-lez v0, :cond_3

    .line 182
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 188
    :cond_3
    if-nez v1, :cond_b

    if-eqz p3, :cond_b

    .line 189
    invoke-static {p3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_b

    const-string v2, "/"

    .line 191
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 192
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_b

    .line 193
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/c/b;->d:Z

    if-eqz v1, :cond_4

    .line 194
    const-string v1, "SsDownloadManager"

    const-string v2, "getting filename from content-location"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 197
    if-lez v1, :cond_5

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 206
    :cond_5
    :goto_1
    if-nez v0, :cond_7

    .line 207
    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    if-eqz v1, :cond_7

    const-string v2, "/"

    .line 209
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_7

    .line 210
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 211
    if-lez v2, :cond_7

    .line 212
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/c/b;->d:Z

    if-eqz v0, :cond_6

    .line 213
    const-string v0, "SsDownloadManager"

    const-string v3, "getting filename from uri"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_6
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 221
    :cond_7
    if-nez v0, :cond_9

    .line 222
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/c/b;->d:Z

    if-eqz v0, :cond_8

    .line 223
    const-string v0, "SsDownloadManager"

    const-string v1, "using default filename"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_8
    const-string v0, "downloadfile"

    .line 230
    :cond_9
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    return-object v0

    :cond_a
    move-object v1, p1

    .line 169
    goto/16 :goto_0

    :cond_b
    move-object v0, v1

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    .prologue
    .line 236
    const/4 v0, 0x0

    .line 237
    if-eqz p0, :cond_1

    .line 238
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_4

    .line 240
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/c/b;->d:Z

    if-eqz v1, :cond_0

    .line 241
    const-string v1, "SsDownloadManager"

    const-string v2, "adding extension from type"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 250
    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 251
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 252
    const-string v1, "text/html"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 253
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/c/b;->d:Z

    if-eqz v0, :cond_2

    .line 254
    const-string v0, "SsDownloadManager"

    const-string v1, "adding default html extension"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_2
    const-string v0, ".html"

    .line 270
    :cond_3
    :goto_1
    return-object v0

    .line 245
    :cond_4
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/c/b;->d:Z

    if-eqz v1, :cond_1

    .line 246
    const-string v1, "SsDownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t find extension for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 257
    :cond_5
    if-eqz p1, :cond_3

    .line 258
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/c/b;->d:Z

    if-eqz v0, :cond_6

    .line 259
    const-string v0, "SsDownloadManager"

    const-string v1, "adding default text extension"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_6
    const-string v0, ".txt"

    goto :goto_1

    .line 263
    :cond_7
    if-eqz p1, :cond_3

    .line 264
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/c/b;->d:Z

    if-eqz v0, :cond_8

    .line 265
    const-string v0, "SsDownloadManager"

    const-string v1, "adding default binary extension"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_8
    const-string v0, ".bin"

    goto :goto_1
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/c/a/b;)V
    .locals 0

    .prologue
    .line 39
    sput-object p0, Lcom/bytedance/sdk/openadsdk/c/n;->d:Lcom/bytedance/sdk/openadsdk/c/a/b;

    .line 40
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/io/File;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 348
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 349
    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 350
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x1

    .line 351
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x2

    .line 352
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v6, v4, v2

    .line 360
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 365
    :goto_1
    return v0

    .line 354
    :catch_0
    move-exception v0

    .line 355
    const-string v2, "SsDownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to resolve canonical path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 356
    goto :goto_1

    .line 359
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 365
    goto :goto_1
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 636
    .line 650
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v1

    move v2, v1

    .line 653
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 654
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 655
    if-ltz v4, :cond_0

    const/16 v5, 0x1f

    if-le v4, v5, :cond_1

    :cond_0
    const/16 v5, 0x22

    if-eq v4, v5, :cond_1

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_1

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_1

    const/16 v5, 0x3a

    if-eq v4, v5, :cond_1

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_1

    const/16 v5, 0x3e

    if-eq v4, v5, :cond_1

    const/16 v5, 0x3f

    if-eq v4, v5, :cond_1

    const/16 v5, 0x5c

    if-eq v4, v5, :cond_1

    const/16 v5, 0x7c

    if-eq v4, v5, :cond_1

    const/16 v5, 0x7f

    if-ne v4, v5, :cond_3

    .line 667
    :cond_1
    if-nez v2, :cond_2

    .line 668
    const/16 v2, 0x5f

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 669
    const/4 v2, 0x1

    .line 653
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 672
    :cond_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v1

    .line 673
    goto :goto_1

    .line 676
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
