.class Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$b;
.super Ljava/lang/Object;
.source "TTDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/service/TTDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$b$b;,
        Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$b$a;
    }
.end annotation


# static fields
.field static final a:Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 555
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 556
    new-instance v0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$b$b;

    invoke-direct {v0, v2}, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$b$b;-><init>(Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$1;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$b;->a:Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$b$a;

    .line 560
    :goto_0
    return-void

    .line 558
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$b$a;

    invoke-direct {v0, v2}, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$b$a;-><init>(Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$1;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$b;->a:Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$b$a;

    goto :goto_0
.end method

.method public static a(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V
    .locals 8

    .prologue
    .line 570
    sget-object v1, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$b;->a:Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$b$a;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/service/TTDownloadService$b$a;->a(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    .line 571
    return-void
.end method
