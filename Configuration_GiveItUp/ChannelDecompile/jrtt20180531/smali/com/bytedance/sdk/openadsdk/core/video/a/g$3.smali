.class Lcom/bytedance/sdk/openadsdk/core/video/a/g$3;
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
    .line 244
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g$3;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g$3;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/g;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->g(Lcom/bytedance/sdk/openadsdk/core/video/a/g;)Lcom/bytedance/sdk/openadsdk/core/video/a/c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g$3;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/g;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->g(Lcom/bytedance/sdk/openadsdk/core/video/a/g;)Lcom/bytedance/sdk/openadsdk/core/video/a/c$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/c$a;->a()V

    .line 250
    :cond_0
    return-void
.end method
