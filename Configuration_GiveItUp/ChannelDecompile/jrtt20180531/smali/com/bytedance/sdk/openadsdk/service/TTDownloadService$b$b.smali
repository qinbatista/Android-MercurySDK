.class Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$b$b;
.super Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$b$a;
.source "TTDownloadService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 525
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$b$a;-><init>(Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$1;)V
    .locals 0

    .prologue
    .line 525
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$b$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 536
    if-eqz p1, :cond_0

    .line 537
    :try_start_0
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 539
    :catch_0
    move-exception v0

    .line 540
    instance-of v0, v0, Ljava/lang/NoSuchMethodError;

    if-eqz v0, :cond_0

    .line 542
    if-eqz p1, :cond_0

    .line 543
    :try_start_1
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 545
    :catch_1
    move-exception v0

    goto :goto_0
.end method
