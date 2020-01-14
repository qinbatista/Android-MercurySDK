.class Lcom/bytedance/sdk/openadsdk/core/video/a/h$6;
.super Ljava/lang/Object;
.source "NativeVideoLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/a/h;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/video/a/h;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/a/h;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h$6;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 367
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h$6;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a(ZZ)V

    .line 368
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h$6;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->i()V

    .line 369
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h$6;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->e()V

    .line 370
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h$6;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->d(Lcom/bytedance/sdk/openadsdk/core/video/a/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h$6;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->e(Lcom/bytedance/sdk/openadsdk/core/video/a/h;)Lcom/bytedance/sdk/openadsdk/core/video/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h$6;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-interface {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/video/a/d;->f(Lcom/bytedance/sdk/openadsdk/core/video/a/b;Landroid/view/View;)V

    .line 373
    :cond_0
    return-void
.end method
