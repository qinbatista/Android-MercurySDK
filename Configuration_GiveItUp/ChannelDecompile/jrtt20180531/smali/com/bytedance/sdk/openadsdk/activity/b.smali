.class public Lcom/bytedance/sdk/openadsdk/activity/b;
.super Landroid/webkit/WebViewClient;
.source "TTWebViewClient.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/bytedance/sdk/openadsdk/core/v;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/activity/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/v;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/b;->c:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/b;->b:Lcom/bytedance/sdk/openadsdk/core/v;

    .line 39
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/b;->d:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 83
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lcom/bytedance/sdk/openadsdk/activity/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageFinished "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    if-eqz p1, :cond_1

    .line 87
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->e()Lcom/bytedance/sdk/openadsdk/core/e/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/c;->b()Ljava/lang/String;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/b;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 90
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/h/l;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 94
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    const/4 v0, 0x1

    .line 95
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/b;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/q;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Z)Lcom/bytedance/sdk/openadsdk/core/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Landroid/webkit/WebView;)V

    .line 96
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 97
    return-void

    .line 94
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 1

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 59
    sget-object v1, Lcom/bytedance/sdk/openadsdk/activity/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldOverrideUrlLoading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/h/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 63
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 64
    const-string v3, "bytedance"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/b;->b:Lcom/bytedance/sdk/openadsdk/core/v;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/h/j;->a(Landroid/net/Uri;Lcom/bytedance/sdk/openadsdk/core/v;)V

    .line 78
    :goto_0
    return v0

    .line 68
    :cond_0
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/h/c;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 69
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 71
    const/high16 v1, 0x10000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 72
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/b;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    sget-object v1, Lcom/bytedance/sdk/openadsdk/activity/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldOverrideUrlLoading"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
