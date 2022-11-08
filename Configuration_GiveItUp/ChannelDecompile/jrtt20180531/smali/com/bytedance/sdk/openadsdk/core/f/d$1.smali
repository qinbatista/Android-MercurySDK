.class Lcom/bytedance/sdk/openadsdk/core/f/d$1;
.super Ljava/lang/Object;
.source "TTSplashAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/f$a;


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
    .line 86
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/f/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/f/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/d;->b(Lcom/bytedance/sdk/openadsdk/core/f/d;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/f/d;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/f/d;->c(Lcom/bytedance/sdk/openadsdk/core/f/d;)Lcom/bytedance/sdk/openadsdk/core/d/h;

    move-result-object v1

    const-string v2, "splash_ad"

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/d/c;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/f/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/d;->d(Lcom/bytedance/sdk/openadsdk/core/f/d;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/f/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/d;->e(Lcom/bytedance/sdk/openadsdk/core/f/d;)Lcom/bytedance/sdk/openadsdk/h/t;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/t;->sendEmptyMessage(I)Z

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/f/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/d;->f(Lcom/bytedance/sdk/openadsdk/core/f/d;)Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/f/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/d;->f(Lcom/bytedance/sdk/openadsdk/core/f/d;)Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/f/d;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/f/d;->g(Lcom/bytedance/sdk/openadsdk/core/f/d;)Lcom/bytedance/sdk/openadsdk/core/f/c;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/f/d;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/f/d;->c(Lcom/bytedance/sdk/openadsdk/core/f/d;)Lcom/bytedance/sdk/openadsdk/core/d/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/h;->c()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;->onAdShow(Landroid/view/View;I)V

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/f/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/d;->c(Lcom/bytedance/sdk/openadsdk/core/f/d;)Lcom/bytedance/sdk/openadsdk/core/d/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/f/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/d;->c(Lcom/bytedance/sdk/openadsdk/core/f/d;)Lcom/bytedance/sdk/openadsdk/core/d/h;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/h/r;->a(Lcom/bytedance/sdk/openadsdk/core/d/h;Landroid/view/View;)V

    .line 120
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/f/d;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5f00\u5c4f\u5e7f\u544a\u5c55\u793a"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/f/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/d;->a(Lcom/bytedance/sdk/openadsdk/core/f/d;)Lcom/bytedance/sdk/openadsdk/c/x;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    if-eqz p1, :cond_1

    .line 91
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/f/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/d;->a(Lcom/bytedance/sdk/openadsdk/core/f/d;)Lcom/bytedance/sdk/openadsdk/c/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/c/x;->g()V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/f/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/d;->a(Lcom/bytedance/sdk/openadsdk/core/f/d;)Lcom/bytedance/sdk/openadsdk/c/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/c/x;->h()V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method
