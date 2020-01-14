.class public Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;
.super Landroid/widget/ImageView;
.source "RoundImageView.java"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 23
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->a:I

    .line 24
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->b:I

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->a:I

    .line 24
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->b:I

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->a:I

    .line 24
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->b:I

    .line 36
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 76
    mul-int/lit8 v0, p2, 0x2

    .line 79
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 80
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 84
    if-le v2, v1, :cond_3

    .line 87
    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    .line 89
    invoke-static {p1, v6, v2, v1, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 101
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 102
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 103
    :cond_1
    invoke-static {p1, v0, v0, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 109
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 110
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 109
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 111
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 113
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 114
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 115
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 117
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 118
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 119
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setDither(Z)V

    .line 120
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 122
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    .line 121
    invoke-virtual {v1, v4, v5, v6, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 124
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 125
    invoke-virtual {v1, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 129
    return-object v0

    .line 91
    :cond_3
    if-ge v2, v1, :cond_0

    .line 93
    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 95
    invoke-static {p1, v1, v6, v2, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 41
    if-nez v0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->getWidth()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->getHeight()I

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {p0, v2, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->measure(II)V

    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/graphics/drawable/NinePatchDrawable;

    if-eq v1, v2, :cond_0

    .line 50
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 54
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 55
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->a:I

    if-nez v0, :cond_2

    .line 56
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->a:I

    .line 59
    :cond_2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->b:I

    if-nez v0, :cond_3

    .line 60
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->b:I

    .line 62
    :cond_3
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->a:I

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->b:I

    if-ge v0, v2, :cond_4

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->a:I

    :goto_1
    div-int/lit8 v0, v0, 0x2

    .line 64
    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 65
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->a:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v0

    int-to-float v2, v2

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->b:I

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v3, v0

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 62
    :cond_4
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->b:I

    goto :goto_1
.end method
