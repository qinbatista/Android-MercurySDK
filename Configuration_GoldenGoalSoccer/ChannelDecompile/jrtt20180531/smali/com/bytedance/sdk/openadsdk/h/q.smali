.class public Lcom/bytedance/sdk/openadsdk/h/q;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method public static a(J)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x5

    const/4 v0, 0x0

    .line 258
    new-array v2, v1, [J

    fill-array-data v2, :array_0

    .line 259
    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "TB"

    aput-object v1, v3, v0

    const/4 v1, 0x1

    const-string v4, "GB"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string v4, "MB"

    aput-object v4, v3, v1

    const/4 v1, 0x3

    const-string v4, "KB"

    aput-object v4, v3, v1

    const/4 v1, 0x4

    const-string v4, "B"

    aput-object v4, v3, v1

    .line 260
    const-wide/16 v4, 0x1

    cmp-long v1, p0, v4

    if-gez v1, :cond_0

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    :goto_0
    return-object v0

    .line 262
    :cond_0
    const/4 v1, 0x0

    .line 263
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_2

    .line 264
    aget-wide v4, v2, v0

    .line 265
    cmp-long v6, p0, v4

    if-ltz v6, :cond_1

    .line 266
    aget-object v0, v3, v0

    invoke-static {p0, p1, v4, v5, v0}, Lcom/bytedance/sdk/openadsdk/h/q;->a(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 263
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0

    .line 258
    :array_0
    .array-data 8
        0x10000000000L
        0x40000000
        0x100000
        0x400
        0x1
    .end array-data
.end method

.method private static a(JJLjava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 252
    const-wide/16 v0, 0x1

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    long-to-double v0, p0

    long-to-double v2, p2

    div-double/2addr v0, v2

    .line 254
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "#.##"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 252
    :cond_0
    long-to-double v0, p0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 27
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 28
    :cond_0
    const/4 v0, 0x1

    .line 30
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
