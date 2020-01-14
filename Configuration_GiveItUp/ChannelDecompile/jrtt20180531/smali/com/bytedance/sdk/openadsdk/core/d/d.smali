.class public Lcom/bytedance/sdk/openadsdk/core/d/d;
.super Ljava/lang/Object;
.source "DeepLink.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/d;->c:I

    .line 34
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/d;->a:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/d;->b:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/d;->c:I

    return v0
.end method
