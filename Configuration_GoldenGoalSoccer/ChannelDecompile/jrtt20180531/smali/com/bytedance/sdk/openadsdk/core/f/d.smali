.class public Lcom/bytedance/sdk/openadsdk/core/f/d;
.super Ljava/lang/Object;
.source "TTSplashAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTSplashAd;
.implements Lcom/bytedance/sdk/openadsdk/h/t$a;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:I

.field private c:Landroid/content/Context;

.field private d:Lcom/bytedance/sdk/openadsdk/core/d/h;

.field private e:Lcom/bytedance/sdk/openadsdk/core/f/c;

.field private f:Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;

.field private g:Z

.field private h:Lcom/bytedance/sdk/openadsdk/h/t;

.field private i:Lcom/bytedance/sdk/openadsdk/c/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "TTSplashAdImpl"

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/f/d;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/d/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x3

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->b:I

    .line 51
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/t;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/h/t;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/openadsdk/h/t$a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->h:Lcom/bytedance/sdk/openadsdk/h/t;

    .line 57
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->c:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->d:Lcom/bytedance/sdk/openadsdk/core/d/h;

    .line 59
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f/d;->a()V

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/f/d;I)I
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->b:I

    return p1
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/d/h;)Lcom/bytedance/sdk/openadsdk/c/x;
    .locals 3

    .prologue
    .line 188
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->c()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 189
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/x;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->c:Landroid/content/Context;

    const-string v2, "splash_ad"

    invoke-direct {v0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/c/x;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;)V

    .line 191
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/f/d;)Lcom/bytedance/sdk/openadsdk/c/x;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->i:Lcom/bytedance/sdk/openadsdk/c/x;

    return-object v0
.end method

.method private a(I)V
    .locals 5

    .prologue
    .line 202
    new-instance v0, Landroid/text/SpannableStringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s | \u8df3\u8fc7"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 203
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/bytedance/sdk/openadsdk/R$color;->tt_skip_red:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 204
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->e:Lcom/bytedance/sdk/openadsdk/core/f/c;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/f/c;->setSkipText(Landroid/text/SpannableStringBuilder;)V

    .line 205
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/f/d;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/f/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/f/d;)Lcom/bytedance/sdk/openadsdk/core/d/h;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->d:Lcom/bytedance/sdk/openadsdk/core/d/h;

    return-object v0
.end method

.method private c()V
    .locals 6

    .prologue
    .line 82
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->d:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/f/d;->a(Lcom/bytedance/sdk/openadsdk/core/d/h;)Lcom/bytedance/sdk/openadsdk/c/x;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->i:Lcom/bytedance/sdk/openadsdk/c/x;

    .line 83
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->e:Lcom/bytedance/sdk/openadsdk/core/f/c;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/f;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 84
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/f;->setAdType(I)V

    .line 85
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->e:Lcom/bytedance/sdk/openadsdk/core/f/c;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/f/c;->addView(Landroid/view/View;)V

    .line 86
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/f/d$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/f/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/f/d;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/f;->setCallback(Lcom/bytedance/sdk/openadsdk/core/f$a;)V

    .line 123
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/f;->setNeedCheckingShow(Z)V

    .line 126
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/a/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->d:Lcom/bytedance/sdk/openadsdk/core/d/h;

    const-string v3, "splash_ad"

    const/4 v4, 0x4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/a/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;I)V

    .line 127
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->e:Lcom/bytedance/sdk/openadsdk/core/f/c;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Landroid/view/View;)V

    .line 128
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->e:Lcom/bytedance/sdk/openadsdk/core/f/c;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/f/c;->getDislikeView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->b(Landroid/view/View;)V

    .line 129
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->i:Lcom/bytedance/sdk/openadsdk/c/x;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Lcom/bytedance/sdk/openadsdk/c/x;)V

    .line 130
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/f/d$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/f/d$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/f/d;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/a/b$a;)V

    .line 143
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->i:Lcom/bytedance/sdk/openadsdk/c/x;

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->i:Lcom/bytedance/sdk/openadsdk/c/x;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/a/c;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->d:Lcom/bytedance/sdk/openadsdk/core/d/h;

    const-string v5, "splash_ad"

    invoke-direct {v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/a/c;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/c/x;->a(Lcom/bytedance/sdk/openadsdk/c/x$b;)V

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->e:Lcom/bytedance/sdk/openadsdk/core/f/c;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/f/c;->setOnClickListenerInternal(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->e:Lcom/bytedance/sdk/openadsdk/core/f/c;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/f/c;->setOnTouchListenerInternal(Landroid/view/View$OnTouchListener;)V

    .line 148
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->e:Lcom/bytedance/sdk/openadsdk/core/f/c;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/f/d$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/f/d$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/f/d;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/f/c;->setSkipListener(Landroid/view/View$OnClickListener;)V

    .line 162
    return-void
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/core/f/d;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->g:Z

    return v0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/core/f/d;)Lcom/bytedance/sdk/openadsdk/h/t;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->h:Lcom/bytedance/sdk/openadsdk/h/t;

    return-object v0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/core/f/d;)Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->f:Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;

    return-object v0
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/core/f/d;)Lcom/bytedance/sdk/openadsdk/core/f/c;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->e:Lcom/bytedance/sdk/openadsdk/core/f/c;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/c;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/f/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->e:Lcom/bytedance/sdk/openadsdk/core/f/c;

    .line 64
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->d:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/d/c;->a(Lcom/bytedance/sdk/openadsdk/core/d/h;)V

    .line 67
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->d:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->s()I

    move-result v0

    if-gtz v0, :cond_0

    .line 68
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/f/d;->a(I)V

    .line 74
    :goto_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f/d;->c()V

    .line 75
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->d:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->s()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->b:I

    .line 71
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->b:I

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/f/d;->a(I)V

    goto :goto_0
.end method

.method a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->e:Lcom/bytedance/sdk/openadsdk/core/f/c;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/f/c;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 209
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_1

    .line 210
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->b:I

    .line 211
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->b:I

    if-nez v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->f:Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->f:Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;->onAdTimeOver()V

    .line 215
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/f/d;->a:Ljava/lang/String;

    const-string v1, "\u64ad\u653e\u65f6\u95f4\u5230"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->h:Lcom/bytedance/sdk/openadsdk/h/t;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/t;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 222
    :cond_1
    :goto_0
    return-void

    .line 217
    :cond_2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->b:I

    if-lez v0, :cond_1

    .line 218
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->b:I

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/f/d;->a(I)V

    .line 219
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->h:Lcom/bytedance/sdk/openadsdk/h/t;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/h/t;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public getInteractionType()I
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->d:Lcom/bytedance/sdk/openadsdk/core/d/h;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->d:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->c()I

    move-result v0

    goto :goto_0
.end method

.method public getSplashView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->e:Lcom/bytedance/sdk/openadsdk/core/f/c;

    return-object v0
.end method

.method public setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->i:Lcom/bytedance/sdk/openadsdk/c/x;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->i:Lcom/bytedance/sdk/openadsdk/c/x;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/c/x;->a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 185
    :cond_0
    return-void
.end method

.method public setNotAllowSdkCountdown()V
    .locals 2

    .prologue
    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->g:Z

    .line 197
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->e:Lcom/bytedance/sdk/openadsdk/core/f/c;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/f/c;->setSkipIconVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->h:Lcom/bytedance/sdk/openadsdk/h/t;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/t;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 199
    return-void
.end method

.method public setSplashInteractionListener(Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->f:Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;

    .line 178
    return-void
.end method
