.class Lcom/bytedance/sdk/openadsdk/core/b/d;
.super Landroid/widget/FrameLayout;
.source "BannerView.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/bytedance/sdk/openadsdk/core/b/c;

.field private c:Lcom/bytedance/sdk/openadsdk/core/b/c;

.field private d:Landroid/widget/ImageView;

.field private e:Lcom/bytedance/sdk/openadsdk/b/b;

.field private f:I

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/d;->h:Z

    .line 46
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/d;->a:Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/b/d;->g()V

    .line 48
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/b/c;)Landroid/animation/ObjectAnimator;
    .locals 5

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/b/d;->getWidth()I

    move-result v0

    .line 144
    const-string v1, "translationX"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x1

    neg-int v0, v0

    int-to-float v0, v0

    aput v0, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 145
    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/b/d;)Lcom/bytedance/sdk/openadsdk/b/b;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/d;->e:Lcom/bytedance/sdk/openadsdk/b/b;

    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/b/d;Lcom/bytedance/sdk/openadsdk/core/d/h;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/b/d;->a(Lcom/bytedance/sdk/openadsdk/core/d/h;)V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/d/h;)V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/d;->e:Lcom/bytedance/sdk/openadsdk/b/b;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/d;->e:Lcom/bytedance/sdk/openadsdk/b/b;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/b/b;->a(Lcom/bytedance/sdk/openadsdk/core/d/h;)V

    .line 209
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/b/d;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/d;->g:Z

    return p1
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/core/b/c;)Landroid/animation/ObjectAnimator;
    .locals 4

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/b/d;->getWidth()I

    move-result v0

    .line 155
    const-string v1, "translationX"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    int-to-float v0, v0

    aput v0, v2, v3

    const/4 v0, 0x1

    const/4 v3, 0x0

    aput v3, v2, v0

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 156
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/b/d$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/b/d$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/b/d;Lcom/bytedance/sdk/openadsdk/core/b/c;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 186
    return-object v0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/b/d;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/b/d;->j()V

    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/b/d;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/d;->a:Landroid/content/Context;

    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 63
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/b/c;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/d;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/b/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/d;->b:Lcom/bytedance/sdk/openadsdk/core/b/c;

    .line 64
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/d;->b:Lcom/bytedance/sdk/openadsdk/core/b/c;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/b/d;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/b/d;->i()V

    .line 66
    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/d;->h:Z

    .line 70
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/d;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/d;->d:Landroid/widget/ImageView;

    .line 71
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/d;->d:Landroid/widget/ImageView;

    sget v1, Lcom/bytedance/sdk/openadsdk/R$drawable;->tt_dislike_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/d;->d:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/d;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/b/d$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/b/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/b/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/d;->a:Landroid/content/Context;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    .line 83
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/d;->a:Landroid/content/Context;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    .line 84
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 85
    const/16 v3, 0x35

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 86
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 87
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 88
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/d;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/b/d;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/d;->d:Landroid/widget/ImageView;

    invoke-static {v1, v0, v0, v0, v0}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/view/View;IIII)V

    .line 91
    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    .line 94
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/d;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 95
    sget v1, Lcom/bytedance/sdk/openadsdk/R$drawable;->tt_ad_logo_small:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 97
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/d;->a:Landroid/content/Context;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    .line 98
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/b/d;->a:Landroid/content/Context;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    .line 99
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 100
    const/16 v1, 0x55

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 101
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 102
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 103
    invoke-virtual {p0, v0, v3}, Lcom/bytedance/sdk/openadsdk/core/b/d;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/d;->b:Lcom/bytedance/sdk/openadsdk/core/b/c;

    .line 224
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/d;->c:Lcom/bytedance/sdk/openadsdk/core/b/c;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/d;->b:Lcom/bytedance/sdk/openadsdk/core/b/c;

    .line 225
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/d;->c:Lcom/bytedance/sdk/openadsdk/core/b/c;

    .line 226
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/d;->c:Lcom/bytedance/sdk/openadsdk/core/b/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/b/c;->b()V

    .line 227
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 107
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/b/c;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/d;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/b/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/d;->c:Lcom/bytedance/sdk/openadsdk/core/b/c;

    .line 108
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/d;->c:Lcom/bytedance/sdk/openadsdk/core/b/c;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/b/c;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/d;->c:Lcom/bytedance/sdk/openadsdk/core/b/c;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/b/d;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/b/d;->i()V

    .line 111
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/d;->h:Z

    if-eqz v0, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/b/d;->h()V

    .line 114
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 134
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/d;->f:I

    .line 135
    return-void
.end method

.method a(Lcom/bytedance/sdk/openadsdk/b/b;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/d;->e:Lcom/bytedance/sdk/openadsdk/b/b;

    .line 118
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/b/d;->h()V

    .line 119
    return-void
.end method

.method public b()Lcom/bytedance/sdk/openadsdk/core/b/c;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/d;->b:Lcom/bytedance/sdk/openadsdk/core/b/c;

    return-object v0
.end method

.method public c()Lcom/bytedance/sdk/openadsdk/core/b/c;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/d;->c:Lcom/bytedance/sdk/openadsdk/core/b/c;

    return-object v0
.end method

.method public d()Landroid/view/View;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/d;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method public e()V
    .locals 4

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/d;->g:Z

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 195
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/d;->b:Lcom/bytedance/sdk/openadsdk/core/b/c;

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/b/d;->a(Lcom/bytedance/sdk/openadsdk/core/b/c;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/b/d;->c:Lcom/bytedance/sdk/openadsdk/core/b/c;

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/b/d;->b(Lcom/bytedance/sdk/openadsdk/core/b/c;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 196
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/d;->f:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 197
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/d;->c:Lcom/bytedance/sdk/openadsdk/core/b/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/b/c;->setVisibility(I)V

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/d;->g:Z

    .line 200
    :cond_0
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/d;->c:Lcom/bytedance/sdk/openadsdk/core/b/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/d;->c:Lcom/bytedance/sdk/openadsdk/core/b/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/b/c;->a()Lcom/bytedance/sdk/openadsdk/core/d/h;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
