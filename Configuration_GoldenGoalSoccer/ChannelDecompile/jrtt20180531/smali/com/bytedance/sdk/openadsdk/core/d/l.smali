.class public Lcom/bytedance/sdk/openadsdk/core/d/l;
.super Ljava/lang/Object;
.source "VerifyData.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->c:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->a:I

    .line 19
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->d:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->b:I

    .line 27
    return-void
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->c:I

    .line 35
    return-void
.end method
