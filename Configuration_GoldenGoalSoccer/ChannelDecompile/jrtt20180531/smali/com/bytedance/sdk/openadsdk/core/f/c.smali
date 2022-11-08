.class public Lcom/bytedance/sdk/openadsdk/core/f/c;
.super Landroid/widget/FrameLayout;
.source "SplashAdView.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lpl/droidsonroids/gif/GifImageView;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/c;->a:Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f/c;->a()V

    .line 36
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 51
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/f/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/c;->a:Landroid/content/Context;

    sget v1, Lcom/bytedance/sdk/openadsdk/R$layout;->tt_splash_view:I

    invoke-static {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/core/f/c;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 53
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->splash_ad_gif:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/droidsonroids/gif/GifImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/c;->b:Lpl/droidsonroids/gif/GifImageView;

    .line 54
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->splash_skip_tv:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/c;->c:Landroid/widget/TextView;

    .line 55
    return-void
.end method


# virtual methods
.method getDislikeView()Landroid/view/View;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/c;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/c;->b:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {v0, p1}, Lpl/droidsonroids/gif/GifImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    return-void
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 81
    const-string v0, "\u4e0d\u5141\u8bb8\u5728Splash\u5e7f\u544a\u4e2d\u6ce8\u518cOnClickListener"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/o;->a(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method final setOnClickListenerInternal(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-void
.end method

.method public final setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1

    .prologue
    .line 86
    const-string v0, "\u4e0d\u5141\u8bb8\u5728Splash\u5e7f\u544a\u4e2d\u6ce8\u518cOnTouchListener"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/o;->a(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method final setOnTouchListenerInternal(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 92
    return-void
.end method

.method setSkipIconVisibility(I)V
    .locals 1

    .prologue
    .line 67
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_1

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/c;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    :cond_1
    return-void
.end method

.method final setSkipListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/c;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-void
.end method

.method setSkipText(Landroid/text/SpannableStringBuilder;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/c;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method
