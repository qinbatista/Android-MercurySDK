.class public Lcom/bytedance/sdk/openadsdk/h/m;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static a:Z

.field static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/h/m;->a:Z

    .line 15
    const/4 v0, 0x4

    sput v0, Lcom/bytedance/sdk/openadsdk/h/m;->b:I

    return-void
.end method

.method public static a(I)V
    .locals 0

    .prologue
    .line 18
    sput p0, Lcom/bytedance/sdk/openadsdk/h/m;->b:I

    .line 19
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 61
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/m;->a:Z

    if-nez v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 64
    :cond_0
    const-string v0, "Logger"

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/h/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 39
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/m;->a:Z

    if-nez v0, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    if-eqz p1, :cond_0

    .line 45
    sget v0, Lcom/bytedance/sdk/openadsdk/h/m;->b:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 46
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 166
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/m;->a:Z

    if-nez v0, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_0

    .line 172
    :cond_2
    sget v0, Lcom/bytedance/sdk/openadsdk/h/m;->b:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 173
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 26
    sget v0, Lcom/bytedance/sdk/openadsdk/h/m;->b:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/h/m;->a:Z

    .line 31
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/m;->a(I)V

    .line 32
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 68
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/m;->a:Z

    if-nez v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    if-eqz p1, :cond_0

    .line 74
    sget v0, Lcom/bytedance/sdk/openadsdk/h/m;->b:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 75
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 97
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/m;->a:Z

    if-nez v0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    if-eqz p1, :cond_0

    .line 103
    sget v0, Lcom/bytedance/sdk/openadsdk/h/m;->b:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 104
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 126
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/m;->a:Z

    if-nez v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    if-eqz p1, :cond_0

    .line 132
    sget v0, Lcom/bytedance/sdk/openadsdk/h/m;->b:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 133
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 155
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/m;->a:Z

    if-nez v0, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    if-eqz p1, :cond_0

    .line 161
    sget v0, Lcom/bytedance/sdk/openadsdk/h/m;->b:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 162
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
