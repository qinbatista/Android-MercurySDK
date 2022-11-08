.class Lcom/bytedance/sdk/openadsdk/core/b/d$1;
.super Ljava/lang/Object;
.source "BannerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/b/d;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/b/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/b/d;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/b/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/b/d;->a(Lcom/bytedance/sdk/openadsdk/core/b/d;)Lcom/bytedance/sdk/openadsdk/b/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/b/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/b/d;->a(Lcom/bytedance/sdk/openadsdk/core/b/d;)Lcom/bytedance/sdk/openadsdk/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/b;->showDislikeDialog()V

    .line 79
    :cond_0
    return-void
.end method
