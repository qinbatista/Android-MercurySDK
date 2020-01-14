.class Lcom/bytedance/sdk/openadsdk/core/b/c;
.super Landroid/widget/FrameLayout;
.source "BannerCellView.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/content/Context;

.field private c:Lcom/bytedance/sdk/openadsdk/core/d/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/c;->b:Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/b/c;->c()V

    .line 27
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 42
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/c;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/c;->a:Landroid/widget/ImageView;

    .line 43
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/c;->a:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/c;->a:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 46
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/c;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/b/c;->addView(Landroid/view/View;)V

    .line 47
    return-void
.end method


# virtual methods
.method a()Lcom/bytedance/sdk/openadsdk/core/d/h;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/c;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    return-object v0
.end method

.method a(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/c;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 59
    return-void
.end method

.method a(Lcom/bytedance/sdk/openadsdk/core/d/h;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/c;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    .line 55
    return-void
.end method

.method b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/c;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 63
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/b/c;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/c;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    .line 65
    return-void
.end method
