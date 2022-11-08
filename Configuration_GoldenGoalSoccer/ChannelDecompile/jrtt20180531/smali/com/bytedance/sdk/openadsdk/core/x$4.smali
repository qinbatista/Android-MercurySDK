.class Lcom/bytedance/sdk/openadsdk/core/x$4;
.super Lcom/androidquery/callback/BitmapAjaxCallback;
.source "TTInteractionAdImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/x;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/x;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/x;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x$4;->a:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-direct {p0}, Lcom/androidquery/callback/BitmapAjaxCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected callback(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 2

    .prologue
    .line 167
    invoke-super {p0, p1, p2, p3, p4}, Lcom/androidquery/callback/BitmapAjaxCallback;->callback(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V

    .line 168
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x$4;->a:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/x;->g(Lcom/bytedance/sdk/openadsdk/core/x;)Lcom/bytedance/sdk/openadsdk/core/j;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 169
    if-eqz p4, :cond_0

    if-nez p3, :cond_2

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x$4;->a:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/x;->g(Lcom/bytedance/sdk/openadsdk/core/x;)Lcom/bytedance/sdk/openadsdk/core/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/j;->b()V

    .line 179
    :cond_1
    :goto_0
    return-void

    .line 172
    :cond_2
    invoke-virtual {p4}, Lcom/androidquery/callback/AjaxStatus;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    .line 173
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x$4;->a:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/x;->g(Lcom/bytedance/sdk/openadsdk/core/x;)Lcom/bytedance/sdk/openadsdk/core/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/j;->a()V

    goto :goto_0

    .line 175
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x$4;->a:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/x;->g(Lcom/bytedance/sdk/openadsdk/core/x;)Lcom/bytedance/sdk/openadsdk/core/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/j;->b()V

    goto :goto_0
.end method
