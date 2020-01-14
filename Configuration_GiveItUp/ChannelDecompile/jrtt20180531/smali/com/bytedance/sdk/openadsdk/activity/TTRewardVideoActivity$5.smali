.class Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$5;
.super Ljava/lang/Object;
.source "TTRewardVideoActivity.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/c/x$b;


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
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 294
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->g(Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "click_start_play_bar"

    .line 295
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->b(Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;)Lcom/bytedance/sdk/openadsdk/core/d/h;

    move-result-object v2

    const-string v3, "embeded_ad"

    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/d/c;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    return-void

    .line 294
    :cond_0
    const-string v0, "click_start_play"

    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 300
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->b(Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;)Lcom/bytedance/sdk/openadsdk/core/d/h;

    move-result-object v1

    const-string v2, "embeded_ad"

    const-string v3, "click_play_pause"

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/d/c;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 305
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->b(Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;)Lcom/bytedance/sdk/openadsdk/core/d/h;

    move-result-object v1

    const-string v2, "embeded_ad"

    const-string v3, "click_play_continue"

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/d/c;->c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    .line 310
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->b(Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;)Lcom/bytedance/sdk/openadsdk/core/d/h;

    move-result-object v1

    const-string v2, "embeded_ad"

    const-string v3, "click_play_open"

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/d/c;->h(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    return-void
.end method
