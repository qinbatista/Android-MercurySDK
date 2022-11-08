.class public Lcom/bytedance/sdk/openadsdk/TTImage;
.super Ljava/lang/Object;
.source "TTImage.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/TTImage;->a:I

    .line 14
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/TTImage;->b:I

    .line 15
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/TTImage;->c:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/TTImage;->a:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTImage;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/TTImage;->b:I

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/TTImage;->a:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/TTImage;->b:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTImage;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTImage;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
