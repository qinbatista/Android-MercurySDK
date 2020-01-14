.class Lcom/bytedance/sdk/openadsdk/core/video/a/g$5;
.super Landroid/content/BroadcastReceiver;
.source "NativeVideoController.java"


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
    .line 853
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g$5;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/g;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 856
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 857
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 858
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g$5;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->a()V

    .line 862
    :cond_0
    :goto_0
    return-void

    .line 859
    :cond_1
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g$5;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/g;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->a(Landroid/content/Context;)V

    goto :goto_0
.end method
