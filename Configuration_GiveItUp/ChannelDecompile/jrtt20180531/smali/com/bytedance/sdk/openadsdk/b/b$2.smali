.class Lcom/bytedance/sdk/openadsdk/b/b$2;
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
    .line 63
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/b$2;->a:Lcom/bytedance/sdk/openadsdk/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/b$2;->a:Lcom/bytedance/sdk/openadsdk/b/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/b/b;->a(Lcom/bytedance/sdk/openadsdk/b/b;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 67
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/b$2;->a:Lcom/bytedance/sdk/openadsdk/b/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/b/b;->c(Lcom/bytedance/sdk/openadsdk/b/b;)Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/b$2;->a:Lcom/bytedance/sdk/openadsdk/b/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/b/b;->c(Lcom/bytedance/sdk/openadsdk/b/b;)Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;->onCancel()V

    .line 70
    :cond_0
    return-void
.end method
