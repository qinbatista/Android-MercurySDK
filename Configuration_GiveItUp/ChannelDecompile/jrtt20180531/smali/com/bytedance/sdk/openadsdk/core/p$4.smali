.class Lcom/bytedance/sdk/openadsdk/core/p$4;
.super Lcom/androidquery/callback/AjaxCallback;
.source "NetApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/p;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/b$a;)V
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
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/f/b$a;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/p;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/core/f/b$a;)V
    .locals 0

    .prologue
    .line 907
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p$4;->b:Lcom/bytedance/sdk/openadsdk/core/p;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/p$4;->a:Lcom/bytedance/sdk/openadsdk/core/f/b$a;

    invoke-direct {p0}, Lcom/androidquery/callback/AjaxCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 910
    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 911
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$4;->a:Lcom/bytedance/sdk/openadsdk/core/f/b$a;

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/f/b$a;->a(Z)V

    .line 926
    :goto_0
    return-void

    .line 916
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/p$b;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/p$b;

    move-result-object v0

    .line 917
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/p$b;->a:I

    if-nez v1, :cond_1

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/core/p$b;->b:Z

    if-nez v0, :cond_1

    .line 918
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$4;->a:Lcom/bytedance/sdk/openadsdk/core/f/b$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/f/b$a;->a(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 921
    :catch_0
    move-exception v0

    .line 925
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$4;->a:Lcom/bytedance/sdk/openadsdk/core/f/b$a;

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/f/b$a;->a(Z)V

    goto :goto_0
.end method

.method public synthetic callback(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 0

    .prologue
    .line 907
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/p$4;->a(Ljava/lang/String;Ljava/lang/String;Lcom/androidquery/callback/AjaxStatus;)V

    return-void
.end method
