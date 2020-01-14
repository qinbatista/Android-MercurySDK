.class public abstract Lcom/bytedance/sdk/openadsdk/core/a/e;
.super Lcom/bytedance/sdk/openadsdk/core/a/a;
.source "RewardBarClickListener.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/d/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/a/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;I)V

    .line 26
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/View;IIII)V
.end method

.method public b(Landroid/view/View;IIII)V
    .locals 0

    .prologue
    .line 30
    invoke-virtual/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/core/a/e;->a(Landroid/view/View;IIII)V

    .line 31
    invoke-super/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/core/a/a;->b(Landroid/view/View;IIII)V

    .line 32
    return-void
.end method
