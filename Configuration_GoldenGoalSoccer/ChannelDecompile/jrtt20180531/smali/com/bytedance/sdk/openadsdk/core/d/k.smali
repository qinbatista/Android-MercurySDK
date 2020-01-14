.class public Lcom/bytedance/sdk/openadsdk/core/d/k;
.super Ljava/lang/Object;
.source "SplashLogModel.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:I

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "1.9.2"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->d:Ljava/lang/String;

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->e:J

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->f:I

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/core/d/k;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/bytedance/sdk/openadsdk/core/d/k;
    .locals 1

    .prologue
    .line 135
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->f:I

    .line 136
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->c()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    return-object v0
.end method

.method public a(J)Lcom/bytedance/sdk/openadsdk/core/d/k;
    .locals 1

    .prologue
    .line 126
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->e:J

    .line 127
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->c()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/k;
    .locals 1

    .prologue
    .line 90
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->a:Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->c()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcom/bytedance/sdk/openadsdk/core/d/k;
    .locals 1

    .prologue
    .line 153
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->h:I

    .line 154
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->c()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/k;
    .locals 1

    .prologue
    .line 99
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->b:Ljava/lang/String;

    .line 100
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->c()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    return-object v0
.end method

.method public b()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 31
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 33
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    const-string v0, "type"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    const-string v0, "rit"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 42
    const-string v0, "creative_id"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 46
    const-string v0, "ad_sdk_version"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->h()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    .line 50
    const-string v0, "timestamp"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->h()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 53
    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->i()I

    move-result v0

    if-lez v0, :cond_5

    .line 54
    const-string v0, "adtype"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->i()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 57
    :cond_5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 58
    const-string v0, "req_id"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    :cond_6
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 62
    const-string v0, "error_code"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->k()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 63
    const-string v0, "error_msg"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    :cond_7
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 67
    const-string v0, "extra"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    :cond_8
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 71
    const-string v0, "image_url"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_9
    :goto_0
    return-object v1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected c()Lcom/bytedance/sdk/openadsdk/core/d/k;
    .locals 0

    .prologue
    .line 82
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/k;
    .locals 1

    .prologue
    .line 108
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->c:Ljava/lang/String;

    .line 109
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->c()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/k;
    .locals 1

    .prologue
    .line 144
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->g:Ljava/lang/String;

    .line 145
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->c()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/k;
    .locals 1

    .prologue
    .line 162
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->i:Ljava/lang/String;

    .line 163
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->c()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/k;
    .locals 1

    .prologue
    .line 171
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->j:Ljava/lang/String;

    .line 172
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->c()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/k;
    .locals 1

    .prologue
    .line 180
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->k:Ljava/lang/String;

    .line 181
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->c()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->d:Ljava/lang/String;

    return-object v0
.end method

.method public h()J
    .locals 2

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->e:J

    return-wide v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->f:I

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->g:Ljava/lang/String;

    return-object v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->h:I

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->i:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->j:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/k;->k:Ljava/lang/String;

    return-object v0
.end method
