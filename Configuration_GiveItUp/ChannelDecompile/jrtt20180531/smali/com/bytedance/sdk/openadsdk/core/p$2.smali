.class Lcom/bytedance/sdk/openadsdk/core/p$2;
.super Lcom/androidquery/callback/AjaxCallback;
.source "NetApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/p;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/o$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidquery/callback/AjaxCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/o$b;

.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/core/p;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/core/o$b;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 735
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->c:Lcom/bytedance/sdk/openadsdk/core/p;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->a:Lcom/bytedance/sdk/openadsdk/core/o$b;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->b:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/androidquery/callback/AjaxCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 5

    .prologue
    const/4 v3, -0x2

    const/4 v4, -0x1

    .line 738
    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    .line 739
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->c:Lcom/bytedance/sdk/openadsdk/core/p;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->a:Lcom/bytedance/sdk/openadsdk/core/o$b;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/core/o$b;)V

    .line 741
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->c:Lcom/bytedance/sdk/openadsdk/core/p;

    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getCode()I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->b:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v4, v2, p2}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/core/p;IILjava/lang/String;Ljava/lang/String;)V

    .line 773
    :goto_0
    return-void

    .line 745
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/p$c;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/p$c;

    move-result-object v0

    .line 747
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/p$c;->a:I

    const/16 v2, 0x4e20

    if-eq v1, v2, :cond_1

    .line 748
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->a:Lcom/bytedance/sdk/openadsdk/core/o$b;

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/p$c;->a:I

    iget v3, v0, Lcom/bytedance/sdk/openadsdk/core/p$c;->a:I

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/o$b;->a(ILjava/lang/String;)V

    .line 749
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->c:Lcom/bytedance/sdk/openadsdk/core/p;

    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getCode()I

    move-result v2

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/p$c;->a:I

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->b:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v0, v3, p2}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/core/p;IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 758
    :catch_0
    move-exception v0

    .line 759
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->c:Lcom/bytedance/sdk/openadsdk/core/p;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->a:Lcom/bytedance/sdk/openadsdk/core/o$b;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/core/o$b;)V

    .line 760
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->c:Lcom/bytedance/sdk/openadsdk/core/p;

    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getCode()I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->b:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v4, v2, p2}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/core/p;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 752
    :cond_1
    :try_start_1
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/p$c;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez v1, :cond_2

    .line 753
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->c:Lcom/bytedance/sdk/openadsdk/core/p;

    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getCode()I

    move-result v1

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->b:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, p2}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/core/p;IILjava/lang/String;Ljava/lang/String;)V

    .line 754
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->c:Lcom/bytedance/sdk/openadsdk/core/p;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->a:Lcom/bytedance/sdk/openadsdk/core/o$b;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/core/o$b;)V

    goto :goto_0

    .line 757
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->a:Lcom/bytedance/sdk/openadsdk/core/o$b;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/o$b;->a(Lcom/bytedance/sdk/openadsdk/core/p$c;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 763
    :cond_3
    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getCode()I

    move-result v0

    if-lez v0, :cond_4

    .line 765
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->a:Lcom/bytedance/sdk/openadsdk/core/o$b;

    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getCode()I

    move-result v1

    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/o$b;->a(ILjava/lang/String;)V

    .line 766
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->c:Lcom/bytedance/sdk/openadsdk/core/p;

    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getCode()I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->b:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v4, v2, p2}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/core/p;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 769
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->a:Lcom/bytedance/sdk/openadsdk/core/o$b;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/bytedance/sdk/openadsdk/core/o$b;->a(ILjava/lang/String;)V

    .line 770
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->c:Lcom/bytedance/sdk/openadsdk/core/p;

    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getCode()I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p$2;->b:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v3, v2, p2}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/core/p;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public synthetic callback(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 0

    .prologue
    .line 735
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/p$2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/androidquery/callback/AjaxStatus;)V

    return-void
.end method
