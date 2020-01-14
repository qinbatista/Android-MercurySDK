.class public interface abstract Lcom/bytedance/sdk/openadsdk/TTFeedAd;
.super Ljava/lang/Object;
.source "TTFeedAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/TTFeedAd$AdInteractionListener;
    }
.end annotation


# virtual methods
.method public abstract getAdView()Landroid/view/View;
.end method

.method public abstract getAdView(ZZ)Landroid/view/View;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getDislikeDialog()Lcom/bytedance/sdk/openadsdk/TTAdDislike;
.end method

.method public abstract getDownloadStatusController()Lcom/bytedance/sdk/openadsdk/DownloadStatusController;
.end method

.method public abstract getIcon()Lcom/bytedance/sdk/openadsdk/TTImage;
.end method

.method public abstract getImageList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/TTImage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getImageMode()I
.end method

.method public abstract getInteractionType()I
.end method

.method public abstract getSource()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract registerViewForInteraction(Landroid/view/ViewGroup;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTFeedAd$AdInteractionListener;)V
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/TTFeedAd$AdInteractionListener;)V
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/TTFeedAd$AdInteractionListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setActivityForDownloadApp(Landroid/app/Activity;)V
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
.end method
