.class public Lcom/bytedance/sdk/openadsdk/core/d/i;
.super Ljava/lang/Object;
.source "NetExtParams.java"


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/r;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/i;->a:Ljava/lang/String;

    return-void
.end method
