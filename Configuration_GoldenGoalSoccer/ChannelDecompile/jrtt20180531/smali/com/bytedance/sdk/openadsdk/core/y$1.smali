.class Lcom/bytedance/sdk/openadsdk/core/y$1;
.super Lcom/androidquery/callback/AjaxCallback;
.source "TTRewardVideoAdImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/y;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidquery/callback/AjaxCallback",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/y;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/y;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/y$1;->a:Lcom/bytedance/sdk/openadsdk/core/y;

    invoke-direct {p0}, Lcom/androidquery/callback/AjaxCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/io/File;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0, p1, p2, p3}, Lcom/androidquery/callback/AjaxCallback;->callback(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V

    .line 63
    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_0

    .line 64
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/y$1;->a:Lcom/bytedance/sdk/openadsdk/core/y;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Lcom/bytedance/sdk/openadsdk/core/y;Z)Z

    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/y$1;->a:Lcom/bytedance/sdk/openadsdk/core/y;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Lcom/bytedance/sdk/openadsdk/core/y;)Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/y$1;->a:Lcom/bytedance/sdk/openadsdk/core/y;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Lcom/bytedance/sdk/openadsdk/core/y;)Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;->onRewardVideoCached()V

    .line 69
    :cond_0
    return-void
.end method

.method public synthetic callback(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 0

    .prologue
    .line 59
    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/y$1;->a(Ljava/lang/String;Ljava/io/File;Lcom/androidquery/callback/AjaxStatus;)V

    return-void
.end method
