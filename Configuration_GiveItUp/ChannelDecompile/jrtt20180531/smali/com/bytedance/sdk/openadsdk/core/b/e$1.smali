.class Lcom/bytedance/sdk/openadsdk/core/b/e$1;
.super Ljava/lang/Object;
.source "TTBannerAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/b/e;->a()V
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
    .line 72
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/e$1;->a:Lcom/bytedance/sdk/openadsdk/core/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/e$1;->a:Lcom/bytedance/sdk/openadsdk/core/b/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/b/e;->a(Lcom/bytedance/sdk/openadsdk/core/b/e;)V

    .line 95
    const-string v0, "TTBannerAd"

    const-string v1, "BANNER SHOW"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 75
    if-eqz p1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/e$1;->a:Lcom/bytedance/sdk/openadsdk/core/b/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/b/e;->a(Lcom/bytedance/sdk/openadsdk/core/b/e;)V

    .line 77
    const-string v0, "TTBannerAd"

    const-string v1, "\u83b7\u5f97\u7126\u70b9\uff0c\u5f00\u59cb\u8ba1\u65f6"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :goto_0
    return-void

    .line 79
    :cond_0
    const-string v0, "TTBannerAd"

    const-string v1, "\u5931\u53bb\u7126\u70b9\uff0c\u505c\u6b62\u8ba1\u65f6"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/e$1;->a:Lcom/bytedance/sdk/openadsdk/core/b/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/b/e;->b(Lcom/bytedance/sdk/openadsdk/core/b/e;)V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method
