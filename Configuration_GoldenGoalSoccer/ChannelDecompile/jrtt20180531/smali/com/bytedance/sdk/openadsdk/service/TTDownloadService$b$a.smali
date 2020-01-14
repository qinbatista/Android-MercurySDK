.class Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$b$a;
.super Ljava/lang/Object;
.source "TTDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$1;)V
    .locals 0

    .prologue
    .line 507
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 515
    if-eqz p1, :cond_0

    .line 516
    :try_start_0
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 518
    :catch_0
    move-exception v0

    goto :goto_0
.end method
