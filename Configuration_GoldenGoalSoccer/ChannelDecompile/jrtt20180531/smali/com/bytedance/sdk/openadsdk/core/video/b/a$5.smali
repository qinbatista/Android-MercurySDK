.class Lcom/bytedance/sdk/openadsdk/core/video/b/a$5;
.super Landroid/content/BroadcastReceiver;
.source "RewardVideoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/video/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/video/b/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)V
    .locals 0

    .prologue
    .line 854
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$5;->a:Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 857
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 858
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 859
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$5;->a:Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a()V

    .line 863
    :cond_0
    :goto_0
    return-void

    .line 860
    :cond_1
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$5;->a:Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a(Landroid/content/Context;)V

    goto :goto_0
.end method
