.class public Lcom/bytedance/sdk/openadsdk/core/e/c;
.super Ljava/lang/Object;
.source "TTSdkSettings.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/e/a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/c;->b:J

    .line 29
    const/16 v0, 0x32

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/c;->c:I

    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/e/c;->f()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 51
    const-string v1, "xpath"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/e/c;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 52
    const-string v1, "duration"

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/e/c;->b:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 53
    const-string v1, "max"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/e/c;->c:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 54
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 55
    return-void
.end method

.method private f()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 58
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_sdk_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/e/c;->f()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 34
    const-string v1, "xpath"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/c;->a:Ljava/lang/String;

    .line 35
    const-string v1, "duration"

    const-wide/16 v2, 0x2710

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/e/c;->b:J

    .line 36
    const-string v1, "max"

    const/16 v2, 0x32

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/c;->c:I

    .line 37
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 6
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 41
    const-string v0, "xpath"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/c;->a:Ljava/lang/String;

    .line 42
    const-string v0, "feq_policy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 43
    const-string v1, "duration"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/e/c;->b:J

    .line 44
    const-string v1, "max"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/c;->c:I

    .line 46
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/e/c;->e()V

    .line 47
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/c;->b:J

    return-wide v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/c;->c:I

    return v0
.end method
