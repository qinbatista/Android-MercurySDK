.class public Lcom/bytedance/sdk/openadsdk/core/e/b;
.super Ljava/lang/Object;
.source "SdkSettingsHelper.java"


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/core/e/a;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/e/a;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/b;->a:Lcom/bytedance/sdk/openadsdk/core/e/a;

    .line 24
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/b;->b:Landroid/content/Context;

    .line 25
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/e/b;)Lcom/bytedance/sdk/openadsdk/core/e/a;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/b;->a:Lcom/bytedance/sdk/openadsdk/core/e/a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/n;->a(Landroid/content/Context;)Z

    move-result v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/b;->a:Lcom/bytedance/sdk/openadsdk/core/e/a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/e/a;->a()V

    .line 48
    :goto_0
    return-void

    .line 35
    :cond_0
    new-instance v0, Lcom/androidquery/AQuery;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/b;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    .line 36
    const-string v1, "http://i.snssdk.com/api/ad/union/sdk/config/"

    const-class v2, Lorg/json/JSONObject;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/e/b$1;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/e/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/e/b;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/androidquery/AQuery;->ajax(Ljava/lang/String;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    goto :goto_0
.end method
