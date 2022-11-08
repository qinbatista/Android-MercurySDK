.class Lcom/bytedance/sdk/openadsdk/core/b/e$2;
.super Ljava/lang/Object;
.source "TTBannerAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/b/e;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/b/e;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/b/e;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/e$2;->a:Lcom/bytedance/sdk/openadsdk/core/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/e$2;->a:Lcom/bytedance/sdk/openadsdk/core/b/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/b/e;->a(Lcom/bytedance/sdk/openadsdk/core/b/e;)V

    .line 206
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/b/a;)V
    .locals 1
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/b/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 198
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/e$2;->a:Lcom/bytedance/sdk/openadsdk/core/b/e;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/b/e;->a(Lcom/bytedance/sdk/openadsdk/core/b/e;Lcom/bytedance/sdk/openadsdk/core/b/a;)V

    .line 199
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/e$2;->a:Lcom/bytedance/sdk/openadsdk/core/b/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/b/e;->c(Lcom/bytedance/sdk/openadsdk/core/b/e;)Lcom/bytedance/sdk/openadsdk/core/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/b/d;->e()V

    .line 200
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/e$2;->a:Lcom/bytedance/sdk/openadsdk/core/b/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/b/e;->a(Lcom/bytedance/sdk/openadsdk/core/b/e;)V

    .line 201
    return-void
.end method
