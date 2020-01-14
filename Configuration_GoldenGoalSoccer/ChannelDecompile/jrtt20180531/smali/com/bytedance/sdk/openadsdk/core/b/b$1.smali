.class Lcom/bytedance/sdk/openadsdk/core/b/b$1;
.super Ljava/lang/Object;
.source "BannerAdManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/b/b;->a(Lcom/bytedance/sdk/openadsdk/core/b/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/b/b$a;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/b/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/b/b;Lcom/bytedance/sdk/openadsdk/core/b/b$a;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/b$1;->b:Lcom/bytedance/sdk/openadsdk/core/b/b;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/b/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/b/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 64
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/b/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/b/b$a;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/b/b$a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/b/b$a;->a()V

    .line 68
    :cond_0
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/a;)V
    .locals 3

    .prologue
    .line 72
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->b()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/h;

    .line 74
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/b$1;->b:Lcom/bytedance/sdk/openadsdk/core/b/b;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/b/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/b/b$a;

    invoke-static {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/b/b;->a(Lcom/bytedance/sdk/openadsdk/core/b/b;Lcom/bytedance/sdk/openadsdk/core/d/h;Lcom/bytedance/sdk/openadsdk/core/b/b$a;)V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/b/b;->a:Ljava/lang/String;

    const-string v1, "Banner\u5e7f\u544a\u89e3\u6790\u5931\u8d25/\u5e7f\u544a\u4e3a\u7a7a"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/b/b$a;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/b/b$a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/b/b$a;->a()V

    goto :goto_0
.end method
