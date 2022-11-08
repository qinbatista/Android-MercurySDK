.class public Lcom/bytedance/sdk/openadsdk/core/d/e;
.super Ljava/lang/Object;
.source "DownloadModel.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/bytedance/sdk/openadsdk/core/d/h;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->b:Lcom/bytedance/sdk/openadsdk/core/d/h;

    .line 15
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->a:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/openadsdk/core/d/h;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->b:Lcom/bytedance/sdk/openadsdk/core/d/h;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->b:Lcom/bytedance/sdk/openadsdk/core/d/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/e;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
