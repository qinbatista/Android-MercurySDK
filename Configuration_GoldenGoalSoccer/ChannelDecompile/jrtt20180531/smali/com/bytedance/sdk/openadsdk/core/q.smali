.class public Lcom/bytedance/sdk/openadsdk/core/q;
.super Ljava/lang/Object;
.source "SSWebSettings.java"


# static fields
.field private static i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 158
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/q;->i:Ljava/util/Set;

    .line 160
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/q;->i:Ljava/util/Set;

    const-string v1, "device_id"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/q;->i:Ljava/util/Set;

    const-string v1, "ac"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/q;->i:Ljava/util/Set;

    const-string v1, "channel"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 163
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/q;->i:Ljava/util/Set;

    const-string v1, "aid"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/q;->i:Ljava/util/Set;

    const-string v1, "device_platform"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/q;->i:Ljava/util/Set;

    const-string v1, "device_type"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/q;->i:Ljava/util/Set;

    const-string v1, "os_api"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/q;->i:Ljava/util/Set;

    const-string v1, "update_version_code"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 168
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/q;->b:Z

    .line 44
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/q;->c:Z

    .line 47
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/q;->d:Z

    .line 50
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/q;->e:Z

    .line 53
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/q;->f:Z

    .line 56
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/q;->g:Z

    .line 59
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/q;->h:Z

    .line 62
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q;->a:Ljava/lang/ref/WeakReference;

    .line 63
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/q;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/q;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/q;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 123
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "{{ad_id}}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    :cond_0
    const/4 v0, 0x0

    .line 136
    :goto_0
    return-object v0

    .line 126
    :cond_1
    const-string v0, "{{ad_id}}"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:(function () {    var JS_ACTLOG_URL = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\';    var head = document.getElementsByTagName(\'head\')[0];    var script = document.createElement(\'script\');    script.type = \'text/javascript\';    script.src = JS_ACTLOG_URL;    head.appendChild(script);})();"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Z)Lcom/bytedance/sdk/openadsdk/core/q;
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/q;->h:Z

    .line 72
    return-object p0
.end method

.method public a(Landroid/webkit/WebView;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 80
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/q;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 84
    if-eqz v3, :cond_0

    .line 90
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 95
    :goto_1
    :try_start_1
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/q;->c:Z

    if-eqz v2, :cond_2

    .line 96
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 97
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 106
    :goto_2
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 107
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/q;->d:Z

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 108
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/q;->e:Z

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 109
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/q;->f:Z

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 110
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/q;->g:Z

    if-nez v2, :cond_3

    :goto_3
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 111
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/q;->h:Z

    if-nez v0, :cond_0

    .line 113
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 91
    :catch_1
    move-exception v2

    .line 92
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 99
    :cond_2
    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 101
    :catch_2
    move-exception v2

    .line 103
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_3
    move v0, v1

    .line 110
    goto :goto_3
.end method
