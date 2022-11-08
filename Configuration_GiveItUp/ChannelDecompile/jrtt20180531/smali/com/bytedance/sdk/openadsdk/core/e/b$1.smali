.class Lcom/bytedance/sdk/openadsdk/core/e/b$1;
.super Lcom/androidquery/callback/AjaxCallback;
.source "SdkSettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/e/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidquery/callback/AjaxCallback",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/e/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/e/b;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/e/b;

    invoke-direct {p0}, Lcom/androidquery/callback/AjaxCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0, p1, p2, p3}, Lcom/androidquery/callback/AjaxCallback;->callback(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V

    .line 40
    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_0

    .line 41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/e/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/e/b;->a(Lcom/bytedance/sdk/openadsdk/core/e/b;)Lcom/bytedance/sdk/openadsdk/core/e/a;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/e/a;->a(Lorg/json/JSONObject;)V

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/e/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/e/b;->a(Lcom/bytedance/sdk/openadsdk/core/e/b;)Lcom/bytedance/sdk/openadsdk/core/e/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/e/a;->a()V

    goto :goto_0
.end method

.method public synthetic callback(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 0

    .prologue
    .line 36
    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/e/b$1;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/androidquery/callback/AjaxStatus;)V

    return-void
.end method
