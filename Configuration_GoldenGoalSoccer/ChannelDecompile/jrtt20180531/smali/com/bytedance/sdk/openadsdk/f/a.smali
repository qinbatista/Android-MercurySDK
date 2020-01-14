.class public Lcom/bytedance/sdk/openadsdk/f/a;
.super Ljava/lang/Object;
.source "SplashLogManager.java"


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/f/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/f/a;
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lcom/bytedance/sdk/openadsdk/f/a;->a:Lcom/bytedance/sdk/openadsdk/f/a;

    if-nez v0, :cond_1

    .line 23
    const-class v1, Lcom/bytedance/sdk/openadsdk/f/a;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/f/a;->a:Lcom/bytedance/sdk/openadsdk/f/a;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/bytedance/sdk/openadsdk/f/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/f/a;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/f/a;->a:Lcom/bytedance/sdk/openadsdk/f/a;

    .line 27
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/f/a;->a:Lcom/bytedance/sdk/openadsdk/f/a;

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->c()Lcom/bytedance/sdk/openadsdk/core/o;

    move-result-object v0

    .line 87
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/o;->a(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/k;)Z
    .locals 1

    .prologue
    .line 33
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/d/k;)V
    .locals 4

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/f/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    :goto_0
    return-void

    .line 41
    :cond_0
    const-string v0, "outer_call"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a(J)Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 44
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/f/a;->a(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public c(Lcom/bytedance/sdk/openadsdk/core/d/k;)V
    .locals 4

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/f/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 52
    :cond_0
    const-string v0, "outer_call_send"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a(J)Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 55
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/f/a;->a(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public d(Lcom/bytedance/sdk/openadsdk/core/d/k;)V
    .locals 4

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/f/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 63
    :cond_0
    const-string v0, "outer_call_no_rsp"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a(J)Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 66
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/f/a;->a(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public e(Lcom/bytedance/sdk/openadsdk/core/d/k;)V
    .locals 4

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/f/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 74
    :cond_0
    const-string v0, "load_creative_error"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a(J)Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 77
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/f/a;->a(Lorg/json/JSONObject;)V

    goto :goto_0
.end method
