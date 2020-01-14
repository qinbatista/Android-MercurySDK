.class Lcom/bytedance/sdk/openadsdk/core/video/c/d$6;
.super Ljava/lang/Object;
.source "SSMediaPlayerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/c/d;->b(Lcom/bytedance/sdk/openadsdk/core/video/c/c;)V
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
    .line 656
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d$6;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 660
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d$6;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->c(Lcom/bytedance/sdk/openadsdk/core/video/c/d;)Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->h()V

    .line 661
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d$6;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    const/16 v1, 0xcf

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/c/d;I)I

    .line 662
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d$6;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/c/d;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    :goto_0
    return-void

    .line 663
    :catch_0
    move-exception v0

    goto :goto_0
.end method
