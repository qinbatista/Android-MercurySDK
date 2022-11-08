.class Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$1;
.super Ljava/lang/Object;
.source "TTDownloadService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$1;->a:Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 249
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 251
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 262
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$1;->a:Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->a(Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 263
    :try_start_0
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 264
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$1;->a:Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;

    if-lez v0, :cond_1

    move v0, v2

    :goto_0
    invoke-static {v4, v0}, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->b(Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;Z)Z

    move-result v4

    .line 265
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 270
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 271
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v6, "pool"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    const-string v6, "SsDownloadManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ": "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 264
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 265
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 277
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$1;->a:Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->b(Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;)Lcom/bytedance/sdk/openadsdk/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/c/g;->b()V

    .line 279
    const-string v0, "SsDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Final update pass triggered, isActive="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "; someone didn\'t update correctly."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_3
    if-eqz v4, :cond_5

    .line 289
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$1;->a:Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->c(Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;)V

    .line 313
    :cond_4
    :goto_2
    return v2

    .line 296
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$1;->a:Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->stopSelfResult(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 298
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$1;->a:Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->d(Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;)Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$a;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 299
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$1;->a:Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$1;->a:Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->d(Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;)Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 301
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$1;->a:Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->e(Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;)Lcom/bytedance/sdk/openadsdk/c/j;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 302
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$1;->a:Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->e(Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;)Lcom/bytedance/sdk/openadsdk/c/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/c/j;->a()V

    .line 304
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$1;->a:Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->f(Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;)Landroid/os/HandlerThread;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 305
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$1;->a:Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->f(Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 307
    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$1;->a:Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->g(Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 308
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$1;->a:Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->g(Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_2
.end method
