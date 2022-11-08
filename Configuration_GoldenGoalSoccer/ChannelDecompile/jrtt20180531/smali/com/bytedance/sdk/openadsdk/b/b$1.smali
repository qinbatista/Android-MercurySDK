.class Lcom/bytedance/sdk/openadsdk/b/b$1;
.super Ljava/lang/Object;
.source "TTAdDislikeImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/b/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/b/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/b/b;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/b$1;->a:Lcom/bytedance/sdk/openadsdk/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/b$1;->a:Lcom/bytedance/sdk/openadsdk/b/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/b/b;->a(Lcom/bytedance/sdk/openadsdk/b/b;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 57
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/b$1;->a:Lcom/bytedance/sdk/openadsdk/b/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/b/b;->b(Lcom/bytedance/sdk/openadsdk/b/b;)Lcom/bytedance/sdk/openadsdk/core/d/h;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/d/c;->c(Lcom/bytedance/sdk/openadsdk/core/d/h;)V

    .line 58
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/b$1;->a:Lcom/bytedance/sdk/openadsdk/b/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/b/b;->c(Lcom/bytedance/sdk/openadsdk/b/b;)Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/b$1;->a:Lcom/bytedance/sdk/openadsdk/b/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/b/b;->c(Lcom/bytedance/sdk/openadsdk/b/b;)Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/b/b$1;->a:Lcom/bytedance/sdk/openadsdk/b/b;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/b/b;->d(Lcom/bytedance/sdk/openadsdk/b/b;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/bytedance/sdk/openadsdk/R$string;->tt_unlike:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;->onSelected(ILjava/lang/String;)V

    .line 61
    :cond_0
    return-void
.end method
