.class public Lcom/bytedance/sdk/openadsdk/c/t;
.super Ljava/lang/Object;
.source "RealSystemFacade.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/c/w;


# static fields
.field private static b:Lcom/bytedance/sdk/openadsdk/c/t;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/t;->a:Landroid/content/Context;

    .line 25
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/c/t;
    .locals 2

    .prologue
    .line 17
    const-class v1, Lcom/bytedance/sdk/openadsdk/c/t;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/t;->b:Lcom/bytedance/sdk/openadsdk/c/t;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/t;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/c/t;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/c/t;->b:Lcom/bytedance/sdk/openadsdk/c/t;

    .line 20
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/t;->b:Lcom/bytedance/sdk/openadsdk/c/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 17
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/t;->a:Landroid/content/Context;

    const-class v1, Lcom/bytedance/sdk/openadsdk/service/TTDownloadHandlerService;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 81
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/t;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b()Landroid/net/NetworkInfo;
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/t;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 35
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 36
    if-nez v0, :cond_1

    .line 37
    const-string v0, "SsDownloadManager"

    const-string v1, "couldn\'t get connectivity manager"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/4 v0, 0x0

    .line 45
    :cond_0
    :goto_0
    return-object v0

    .line 41
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 42
    if-nez v0, :cond_0

    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/c/b;->d:Z

    if-eqz v1, :cond_0

    .line 43
    const-string v1, "SsDownloadManager"

    const-string v2, "network is not available"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public c()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 50
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/t;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 52
    if-nez v0, :cond_0

    .line 53
    const-string v0, "SsDownloadManager"

    const-string v1, "couldn\'t get connectivity manager"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :goto_0
    return v3

    .line 56
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_2

    move v1, v2

    .line 58
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/t;->a:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 60
    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    :goto_2
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/c/b;->d:Z

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 62
    const-string v0, "SsDownloadManager"

    const-string v1, "network is roaming"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v3, v2

    .line 64
    goto :goto_0

    :cond_2
    move v1, v3

    .line 57
    goto :goto_1

    :cond_3
    move v2, v3

    .line 60
    goto :goto_2
.end method

.method public d()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/t;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/f;->b(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/t;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/f;->c(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
