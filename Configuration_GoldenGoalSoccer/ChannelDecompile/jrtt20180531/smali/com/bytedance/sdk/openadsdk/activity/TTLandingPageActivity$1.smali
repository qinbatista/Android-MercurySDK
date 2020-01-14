.class Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$1;
.super Ljava/lang/Object;
.source "TTLandingPageActivity.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$1;->c:Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$1;->c:Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$1;->b:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/c/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 103
    return-void
.end method
