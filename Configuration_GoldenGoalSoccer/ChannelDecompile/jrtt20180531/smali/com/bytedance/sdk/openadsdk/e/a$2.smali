.class Lcom/bytedance/sdk/openadsdk/e/a$2;
.super Ljava/lang/Object;
.source "JsAppAdDownloadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/e/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/e/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/c/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/e/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/e/a;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/e/a$2;->b:Lcom/bytedance/sdk/openadsdk/e/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/e/a$2;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 264
    if-eqz p1, :cond_0

    array-length v0, p1

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 269
    const-string v0, "message"

    const-string v2, "success"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    const-string v0, "appad"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/e/a$2;->a:Lorg/json/JSONObject;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 272
    aget-object v2, p1, v0

    add-int/lit8 v3, v0, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/a$2;->b:Lcom/bytedance/sdk/openadsdk/e/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/e/a;->a(Lcom/bytedance/sdk/openadsdk/e/a;)Lcom/bytedance/sdk/openadsdk/e/b;

    move-result-object v0

    const-string v2, "app_ad_event"

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/e/b;->b(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    sget-object v0, Lcom/bytedance/sdk/openadsdk/e/a;->a:Ljava/lang/String;

    const-string v1, "JSONException"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 260
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "cancel_download"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/e/a$2;->a([Ljava/lang/String;)V

    .line 261
    return-void
.end method
