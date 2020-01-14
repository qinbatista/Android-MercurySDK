.class Lcom/bytedance/sdk/openadsdk/core/f/d$2;
.super Ljava/lang/Object;
.source "TTSplashAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/f/d;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/f/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/f/d;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/d$2;->a:Lcom/bytedance/sdk/openadsdk/core/f/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d$2;->a:Lcom/bytedance/sdk/openadsdk/core/f/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/d;->f(Lcom/bytedance/sdk/openadsdk/core/f/d;)Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d$2;->a:Lcom/bytedance/sdk/openadsdk/core/f/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/d;->f(Lcom/bytedance/sdk/openadsdk/core/f/d;)Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;->onAdClicked(Landroid/view/View;I)V

    .line 137
    :cond_0
    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d$2;->a:Lcom/bytedance/sdk/openadsdk/core/f/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/d;->e(Lcom/bytedance/sdk/openadsdk/core/f/d;)Lcom/bytedance/sdk/openadsdk/h/t;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/t;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d$2;->a:Lcom/bytedance/sdk/openadsdk/core/f/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/f/d;->a(Lcom/bytedance/sdk/openadsdk/core/f/d;I)I

    .line 141
    :cond_1
    return-void
.end method
