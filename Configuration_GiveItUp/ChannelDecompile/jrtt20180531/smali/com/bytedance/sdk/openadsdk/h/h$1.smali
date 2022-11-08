.class final Lcom/bytedance/sdk/openadsdk/h/h$1;
.super Lcom/androidquery/callback/AjaxCallback;
.source "ImageBytesHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/h/h;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/h/h$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidquery/callback/AjaxCallback",
        "<[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/h/h$a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/h/h$a;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/h$1;->a:Lcom/bytedance/sdk/openadsdk/h/h$a;

    invoke-direct {p0}, Lcom/androidquery/callback/AjaxCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;[BLcom/androidquery/callback/AjaxStatus;)V
    .locals 3

    .prologue
    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/h$1;->a:Lcom/bytedance/sdk/openadsdk/h/h$a;

    if-eqz v0, :cond_1

    .line 27
    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_2

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/h$1;->a:Lcom/bytedance/sdk/openadsdk/h/h$a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/h/h$a;->a()V

    .line 39
    :cond_1
    :goto_0
    return-void

    .line 30
    :cond_2
    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    .line 31
    const-string v0, "ImageBytesHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u56fe\u7247\u6570\u636e\u8fd4\u56de\u6210\u529f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/h$1;->a:Lcom/bytedance/sdk/openadsdk/h/h$a;

    invoke-interface {v0, p2}, Lcom/bytedance/sdk/openadsdk/h/h$a;->a([B)V

    goto :goto_0

    .line 34
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/h$1;->a:Lcom/bytedance/sdk/openadsdk/h/h$a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/h/h$a;->a()V

    goto :goto_0
.end method

.method public synthetic callback(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 0

    .prologue
    .line 23
    check-cast p2, [B

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/h/h$1;->a(Ljava/lang/String;[BLcom/androidquery/callback/AjaxStatus;)V

    return-void
.end method
