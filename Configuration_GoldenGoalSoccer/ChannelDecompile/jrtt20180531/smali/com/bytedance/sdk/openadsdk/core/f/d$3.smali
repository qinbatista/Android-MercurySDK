.class Lcom/bytedance/sdk/openadsdk/core/f/d$3;
.super Ljava/lang/Object;
.source "TTSplashAdImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 148
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/d$3;->a:Lcom/bytedance/sdk/openadsdk/core/f/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d$3;->a:Lcom/bytedance/sdk/openadsdk/core/f/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/d;->c(Lcom/bytedance/sdk/openadsdk/core/f/d;)Lcom/bytedance/sdk/openadsdk/core/d/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d$3;->a:Lcom/bytedance/sdk/openadsdk/core/f/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/d;->c(Lcom/bytedance/sdk/openadsdk/core/f/d;)Lcom/bytedance/sdk/openadsdk/core/d/h;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/d/c;->c(Lcom/bytedance/sdk/openadsdk/core/d/h;)V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d$3;->a:Lcom/bytedance/sdk/openadsdk/core/f/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/d;->f(Lcom/bytedance/sdk/openadsdk/core/f/d;)Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d$3;->a:Lcom/bytedance/sdk/openadsdk/core/f/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/d;->e(Lcom/bytedance/sdk/openadsdk/core/f/d;)Lcom/bytedance/sdk/openadsdk/h/t;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/t;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d$3;->a:Lcom/bytedance/sdk/openadsdk/core/f/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/f/d;->a(Lcom/bytedance/sdk/openadsdk/core/f/d;I)I

    .line 158
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d$3;->a:Lcom/bytedance/sdk/openadsdk/core/f/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/d;->f(Lcom/bytedance/sdk/openadsdk/core/f/d;)Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;->onAdSkip()V

    .line 160
    :cond_1
    return-void
.end method
