.class Lcom/bytedance/sdk/openadsdk/core/m$3;
.super Ljava/lang/Object;
.source "InteractionManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/f$a;


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
    .line 109
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/m$3;->b:Lcom/bytedance/sdk/openadsdk/core/m;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/m$3;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd$AdInteractionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m$3;->b:Lcom/bytedance/sdk/openadsdk/core/m;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/m;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/m$3;->b:Lcom/bytedance/sdk/openadsdk/core/m;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/m;->c(Lcom/bytedance/sdk/openadsdk/core/m;)Lcom/bytedance/sdk/openadsdk/core/d/h;

    move-result-object v1

    const-string v2, "embeded_ad"

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/d/c;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m$3;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd$AdInteractionListener;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m$3;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd$AdInteractionListener;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/m$3;->b:Lcom/bytedance/sdk/openadsdk/core/m;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/m;->a(Lcom/bytedance/sdk/openadsdk/core/m;)Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$AdInteractionListener;->onAdShow(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m$3;->b:Lcom/bytedance/sdk/openadsdk/core/m;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/m;->c(Lcom/bytedance/sdk/openadsdk/core/m;)Lcom/bytedance/sdk/openadsdk/core/d/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m$3;->b:Lcom/bytedance/sdk/openadsdk/core/m;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/m;->c(Lcom/bytedance/sdk/openadsdk/core/m;)Lcom/bytedance/sdk/openadsdk/core/d/h;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/h/r;->a(Lcom/bytedance/sdk/openadsdk/core/d/h;Landroid/view/View;)V

    .line 138
    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m$3;->b:Lcom/bytedance/sdk/openadsdk/core/m;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/m;->b(Lcom/bytedance/sdk/openadsdk/core/m;)Lcom/bytedance/sdk/openadsdk/c/x;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    if-eqz p1, :cond_1

    .line 114
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m$3;->b:Lcom/bytedance/sdk/openadsdk/core/m;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/m;->b(Lcom/bytedance/sdk/openadsdk/core/m;)Lcom/bytedance/sdk/openadsdk/c/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/c/x;->g()V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m$3;->b:Lcom/bytedance/sdk/openadsdk/core/m;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/m;->b(Lcom/bytedance/sdk/openadsdk/core/m;)Lcom/bytedance/sdk/openadsdk/c/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/c/x;->h()V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method
