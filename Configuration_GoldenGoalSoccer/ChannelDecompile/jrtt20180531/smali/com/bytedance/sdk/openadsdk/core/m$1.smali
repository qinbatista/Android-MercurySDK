.class Lcom/bytedance/sdk/openadsdk/core/m$1;
.super Ljava/lang/Object;
.source "InteractionManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/m;->a(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/TTFeedAd$AdInteractionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/TTFeedAd$AdInteractionListener;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/m;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/m;Lcom/bytedance/sdk/openadsdk/TTFeedAd$AdInteractionListener;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/m$1;->b:Lcom/bytedance/sdk/openadsdk/core/m;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/m$1;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd$AdInteractionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m$1;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd$AdInteractionListener;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m$1;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd$AdInteractionListener;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/m$1;->b:Lcom/bytedance/sdk/openadsdk/core/m;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/m;->a(Lcom/bytedance/sdk/openadsdk/core/m;)Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$AdInteractionListener;->onAdClicked(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V

    .line 90
    :cond_0
    return-void
.end method
