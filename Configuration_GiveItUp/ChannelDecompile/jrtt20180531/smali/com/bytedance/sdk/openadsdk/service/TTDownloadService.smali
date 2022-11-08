.class public Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;
.super Landroid/app/Service;
.source "TTDownloadService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x3
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$b;,
        Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$a;
    }
.end annotation


# instance fields
.field a:Lcom/bytedance/sdk/openadsdk/c/w;

.field private b:Landroid/app/AlarmManager;

.field private c:Lcom/bytedance/sdk/openadsdk/c/v;

.field private d:Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$a;

.field private e:Lcom/bytedance/sdk/openadsdk/c/g;

.field private final f:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/bytedance/sdk/openadsdk/c/d;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/ExecutorService;

.field private h:Lcom/bytedance/sdk/openadsdk/c/j;

.field private i:Landroid/os/HandlerThread;

.field private j:Landroid/os/Handler;

.field private volatile k:I

.field private l:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->f:Ljava/util/Map;

    .line 91
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->g:Ljava/util/concurrent/ExecutorService;

    .line 245
    new-instance v0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$1;-><init>(Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->l:Landroid/os/Handler$Callback;

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/c/d$b;J)Lcom/bytedance/sdk/openadsdk/c/d;
    .locals 6

    .prologue
    .line 440
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->a:Lcom/bytedance/sdk/openadsdk/c/w;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->c:Lcom/bytedance/sdk/openadsdk/c/v;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->e:Lcom/bytedance/sdk/openadsdk/c/g;

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/c/d$b;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/c/w;Lcom/bytedance/sdk/openadsdk/c/v;Lcom/bytedance/sdk/openadsdk/c/g;)Lcom/bytedance/sdk/openadsdk/c/d;

    move-result-object v0

    .line 442
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->f:Ljava/util/Map;

    iget-wide v2, v0, Lcom/bytedance/sdk/openadsdk/c/d;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/c/b;->d:Z

    if-eqz v1, :cond_0

    .line 445
    const-string v1, "SsDownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processing inserted download "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcom/bytedance/sdk/openadsdk/c/d;->a:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->f:Ljava/util/Map;

    return-object v0
.end method

.method private static a()Ljava/util/concurrent/ExecutorService;
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    const/4 v2, 0x5

    .line 99
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v0, v2, :cond_0

    .line 103
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 105
    :cond_0
    return-object v1
.end method

.method private a(J)V
    .locals 5

    .prologue
    .line 466
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->f:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/c/d;

    .line 467
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/c/d;->j:I

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_0

    .line 468
    const/16 v1, 0x1ea

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/c/d;->j:I

    .line 470
    :cond_0
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/c/d;->g:I

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/c/d;->e:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 471
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/c/b;->d:Z

    if-eqz v1, :cond_1

    .line 472
    const-string v1, "SsDownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteDownloadLocked() deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/c/d;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_1
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/c/d;->e:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->a(Ljava/lang/String;)V

    .line 476
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->e:Lcom/bytedance/sdk/openadsdk/c/g;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Lcom/bytedance/sdk/openadsdk/c/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/lang/String;)V

    .line 477
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->f:Ljava/util/Map;

    iget-wide v2, v0, Lcom/bytedance/sdk/openadsdk/c/d;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 117
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/c/d$b;Lcom/bytedance/sdk/openadsdk/c/d;J)V
    .locals 4

    .prologue
    .line 455
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/c/d$b;->a(Lcom/bytedance/sdk/openadsdk/c/d;)V

    .line 456
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/c/b;->d:Z

    if-eqz v0, :cond_0

    .line 457
    const-string v0, "SsDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processing updated download "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcom/bytedance/sdk/openadsdk/c/d;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/bytedance/sdk/openadsdk/c/d;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;Z)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 481
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 482
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/c/b;->d:Z

    if-eqz v0, :cond_0

    .line 483
    const-string v0, "SsDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteFileIfExists() deleting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 486
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 487
    const-string v0, "SsDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' couldn\'t be deleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_1
    return-void
.end method

.method private a(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 225
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->j:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 226
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->j:Landroid/os/Handler;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->k:I

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v1, v3, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 228
    return-void

    .line 226
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;)Lcom/bytedance/sdk/openadsdk/c/g;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->e:Lcom/bytedance/sdk/openadsdk/c/g;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 235
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->j:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 236
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->j:Landroid/os/Handler;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->k:I

    const/4 v3, -0x1

    .line 237
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x493e0

    .line 236
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 240
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;Z)Z
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->b(Z)Z

    move-result v0

    return v0
.end method

.method private b(Z)Z
    .locals 19

    .prologue
    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->a:Lcom/bytedance/sdk/openadsdk/c/w;

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/c/w;->a()J

    move-result-wide v12

    .line 332
    const/4 v10, 0x0

    .line 333
    const-wide v8, 0x7fffffffffffffffL

    .line 335
    new-instance v11, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->f:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v11, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 337
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/c/i;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/c/i;

    move-result-object v2

    .line 338
    sget-object v3, Lcom/bytedance/sdk/openadsdk/c/m$a;->a:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/c/i;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 340
    const/4 v4, 0x0

    .line 342
    :try_start_0
    new-instance v15, Lcom/bytedance/sdk/openadsdk/c/d$b;

    invoke-direct {v15, v2, v14}, Lcom/bytedance/sdk/openadsdk/c/d$b;-><init>(Lcom/bytedance/sdk/openadsdk/c/i;Landroid/database/Cursor;)V

    .line 343
    const-string v3, "_id"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v16

    move-object v7, v4

    move v6, v10

    move-wide v4, v8

    .line 344
    :goto_0
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 345
    move/from16 v0, v16

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 346
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 348
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->f:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/c/d;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 349
    if-eqz v3, :cond_1

    .line 350
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v3, v12, v13}, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->a(Lcom/bytedance/sdk/openadsdk/c/d$b;Lcom/bytedance/sdk/openadsdk/c/d;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v7, v3

    .line 355
    :goto_1
    :try_start_3
    iget-boolean v3, v7, Lcom/bytedance/sdk/openadsdk/c/d;->w:Z

    if-eqz v3, :cond_2

    .line 357
    iget-object v3, v7, Lcom/bytedance/sdk/openadsdk/c/d;->x:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 358
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v8, v7, Lcom/bytedance/sdk/openadsdk/c/d;->x:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v8, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 360
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->f:Ljava/util/Map;

    iget-wide v8, v7, Lcom/bytedance/sdk/openadsdk/c/d;->a:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    iget-object v3, v7, Lcom/bytedance/sdk/openadsdk/c/d;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->a(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/c/d;->d()Landroid/net/Uri;

    move-result-object v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v3, v8, v9}, Lcom/bytedance/sdk/openadsdk/c/i;->a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 363
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->e:Lcom/bytedance/sdk/openadsdk/c/g;

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Lcom/bytedance/sdk/openadsdk/c/d;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/lang/String;)V

    .line 384
    :goto_2
    invoke-virtual {v7, v12, v13}, Lcom/bytedance/sdk/openadsdk/c/d;->b(J)J

    move-result-wide v8

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(JJ)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v4

    goto :goto_0

    .line 352
    :cond_1
    :try_start_4
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v12, v13}, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->a(Lcom/bytedance/sdk/openadsdk/c/d$b;J)Lcom/bytedance/sdk/openadsdk/c/d;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v7

    goto :goto_1

    .line 365
    :cond_2
    :try_start_5
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/c/d;->c()V

    .line 367
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->g:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v7, v3}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Ljava/util/concurrent/ExecutorService;)Z

    move-result v3

    .line 370
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->h:Lcom/bytedance/sdk/openadsdk/c/j;

    invoke-virtual {v7, v8}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Lcom/bytedance/sdk/openadsdk/c/j;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v8

    .line 379
    or-int/2addr v3, v6

    .line 380
    or-int v6, v3, v8

    goto :goto_2

    .line 397
    :cond_3
    if-eqz v14, :cond_4

    .line 398
    :try_start_6
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :cond_4
    move v3, v6

    .line 406
    :cond_5
    :goto_3
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 407
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->a(J)V

    goto :goto_4

    .line 400
    :catch_0
    move-exception v2

    move v3, v6

    .line 403
    goto :goto_3

    .line 386
    :catch_1
    move-exception v3

    move-object v6, v3

    move-object v7, v4

    move-wide v4, v8

    move v3, v10

    .line 388
    :goto_5
    if-eqz v7, :cond_6

    :try_start_7
    iget-boolean v8, v7, Lcom/bytedance/sdk/openadsdk/c/d;->w:Z

    if-eqz v8, :cond_6

    .line 389
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->f:Ljava/util/Map;

    iget-wide v0, v7, Lcom/bytedance/sdk/openadsdk/c/d;->a:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    iget-object v8, v7, Lcom/bytedance/sdk/openadsdk/c/d;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->a(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/c/d;->d()Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, v8, v9, v10}, Lcom/bytedance/sdk/openadsdk/c/i;->a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->e:Lcom/bytedance/sdk/openadsdk/c/g;

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Lcom/bytedance/sdk/openadsdk/c/d;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/lang/String;)V

    .line 394
    :cond_6
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 397
    if-eqz v14, :cond_5

    .line 398
    :try_start_8
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_3

    .line 400
    :catch_2
    move-exception v2

    goto :goto_3

    .line 396
    :catchall_0
    move-exception v2

    .line 397
    if-eqz v14, :cond_7

    .line 398
    :try_start_9
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 402
    :cond_7
    :goto_6
    throw v2

    .line 411
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->e:Lcom/bytedance/sdk/openadsdk/c/g;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->f:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v2, v6, v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/util/Collection;Z)V

    .line 415
    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_a

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v2, v4, v6

    if-gez v2, :cond_a

    .line 416
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/c/b;->c:Z

    if-eqz v2, :cond_9

    .line 417
    const-string v2, "SsDownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "scheduling start in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_9
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.ss.intent.action.DOWNLOAD_WAKEUP"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 421
    const-class v6, Lcom/bytedance/sdk/openadsdk/service/TTDownloadHandlerService;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 422
    const/4 v6, 0x1

    .line 424
    :try_start_a
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->b:Landroid/app/AlarmManager;

    add-long/2addr v4, v12

    const/4 v8, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    .line 425
    move-object/from16 v0, p0

    invoke-static {v0, v8, v2, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 424
    invoke-static {v7, v6, v4, v5, v2}, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$b;->a(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4

    .line 432
    :cond_a
    :goto_7
    return v3

    .line 400
    :catch_3
    move-exception v3

    goto :goto_6

    .line 426
    :catch_4
    move-exception v2

    goto :goto_7

    .line 386
    :catch_5
    move-exception v7

    move-object/from16 v18, v7

    move-object v7, v3

    move v3, v6

    move-object/from16 v6, v18

    goto/16 :goto_5

    :catch_6
    move-exception v3

    move-object/from16 v18, v3

    move v3, v6

    move-object/from16 v6, v18

    goto/16 :goto_5
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->b()V

    return-void
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;)Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$a;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->d:Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$a;

    return-object v0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;)Lcom/bytedance/sdk/openadsdk/c/j;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->h:Lcom/bytedance/sdk/openadsdk/c/j;

    return-object v0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;)Landroid/os/HandlerThread;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->i:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->g:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 494
    new-instance v1, Lcom/bytedance/sdk/openadsdk/c/p;

    const-string v0, "  "

    invoke-direct {v1, p2, v0}, Lcom/bytedance/sdk/openadsdk/c/p;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 495
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->f:Ljava/util/Map;

    monitor-enter v2

    .line 496
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->f:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 497
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 498
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 499
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->f:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/c/d;

    .line 500
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Lcom/bytedance/sdk/openadsdk/c/p;)V

    goto :goto_0

    .line 502
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 503
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 145
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot bind to Download Manager Service"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    .prologue
    .line 154
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 155
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/c/b;->d:Z

    if-eqz v0, :cond_0

    .line 156
    const-string v0, "SsDownloadManager"

    const-string v1, "Service onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->a:Lcom/bytedance/sdk/openadsdk/c/w;

    if-nez v0, :cond_1

    .line 160
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/c/t;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/c/t;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->a:Lcom/bytedance/sdk/openadsdk/c/w;

    .line 163
    :cond_1
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->b:Landroid/app/AlarmManager;

    .line 164
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/v;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/c/v;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->c:Lcom/bytedance/sdk/openadsdk/c/v;

    .line 166
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SsDownloadManager-UpdateThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->i:Landroid/os/HandlerThread;

    .line 167
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 168
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->i:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->l:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->j:Landroid/os/Handler;

    .line 170
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/j;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/c/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->h:Lcom/bytedance/sdk/openadsdk/c/j;

    .line 172
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/c/g;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->e:Lcom/bytedance/sdk/openadsdk/c/g;

    .line 173
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->e:Lcom/bytedance/sdk/openadsdk/c/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a()V

    .line 175
    new-instance v0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$a;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$a;-><init>(Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->d:Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$a;

    .line 176
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/c/m$a;->a:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->d:Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$a;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 178
    return-void
.end method

.method public onDestroy()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .prologue
    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->d:Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$a;

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->d:Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$a;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->h:Lcom/bytedance/sdk/openadsdk/c/j;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->h:Lcom/bytedance/sdk/openadsdk/c/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/c/j;->a()V

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->i:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->g:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_3

    .line 210
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->g:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 212
    :cond_3
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/c/b;->d:Z

    if-eqz v0, :cond_4

    .line 213
    const-string v0, "SsDownloadManager"

    const-string v1, "Service onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :cond_4
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 219
    return-void

    .line 215
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 183
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    .line 184
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/c/b;->d:Z

    if-eqz v2, :cond_0

    .line 185
    const-string v2, "SsDownloadManager"

    const-string v3, "Service onStart"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->k:I

    .line 189
    if-eqz p1, :cond_1

    .line 190
    const-string v2, "isFirstStart"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 192
    :cond_1
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;->a(Z)V

    .line 193
    return v1
.end method
