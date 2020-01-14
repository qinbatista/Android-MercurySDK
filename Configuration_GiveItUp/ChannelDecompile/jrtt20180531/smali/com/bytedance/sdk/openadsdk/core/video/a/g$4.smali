.class Lcom/bytedance/sdk/openadsdk/core/video/a/g$4;
.super Ljava/lang/Object;
.source "NativeVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/video/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/video/a/g;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/a/g;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g$4;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 265
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g$4;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/g;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->b(Lcom/bytedance/sdk/openadsdk/core/video/a/g;)Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g$4;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/g;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->h(Lcom/bytedance/sdk/openadsdk/core/video/a/g;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g$4;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/g;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->b(Lcom/bytedance/sdk/openadsdk/core/video/a/g;)Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->d()V

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g$4;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/g;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->b(Lcom/bytedance/sdk/openadsdk/core/video/a/g;)Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->e()V

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g$4;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/g;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->e(Lcom/bytedance/sdk/openadsdk/core/video/a/g;)Lcom/bytedance/sdk/openadsdk/h/t;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, p0, v2, v3}, Lcom/bytedance/sdk/openadsdk/h/t;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 272
    return-void
.end method
