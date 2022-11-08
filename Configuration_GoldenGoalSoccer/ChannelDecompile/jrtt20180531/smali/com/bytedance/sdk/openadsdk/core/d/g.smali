.class public Lcom/bytedance/sdk/openadsdk/core/d/g;
.super Ljava/lang/Object;
.source "Image.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/d/g;)Lcom/bytedance/sdk/openadsdk/TTImage;
    .locals 4

    .prologue
    .line 44
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/g;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    :cond_0
    const/4 v0, 0x0

    .line 47
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/TTImage;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/g;->c()I

    move-result v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/g;->b()I

    move-result v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/TTImage;-><init>(IILjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/g;->b:I

    .line 29
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/g;->a:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/g;->b:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/g;->c:I

    .line 37
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/g;->c:I

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/g;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/g;->b:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/g;->c:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
