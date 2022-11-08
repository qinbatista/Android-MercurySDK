.class public Lcom/bytedance/sdk/openadsdk/d/h;
.super Ljava/lang/Object;
.source "AdInfoStatus.java"


# instance fields
.field private a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 13
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/d/h;->b:J

    return-wide v0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 17
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/d/h;->b:J

    .line 18
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/d/h;->a:Z

    .line 27
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/d/h;->a:Z

    return v0
.end method
