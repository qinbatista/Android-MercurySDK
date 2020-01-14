.class public Lcom/bytedance/sdk/openadsdk/h/j;
.super Ljava/lang/Object;
.source "JsBridgeUtils.java"


# direct methods
.method public static a(Landroid/webkit/WebView;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const-string v0, ""

    .line 36
    :goto_0
    return-object v0

    .line 30
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    const-string v0, ""

    goto :goto_0

    .line 34
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    const-string v0, " NewsArticle"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " NewsArticle_u_s/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/net/Uri;Lcom/bytedance/sdk/openadsdk/core/v;)V
    .locals 4

    .prologue
    .line 17
    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/v;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/v;->b(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :cond_0
    :goto_0
    return-void

    .line 20
    :catch_0
    move-exception v0

    .line 21
    const-string v1, "WebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TTAndroidObj handleUri exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/h/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
