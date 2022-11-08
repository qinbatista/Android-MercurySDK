.class Lcom/bytedance/sdk/openadsdk/core/u;
.super Ljava/lang/Object;
.source "TTAdNativeImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative;


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/core/o;

.field private b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->c()Lcom/bytedance/sdk/openadsdk/core/o;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/u;->a:Lcom/bytedance/sdk/openadsdk/core/o;

    .line 28
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/u;->b:Landroid/content/Context;

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/u;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/u;->b:Landroid/content/Context;

    return-object v0
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 147
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getImgAcceptedWidth()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "\u5fc5\u987b\u8bbe\u7f6e\u56fe\u7247\u7d20\u6750\u5c3a\u5bf8"

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/h/o;->a(ZLjava/lang/String;)V

    .line 148
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getImgAcceptedHeight()I

    move-result v0

    if-lez v0, :cond_1

    :goto_1
    const-string v0, "\u5fc5\u987b\u8bbe\u7f6e\u56fe\u7247\u7d20\u6750\u5c3a\u5bf8"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/h/o;->a(ZLjava/lang/String;)V

    .line 149
    return-void

    :cond_0
    move v0, v2

    .line 147
    goto :goto_0

    :cond_1
    move v1, v2

    .line 148
    goto :goto_1
.end method


# virtual methods
.method public loadBannerAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;)V
    .locals 1
    .param p2    # Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/u;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/u;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/b/b;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/b/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/b/b;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;)V

    .line 66
    return-void
.end method

.method public loadFeedAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;)V
    .locals 4
    .param p2    # Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/u;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/u;->a:Lcom/bytedance/sdk/openadsdk/core/o;

    const/4 v1, 0x0

    const/4 v2, 0x5

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/u$1;

    invoke-direct {v3, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/u$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/u;Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;)V

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/o;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/i;ILcom/bytedance/sdk/openadsdk/core/o$a;)V

    .line 60
    return-void
.end method

.method public loadInteractionAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;)V
    .locals 4
    .param p2    # Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/u;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 72
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/u;->a:Lcom/bytedance/sdk/openadsdk/core/o;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/u$2;

    invoke-direct {v3, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/u$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/u;Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;)V

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/o;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/i;ILcom/bytedance/sdk/openadsdk/core/o$a;)V

    .line 103
    return-void
.end method

.method public loadRewardVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V
    .locals 4
    .param p2    # Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/u;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 122
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/u;->a:Lcom/bytedance/sdk/openadsdk/core/o;

    const/4 v1, 0x0

    const/4 v2, 0x7

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/u$3;

    invoke-direct {v3, p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/u$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/u;Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/o;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/i;ILcom/bytedance/sdk/openadsdk/core/o$a;)V

    .line 144
    return-void
.end method

.method public loadSplashAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;)V
    .locals 2
    .param p2    # Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/u;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 116
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/u;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/b;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/f/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/core/f/b;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;I)V

    .line 117
    return-void
.end method

.method public loadSplashAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;I)V
    .locals 1
    .param p2    # Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/u;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 109
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/u;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/b;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/f/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/f/b;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;I)V

    .line 110
    return-void
.end method
