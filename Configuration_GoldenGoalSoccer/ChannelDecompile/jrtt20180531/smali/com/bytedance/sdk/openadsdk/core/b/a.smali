.class public Lcom/bytedance/sdk/openadsdk/core/b/a;
.super Ljava/lang/Object;
.source "BannerAdInfo.java"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Lcom/bytedance/sdk/openadsdk/core/d/h;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/bytedance/sdk/openadsdk/core/d/h;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->a:Landroid/graphics/Bitmap;

    .line 17
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/h;

    .line 18
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public b()Lcom/bytedance/sdk/openadsdk/core/d/h;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/h;

    return-object v0
.end method
