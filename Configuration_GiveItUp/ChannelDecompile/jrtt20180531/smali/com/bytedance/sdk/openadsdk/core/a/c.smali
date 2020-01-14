.class public Lcom/bytedance/sdk/openadsdk/core/a/c;
.super Ljava/lang/Object;
.source "DownloadClickEventListener.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/c/x$b;


# instance fields
.field protected a:Lcom/bytedance/sdk/openadsdk/core/d/h;

.field protected b:Ljava/lang/String;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->c:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->a:Lcom/bytedance/sdk/openadsdk/core/d/h;

    .line 25
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->b:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->a:Lcom/bytedance/sdk/openadsdk/core/d/h;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->b:Ljava/lang/String;

    const-string v3, "click_start"

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/d/c;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->a:Lcom/bytedance/sdk/openadsdk/core/d/h;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->b:Ljava/lang/String;

    const-string v3, "click_pause"

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/d/c;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 40
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->a:Lcom/bytedance/sdk/openadsdk/core/d/h;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->b:Ljava/lang/String;

    const-string v3, "click_continue"

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/d/c;->c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->a:Lcom/bytedance/sdk/openadsdk/core/d/h;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->b:Ljava/lang/String;

    const-string v3, "click_open"

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/d/c;->h(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method
