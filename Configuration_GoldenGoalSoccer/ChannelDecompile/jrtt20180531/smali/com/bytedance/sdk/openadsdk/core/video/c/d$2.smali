.class Lcom/bytedance/sdk/openadsdk/core/video/c/d$2;
.super Ljava/lang/Object;
.source "SSMediaPlayerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/c/d;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/video/c/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/c/d;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d$2;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d$2;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/c/d;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d$2;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/c/d;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 227
    :cond_0
    return-void
.end method
