.class public Lcom/bytedance/sdk/openadsdk/h/n;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/h/n$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 17
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 18
    if-nez v0, :cond_0

    move v0, v1

    .line 33
    :goto_0
    return v0

    .line 21
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 22
    if-eqz v2, :cond_3

    move v0, v1

    .line 23
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 24
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_1

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v4, :cond_2

    .line 25
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 23
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 30
    :catch_0
    move-exception v0

    :cond_3
    move v0, v1

    .line 33
    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/n$a;
    .locals 2

    .prologue
    .line 57
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 59
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 61
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/n$a;->a:Lcom/bytedance/sdk/openadsdk/h/n$a;

    .line 89
    :goto_0
    return-object v0

    .line 63
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 64
    const/4 v1, 0x1

    if-ne v1, v0, :cond_2

    .line 65
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/n$a;->e:Lcom/bytedance/sdk/openadsdk/h/n$a;

    goto :goto_0

    .line 66
    :cond_2
    if-nez v0, :cond_3

    .line 67
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 69
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 83
    :pswitch_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/n$a;->b:Lcom/bytedance/sdk/openadsdk/h/n$a;

    goto :goto_0

    .line 79
    :pswitch_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/n$a;->d:Lcom/bytedance/sdk/openadsdk/h/n$a;

    goto :goto_0

    .line 81
    :pswitch_2
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/n$a;->f:Lcom/bytedance/sdk/openadsdk/h/n$a;

    goto :goto_0

    .line 86
    :cond_3
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/n$a;->b:Lcom/bytedance/sdk/openadsdk/h/n$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/n$a;->b:Lcom/bytedance/sdk/openadsdk/h/n$a;

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 94
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/h/n;->b(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/n$a;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/h/n$a;->e:Lcom/bytedance/sdk/openadsdk/h/n$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
