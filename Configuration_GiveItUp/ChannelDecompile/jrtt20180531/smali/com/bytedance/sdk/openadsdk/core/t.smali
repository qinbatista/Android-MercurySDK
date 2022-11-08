.class public Lcom/bytedance/sdk/openadsdk/core/t;
.super Ljava/lang/Object;
.source "TTAdManagerImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/bytedance/sdk/openadsdk/core/t;
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->a()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h;->b(I)V

    .line 44
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/t;
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->a()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h;->a(Ljava/lang/String;)V

    .line 26
    return-object p0
.end method

.method public a(Z)Lcom/bytedance/sdk/openadsdk/core/t;
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->a()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h;->a(Z)V

    .line 38
    return-object p0
.end method

.method public b(I)Lcom/bytedance/sdk/openadsdk/core/t;
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->a()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h;->a(I)V

    .line 50
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/t;
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->a()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h;->b(Ljava/lang/String;)V

    .line 32
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/t;
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->a()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h;->c(Ljava/lang/String;)V

    .line 56
    return-object p0
.end method

.method public createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;
    .locals 1

    .prologue
    .line 108
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->a()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->m()V

    .line 110
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/u;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/u;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/t;
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->a()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h;->d(Ljava/lang/String;)V

    .line 62
    return-object p0
.end method

.method public getGlobalAppDownloadController(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTGlobalAppDownloadController;
    .locals 1

    .prologue
    .line 97
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/c/z;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTGlobalAppDownloadController;

    move-result-object v0

    return-object v0
.end method

.method public openDebugMode()Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .locals 0

    .prologue
    .line 79
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/m;->b()V

    .line 80
    return-object p0
.end method

.method public requestPermissionIfNecessary(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 117
    const-string v1, "type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 121
    :cond_0
    return-void
.end method

.method public synthetic setAge(I)Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/t;->b(I)Lcom/bytedance/sdk/openadsdk/core/t;

    move-result-object v0

    return-object v0
.end method

.method public setAllowLandingPageShowWhenScreenLock(Z)Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->a()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h;->c(Z)V

    .line 86
    return-object p0
.end method

.method public setAllowShowNotifiFromSDK(Z)Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->a()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h;->b(Z)V

    .line 74
    return-object p0
.end method

.method public synthetic setAppId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/t;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/t;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setData(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/t;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/t;

    move-result-object v0

    return-object v0
.end method

.method public varargs setDirectDownloadNetworkType([I)Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .locals 1

    .prologue
    .line 102
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->a()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h;->a([I)V

    .line 103
    return-object p0
.end method

.method public synthetic setGender(I)Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/t;->a(I)Lcom/bytedance/sdk/openadsdk/core/t;

    move-result-object v0

    return-object v0
.end method

.method public setGlobalAppDownloadListener(Lcom/bytedance/sdk/openadsdk/TTGlobalAppDownloadListener;)Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->a()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h;->a(Lcom/bytedance/sdk/openadsdk/TTGlobalAppDownloadListener;)V

    .line 92
    return-object p0
.end method

.method public synthetic setKeywords(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/t;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/t;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setName(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/t;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/t;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setPaid(Z)Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/t;->a(Z)Lcom/bytedance/sdk/openadsdk/core/t;

    move-result-object v0

    return-object v0
.end method

.method public setTitleBarTheme(I)Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->a()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h;->c(I)V

    .line 68
    return-object p0
.end method
