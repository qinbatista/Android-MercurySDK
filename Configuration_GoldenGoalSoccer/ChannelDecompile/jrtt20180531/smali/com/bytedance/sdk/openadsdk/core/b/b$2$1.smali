.class Lcom/bytedance/sdk/openadsdk/core/b/b$2$1;
.super Ljava/lang/Object;
.source "BannerAdManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/b/b$2;->a(Lcom/bytedance/sdk/openadsdk/core/d/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/b/b$2;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/b/b$2;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/b$2$1;->a:Lcom/bytedance/sdk/openadsdk/core/b/b$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, -0x5

    .line 112
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/b$2$1;->a:Lcom/bytedance/sdk/openadsdk/core/b/b$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/b/b$2;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;->onError(ILjava/lang/String;)V

    .line 113
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/b/a;)V
    .locals 2
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/b/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 104
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/b$2$1;->a:Lcom/bytedance/sdk/openadsdk/core/b/b$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/b/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/b/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/b/b;->a(Lcom/bytedance/sdk/openadsdk/core/b/b;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/b/e;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/b$2$1;->a:Lcom/bytedance/sdk/openadsdk/core/b/b$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/b/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/b/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/b/b;->a(Lcom/bytedance/sdk/openadsdk/core/b/b;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/b/e;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/b/a;)V

    .line 106
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/b$2$1;->a:Lcom/bytedance/sdk/openadsdk/core/b/b$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/b/b$2;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;->onBannerAdLoad(Lcom/bytedance/sdk/openadsdk/TTBannerAd;)V

    .line 108
    :cond_0
    return-void
.end method
