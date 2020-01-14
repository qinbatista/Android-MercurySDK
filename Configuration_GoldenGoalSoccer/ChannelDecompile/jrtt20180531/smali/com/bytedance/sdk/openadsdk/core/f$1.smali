.class Lcom/bytedance/sdk/openadsdk/core/f$1;
.super Landroid/os/Handler;
.source "EmptyView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/f;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f$1;->a:Lcom/bytedance/sdk/openadsdk/core/f;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .prologue
    const/16 v7, 0x14

    const/4 v6, 0x2

    const/4 v3, 0x1

    const-wide/16 v4, 0x3e8

    .line 47
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 49
    :pswitch_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f$1;->a:Lcom/bytedance/sdk/openadsdk/core/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f;->a(Lcom/bytedance/sdk/openadsdk/core/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f$1;->a:Lcom/bytedance/sdk/openadsdk/core/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f;->b(Lcom/bytedance/sdk/openadsdk/core/f;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f$1;->a:Lcom/bytedance/sdk/openadsdk/core/f;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/f;->c(Lcom/bytedance/sdk/openadsdk/core/f;)I

    move-result v1

    invoke-static {v0, v7, v1}, Lcom/bytedance/sdk/openadsdk/core/z;->a(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f$1;->a:Lcom/bytedance/sdk/openadsdk/core/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f;->c()V

    .line 52
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f$1;->a:Lcom/bytedance/sdk/openadsdk/core/f;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/f;->a:Landroid/os/Handler;

    invoke-virtual {v0, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 53
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f$1;->a:Lcom/bytedance/sdk/openadsdk/core/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f;->d(Lcom/bytedance/sdk/openadsdk/core/f;)Lcom/bytedance/sdk/openadsdk/core/f$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f$1;->a:Lcom/bytedance/sdk/openadsdk/core/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f;->d(Lcom/bytedance/sdk/openadsdk/core/f;)Lcom/bytedance/sdk/openadsdk/core/f$a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f$1;->a:Lcom/bytedance/sdk/openadsdk/core/f;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/f;->b(Lcom/bytedance/sdk/openadsdk/core/f;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/f$a;->a(Landroid/view/View;)V

    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f$1;->a:Lcom/bytedance/sdk/openadsdk/core/f;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/f;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 64
    :pswitch_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/r;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 65
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f$1;->a:Lcom/bytedance/sdk/openadsdk/core/f;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/f;->b(Lcom/bytedance/sdk/openadsdk/core/f;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f$1;->a:Lcom/bytedance/sdk/openadsdk/core/f;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/f;->c(Lcom/bytedance/sdk/openadsdk/core/f;)I

    move-result v2

    invoke-static {v1, v7, v2}, Lcom/bytedance/sdk/openadsdk/core/z;->a(Landroid/view/View;II)Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_3

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f$1;->a:Lcom/bytedance/sdk/openadsdk/core/f;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/f;->a:Landroid/os/Handler;

    invoke-virtual {v0, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 67
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f$1;->a:Lcom/bytedance/sdk/openadsdk/core/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f;->e(Lcom/bytedance/sdk/openadsdk/core/f;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f$1;->a:Lcom/bytedance/sdk/openadsdk/core/f;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/f;->setNeedCheckingShow(Z)V

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
