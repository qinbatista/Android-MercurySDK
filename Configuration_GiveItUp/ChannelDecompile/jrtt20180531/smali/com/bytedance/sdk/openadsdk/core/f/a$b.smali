.class Lcom/bytedance/sdk/openadsdk/core/f/a$b;
.super Ljava/lang/Object;
.source "SplashAdCacheManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/f/a;

.field private b:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/f/a;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/a$b;->a:Lcom/bytedance/sdk/openadsdk/core/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/f/a$b;->b:Ljava/io/File;

    .line 250
    return-void
.end method

.method private a()Lcom/bytedance/sdk/openadsdk/core/d/h;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 305
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a$b;->a:Lcom/bytedance/sdk/openadsdk/core/f/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/a;->a(Lcom/bytedance/sdk/openadsdk/core/f/a;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "tt_materialMeta"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 306
    const-string v2, "materialMeta"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 309
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/p$a;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/p$a;

    move-result-object v0

    .line 311
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/p$a;->d:Lcom/bytedance/sdk/openadsdk/core/d/a;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/p$a;->d:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/a;->b()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/p$a;->d:Lcom/bytedance/sdk/openadsdk/core/d/a;

    .line 312
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/a;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 314
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/p$a;->d:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->b()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/h;

    .line 315
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->v()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 322
    :goto_0
    return-object v0

    .line 319
    :catch_0
    move-exception v0

    :cond_0
    move-object v0, v1

    .line 322
    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/a$b;->b:Ljava/io/File;

    .line 254
    return-void
.end method

.method public b(Ljava/io/File;)[B
    .locals 6

    .prologue
    .line 278
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 280
    const/16 v0, 0x400

    new-array v3, v0, [B

    .line 281
    const/4 v1, 0x0

    .line 283
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    :goto_0
    const/4 v1, 0x0

    :try_start_1
    array-length v4, v3

    invoke-virtual {v0, v3, v1, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    .line 285
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 288
    :catch_0
    move-exception v1

    .line 291
    :goto_1
    if-eqz v2, :cond_0

    .line 292
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 294
    :cond_0
    if-eqz v0, :cond_1

    .line 295
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 300
    :cond_1
    :goto_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 287
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 291
    if-eqz v2, :cond_3

    .line 292
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 294
    :cond_3
    if-eqz v0, :cond_1

    .line 295
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 297
    :catch_1
    move-exception v0

    goto :goto_2

    .line 290
    :catchall_0
    move-exception v0

    .line 291
    :goto_3
    if-eqz v2, :cond_4

    .line 292
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 294
    :cond_4
    if-eqz v1, :cond_5

    .line 295
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 298
    :cond_5
    :goto_4
    throw v0

    .line 297
    :catch_2
    move-exception v1

    goto :goto_4

    .line 290
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    .line 297
    :catch_3
    move-exception v0

    goto :goto_2

    .line 288
    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public run()V
    .locals 4

    .prologue
    .line 258
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a$b;->a:Lcom/bytedance/sdk/openadsdk/core/f/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/a;->b(Lcom/bytedance/sdk/openadsdk/core/f/a;)Lcom/bytedance/sdk/openadsdk/h/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/h/t;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 259
    const/4 v0, 0x1

    iput v0, v1, Landroid/os/Message;->what:I

    .line 261
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f/a$b;->a()Lcom/bytedance/sdk/openadsdk/core/d/h;

    move-result-object v0

    .line 262
    if-eqz v0, :cond_0

    .line 263
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/a$b;->b:Ljava/io/File;

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/f/a$b;->b(Ljava/io/File;)[B

    move-result-object v2

    .line 265
    if-eqz v2, :cond_0

    array-length v3, v2

    if-eqz v3, :cond_0

    .line 266
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/d/j;

    invoke-direct {v3, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/d/j;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/h;[B)V

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a$b;->a:Lcom/bytedance/sdk/openadsdk/core/f/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/a;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a$b;->a:Lcom/bytedance/sdk/openadsdk/core/f/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/a;->b(Lcom/bytedance/sdk/openadsdk/core/f/a;)Lcom/bytedance/sdk/openadsdk/h/t;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/t;->sendMessage(Landroid/os/Message;)Z

    .line 275
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v0

    .line 273
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a$b;->a:Lcom/bytedance/sdk/openadsdk/core/f/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/a;->b(Lcom/bytedance/sdk/openadsdk/core/f/a;)Lcom/bytedance/sdk/openadsdk/h/t;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/t;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/a$b;->a:Lcom/bytedance/sdk/openadsdk/core/f/a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/f/a;->b(Lcom/bytedance/sdk/openadsdk/core/f/a;)Lcom/bytedance/sdk/openadsdk/h/t;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/h/t;->sendMessage(Landroid/os/Message;)Z

    throw v0
.end method
