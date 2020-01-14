.class public Lcom/bytedance/sdk/openadsdk/c/g;
.super Ljava/lang/Object;
.source "DownloadNotifier.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation


# static fields
.field private static h:Lcom/bytedance/sdk/openadsdk/c/g;

.field private static final j:Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/bytedance/sdk/openadsdk/c/e;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/bytedance/sdk/openadsdk/core/d/e;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/bytedance/sdk/openadsdk/c/y;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/androidquery/callback/AQuery2;

.field private e:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/content/Context;

.field private final g:Landroid/app/NotificationManager;

.field private final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lcom/bytedance/sdk/openadsdk/c/q;

.field private final m:Lcom/bytedance/sdk/openadsdk/c/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 164
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/c/g;->j:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->a:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->b:Ljava/util/Map;

    .line 80
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->c:Ljava/util/Map;

    .line 163
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->i:Ljava/util/Set;

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->k:Ljava/util/HashMap;

    .line 178
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/q;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/c/q;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->l:Lcom/bytedance/sdk/openadsdk/c/q;

    .line 184
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/q;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/c/q;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->m:Lcom/bytedance/sdk/openadsdk/c/q;

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->f:Landroid/content/Context;

    .line 195
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->f:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->g:Landroid/app/NotificationManager;

    .line 197
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 198
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "tt_chuanshanjia_sdk_id"

    const-string v2, "tt_chuanshanjia_sdk_name"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 200
    const-string v1, "tt_chuanshanjia_sdk_desc"

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 201
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 202
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->g:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 205
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->e()V

    .line 206
    new-instance v0, Lcom/androidquery/callback/AQuery2;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/androidquery/callback/AQuery2;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->d:Lcom/androidquery/callback/AQuery2;

    .line 207
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    .line 208
    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 209
    new-instance v1, Lcom/bytedance/sdk/openadsdk/c/g$2;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/c/g$2;-><init>(Lcom/bytedance/sdk/openadsdk/c/g;I)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->e:Landroid/util/LruCache;

    .line 215
    return-void
.end method

.method public static a(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 726
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/c/g;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->f:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/c/g;
    .locals 2

    .prologue
    .line 187
    const-class v1, Lcom/bytedance/sdk/openadsdk/c/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/g;->h:Lcom/bytedance/sdk/openadsdk/c/g;

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/g;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/c/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/c/g;->h:Lcom/bytedance/sdk/openadsdk/c/g;

    .line 190
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/g;->h:Lcom/bytedance/sdk/openadsdk/c/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/c/d;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 595
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->f(Lcom/bytedance/sdk/openadsdk/c/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/c/d;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 602
    :goto_0
    return-object v0

    .line 597
    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->e(Lcom/bytedance/sdk/openadsdk/c/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/c/d;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 599
    :cond_1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->b(Lcom/bytedance/sdk/openadsdk/c/d;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->g(Lcom/bytedance/sdk/openadsdk/c/d;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 600
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/c/d;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 602
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(ILcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;)V
    .locals 4

    .prologue
    .line 555
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->a()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->l()Lcom/bytedance/sdk/openadsdk/TTGlobalAppDownloadListener;

    move-result-object v0

    .line 556
    if-eqz p2, :cond_0

    if-nez v0, :cond_1

    .line 577
    :cond_0
    :goto_0
    return-void

    .line 560
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 562
    :pswitch_0
    invoke-interface {v0, p2}, Lcom/bytedance/sdk/openadsdk/TTGlobalAppDownloadListener;->onDownloadActive(Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;)V

    goto :goto_0

    .line 565
    :pswitch_1
    invoke-interface {v0, p2}, Lcom/bytedance/sdk/openadsdk/TTGlobalAppDownloadListener;->onDownloadPaused(Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;)V

    goto :goto_0

    .line 568
    :pswitch_2
    invoke-interface {v0, p2}, Lcom/bytedance/sdk/openadsdk/TTGlobalAppDownloadListener;->onDownloadFinished(Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;)V

    .line 569
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->f:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;->getId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/g;->c(Landroid/content/Context;J)V

    goto :goto_0

    .line 572
    :pswitch_3
    invoke-interface {v0, p2}, Lcom/bytedance/sdk/openadsdk/TTGlobalAppDownloadListener;->onDownloadFailed(Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;)V

    goto :goto_0

    .line 560
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/c/d;IJ)V
    .locals 11

    .prologue
    .line 499
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->a:Ljava/util/Map;

    iget-wide v2, p1, Lcom/bytedance/sdk/openadsdk/c/d;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 500
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->a:Ljava/util/Map;

    iget-wide v2, p1, Lcom/bytedance/sdk/openadsdk/c/d;->a:J

    .line 501
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 502
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->c:Ljava/util/Map;

    iget-wide v2, p1, Lcom/bytedance/sdk/openadsdk/c/d;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/c/y;

    .line 503
    if-nez v1, :cond_3

    .line 504
    new-instance v2, Lcom/bytedance/sdk/openadsdk/c/y;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/c/y;-><init>()V

    .line 505
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->c:Ljava/util/Map;

    iget-wide v4, p1, Lcom/bytedance/sdk/openadsdk/c/d;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    :goto_0
    iget-wide v4, p1, Lcom/bytedance/sdk/openadsdk/c/d;->a:J

    iput-wide v4, v2, Lcom/bytedance/sdk/openadsdk/c/y;->a:J

    .line 508
    iget v1, p1, Lcom/bytedance/sdk/openadsdk/c/d;->j:I

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/c/f;->a(I)I

    move-result v1

    iput v1, v2, Lcom/bytedance/sdk/openadsdk/c/y;->b:I

    .line 509
    iget-wide v4, p1, Lcom/bytedance/sdk/openadsdk/c/d;->s:J

    iput-wide v4, v2, Lcom/bytedance/sdk/openadsdk/c/y;->c:J

    .line 510
    iget-wide v4, p1, Lcom/bytedance/sdk/openadsdk/c/d;->t:J

    iput-wide v4, v2, Lcom/bytedance/sdk/openadsdk/c/y;->d:J

    .line 511
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/c/d;->e:Ljava/lang/String;

    iput-object v1, v2, Lcom/bytedance/sdk/openadsdk/c/y;->e:Ljava/lang/String;

    .line 512
    iget v1, v2, Lcom/bytedance/sdk/openadsdk/c/y;->b:I

    const/16 v3, 0x10

    if-ne v1, v3, :cond_0

    .line 513
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/n;->a()Lcom/bytedance/sdk/openadsdk/c/a/b;

    move-result-object v1

    .line 514
    if-eqz v1, :cond_0

    .line 515
    iget-wide v4, p1, Lcom/bytedance/sdk/openadsdk/c/d;->a:J

    const/4 v3, 0x5

    const-string v6, ""

    invoke-interface {v1, v4, v5, v3, v6}, Lcom/bytedance/sdk/openadsdk/c/a/b;->a(JILjava/lang/String;)V

    .line 519
    :cond_0
    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 520
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 521
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/c/e;

    .line 522
    if-eqz v1, :cond_1

    .line 523
    iget-wide v4, p1, Lcom/bytedance/sdk/openadsdk/c/d;->s:J

    iget-wide v6, p1, Lcom/bytedance/sdk/openadsdk/c/d;->t:J

    move v3, p2

    move-wide v8, p3

    invoke-interface/range {v1 .. v9}, Lcom/bytedance/sdk/openadsdk/c/e;->a(Lcom/bytedance/sdk/openadsdk/c/y;IJJJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 528
    :catch_0
    move-exception v0

    .line 532
    :cond_2
    return-void

    :cond_3
    move-object v2, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/c/g;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/c/g;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->e:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_0
    return-void
.end method

.method static a(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 634
    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    .line 638
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(II)Z
    .locals 1

    .prologue
    .line 618
    const/16 v0, 0xc7

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc6

    if-ne p0, v0, :cond_1

    .line 619
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/c/g;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 620
    const/4 v0, 0x1

    .line 622
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->e:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/c/g;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->i:Ljava/util/Set;

    return-object v0
.end method

.method public static b(Landroid/content/Context;J)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 789
    if-eqz p0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 797
    :cond_0
    :goto_0
    return-void

    .line 792
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 793
    const-string v1, "visibility"

    const/4 v2, 0x2

    .line 794
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 793
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 795
    sget-object v1, Lcom/bytedance/sdk/openadsdk/c/m$a;->a:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 796
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/c/i;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/c/i;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v3, v3}, Lcom/bytedance/sdk/openadsdk/c/i;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private b(Ljava/util/Collection;Z)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/bytedance/sdk/openadsdk/c/d;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/c/g;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 256
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 257
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/c/d;

    .line 258
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Lcom/bytedance/sdk/openadsdk/c/d;)Ljava/lang/String;

    move-result-object v5

    .line 259
    const/4 v3, 0x0

    .line 260
    if-eqz v5, :cond_1

    .line 261
    invoke-interface {v13, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :cond_1
    iget v5, v2, Lcom/bytedance/sdk/openadsdk/c/d;->j:I

    const/16 v6, 0xc0

    if-ne v5, v6, :cond_3

    .line 264
    const/4 v3, 0x1

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v6, v7}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Lcom/bytedance/sdk/openadsdk/c/d;IJ)V

    .line 265
    const/4 v3, 0x1

    .line 281
    :cond_2
    :goto_1
    if-nez p2, :cond_0

    iget v5, v2, Lcom/bytedance/sdk/openadsdk/c/d;->j:I

    const/16 v6, 0xc9

    if-eq v5, v6, :cond_0

    .line 282
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/bytedance/sdk/openadsdk/c/g;->d(Lcom/bytedance/sdk/openadsdk/c/d;)Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/c/g;->a(ILcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;)V

    goto :goto_0

    .line 266
    :cond_3
    iget v5, v2, Lcom/bytedance/sdk/openadsdk/c/d;->j:I

    const/16 v6, 0xc4

    if-eq v5, v6, :cond_4

    iget v5, v2, Lcom/bytedance/sdk/openadsdk/c/d;->j:I

    const/16 v6, 0xc1

    if-eq v5, v6, :cond_4

    iget v5, v2, Lcom/bytedance/sdk/openadsdk/c/d;->j:I

    const/16 v6, 0xc2

    if-eq v5, v6, :cond_4

    iget v5, v2, Lcom/bytedance/sdk/openadsdk/c/d;->j:I

    const/16 v6, 0xc3

    if-ne v5, v6, :cond_5

    .line 270
    :cond_4
    const/4 v3, 0x2

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v6, v7}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Lcom/bytedance/sdk/openadsdk/c/d;IJ)V

    .line 271
    const/4 v3, 0x2

    goto :goto_1

    .line 272
    :cond_5
    iget v5, v2, Lcom/bytedance/sdk/openadsdk/c/d;->j:I

    const/16 v6, 0xc7

    if-eq v5, v6, :cond_6

    iget v5, v2, Lcom/bytedance/sdk/openadsdk/c/d;->j:I

    const/16 v6, 0xc6

    if-ne v5, v6, :cond_7

    .line 274
    :cond_6
    const/4 v3, 0x4

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v6, v7}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Lcom/bytedance/sdk/openadsdk/c/d;IJ)V

    .line 275
    const/4 v3, 0x4

    goto :goto_1

    .line 277
    :cond_7
    iget v5, v2, Lcom/bytedance/sdk/openadsdk/c/d;->j:I

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/c/m$a;->c(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 278
    const/4 v3, 0x3

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v6, v7}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Lcom/bytedance/sdk/openadsdk/c/d;IJ)V

    .line 279
    const/4 v3, 0x3

    goto :goto_1

    .line 285
    :cond_8
    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_9
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 287
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->a()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/h;->j()Z

    move-result v3

    if-nez v3, :cond_b

    .line 476
    :cond_a
    return-void

    .line 290
    :cond_b
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/c/g;->d(Ljava/lang/String;)I

    move-result v17

    .line 291
    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/c/d;

    .line 292
    if-eqz v3, :cond_9

    .line 295
    new-instance v18, Lcom/bytedance/sdk/openadsdk/c/r;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/c/g;->f:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/bytedance/sdk/openadsdk/c/r;-><init>(Landroid/content/Context;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/c/g;->k:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 299
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/c/g;->k:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-wide v14, v4

    .line 304
    :goto_3
    const/4 v6, 0x0

    .line 305
    const/4 v5, 0x0

    .line 306
    const/4 v4, 0x0

    .line 307
    const/4 v7, 0x1

    move/from16 v0, v17

    if-ne v0, v7, :cond_11

    .line 308
    const v6, 0x1080081

    .line 309
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/c/g;->f:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/bytedance/sdk/openadsdk/R$color;->tt_download_action_active:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 310
    sget v4, Lcom/bytedance/sdk/openadsdk/R$drawable;->tt_download_active:I

    move v10, v4

    move v11, v5

    move v12, v6

    .line 323
    :goto_4
    const/4 v4, 0x1

    move/from16 v0, v17

    if-eq v0, v4, :cond_c

    const/4 v4, 0x2

    move/from16 v0, v17

    if-ne v0, v4, :cond_15

    .line 324
    :cond_c
    sget-object v4, Lcom/bytedance/sdk/openadsdk/c/m$a;->a:Landroid/net/Uri;

    iget-wide v6, v3, Lcom/bytedance/sdk/openadsdk/c/d;->a:J

    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 326
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.ss.intent.action.DOWNLOAD_DELETE"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/c/g;->f:Landroid/content/Context;

    const-class v8, Lcom/bytedance/sdk/openadsdk/service/TTDownloadHandlerService;

    invoke-direct {v5, v6, v4, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 328
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/c/g;->f:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x8000000

    invoke-static {v4, v6, v5, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Lcom/bytedance/sdk/openadsdk/c/o;->a(Landroid/app/PendingIntent;)Lcom/bytedance/sdk/openadsdk/c/o;

    .line 330
    const/4 v4, 0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_14

    .line 331
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Lcom/bytedance/sdk/openadsdk/c/o;->a(Z)Lcom/bytedance/sdk/openadsdk/c/o;

    .line 359
    :cond_d
    :goto_5
    const/4 v4, 0x0

    .line 360
    sget-object v5, Lcom/bytedance/sdk/openadsdk/c/m$a;->a:Landroid/net/Uri;

    iget-wide v6, v3, Lcom/bytedance/sdk/openadsdk/c/d;->a:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 362
    const-string v6, "android.ss.intent.action.DOWNLOAD_CLICK"

    .line 363
    new-instance v19, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/c/g;->f:Landroid/content/Context;

    const-class v8, Lcom/bytedance/sdk/openadsdk/service/TTDownloadHandlerService;

    move-object/from16 v0, v19

    invoke-direct {v0, v6, v5, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 364
    const-string v5, "extra_click_download_ids"

    iget-wide v6, v3, Lcom/bytedance/sdk/openadsdk/c/d;->a:J

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 366
    const-string v5, "extra_notification_tag"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    const/4 v5, 0x1

    move/from16 v0, v17

    if-eq v0, v5, :cond_e

    const/4 v5, 0x2

    move/from16 v0, v17

    if-ne v0, v5, :cond_f

    .line 369
    :cond_e
    const-wide/16 v8, 0x0

    .line 370
    const-wide/16 v6, 0x0

    .line 371
    const-wide/16 v4, 0x0

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/c/g;->l:Lcom/bytedance/sdk/openadsdk/c/q;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 373
    :try_start_0
    iget-wide v0, v3, Lcom/bytedance/sdk/openadsdk/c/d;->s:J

    move-wide/from16 v22, v0

    const-wide/16 v24, -0x1

    cmp-long v21, v22, v24

    if-eqz v21, :cond_26

    .line 374
    iget-wide v0, v3, Lcom/bytedance/sdk/openadsdk/c/d;->t:J

    move-wide/from16 v22, v0

    add-long v8, v8, v22

    .line 375
    iget-wide v0, v3, Lcom/bytedance/sdk/openadsdk/c/d;->s:J

    move-wide/from16 v22, v0

    add-long v6, v6, v22

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/c/g;->l:Lcom/bytedance/sdk/openadsdk/c/q;

    move-object/from16 v21, v0

    iget-wide v0, v3, Lcom/bytedance/sdk/openadsdk/c/d;->a:J

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Lcom/bytedance/sdk/openadsdk/c/q;->a(J)J

    move-result-wide v22

    add-long v4, v4, v22

    move-wide/from16 v26, v4

    move-wide v4, v6

    move-wide/from16 v6, v26

    .line 378
    :goto_6
    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    const-wide/16 v20, 0x0

    cmp-long v20, v4, v20

    if-lez v20, :cond_18

    .line 380
    const-wide/16 v20, 0x64

    mul-long v8, v8, v20

    div-long v4, v8, v4

    long-to-int v4, v4

    .line 384
    :goto_7
    const/4 v5, 0x1

    move/from16 v0, v17

    if-ne v0, v5, :cond_f

    .line 385
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5, v6, v7}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Lcom/bytedance/sdk/openadsdk/c/d;IJ)V

    :cond_f
    move v6, v4

    .line 390
    if-nez p2, :cond_9

    .line 393
    move-object/from16 v0, v18

    invoke-interface {v0, v14, v15}, Lcom/bytedance/sdk/openadsdk/c/o;->a(J)Lcom/bytedance/sdk/openadsdk/c/o;

    .line 394
    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Lcom/bytedance/sdk/openadsdk/c/o;->a(I)Lcom/bytedance/sdk/openadsdk/c/o;

    .line 395
    new-instance v7, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/c/g;->f:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/bytedance/sdk/openadsdk/R$layout;->tt_ttopenad_download_notification_layout:I

    invoke-direct {v7, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 398
    iget-wide v4, v3, Lcom/bytedance/sdk/openadsdk/c/d;->m:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 399
    iget-object v8, v3, Lcom/bytedance/sdk/openadsdk/c/d;->C:Ljava/lang/String;

    .line 400
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->a()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 401
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/bytedance/sdk/openadsdk/c/g;->f:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v14, Lcom/bytedance/sdk/openadsdk/R$string;->tt_download_source:I

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/bytedance/sdk/openadsdk/c/g;->f:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v14, Lcom/bytedance/sdk/openadsdk/R$string;->tt_open_ad_sdk_source:I

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 405
    :goto_8
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 406
    sget v8, Lcom/bytedance/sdk/openadsdk/R$id;->icon:I

    invoke-virtual {v7, v8, v12}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 415
    :goto_9
    :try_start_1
    sget v8, Lcom/bytedance/sdk/openadsdk/R$id;->tt_download_time:I

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-string v5, "HH:mm"

    invoke-static {v14, v15, v5}, Lcom/bytedance/sdk/openadsdk/h/r;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v8, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    .line 419
    :goto_a
    sget v5, Lcom/bytedance/sdk/openadsdk/R$id;->tt_download_progress:I

    const/16 v8, 0x64

    const/4 v9, 0x0

    invoke-virtual {v7, v5, v8, v6, v9}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 420
    sget v5, Lcom/bytedance/sdk/openadsdk/R$id;->action_download_img:I

    invoke-virtual {v7, v5, v10}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 421
    sget v5, Lcom/bytedance/sdk/openadsdk/R$id;->tt_download_source:I

    invoke-virtual {v7, v5, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 423
    sget v4, Lcom/bytedance/sdk/openadsdk/R$id;->ll_action:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/c/g;->f:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v8, 0x8000000

    move-object/from16 v0, v19

    invoke-static {v5, v6, v0, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 425
    sget v4, Lcom/bytedance/sdk/openadsdk/R$id;->desc:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/bytedance/sdk/openadsdk/c/g;->c(Lcom/bytedance/sdk/openadsdk/c/d;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 426
    const-string v5, ""

    .line 427
    const-string v4, ""

    .line 428
    const/4 v6, 0x1

    move/from16 v0, v17

    if-ne v0, v6, :cond_1c

    .line 429
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v3, Lcom/bytedance/sdk/openadsdk/c/d;->t:J

    invoke-static {v8, v9}, Lcom/bytedance/sdk/openadsdk/h/q;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v8, v3, Lcom/bytedance/sdk/openadsdk/c/d;->s:J

    invoke-static {v8, v9}, Lcom/bytedance/sdk/openadsdk/h/q;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 430
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/c/g;->f:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/bytedance/sdk/openadsdk/R$string;->tt_downloading:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 451
    :goto_b
    sget v5, Lcom/bytedance/sdk/openadsdk/R$id;->download_size:I

    invoke-virtual {v7, v5, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 452
    sget v4, Lcom/bytedance/sdk/openadsdk/R$id;->action:I

    invoke-virtual {v7, v4, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 453
    sget v3, Lcom/bytedance/sdk/openadsdk/R$id;->action:I

    invoke-virtual {v7, v3, v11}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 454
    invoke-interface/range {v18 .. v18}, Lcom/bytedance/sdk/openadsdk/c/o;->a()Landroid/app/Notification;

    move-result-object v3

    .line 455
    iput-object v7, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 456
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/c/g;->g:Landroid/app/NotificationManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto/16 :goto_2

    .line 301
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 302
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/c/g;->k:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-wide v14, v4

    goto/16 :goto_3

    .line 311
    :cond_11
    const/4 v7, 0x2

    move/from16 v0, v17

    if-ne v0, v7, :cond_12

    .line 312
    const v6, 0x108008a

    .line 313
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/c/g;->f:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/bytedance/sdk/openadsdk/R$color;->tt_download_action_pause:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 314
    sget v4, Lcom/bytedance/sdk/openadsdk/R$drawable;->tt_download_pause:I

    .line 315
    const/4 v7, 0x2

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7, v8, v9}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Lcom/bytedance/sdk/openadsdk/c/d;IJ)V

    move v10, v4

    move v11, v5

    move v12, v6

    goto/16 :goto_4

    .line 316
    :cond_12
    const/4 v7, 0x3

    move/from16 v0, v17

    if-ne v0, v7, :cond_13

    .line 317
    const v6, 0x1080082

    .line 318
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/c/g;->f:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/bytedance/sdk/openadsdk/R$color;->tt_download_action_active:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 319
    sget v4, Lcom/bytedance/sdk/openadsdk/R$drawable;->tt_download_active:I

    .line 320
    const/4 v7, 0x3

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7, v8, v9}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Lcom/bytedance/sdk/openadsdk/c/d;IJ)V

    :cond_13
    move v10, v4

    move v11, v5

    move v12, v6

    goto/16 :goto_4

    .line 333
    :cond_14
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Lcom/bytedance/sdk/openadsdk/c/o;->b(Z)Lcom/bytedance/sdk/openadsdk/c/o;

    goto/16 :goto_5

    .line 335
    :cond_15
    const/4 v4, 0x3

    move/from16 v0, v17

    if-ne v0, v4, :cond_d

    .line 336
    sget-object v4, Lcom/bytedance/sdk/openadsdk/c/m$a;->a:Landroid/net/Uri;

    iget-wide v6, v3, Lcom/bytedance/sdk/openadsdk/c/d;->a:J

    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 338
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Lcom/bytedance/sdk/openadsdk/c/o;->b(Z)Lcom/bytedance/sdk/openadsdk/c/o;

    .line 341
    iget v4, v3, Lcom/bytedance/sdk/openadsdk/c/d;->j:I

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/c/m$a;->b(I)Z

    move-result v4

    if-nez v4, :cond_16

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/c/g;->b(Lcom/bytedance/sdk/openadsdk/c/d;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 342
    :cond_16
    const-string v4, "android.ss.intent.action.DOWNLOAD_DELETE"

    .line 347
    :goto_c
    new-instance v6, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/c/g;->f:Landroid/content/Context;

    const-class v8, Lcom/bytedance/sdk/openadsdk/service/TTDownloadHandlerService;

    invoke-direct {v6, v4, v5, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 348
    const-string v4, "extra_click_download_ids"

    iget-wide v8, v3, Lcom/bytedance/sdk/openadsdk/c/d;->a:J

    invoke-virtual {v6, v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 350
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/c/g;->f:Landroid/content/Context;

    const/4 v7, 0x0

    const/high16 v8, 0x8000000

    invoke-static {v4, v7, v6, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Lcom/bytedance/sdk/openadsdk/c/o;->a(Landroid/app/PendingIntent;)Lcom/bytedance/sdk/openadsdk/c/o;

    .line 353
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.ss.intent.action.DOWNLOAD_HIDE"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/c/g;->f:Landroid/content/Context;

    const-class v8, Lcom/bytedance/sdk/openadsdk/service/TTDownloadHandlerService;

    invoke-direct {v4, v6, v5, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 355
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/c/g;->f:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v4, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Lcom/bytedance/sdk/openadsdk/c/o;->b(Landroid/app/PendingIntent;)Lcom/bytedance/sdk/openadsdk/c/o;

    goto/16 :goto_5

    .line 344
    :cond_17
    const-string v4, "android.ss.intent.action.DOWNLOAD_OPEN"

    goto :goto_c

    .line 378
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 382
    :cond_18
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 403
    :cond_19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/bytedance/sdk/openadsdk/c/g;->f:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v14, Lcom/bytedance/sdk/openadsdk/R$string;->tt_download_source:I

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->a()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v9

    invoke-virtual {v9}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_8

    .line 408
    :cond_1a
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/bytedance/sdk/openadsdk/c/g;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v9, :cond_1b

    .line 409
    sget v9, Lcom/bytedance/sdk/openadsdk/R$id;->icon:I

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/bytedance/sdk/openadsdk/c/g;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_9

    .line 411
    :cond_1b
    sget v8, Lcom/bytedance/sdk/openadsdk/R$id;->icon:I

    sget v9, Lcom/bytedance/sdk/openadsdk/R$drawable;->tt_ad_logo_small:I

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_9

    .line 416
    :catch_0
    move-exception v5

    .line 417
    invoke-virtual {v5}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_a

    .line 431
    :cond_1c
    const/4 v6, 0x2

    move/from16 v0, v17

    if-ne v0, v6, :cond_1d

    .line 432
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v3, Lcom/bytedance/sdk/openadsdk/c/d;->t:J

    invoke-static {v8, v9}, Lcom/bytedance/sdk/openadsdk/h/q;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v8, v3, Lcom/bytedance/sdk/openadsdk/c/d;->s:J

    invoke-static {v8, v9}, Lcom/bytedance/sdk/openadsdk/h/q;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 433
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/c/g;->f:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/bytedance/sdk/openadsdk/R$string;->tt_download_pause:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_b

    .line 434
    :cond_1d
    const/4 v6, 0x3

    move/from16 v0, v17

    if-ne v0, v6, :cond_25

    .line 435
    iget v6, v3, Lcom/bytedance/sdk/openadsdk/c/d;->j:I

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/c/m$a;->b(I)Z

    move-result v6

    if-nez v6, :cond_1e

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/c/g;->b(Lcom/bytedance/sdk/openadsdk/c/d;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 436
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/c/g;->f:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/bytedance/sdk/openadsdk/R$string;->tt_download_failed:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 437
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/c/g;->b(Lcom/bytedance/sdk/openadsdk/c/d;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 438
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/c/g;->f:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/bytedance/sdk/openadsdk/R$string;->tt_download_size_off:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_b

    .line 440
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/c/g;->f:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/bytedance/sdk/openadsdk/R$string;->tt_download_restart:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_b

    .line 442
    :cond_20
    iget v6, v3, Lcom/bytedance/sdk/openadsdk/c/d;->j:I

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/c/m$a;->a(I)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 443
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/c/g;->f:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/bytedance/sdk/openadsdk/R$string;->tt_download_finish:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 444
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/c/g;->f:Landroid/content/Context;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/c/d;->e:Ljava/lang/String;

    invoke-static {v5, v3}, Lcom/bytedance/sdk/openadsdk/h/r;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 445
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/c/g;->f:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/bytedance/sdk/openadsdk/R$string;->tt_download_open:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_b

    .line 447
    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/c/g;->f:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/bytedance/sdk/openadsdk/R$string;->tt_download_install:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_b

    .line 459
    :cond_22
    if-nez p2, :cond_a

    .line 461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/c/g;->k:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 462
    :cond_23
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 463
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 464
    invoke-interface {v13, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 465
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/c/g;->g:Landroid/app/NotificationManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 466
    sget-object v4, Lcom/bytedance/sdk/openadsdk/c/g;->j:Ljava/lang/Object;

    monitor-enter v4

    .line 467
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/c/g;->i:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 468
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/c/g;->i:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 469
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/c/g;->d()V

    .line 471
    :cond_24
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 472
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_d

    .line 471
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    :cond_25
    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_b

    :cond_26
    move-wide/from16 v26, v4

    move-wide v4, v6

    move-wide/from16 v6, v26

    goto/16 :goto_6
.end method

.method static b(I)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 642
    if-eq p0, v0, :cond_0

    if-nez p0, :cond_1

    .line 646
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(II)Z
    .locals 1

    .prologue
    .line 626
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/c/m$a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/c/g;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    const/4 v0, 0x1

    .line 630
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(Lcom/bytedance/sdk/openadsdk/c/d;)Z
    .locals 2

    .prologue
    .line 614
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/c/d;->j:I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/c/d;->h:I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/c/g;->a(II)Z

    move-result v0

    return v0
.end method

.method private c(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/c/g;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->d:Lcom/androidquery/callback/AQuery2;

    const-class v1, Landroid/graphics/Bitmap;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/c/g$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/c/g$1;-><init>(Lcom/bytedance/sdk/openadsdk/c/g;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/androidquery/callback/AQuery2;->ajax(Ljava/lang/String;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    .line 145
    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/c/g;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private c(Lcom/bytedance/sdk/openadsdk/c/d;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 479
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/c/d;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 480
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/c/d;->A:Ljava/lang/String;

    .line 482
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/bytedance/sdk/openadsdk/R$string;->tt_download_title_unnamed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/g;->j:Ljava/lang/Object;

    return-object v0
.end method

.method public static c(Landroid/content/Context;J)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 800
    if-eqz p0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 813
    :cond_0
    :goto_0
    return-void

    .line 803
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 804
    const-string v1, "visibility"

    const/16 v2, 0xc8

    .line 805
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 804
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 806
    sget-object v1, Lcom/bytedance/sdk/openadsdk/c/m$a;->a:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 807
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/c/i;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/c/i;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v4, v4}, Lcom/bytedance/sdk/openadsdk/c/i;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 809
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 810
    const-string v2, "status"

    const/16 v3, 0xc9

    .line 811
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 810
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 812
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/c/i;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/c/i;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v4, v4}, Lcom/bytedance/sdk/openadsdk/c/i;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 654
    const/4 v0, 0x0

    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private d(Lcom/bytedance/sdk/openadsdk/c/d;)Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;
    .locals 4

    .prologue
    .line 535
    if-nez p1, :cond_0

    .line 536
    const/4 v0, 0x0

    .line 545
    :goto_0
    return-object v0

    .line 538
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;-><init>()V

    .line 539
    iget-wide v2, p1, Lcom/bytedance/sdk/openadsdk/c/d;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;->setId(J)V

    .line 540
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/c/d;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;->setAppName(Ljava/lang/String;)V

    .line 541
    iget-wide v2, p1, Lcom/bytedance/sdk/openadsdk/c/d;->s:J

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;->setTotalBytes(J)V

    .line 542
    iget-wide v2, p1, Lcom/bytedance/sdk/openadsdk/c/d;->t:J

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;->setCurrBytes(J)V

    .line 543
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/c/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;->setFileName(Ljava/lang/String;)V

    .line 544
    iget v1, p1, Lcom/bytedance/sdk/openadsdk/c/d;->j:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadInfo;->setInternalStatusKey(I)V

    goto :goto_0
.end method

.method private d()V
    .locals 6

    .prologue
    .line 730
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->i:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 732
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 733
    sget-object v3, Lcom/bytedance/sdk/openadsdk/c/g;->j:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 735
    const/4 v0, 0x0

    move v1, v0

    .line 736
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 737
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 738
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/c/g;->i:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v1, v5, :cond_0

    .line 739
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "|"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 744
    goto :goto_0

    .line 741
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 745
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 756
    :catch_0
    move-exception v0

    .line 760
    :cond_1
    :goto_2
    return-void

    .line 745
    :cond_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 746
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 747
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->f:Landroid/content/Context;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/c/g$3;

    invoke-direct {v2, p0, v0}, Lcom/bytedance/sdk/openadsdk/c/g$3;-><init>(Lcom/bytedance/sdk/openadsdk/c/g;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/c/h;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/c/h$b;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2
.end method

.method private e()V
    .locals 2

    .prologue
    .line 764
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->f:Landroid/content/Context;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/c/g$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/c/g$4;-><init>(Lcom/bytedance/sdk/openadsdk/c/g;)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/c/h;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/c/h$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    :goto_0
    return-void

    .line 783
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static e(Lcom/bytedance/sdk/openadsdk/c/d;)Z
    .locals 2

    .prologue
    .line 658
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/c/d;->j:I

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/c/d;->h:I

    .line 659
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/g;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 658
    :goto_0
    return v0

    .line 659
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static f(Lcom/bytedance/sdk/openadsdk/c/d;)Z
    .locals 2

    .prologue
    .line 663
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/c/d;->j:I

    const/16 v1, 0xc4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/c/d;->j:I

    const/16 v1, 0xc1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/c/d;->j:I

    const/16 v1, 0xc2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/c/d;->j:I

    const/16 v1, 0xc3

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/c/d;->h:I

    .line 667
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/g;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 663
    :goto_0
    return v0

    .line 667
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static g(Lcom/bytedance/sdk/openadsdk/c/d;)Z
    .locals 2

    .prologue
    .line 671
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/c/d;->j:I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/c/d;->h:I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/c/g;->b(II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(J)Lcom/bytedance/sdk/openadsdk/core/d/e;
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->b:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/e;

    .line 106
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 5

    .prologue
    .line 218
    sget-object v1, Lcom/bytedance/sdk/openadsdk/c/g;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 220
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 222
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/c/g;->g:Landroid/app/NotificationManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 223
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    return-void
.end method

.method a(JII)V
    .locals 3

    .prologue
    .line 607
    invoke-static {p3, p4}, Lcom/bytedance/sdk/openadsdk/c/g;->b(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 609
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/lang/String;)V

    .line 611
    :cond_0
    return-void
.end method

.method public a(JJ)V
    .locals 5

    .prologue
    .line 233
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->l:Lcom/bytedance/sdk/openadsdk/c/q;

    monitor-enter v1

    .line 234
    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    if-eqz v0, :cond_0

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->l:Lcom/bytedance/sdk/openadsdk/c/q;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/c/q;->b(JJ)V

    .line 236
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->m:Lcom/bytedance/sdk/openadsdk/c/q;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, p1, p2, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/q;->b(JJ)V

    .line 241
    :goto_0
    monitor-exit v1

    .line 242
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->l:Lcom/bytedance/sdk/openadsdk/c/q;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/c/q;->b(J)V

    .line 239
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->m:Lcom/bytedance/sdk/openadsdk/c/q;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/c/q;->b(J)V

    goto :goto_0

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/content/Context;J)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 699
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/m$a;->a:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 700
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/c/i;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/c/i;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/c/i;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 702
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 703
    const-string v0, "status"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 704
    const-string v0, "visibility"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Landroid/database/Cursor;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 714
    if-eqz v1, :cond_0

    .line 715
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :cond_0
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 721
    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Landroid/content/Context;JII)V

    .line 722
    invoke-virtual {p0, p2, p3, v4, v5}, Lcom/bytedance/sdk/openadsdk/c/g;->a(JII)V

    .line 723
    :cond_1
    :goto_1
    return-void

    .line 706
    :cond_2
    :try_start_2
    const-string v0, "DownloadNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing details for download "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 714
    if-eqz v1, :cond_1

    .line 715
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 717
    :catch_0
    move-exception v0

    goto :goto_1

    .line 709
    :catch_1
    move-exception v0

    .line 714
    if-eqz v1, :cond_1

    .line 715
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 717
    :catch_2
    move-exception v0

    goto :goto_1

    .line 713
    :catchall_0
    move-exception v0

    .line 714
    if-eqz v1, :cond_3

    .line 715
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 719
    :cond_3
    :goto_2
    throw v0

    .line 717
    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_2
.end method

.method a(Landroid/content/Context;JII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 679
    invoke-static {p4, p5}, Lcom/bytedance/sdk/openadsdk/c/g;->b(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 680
    invoke-static {p4, p5}, Lcom/bytedance/sdk/openadsdk/c/g;->a(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 682
    const-string v1, "visibility"

    const/16 v2, 0xc8

    .line 683
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 682
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 684
    const-string v1, "visibility"

    const/4 v2, 0x0

    .line 685
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 684
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 686
    sget-object v1, Lcom/bytedance/sdk/openadsdk/c/m$a;->a:Landroid/net/Uri;

    invoke-static {v1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 687
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/c/i;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/c/i;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v3, v3}, Lcom/bytedance/sdk/openadsdk/c/i;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 689
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/Long;Lcom/bytedance/sdk/openadsdk/c/e;)V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/WeakHashMap;

    .line 150
    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_2
    return-void
.end method

.method public a(Ljava/lang/Long;Lcom/bytedance/sdk/openadsdk/c/e;Lcom/bytedance/sdk/openadsdk/core/d/e;)V
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/WeakHashMap;

    .line 87
    if-nez v0, :cond_0

    .line 88
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 89
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_0
    if-eqz p2, :cond_1

    .line 92
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p2, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/e;->a(J)V

    .line 93
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p2, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/y;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/c/y;-><init>()V

    .line 95
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/d/e;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_2
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 487
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 488
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->g:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 489
    sget-object v1, Lcom/bytedance/sdk/openadsdk/c/g;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 490
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 492
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->d()V

    .line 494
    :cond_0
    monitor-exit v1

    .line 496
    :cond_1
    return-void

    .line 494
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/util/Collection;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/bytedance/sdk/openadsdk/c/d;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 249
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->k:Ljava/util/HashMap;

    monitor-enter v1

    .line 250
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/c/g;->b(Ljava/util/Collection;Z)V

    .line 251
    monitor-exit v1

    .line 252
    return-void

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 10

    .prologue
    .line 580
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/g;->l:Lcom/bytedance/sdk/openadsdk/c/q;

    monitor-enter v1

    .line 581
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/g;->l:Lcom/bytedance/sdk/openadsdk/c/q;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/c/q;->b()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 582
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/g;->l:Lcom/bytedance/sdk/openadsdk/c/q;

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/c/q;->b(I)J

    move-result-wide v2

    .line 583
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/c/g;->m:Lcom/bytedance/sdk/openadsdk/c/q;

    invoke-virtual {v6, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/q;->a(J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 584
    const-string v6, "DownloadNotifier"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Download "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " speed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/c/g;->l:Lcom/bytedance/sdk/openadsdk/c/q;

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/c/q;->c(I)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bps, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms ago"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 587
    :cond_0
    monitor-exit v1

    .line 588
    return-void

    .line 587
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(J)V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g;->b:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_0
    return-void
.end method
