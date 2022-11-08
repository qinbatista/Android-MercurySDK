.class public interface abstract Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;
.super Ljava/lang/Object;
.source "TTRewardVideoAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;
    }
.end annotation


# virtual methods
.method public abstract getInteractionType()I
.end method

.method public abstract setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
.end method

.method public abstract setRewardAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;)V
.end method

.method public abstract setShowDownLoadBar(Z)V
.end method

.method public abstract showRewardVideoAd(Landroid/app/Activity;)V
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation
.end method
