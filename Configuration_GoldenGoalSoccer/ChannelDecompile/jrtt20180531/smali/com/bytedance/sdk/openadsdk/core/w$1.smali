.class Lcom/bytedance/sdk/openadsdk/core/w$1;
.super Ljava/lang/Object;
.source "TTFeedAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/DownloadStatusController;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/w;->getDownloadStatusController()Lcom/bytedance/sdk/openadsdk/DownloadStatusController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/c/x;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/w;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/w;Lcom/bytedance/sdk/openadsdk/c/x;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w$1;->b:Lcom/bytedance/sdk/openadsdk/core/w;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/w$1;->a:Lcom/bytedance/sdk/openadsdk/c/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelDownload()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w$1;->a:Lcom/bytedance/sdk/openadsdk/c/x;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w$1;->a:Lcom/bytedance/sdk/openadsdk/c/x;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/c/x;->i()V

    .line 168
    :cond_0
    return-void
.end method

.method public changeDownloadStatus()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w$1;->a:Lcom/bytedance/sdk/openadsdk/c/x;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w$1;->a:Lcom/bytedance/sdk/openadsdk/c/x;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/c/x;->b()V

    .line 161
    :cond_0
    return-void
.end method
