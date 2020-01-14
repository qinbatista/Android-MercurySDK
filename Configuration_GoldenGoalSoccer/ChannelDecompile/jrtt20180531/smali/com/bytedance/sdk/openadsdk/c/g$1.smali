.class Lcom/bytedance/sdk/openadsdk/c/g$1;
.super Lcom/androidquery/callback/AjaxCallback;
.source "DownloadNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/c/g;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;
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
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/c/g;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/c/g;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/g$1;->a:Lcom/bytedance/sdk/openadsdk/c/g;

    invoke-direct {p0}, Lcom/androidquery/callback/AjaxCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 2

    .prologue
    .line 137
    invoke-super {p0, p1, p2, p3}, Lcom/androidquery/callback/AjaxCallback;->callback(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V

    .line 138
    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/g$1;->a:Lcom/bytedance/sdk/openadsdk/c/g;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Lcom/bytedance/sdk/openadsdk/c/g;)Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42300000    # 44.0f

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/content/Context;F)F

    move-result v0

    .line 140
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/g$1;->a:Lcom/bytedance/sdk/openadsdk/c/g;

    invoke-static {p2, v0, v0}, Lcom/bytedance/sdk/openadsdk/h/f;->a(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Lcom/bytedance/sdk/openadsdk/c/g;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 142
    :cond_0
    return-void
.end method

.method public synthetic callback(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 0

    .prologue
    .line 134
    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/c/g$1;->a(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V

    return-void
.end method
