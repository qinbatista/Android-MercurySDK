.class public Lcom/bytedance/sdk/openadsdk/core/d/j;
.super Ljava/lang/Object;
.source "SplashAdCache.java"


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/core/d/h;

.field private b:[B

.field private c:Lcom/bytedance/sdk/openadsdk/core/d/a;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/d/a;Lcom/bytedance/sdk/openadsdk/core/d/h;[B)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/j;->c:Lcom/bytedance/sdk/openadsdk/core/d/a;

    .line 20
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/d/j;->a:Lcom/bytedance/sdk/openadsdk/core/d/h;

    .line 21
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/d/j;->b:[B

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/d/h;[B)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/j;->a:Lcom/bytedance/sdk/openadsdk/core/d/h;

    .line 15
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/d/j;->b:[B

    .line 16
    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/openadsdk/core/d/h;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/j;->a:Lcom/bytedance/sdk/openadsdk/core/d/h;

    return-object v0
.end method

.method public b()[B
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/j;->b:[B

    return-object v0
.end method

.method public c()Lcom/bytedance/sdk/openadsdk/core/d/a;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/j;->c:Lcom/bytedance/sdk/openadsdk/core/d/a;

    return-object v0
.end method
