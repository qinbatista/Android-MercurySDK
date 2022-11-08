.class public Lcom/bytedance/sdk/openadsdk/h/c;
.super Ljava/lang/Object;
.source "ApiNetworkUtils.java"


# direct methods
.method public static a(Landroid/content/Context;)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 25
    .line 28
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 29
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 31
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 32
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    .line 34
    const-string v2, "WIFI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    const/4 v0, 0x1

    .line 70
    :goto_0
    return v0

    .line 36
    :cond_0
    const-string v2, "MOBILE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 38
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 44
    :pswitch_0
    const/4 v0, 0x2

    .line 45
    goto :goto_0

    .line 55
    :pswitch_1
    const/4 v0, 0x3

    .line 56
    goto :goto_0

    .line 58
    :pswitch_2
    const/4 v0, 0x4

    .line 59
    goto :goto_0

    :cond_2
    move v0, v1

    .line 66
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
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

.method public static a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "http://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "https://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/h/c;->a(Landroid/content/Context;)I

    move-result v0

    .line 82
    packed-switch v0, :pswitch_data_0

    .line 96
    const-string v0, "mobile"

    .line 99
    :goto_0
    return-object v0

    .line 84
    :pswitch_0
    const-string v0, "wifi"

    goto :goto_0

    .line 87
    :pswitch_1
    const-string v0, "2g"

    goto :goto_0

    .line 90
    :pswitch_2
    const-string v0, "3g"

    goto :goto_0

    .line 93
    :pswitch_3
    const-string v0, "4g"

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
