.class Lcom/bytedance/sdk/openadsdk/core/b/b$3;
.super Lcom/androidquery/callback/AjaxCallback;
.source "BannerAdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/b/b;->a(Lcom/bytedance/sdk/openadsdk/core/d/h;Lcom/bytedance/sdk/openadsdk/core/b/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidquery/callback/AjaxCallback",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/b/b$a;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/d/h;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/core/b/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/b/b;Lcom/bytedance/sdk/openadsdk/core/b/b$a;Lcom/bytedance/sdk/openadsdk/core/d/h;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/b$3;->c:Lcom/bytedance/sdk/openadsdk/core/b/b;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/b/b$3;->a:Lcom/bytedance/sdk/openadsdk/core/b/b$a;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/b/b$3;->b:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-direct {p0}, Lcom/androidquery/callback/AjaxCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 3

    .prologue
    .line 135
    invoke-super {p0, p1, p2, p3}, Lcom/androidquery/callback/AjaxCallback;->callback(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V

    .line 136
    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_2

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/b$3;->a:Lcom/bytedance/sdk/openadsdk/core/b/b$a;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/b$3;->a:Lcom/bytedance/sdk/openadsdk/core/b/b$a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/b/b$a;->a()V

    .line 145
    :cond_1
    :goto_0
    return-void

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/b$3;->a:Lcom/bytedance/sdk/openadsdk/core/b/b$a;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/b$3;->a:Lcom/bytedance/sdk/openadsdk/core/b/b$a;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/b/a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/b/b$3;->b:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-direct {v1, p2, v2}, Lcom/bytedance/sdk/openadsdk/core/b/a;-><init>(Landroid/graphics/Bitmap;Lcom/bytedance/sdk/openadsdk/core/d/h;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/b/b$a;->a(Lcom/bytedance/sdk/openadsdk/core/b/a;)V

    goto :goto_0
.end method

.method public synthetic callback(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 0

    .prologue
    .line 132
    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/b/b$3;->a(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V

    return-void
.end method
