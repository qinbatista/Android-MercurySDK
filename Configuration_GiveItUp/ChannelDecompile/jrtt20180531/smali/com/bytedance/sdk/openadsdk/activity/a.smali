.class public Lcom/bytedance/sdk/openadsdk/activity/a;
.super Landroid/webkit/WebChromeClient;
.source "TTWebChromeClient.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/bytedance/sdk/openadsdk/core/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/activity/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/v;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/a;->b:Lcom/bytedance/sdk/openadsdk/core/v;

    .line 23
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 46
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 48
    const-string v2, "bytedance"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/a;->b:Lcom/bytedance/sdk/openadsdk/core/v;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/j;->a(Landroid/net/Uri;Lcom/bytedance/sdk/openadsdk/core/v;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    const/4 v0, 0x1

    .line 54
    :goto_0
    return v0

    .line 52
    :catch_0
    move-exception v0

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 27
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/a;->a(Ljava/lang/String;)Z

    .line 30
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    .line 31
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1

    .prologue
    .line 35
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/a;->a(Ljava/lang/String;)Z

    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    const/4 v0, 0x1

    .line 41
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    goto :goto_0
.end method
