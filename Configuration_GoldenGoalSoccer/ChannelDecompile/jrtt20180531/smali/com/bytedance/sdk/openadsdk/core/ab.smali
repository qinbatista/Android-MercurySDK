.class public Lcom/bytedance/sdk/openadsdk/core/ab;
.super Ljava/lang/Object;
.source "WebViewTweaker.java"


# static fields
.field static a:Landroid/os/Handler;

.field static final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Z

.field private static final e:Z

.field private static f:I

.field private static g:I

.field private static h:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 38
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/r;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/ab;->d:Z

    .line 39
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ab;->a()Z

    move-result v0

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/ab;->e:Z

    .line 41
    sput v2, Lcom/bytedance/sdk/openadsdk/core/ab;->f:I

    .line 42
    sput v2, Lcom/bytedance/sdk/openadsdk/core/ab;->g:I

    .line 45
    sput v2, Lcom/bytedance/sdk/openadsdk/core/ab;->h:I

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/ab;->a:Landroid/os/Handler;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 53
    const-string v1, "HUAWEI C8812"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 54
    const-string v1, "HUAWEI C8812E"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 55
    const-string v1, "HUAWEI C8825D"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 56
    const-string v1, "HUAWEI U8825D"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 57
    const-string v1, "HUAWEI C8950D"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 58
    const-string v1, "HUAWEI U8950D"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/ab;->b:Ljava/util/HashSet;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 65
    const-string v1, "ZTE V955"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 66
    const-string v1, "ZTE N881E"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 67
    const-string v1, "ZTE N881F"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    const-string v1, "ZTE N880G"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 69
    const-string v1, "ZTE N880F"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 70
    const-string v1, "ZTE V889F"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 76
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/ab;->c:Ljava/util/HashSet;

    .line 77
    return-void

    .line 38
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 6

    .prologue
    .line 185
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 200
    check-cast p0, Landroid/app/Activity;

    .line 201
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    :try_start_0
    const-string v1, "about:blank"

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 204
    sget v1, Lcom/bytedance/sdk/openadsdk/core/ab;->h:I

    if-lez v1, :cond_0

    .line 205
    invoke-virtual {p1}, Landroid/webkit/WebView;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 206
    instance-of v1, v2, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 207
    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 208
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 209
    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 210
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 211
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 212
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 213
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 214
    check-cast v2, Landroid/view/ViewGroup;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 218
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Landroid/webkit/WebView;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 234
    if-nez p0, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 238
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 239
    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 240
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 241
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 243
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 225
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/core/ab;->d:Z

    if-eqz v1, :cond_1

    .line 230
    :cond_0
    :goto_0
    return v0

    .line 227
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    const-string v1, "ZTE N5"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 230
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
