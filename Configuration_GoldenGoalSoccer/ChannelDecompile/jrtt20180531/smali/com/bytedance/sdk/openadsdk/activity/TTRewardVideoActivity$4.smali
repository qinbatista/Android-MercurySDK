.class Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$4;
.super Lcom/bytedance/sdk/openadsdk/core/a/e;
.source "TTRewardVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/core/a/e;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;IIII)V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->c(Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->c(Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;->onAdVideoBarClick()V

    .line 285
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/bytedance/sdk/openadsdk/R$id;->video_reward_bar:I

    if-ne v0, v1, :cond_1

    .line 286
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->b(Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;Z)Z

    .line 288
    :cond_1
    return-void
.end method
