.class Lcom/bytedance/sdk/openadsdk/core/f/a$c;
.super Ljava/lang/Object;
.source "SplashAdCacheManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/core/d/j;

.field private b:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/d/j;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/a$c;->a:Lcom/bytedance/sdk/openadsdk/core/d/j;

    .line 333
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/f/a$c;->b:Ljava/io/File;

    .line 334
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    .line 354
    const/4 v1, 0x0

    .line 356
    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/f/a$c;->b:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/a$c;->a:Lcom/bytedance/sdk/openadsdk/core/d/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/j;->b()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 358
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 362
    if-eqz v0, :cond_0

    .line 363
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 359
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 362
    :goto_1
    if-eqz v0, :cond_0

    .line 363
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 365
    :catch_1
    move-exception v0

    goto :goto_0

    .line 361
    :catchall_0
    move-exception v0

    .line 362
    :goto_2
    if-eqz v1, :cond_1

    .line 363
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 366
    :cond_1
    :goto_3
    throw v0

    .line 365
    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_3

    .line 361
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    .line 359
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method private b()V
    .locals 3

    .prologue
    .line 374
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_materialMeta"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 375
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 377
    const-string v1, "materialMeta"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/a$c;->a:Lcom/bytedance/sdk/openadsdk/core/d/j;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/j;->c()Lcom/bytedance/sdk/openadsdk/core/d/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 378
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/core/d/j;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/a$c;->a:Lcom/bytedance/sdk/openadsdk/core/d/j;

    .line 338
    return-void
.end method

.method public a(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/a$c;->b:Ljava/io/File;

    .line 342
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f/a$c;->a()V

    .line 347
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f/a$c;->b()V

    .line 348
    return-void
.end method
