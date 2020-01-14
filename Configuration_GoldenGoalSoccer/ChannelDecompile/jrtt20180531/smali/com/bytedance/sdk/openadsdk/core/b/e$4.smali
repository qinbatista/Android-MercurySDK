.class Lcom/bytedance/sdk/openadsdk/core/b/e$4;
.super Ljava/lang/Object;
.source "TTBannerAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/b/e;->a(Lcom/bytedance/sdk/openadsdk/core/b/c;Lcom/bytedance/sdk/openadsdk/core/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/b/e;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/b/e;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/e$4;->a:Lcom/bytedance/sdk/openadsdk/core/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/e$4;->a:Lcom/bytedance/sdk/openadsdk/core/b/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/b/e;->g(Lcom/bytedance/sdk/openadsdk/core/b/e;)Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/e$4;->a:Lcom/bytedance/sdk/openadsdk/core/b/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/b/e;->g(Lcom/bytedance/sdk/openadsdk/core/b/e;)Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;->onAdClicked(Landroid/view/View;I)V

    .line 300
    :cond_0
    return-void
.end method
