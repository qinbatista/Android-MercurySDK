.class Lcom/bytedance/sdk/openadsdk/core/video/c/d$1;
.super Ljava/lang/Object;
.source "SSMediaPlayerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(ZJZ)V
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
    .line 164
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 167
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/c/d;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 168
    return-void
.end method
