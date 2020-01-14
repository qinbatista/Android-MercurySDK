.class Lcom/bytedance/sdk/openadsdk/core/u$3;
.super Ljava/lang/Object;
.source "TTAdNativeImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/u;->loadRewardVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/core/u;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/u;Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/u$3;->c:Lcom/bytedance/sdk/openadsdk/core/u;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/u$3;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/u$3;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/u$3;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;->onError(ILjava/lang/String;)V

    .line 126
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/a;)V
    .locals 5

    .prologue
    const/4 v3, -0x3

    const/4 v2, -0x4

    .line 130
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->b()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/h;

    .line 132
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/y;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/u$3;->c:Lcom/bytedance/sdk/openadsdk/core/u;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/u;->a(Lcom/bytedance/sdk/openadsdk/core/u;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/u$3;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/u$3;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/y;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V

    .line 134
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/y;->a()V

    .line 135
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/u$3;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;->onRewardVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V

    .line 142
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/u$3;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;->onError(ILjava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/u$3;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method
