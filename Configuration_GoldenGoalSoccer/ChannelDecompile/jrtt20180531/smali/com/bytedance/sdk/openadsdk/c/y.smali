.class Lcom/bytedance/sdk/openadsdk/c/y;
.super Ljava/lang/Object;
.source "TTDownloadInfo.java"


# instance fields
.field public a:J

.field public b:I

.field public c:J

.field public d:J

.field public e:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/c/y;->a:J

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/c/y;->b:I

    .line 12
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/c/y;->c:J

    .line 13
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/c/y;->d:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/c/y;->c:J

    return-wide v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/c/y;->d:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 18
    if-eqz p1, :cond_7

    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/c/y;

    if-eqz v0, :cond_7

    .line 19
    check-cast p1, Lcom/bytedance/sdk/openadsdk/c/y;

    .line 20
    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/c/y;->a:J

    iget-wide v6, p1, Lcom/bytedance/sdk/openadsdk/c/y;->a:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    move v0, v1

    .line 21
    :goto_0
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/c/y;->b:I

    iget v4, p1, Lcom/bytedance/sdk/openadsdk/c/y;->b:I

    if-ne v3, v4, :cond_3

    move v3, v1

    .line 22
    :goto_1
    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/c/y;->c:J

    iget-wide v6, p1, Lcom/bytedance/sdk/openadsdk/c/y;->c:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    move v4, v1

    .line 23
    :goto_2
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/c/y;->e:Ljava/lang/String;

    .line 24
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/bytedance/sdk/openadsdk/c/y;->e:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/c/y;->e:Ljava/lang/String;

    .line 25
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p1, Lcom/bytedance/sdk/openadsdk/c/y;->e:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/c/y;->e:Ljava/lang/String;

    iget-object v6, p1, Lcom/bytedance/sdk/openadsdk/c/y;->e:Ljava/lang/String;

    .line 26
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_1
    move v5, v1

    .line 27
    :goto_3
    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    .line 29
    :goto_4
    return v1

    :cond_2
    move v0, v2

    .line 20
    goto :goto_0

    :cond_3
    move v3, v2

    .line 21
    goto :goto_1

    :cond_4
    move v4, v2

    .line 22
    goto :goto_2

    :cond_5
    move v5, v2

    .line 26
    goto :goto_3

    :cond_6
    move v1, v2

    .line 27
    goto :goto_4

    .line 29
    :cond_7
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_4
.end method
