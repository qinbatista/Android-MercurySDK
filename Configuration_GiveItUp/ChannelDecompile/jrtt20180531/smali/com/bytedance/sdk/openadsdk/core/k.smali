.class public Lcom/bytedance/sdk/openadsdk/core/k;
.super Ljava/lang/Object;
.source "InitHelper.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/k;->a:Z

    return-void
.end method

.method private static a()V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/e/b;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->e()Lcom/bytedance/sdk/openadsdk/core/e/c;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/e/b;-><init>(Lcom/bytedance/sdk/openadsdk/core/e/a;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/b;->a()V

    .line 65
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 39
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/k;->a:Z

    if-nez v0, :cond_1

    .line 40
    const-class v1, Lcom/bytedance/sdk/openadsdk/TTAdManagerFactory;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/k;->a:Z

    if-nez v0, :cond_0

    .line 42
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/k;->b(Landroid/content/Context;)V

    .line 43
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/k;->a:Z

    .line 45
    :cond_0
    monitor-exit v1

    .line 47
    :cond_1
    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static b()V
    .locals 5

    .prologue
    .line 73
    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 74
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 75
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v2

    .line 76
    check-cast v0, Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v2, v0}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 77
    new-instance v0, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    const/16 v4, 0x1bb

    invoke-direct {v0, v3, v2, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 78
    invoke-static {v2}, Lcom/androidquery/callback/AjaxCallback;->setSSF(Lorg/apache/http/conn/scheme/SocketFactory;)V

    .line 79
    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/n;->a(Landroid/content/Context;)V

    .line 51
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/k;->a()V

    .line 52
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/k;->b()V

    .line 53
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/k;->c(Landroid/content/Context;)V

    .line 54
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->b()Lcom/bytedance/sdk/openadsdk/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/d/b;->a()V

    .line 55
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/k;->d(Landroid/content/Context;)V

    .line 57
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->d()Lcom/bytedance/sdk/openadsdk/g/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/g/a;->a(Ljava/lang/String;)V

    .line 61
    :cond_0
    return-void
.end method

.method private static c(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 68
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v0

    .line 69
    const-string v1, "uuid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method private static d(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/ss/android/crash/log/j;->a(Landroid/app/Application;)Lcom/ss/android/crash/log/j;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/k$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/k$1;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/ss/android/crash/log/j;->a(Lcom/ss/android/crash/log/j$a;ZZZ)V

    .line 119
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/k$2;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/k$2;-><init>()V

    invoke-static {v0}, Lcom/ss/android/crash/log/h;->a(Lcom/ss/android/crash/log/h$a;)V

    .line 133
    return-void
.end method
