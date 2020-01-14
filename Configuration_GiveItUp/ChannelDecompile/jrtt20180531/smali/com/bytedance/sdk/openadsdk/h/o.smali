.class public Lcom/bytedance/sdk/openadsdk/h/o;
.super Ljava/lang/Object;
.source "Predicate.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 35
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 36
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/h/o;->b(Ljava/lang/String;)V

    .line 38
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    if-nez p0, :cond_0

    .line 14
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/h/o;->b(Ljava/lang/String;)V

    .line 16
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/h/o;->b(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 19
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/h/o;->b(Ljava/lang/String;)V

    .line 22
    :cond_0
    return-void
.end method

.method public static a(ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/h/o;->b(Ljava/lang/String;)V

    .line 28
    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
