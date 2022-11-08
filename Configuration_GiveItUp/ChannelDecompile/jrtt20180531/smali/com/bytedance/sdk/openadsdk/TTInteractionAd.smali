.class public interface abstract Lcom/bytedance/sdk/openadsdk/TTInteractionAd;
.super Ljava/lang/Object;
.source "TTInteractionAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;
    }
.end annotation


# virtual methods
.method public abstract getInteractionType()I
.end method

.method public abstract setAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;)V
.end method

.method public abstract setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
.end method

.method public abstract showInteractionAd(Landroid/app/Activity;)V
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation
.end method
