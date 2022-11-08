.class public Lcom/bytedance/sdk/openadsdk/c/z;
.super Ljava/lang/Object;
.source "TTGlobalAppDownloadControllerImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTGlobalAppDownloadController;


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/TTGlobalAppDownloadController;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/z;->b:Landroid/content/Context;

    .line 24
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTGlobalAppDownloadController;
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/z;->a:Lcom/bytedance/sdk/openadsdk/TTGlobalAppDownloadController;

    if-nez v0, :cond_1

    .line 28
    const-class v1, Lcom/bytedance/sdk/openadsdk/TTGlobalAppDownloadController;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/z;->a:Lcom/bytedance/sdk/openadsdk/TTGlobalAppDownloadController;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/z;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/c/z;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/c/z;->a:Lcom/bytedance/sdk/openadsdk/TTGlobalAppDownloadController;

    .line 32
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/z;->a:Lcom/bytedance/sdk/openadsdk/TTGlobalAppDownloadController;

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public changeDownloadStatus(IJ)V
    .locals 2

    .prologue
    .line 48
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/c/f;->a(I)I

    move-result v0

    .line 52
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/z;->b:Landroid/content/Context;

    invoke-static {v1, v0, p2, p3}, Lcom/bytedance/sdk/openadsdk/c/f;->a(Landroid/content/Context;IJ)I

    goto :goto_0
.end method

.method public removeDownloadTask(J)V
    .locals 5

    .prologue
    .line 57
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 61
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/z;->b:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/c/g;->c(Landroid/content/Context;J)V

    .line 62
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/m$a;->a:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 63
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/z;->b:Landroid/content/Context;

    const-class v3, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 65
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/z;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    goto :goto_0
.end method
