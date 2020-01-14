.class public Lcom/bytedance/sdk/openadsdk/core/d/c;
.super Ljava/lang/Object;
.source "ClickEventModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/d/c$a;
    }
.end annotation


# instance fields
.field private a:[I

.field private b:[I

.field private c:[I

.field private d:[I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:J

.field private j:J


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/core/d/c$a;)V
    .locals 2
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/d/c$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/c$a;->a(Lcom/bytedance/sdk/openadsdk/core/d/c$a;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->a:[I

    .line 28
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/c$a;->b(Lcom/bytedance/sdk/openadsdk/core/d/c$a;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->b:[I

    .line 29
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/c$a;->c(Lcom/bytedance/sdk/openadsdk/core/d/c$a;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->d:[I

    .line 30
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/c$a;->d(Lcom/bytedance/sdk/openadsdk/core/d/c$a;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->c:[I

    .line 31
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/c$a;->e(Lcom/bytedance/sdk/openadsdk/core/d/c$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->e:I

    .line 32
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/c$a;->f(Lcom/bytedance/sdk/openadsdk/core/d/c$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->f:I

    .line 33
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/c$a;->g(Lcom/bytedance/sdk/openadsdk/core/d/c$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->g:I

    .line 34
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/c$a;->h(Lcom/bytedance/sdk/openadsdk/core/d/c$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->h:I

    .line 35
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/c$a;->i(Lcom/bytedance/sdk/openadsdk/core/d/c$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->i:J

    .line 36
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/c$a;->j(Lcom/bytedance/sdk/openadsdk/core/d/c$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->j:J

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/core/d/c$a;Lcom/bytedance/sdk/openadsdk/core/d/c$1;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/c;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/c$a;)V

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 41
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->a:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->a:[I

    array-length v1, v1

    if-ne v1, v5, :cond_0

    .line 44
    const-string v1, "ad_x"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->a:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "ad_y"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->a:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    .line 45
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->b:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->b:[I

    array-length v1, v1

    if-ne v1, v5, :cond_1

    .line 48
    const-string v1, "width"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->b:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "height"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->b:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    .line 49
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->c:[I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->c:[I

    array-length v1, v1

    if-ne v1, v5, :cond_2

    .line 52
    const-string v1, "button_x"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->c:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "button_y"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->c:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    .line 53
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->d:[I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->d:[I

    array-length v1, v1

    if-ne v1, v5, :cond_3

    .line 56
    const-string v1, "button_width"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->d:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "button_height"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->d:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    .line 57
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    :cond_3
    const-string v1, "down_x"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "down_y"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->f:I

    .line 60
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "up_x"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->g:I

    .line 61
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "up_y"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->h:I

    .line 62
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "down_time"

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->i:J

    .line 63
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "up_time"

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->j:J

    .line 64
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-object v0

    .line 65
    :catch_0
    move-exception v1

    goto :goto_0
.end method
