.class Lcom/bytedance/sdk/openadsdk/c/u;
.super Ljava/lang/Exception;
.source "StopRequestException.java"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 18
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/c/u;->a:I

    .line 19
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/c/u;->a:I

    .line 29
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 23
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/c/u;->a:I

    .line 24
    return-void
.end method

.method public static a(ILjava/lang/String;)Lcom/bytedance/sdk/openadsdk/c/u;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/c/u;
        }
    .end annotation

    .prologue
    const/16 v2, 0x190

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled HTTP response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    if-lt p0, v2, :cond_0

    const/16 v1, 0x258

    if-ge p0, v1, :cond_0

    .line 39
    new-instance v1, Lcom/bytedance/sdk/openadsdk/c/u;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/c/u;-><init>(ILjava/lang/String;)V

    throw v1

    .line 40
    :cond_0
    const/16 v1, 0x12c

    if-lt p0, v1, :cond_1

    if-ge p0, v2, :cond_1

    .line 41
    new-instance v1, Lcom/bytedance/sdk/openadsdk/c/u;

    const/16 v2, 0x1ed

    invoke-direct {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/c/u;-><init>(ILjava/lang/String;)V

    throw v1

    .line 43
    :cond_1
    new-instance v1, Lcom/bytedance/sdk/openadsdk/c/u;

    const/16 v2, 0x1ee

    invoke-direct {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/c/u;-><init>(ILjava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/c/u;->a:I

    return v0
.end method
