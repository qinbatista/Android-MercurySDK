.class public Lcom/bytedance/sdk/openadsdk/c/d;
.super Ljava/lang/Object;
.source "DownloadInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/c/d$a;,
        Lcom/bytedance/sdk/openadsdk/c/d$b;
    }
.end annotation


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:Ljava/lang/String;

.field public D:I

.field public E:I

.field private F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private G:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private H:Lcom/bytedance/sdk/openadsdk/c/k;

.field private final I:Landroid/content/Context;

.field private J:Landroid/app/NotificationManager;

.field private final K:Lcom/bytedance/sdk/openadsdk/c/w;

.field private final L:Lcom/bytedance/sdk/openadsdk/c/v;

.field private final M:Lcom/bytedance/sdk/openadsdk/c/g;

.field public a:J

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:J

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:J

.field public t:J

.field public u:Ljava/lang/String;

.field public v:I

.field public w:Z

.field public x:Ljava/lang/String;

.field public y:I

.field public z:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/c/w;Lcom/bytedance/sdk/openadsdk/c/v;Lcom/bytedance/sdk/openadsdk/c/g;)V
    .locals 2

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/d;->F:Ljava/util/List;

    .line 242
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/d;->I:Landroid/content/Context;

    .line 243
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/d;->I:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/d;->J:Landroid/app/NotificationManager;

    .line 245
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/c/d;->K:Lcom/bytedance/sdk/openadsdk/c/w;

    .line 246
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/c/d;->L:Lcom/bytedance/sdk/openadsdk/c/v;

    .line 247
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/c/d;->M:Lcom/bytedance/sdk/openadsdk/c/g;

    .line 248
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/n;->a:Ljava/util/Random;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/c/d;->E:I

    .line 249
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/c/w;Lcom/bytedance/sdk/openadsdk/c/v;Lcom/bytedance/sdk/openadsdk/c/g;Lcom/bytedance/sdk/openadsdk/c/d$1;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/c/d;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/c/w;Lcom/bytedance/sdk/openadsdk/c/v;Lcom/bytedance/sdk/openadsdk/c/g;)V

    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/c/i;J)I
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 568
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/m$a;->a:Landroid/net/Uri;

    .line 569
    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "status"

    aput-object v0, v2, v4

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    .line 568
    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/c/i;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 572
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 573
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 581
    if-eqz v1, :cond_0

    .line 582
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 577
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v0, 0xbe

    .line 581
    if-eqz v1, :cond_0

    .line 582
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 584
    :catch_0
    move-exception v1

    goto :goto_0

    .line 580
    :catchall_0
    move-exception v0

    .line 581
    if-eqz v1, :cond_2

    .line 582
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 586
    :cond_2
    :goto_1
    throw v0

    .line 584
    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/c/d;)Ljava/util/List;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/d;->F:Ljava/util/List;

    return-object v0
.end method

.method private b(I)Lcom/bytedance/sdk/openadsdk/c/d$a;
    .locals 3

    .prologue
    .line 371
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/c/d;->c(I)I

    move-result v1

    .line 372
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/c/d;->y:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    .line 373
    :goto_0
    if-nez v0, :cond_1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/c/d;->y:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 374
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/d$a;->f:Lcom/bytedance/sdk/openadsdk/c/d$a;

    .line 376
    :goto_1
    return-object v0

    .line 372
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 376
    :cond_1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/c/d;->d(I)Lcom/bytedance/sdk/openadsdk/c/d$a;

    move-result-object v0

    goto :goto_1
.end method

.method private c(I)I
    .locals 1

    .prologue
    .line 386
    packed-switch p1, :pswitch_data_0

    .line 394
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 388
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 391
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 386
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private d(I)Lcom/bytedance/sdk/openadsdk/c/d$a;
    .locals 4

    .prologue
    .line 410
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/c/d;->s:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 411
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/d$a;->a:Lcom/bytedance/sdk/openadsdk/c/d$a;

    .line 427
    :goto_0
    return-object v0

    .line 413
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 414
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/d$a;->a:Lcom/bytedance/sdk/openadsdk/c/d$a;

    goto :goto_0

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/d;->K:Lcom/bytedance/sdk/openadsdk/c/w;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/c/w;->d()Ljava/lang/Long;

    move-result-object v0

    .line 417
    if-eqz v0, :cond_2

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/c/d;->s:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-lez v0, :cond_2

    .line 418
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/d$a;->c:Lcom/bytedance/sdk/openadsdk/c/d$a;

    goto :goto_0

    .line 420
    :cond_2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/c/d;->D:I

    if-nez v0, :cond_3

    .line 421
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/d;->K:Lcom/bytedance/sdk/openadsdk/c/w;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/c/w;->e()Ljava/lang/Long;

    move-result-object v0

    .line 422
    if-eqz v0, :cond_3

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/c/d;->s:J

    .line 423
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-lez v0, :cond_3

    .line 424
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/d$a;->d:Lcom/bytedance/sdk/openadsdk/c/d$a;

    goto :goto_0

    .line 427
    :cond_3
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/d$a;->a:Lcom/bytedance/sdk/openadsdk/c/d$a;

    goto :goto_0
.end method

.method private f()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 301
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/c/d;->i:I

    if-ne v2, v0, :cond_0

    .line 327
    :goto_0
    :sswitch_0
    return v1

    .line 305
    :cond_0
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/c/d;->j:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_1
    move v1, v0

    .line 310
    goto :goto_0

    .line 314
    :sswitch_2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/d;->h()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/c/d;->b()Lcom/bytedance/sdk/openadsdk/c/d$a;

    move-result-object v2

    sget-object v3, Lcom/bytedance/sdk/openadsdk/c/d$a;->a:Lcom/bytedance/sdk/openadsdk/c/d$a;

    if-ne v2, v3, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 318
    :sswitch_3
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/d;->K:Lcom/bytedance/sdk/openadsdk/c/w;

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/c/w;->a()J

    move-result-wide v2

    .line 319
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/d;->h()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/d;->a(J)J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-gtz v2, :cond_2

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    .line 322
    :sswitch_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 305
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xbe -> :sswitch_1
        0xc0 -> :sswitch_1
        0xc2 -> :sswitch_3
        0xc3 -> :sswitch_2
        0xc4 -> :sswitch_2
        0xc6 -> :sswitch_0
        0xc7 -> :sswitch_4
    .end sparse-switch
.end method

.method private g()Z
    .locals 1

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/c/d;->z:Z

    return v0
.end method

.method private h()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 399
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/d;->K:Lcom/bytedance/sdk/openadsdk/c/w;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/c/w;->b()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 400
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 401
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/c/d;->c(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 400
    :goto_0
    return v0

    .line 401
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(J)J
    .locals 5

    .prologue
    .line 286
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/c/d;->k:I

    if-nez v0, :cond_0

    .line 292
    :goto_0
    return-wide p1

    .line 289
    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/c/d;->l:I

    if-lez v0, :cond_1

    .line 290
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/c/d;->m:J

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/c/d;->l:I

    int-to-long v2, v2

    add-long p1, v0, v2

    goto :goto_0

    .line 292
    :cond_1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/c/d;->m:J

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/c/d;->E:I

    add-int/lit16 v2, v2, 0x3e8

    mul-int/lit8 v2, v2, 0x1e

    const/4 v3, 0x1

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/c/d;->k:I

    add-int/lit8 v4, v4, -0x1

    shl-int/2addr v3, v4

    mul-int/2addr v2, v3

    int-to-long v2, v2

    add-long p1, v0, v2

    goto :goto_0
.end method

.method public a()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/d;->F:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x4
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/d;->n:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 280
    :goto_0
    return-void

    .line 262
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.ss.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/d;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/d;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 266
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/d;->e:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 267
    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 268
    :goto_1
    if-eqz v0, :cond_1

    .line 269
    const-string v2, "extra_app_package"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/d;->n:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const-string v0, "extra_download_id"

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/c/d;->a:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 277
    const-string v0, "extra_download_visibility"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/c/d;->h:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 278
    const-string v0, "status"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 279
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/d;->K:Lcom/bytedance/sdk/openadsdk/c/w;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/c/w;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 267
    :cond_2
    :try_start_1
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 272
    :catch_0
    move-exception v0

    .line 273
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/c/p;)V
    .locals 4

    .prologue
    .line 495
    const-string v0, "DownloadInfo:"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/c/p;->println(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/c/p;->a()V

    .line 498
    const-string v0, "mId"

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/c/d;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 499
    const-string v0, "mLastMod"

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/c/d;->m:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 500
    const-string v0, "mPackage"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/d;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 501
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/c/p;->println()V

    .line 503
    const-string v0, "mUri"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/d;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 504
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/c/p;->println()V

    .line 506
    const-string v0, "mMimeType"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/d;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 507
    const-string v1, "mCookies"

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/d;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "yes"

    :goto_0
    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 508
    const-string v1, "mReferer"

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/d;->r:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "yes"

    :goto_1
    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 509
    const-string v0, "mUserAgent"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/d;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 510
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/c/p;->println()V

    .line 512
    const-string v0, "mFileName"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/d;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 513
    const-string v0, "mDestination"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/c/d;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 514
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/c/p;->println()V

    .line 516
    const-string v0, "mStatus"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/c/d;->j:I

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/c/m$a;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 517
    const-string v0, "mCurrentBytes"

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/c/d;->t:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 518
    const-string v0, "mTotalBytes"

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/c/d;->s:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 519
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/c/p;->println()V

    .line 521
    const-string v0, "mNumFailed"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/c/d;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 522
    const-string v0, "mRetryAfter"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/c/d;->l:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 523
    const-string v0, "mETag"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/d;->u:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 524
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/c/p;->println()V

    .line 526
    const-string v0, "mAllowedNetworkTypes"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/c/d;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 527
    const-string v0, "mAllowRoaming"

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/c/d;->z:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 528
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/c/p;->println()V

    .line 530
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/c/p;->b()V

    .line 531
    return-void

    .line 507
    :cond_0
    const-string v0, "no"

    goto/16 :goto_0

    .line 508
    :cond_1
    const-string v0, "no"

    goto/16 :goto_1
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/c/j;)Z
    .locals 1

    .prologue
    .line 464
    monitor-enter p0

    .line 465
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/c/d;->e()Z

    move-result v0

    .line 466
    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/c/j;->a(Lcom/bytedance/sdk/openadsdk/c/d;)V

    .line 469
    :cond_0
    monitor-exit p0

    return v0

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/util/concurrent/ExecutorService;)Z
    .locals 7

    .prologue
    const/16 v1, 0xc0

    .line 438
    monitor-enter p0

    .line 439
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/d;->f()Z

    move-result v6

    .line 440
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/d;->G:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/d;->G:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 441
    :goto_0
    if-eqz v6, :cond_1

    if-nez v0, :cond_1

    .line 442
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/c/d;->j:I

    if-eq v0, v1, :cond_0

    .line 443
    const/16 v0, 0xc0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/c/d;->j:I

    .line 444
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 445
    const-string v1, "status"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/c/d;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 446
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/d;->I:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/c/i;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/c/i;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/c/d;->d()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/c/i;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 449
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/k;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/d;->I:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/d;->K:Lcom/bytedance/sdk/openadsdk/c/w;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/c/d;->L:Lcom/bytedance/sdk/openadsdk/c/v;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/c/d;->M:Lcom/bytedance/sdk/openadsdk/c/g;

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/c/k;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/c/w;Lcom/bytedance/sdk/openadsdk/c/d;Lcom/bytedance/sdk/openadsdk/c/v;Lcom/bytedance/sdk/openadsdk/c/g;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/d;->H:Lcom/bytedance/sdk/openadsdk/c/k;

    .line 451
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/d;->H:Lcom/bytedance/sdk/openadsdk/c/k;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/d;->G:Ljava/util/concurrent/Future;

    .line 453
    :cond_1
    monitor-exit p0

    return v6

    .line 440
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 454
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(J)J
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 541
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/c/d;->j:I

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/c/m$a;->c(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 542
    const-wide v0, 0x7fffffffffffffffL

    .line 551
    :cond_0
    :goto_0
    return-wide v0

    .line 544
    :cond_1
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/c/d;->j:I

    const/16 v3, 0xc2

    if-ne v2, v3, :cond_0

    .line 547
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/c/d;->a(J)J

    move-result-wide v2

    .line 548
    cmp-long v4, v2, p1

    if-lez v4, :cond_0

    .line 551
    sub-long v0, v2, p1

    goto :goto_0
.end method

.method public b()Lcom/bytedance/sdk/openadsdk/c/d$a;
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/d;->K:Lcom/bytedance/sdk/openadsdk/c/w;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/c/w;->b()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 351
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 352
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/d$a;->b:Lcom/bytedance/sdk/openadsdk/c/d$a;

    .line 357
    :goto_0
    return-object v0

    .line 354
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/d;->K:Lcom/bytedance/sdk/openadsdk/c/w;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/c/w;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/d;->g()Z

    move-result v1

    if-nez v1, :cond_2

    .line 355
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/d$a;->e:Lcom/bytedance/sdk/openadsdk/c/d$a;

    goto :goto_0

    .line 357
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/d;->b(I)Lcom/bytedance/sdk/openadsdk/c/d$a;

    move-result-object v0

    goto :goto_0
.end method

.method public c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 474
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/d;->e:Ljava/lang/String;

    .line 475
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/d;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 476
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 477
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/c/d;->j:I

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    .line 478
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 479
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Lcom/bytedance/sdk/openadsdk/c/d;)Ljava/lang/String;

    move-result-object v0

    .line 480
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/d;->I:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/c/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/d;->I:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/i;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/c/i;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/c/d;->d()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Lcom/bytedance/sdk/openadsdk/c/i;->a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 484
    :cond_0
    return-void
.end method

.method public d()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 491
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/m$a;->a:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/c/d;->a:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 558
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/c/d;->v:I

    if-nez v1, :cond_1

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/c/d;->g:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/c/d;->g:I

    if-ne v1, v0, :cond_1

    :cond_0
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/c/d;->j:I

    .line 561
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/c/m$a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 558
    :goto_0
    return v0

    .line 561
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
