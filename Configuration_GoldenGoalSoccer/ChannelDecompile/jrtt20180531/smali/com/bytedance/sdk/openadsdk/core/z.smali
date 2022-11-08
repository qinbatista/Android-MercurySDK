.class Lcom/bytedance/sdk/openadsdk/core/z;
.super Ljava/lang/Object;
.source "VisibilityChecker.java"


# direct methods
.method private static a(Landroid/content/Context;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 63
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 64
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isScreenOn"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 65
    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 66
    return v0
.end method

.method private static a(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 76
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x1

    .line 79
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/view/View;I)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 32
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v0

    .line 36
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 38
    invoke-virtual {p0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-long v2, v2

    .line 44
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-long v4, v1

    mul-long/2addr v2, v4

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-long v6, v1

    mul-long/2addr v4, v6

    .line 47
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 51
    const-wide/16 v6, 0x64

    mul-long/2addr v2, v6

    int-to-long v6, p1

    mul-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/view/View;II)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 133
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/z;->b(Landroid/view/View;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 135
    :cond_0
    :goto_0
    return v0

    .line 134
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static b(Landroid/view/View;II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/z;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 120
    const/4 v0, 0x4

    .line 128
    :cond_0
    :goto_0
    return v0

    .line 121
    :cond_1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/z;->a(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 122
    const/4 v0, 0x1

    goto :goto_0

    .line 123
    :cond_2
    invoke-static {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/z;->b(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 124
    const/4 v0, 0x6

    goto :goto_0

    .line 125
    :cond_3
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/z;->a(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private static b(Landroid/view/View;I)Z
    .locals 3

    .prologue
    .line 84
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/z;->c(Landroid/view/View;I)I

    move-result v0

    .line 85
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/z;->d(Landroid/view/View;I)I

    move-result v1

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-le v2, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Landroid/view/View;I)I
    .locals 4

    .prologue
    .line 97
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/content/Context;)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 100
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x64

    goto :goto_0
.end method

.method private static d(Landroid/view/View;I)I
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/s;->b(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 113
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x64

    goto :goto_0
.end method
