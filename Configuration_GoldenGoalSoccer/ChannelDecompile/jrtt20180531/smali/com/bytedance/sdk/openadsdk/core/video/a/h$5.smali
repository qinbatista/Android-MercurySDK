.class Lcom/bytedance/sdk/openadsdk/core/video/a/h$5;
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
    .line 353
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h$5;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h$5;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->d(Lcom/bytedance/sdk/openadsdk/core/video/a/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h$5;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->e(Lcom/bytedance/sdk/openadsdk/core/video/a/h;)Lcom/bytedance/sdk/openadsdk/core/video/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h$5;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-interface {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/video/a/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/a/b;Landroid/view/View;)V

    .line 360
    :cond_0
    return-void
.end method
