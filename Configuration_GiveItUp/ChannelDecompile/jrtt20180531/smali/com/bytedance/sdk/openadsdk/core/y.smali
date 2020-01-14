.class Lcom/bytedance/sdk/openadsdk/core/y;
.super Ljava/lang/Object;
.source "TTRewardVideoAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;


# instance fields
.field a:Lcom/androidquery/callback/AQuery2;

.field private b:Landroid/content/Context;

.field private c:Lcom/bytedance/sdk/openadsdk/core/d/h;

.field private d:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field private e:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

.field private f:Lcom/bytedance/sdk/openadsdk/c/x;

.field private g:Z

.field private h:Z

.field private i:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/y;->g:Z

    .line 46
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/y;->b:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/y;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    .line 48
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/y;->d:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 49
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/y;->i:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/y;)Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/y;->i:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .prologue
    .line 74
    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/h/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/y;Z)Z
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/y;->h:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 53
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/y;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/d/c;->a(Lcom/bytedance/sdk/openadsdk/core/d/h;)V

    .line 54
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/y;->getInteractionType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 55
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/x;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/y;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/y;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    const-string v3, "embeded_ad"

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/x;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/y;->f:Lcom/bytedance/sdk/openadsdk/c/x;

    .line 57
    :cond_0
    new-instance v0, Lcom/androidquery/callback/AQuery2;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/y;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/androidquery/callback/AQuery2;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/y;->a:Lcom/androidquery/callback/AQuery2;

    .line 58
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/y;->a:Lcom/androidquery/callback/AQuery2;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/y;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->a()Lcom/bytedance/sdk/openadsdk/core/d/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/m;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/y;->b:Landroid/content/Context;

    const-string v3, "/reward_video_cache/"

    const-string v4, "tt_reward_video_cache"

    invoke-direct {p0, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/y$1;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/y$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/y;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/androidquery/callback/AQuery2;->download(Ljava/lang/String;Ljava/io/File;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    .line 71
    return-void
.end method

.method public getInteractionType()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/y;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    if-nez v0, :cond_0

    .line 92
    const/4 v0, -0x1

    .line 94
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/y;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->c()I

    move-result v0

    goto :goto_0
.end method

.method public setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/y;->f:Lcom/bytedance/sdk/openadsdk/c/x;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/y;->f:Lcom/bytedance/sdk/openadsdk/c/x;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/c/x;->a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 87
    :cond_0
    return-void
.end method

.method public setRewardAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/y;->e:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    .line 80
    return-void
.end method

.method public setShowDownLoadBar(Z)V
    .locals 0

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/y;->g:Z

    .line 100
    return-void
.end method

.method public showRewardVideoAd(Landroid/app/Activity;)V
    .locals 5

    .prologue
    .line 104
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 108
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u4e0d\u80fd\u5728\u5b50\u7ebf\u7a0b\u8c03\u7528 TTRewardVideoAd.showRewardVideoAd"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    const-string v1, "reward_name"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/y;->d:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getRewardName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string v1, "reward_amount"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/y;->d:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getRewardAmount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    const-string v1, "media_extra"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/y;->d:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getMediaExtra()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string v1, "user_id"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/y;->d:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getUserID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string v1, "show_download_bar"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/y;->g:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 117
    const-string v1, "orientation"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/y;->d:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getOrientation()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/y;->h:Z

    if-eqz v1, :cond_2

    .line 119
    const-string v1, "video_cache_url"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/y;->b:Landroid/content/Context;

    const-string v3, "/reward_video_cache/"

    const-string v4, "tt_reward_video_cache"

    invoke-direct {p0, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/s;->a()Lcom/bytedance/sdk/openadsdk/core/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/s;->f()V

    .line 123
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/s;->a()Lcom/bytedance/sdk/openadsdk/core/s;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/y;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/s;->a(Lcom/bytedance/sdk/openadsdk/core/d/h;)V

    .line 124
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/s;->a()Lcom/bytedance/sdk/openadsdk/core/s;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/y;->e:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/s;->a(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;)V

    .line 125
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/s;->a()Lcom/bytedance/sdk/openadsdk/core/s;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/y;->f:Lcom/bytedance/sdk/openadsdk/c/x;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/s;->a(Lcom/bytedance/sdk/openadsdk/c/x;)V

    .line 127
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
