.class Lcom/bytedance/sdk/openadsdk/core/widget/b$1;
.super Ljava/lang/Object;
.source "VideoTrafficTipLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/b;->a(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/widget/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/b;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->a(Lcom/bytedance/sdk/openadsdk/core/widget/b;Z)Z

    .line 61
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->a(Lcom/bytedance/sdk/openadsdk/core/widget/b;)V

    .line 62
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->b(Lcom/bytedance/sdk/openadsdk/core/widget/b;)Lcom/bytedance/sdk/openadsdk/core/video/a/d;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/widget/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/widget/b$a;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/a/d;->a(Lcom/bytedance/sdk/openadsdk/core/widget/b$a;Ljava/lang/String;)V

    .line 63
    return-void
.end method
