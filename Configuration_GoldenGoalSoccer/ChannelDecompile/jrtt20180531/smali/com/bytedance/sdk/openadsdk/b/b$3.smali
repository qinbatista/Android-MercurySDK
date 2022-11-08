.class Lcom/bytedance/sdk/openadsdk/b/b$3;
.super Ljava/lang/Object;
.source "TTAdDislikeImpl.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 74
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/b$3;->a:Lcom/bytedance/sdk/openadsdk/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/b$3;->a:Lcom/bytedance/sdk/openadsdk/b/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/b/b;->a(Lcom/bytedance/sdk/openadsdk/b/b;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 80
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/b$3;->a:Lcom/bytedance/sdk/openadsdk/b/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/b/b;->b(Lcom/bytedance/sdk/openadsdk/b/b;)Lcom/bytedance/sdk/openadsdk/core/d/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->q()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/f;->a(Z)V

    .line 81
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/b$3;->a:Lcom/bytedance/sdk/openadsdk/b/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/b/b;->b(Lcom/bytedance/sdk/openadsdk/b/b;)Lcom/bytedance/sdk/openadsdk/core/d/h;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/d/c;->c(Lcom/bytedance/sdk/openadsdk/core/d/h;)V

    .line 82
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/b$3;->a:Lcom/bytedance/sdk/openadsdk/b/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/b/b;->c(Lcom/bytedance/sdk/openadsdk/b/b;)Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/b$3;->a:Lcom/bytedance/sdk/openadsdk/b/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/b/b;->c(Lcom/bytedance/sdk/openadsdk/b/b;)Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;

    move-result-object v1

    add-int/lit8 v2, p3, 0x1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/b$3;->a:Lcom/bytedance/sdk/openadsdk/b/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/b/b;->b(Lcom/bytedance/sdk/openadsdk/b/b;)Lcom/bytedance/sdk/openadsdk/core/d/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->q()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;->onSelected(ILjava/lang/String;)V

    .line 86
    :cond_0
    return-void
.end method
