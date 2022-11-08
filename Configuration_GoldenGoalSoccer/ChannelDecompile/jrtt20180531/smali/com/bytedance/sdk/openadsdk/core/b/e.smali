.class public Lcom/bytedance/sdk/openadsdk/core/b/e;
.super Ljava/lang/Object;
.source "TTBannerAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTBannerAd;
.implements Lcom/bytedance/sdk/openadsdk/h/t$a;


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/core/b/d;

.field private b:Lcom/bytedance/sdk/openadsdk/core/b/a;

.field private c:Landroid/content/Context;

.field private d:Lcom/bytedance/sdk/openadsdk/h/t;

.field private e:I

.field private f:Lcom/bytedance/sdk/openadsdk/core/d/h;

.field private g:Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;

.field private h:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

.field private i:Lcom/bytedance/sdk/openadsdk/b/b;

.field private j:Lcom/bytedance/sdk/openadsdk/core/b/b;

.field private k:Lcom/bytedance/sdk/openadsdk/c/x;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/b/a;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "banner_ad"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->l:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->c:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->b:Lcom/bytedance/sdk/openadsdk/core/b/a;

    .line 59
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/b/a;->b()Lcom/bytedance/sdk/openadsdk/core/d/h;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->f:Lcom/bytedance/sdk/openadsdk/core/d/h;

    .line 60
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/b/d;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/b/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->a:Lcom/bytedance/sdk/openadsdk/core/b/d;

    .line 61
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/b/b;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->j:Lcom/bytedance/sdk/openadsdk/core/b/b;

    .line 62
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->a:Lcom/bytedance/sdk/openadsdk/core/b/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/b/d;->b()Lcom/bytedance/sdk/openadsdk/core/b/c;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/b/e;->a(Lcom/bytedance/sdk/openadsdk/core/b/c;Lcom/bytedance/sdk/openadsdk/core/b/a;)V

    .line 63
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/b/e;->a()V

    .line 64
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/d/h;)Lcom/bytedance/sdk/openadsdk/c/x;
    .locals 3

    .prologue
    .line 233
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->c()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 234
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/x;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->l:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/c/x;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;)V

    .line 236
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/f;
    .locals 3

    .prologue
    .line 314
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 315
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 316
    instance-of v2, v0, Lcom/bytedance/sdk/openadsdk/core/f;

    if-eqz v2, :cond_0

    .line 317
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/f;

    .line 320
    :goto_1
    return-object v0

    .line 314
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 320
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a()V
    .locals 3

    .prologue
    .line 70
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->a:Lcom/bytedance/sdk/openadsdk/core/b/d;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/f;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 71
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->a:Lcom/bytedance/sdk/openadsdk/core/b/d;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/b/d;->addView(Landroid/view/View;)V

    .line 72
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/b/e$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/b/e$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/b/e;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/f;->setCallback(Lcom/bytedance/sdk/openadsdk/core/f$a;)V

    .line 98
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/f;->setNeedCheckingShow(Z)V

    .line 99
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V
    .locals 2

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/b/e;->b(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    .line 171
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->a:Lcom/bytedance/sdk/openadsdk/core/b/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->i:Lcom/bytedance/sdk/openadsdk/b/b;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/b/d;->a(Lcom/bytedance/sdk/openadsdk/b/b;)V

    .line 172
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/b/a;)V
    .locals 1
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/b/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 227
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->a:Lcom/bytedance/sdk/openadsdk/core/b/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/b/d;->c()Lcom/bytedance/sdk/openadsdk/core/b/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->a:Lcom/bytedance/sdk/openadsdk/core/b/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/b/d;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->a:Lcom/bytedance/sdk/openadsdk/core/b/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/b/d;->c()Lcom/bytedance/sdk/openadsdk/core/b/c;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/b/e;->a(Lcom/bytedance/sdk/openadsdk/core/b/c;Lcom/bytedance/sdk/openadsdk/core/b/a;)V

    .line 230
    :cond_0
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/b/c;Lcom/bytedance/sdk/openadsdk/core/b/a;)V
    .locals 6
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/b/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/b/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 243
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/b/c;->a(Landroid/graphics/Bitmap;)V

    .line 244
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/b/a;->b()Lcom/bytedance/sdk/openadsdk/core/d/h;

    move-result-object v1

    .line 245
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->f:Lcom/bytedance/sdk/openadsdk/core/d/h;

    .line 246
    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/b;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->f:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-direct {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/b/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->i:Lcom/bytedance/sdk/openadsdk/b/b;

    .line 247
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/b/c;->a(Lcom/bytedance/sdk/openadsdk/core/d/h;)V

    .line 248
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/b/e;->a(Lcom/bytedance/sdk/openadsdk/core/d/h;)Lcom/bytedance/sdk/openadsdk/c/x;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->k:Lcom/bytedance/sdk/openadsdk/c/x;

    .line 249
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/d/c;->a(Lcom/bytedance/sdk/openadsdk/core/d/h;)V

    .line 250
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/b/e;->a(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/f;

    move-result-object v0

    .line 251
    if-nez v0, :cond_0

    .line 252
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->c:Landroid/content/Context;

    invoke-direct {v0, v2, p1}, Lcom/bytedance/sdk/openadsdk/core/f;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 253
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/b/c;->addView(Landroid/view/View;)V

    .line 255
    :cond_0
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/b/e$3;

    invoke-direct {v2, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/b/e$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/b/e;Lcom/bytedance/sdk/openadsdk/core/d/h;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/f;->setCallback(Lcom/bytedance/sdk/openadsdk/core/f$a;)V

    .line 290
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/a/a;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->l:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/a/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;I)V

    .line 291
    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Landroid/view/View;)V

    .line 292
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->a:Lcom/bytedance/sdk/openadsdk/core/b/d;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/b/d;->d()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/a/a;->b(Landroid/view/View;)V

    .line 293
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->k:Lcom/bytedance/sdk/openadsdk/c/x;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Lcom/bytedance/sdk/openadsdk/c/x;)V

    .line 294
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/b/e$4;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/b/e$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/b/e;)V

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/a/b$a;)V

    .line 303
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/b/c;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/b/c;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 305
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->k:Lcom/bytedance/sdk/openadsdk/c/x;

    if-eqz v2, :cond_1

    .line 306
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->k:Lcom/bytedance/sdk/openadsdk/c/x;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/a/c;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->l:Ljava/lang/String;

    invoke-direct {v3, v4, v1, v5}, Lcom/bytedance/sdk/openadsdk/core/a/c;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/c/x;->a(Lcom/bytedance/sdk/openadsdk/c/x$b;)V

    .line 307
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->k:Lcom/bytedance/sdk/openadsdk/c/x;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->h:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/c/x;->a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 309
    :cond_1
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/d/c;->b(Lcom/bytedance/sdk/openadsdk/core/d/h;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/f;->setNeedCheckingShow(Z)V

    .line 310
    return-void

    .line 309
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/b/e;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/b/e;->c()V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/b/e;Lcom/bytedance/sdk/openadsdk/core/b/a;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/b/e;->a(Lcom/bytedance/sdk/openadsdk/core/b/a;)V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->j:Lcom/bytedance/sdk/openadsdk/core/b/b;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/b/e$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/b/e$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/b/e;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/b/b;->a(Lcom/bytedance/sdk/openadsdk/core/b/b$a;)V

    .line 208
    return-void
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->i:Lcom/bytedance/sdk/openadsdk/b/b;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->f:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->i:Lcom/bytedance/sdk/openadsdk/b/b;

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->i:Lcom/bytedance/sdk/openadsdk/b/b;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/b/b;->setDislikeInteractionCallback(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    .line 182
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/b/e;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/b/e;->d()V

    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/b/e;)Lcom/bytedance/sdk/openadsdk/core/b/d;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->a:Lcom/bytedance/sdk/openadsdk/core/b/d;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 211
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->d:Lcom/bytedance/sdk/openadsdk/h/t;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->d:Lcom/bytedance/sdk/openadsdk/h/t;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/t;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 213
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->d:Lcom/bytedance/sdk/openadsdk/h/t;

    const/4 v1, 0x1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->e:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/h/t;->sendEmptyMessageDelayed(IJ)Z

    .line 215
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/core/b/e;)Lcom/bytedance/sdk/openadsdk/c/x;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->k:Lcom/bytedance/sdk/openadsdk/c/x;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->d:Lcom/bytedance/sdk/openadsdk/h/t;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->d:Lcom/bytedance/sdk/openadsdk/h/t;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/t;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 221
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/core/b/e;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/core/b/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/core/b/e;)Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->g:Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 186
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/b/e;->b()V

    .line 189
    :cond_0
    return-void
.end method

.method public getBannerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->a:Lcom/bytedance/sdk/openadsdk/core/b/d;

    return-object v0
.end method

.method public getDislikeDialog(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)Lcom/bytedance/sdk/openadsdk/TTAdDislike;
    .locals 1

    .prologue
    .line 131
    if-nez p1, :cond_0

    .line 132
    const/4 v0, 0x0

    .line 135
    :goto_0
    return-object v0

    .line 134
    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/b/e;->b(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    .line 135
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->i:Lcom/bytedance/sdk/openadsdk/b/b;

    goto :goto_0
.end method

.method public getInteractionType()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->f:Lcom/bytedance/sdk/openadsdk/core/d/h;

    if-nez v0, :cond_0

    .line 124
    const/4 v0, -0x1

    .line 126
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->f:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->c()I

    move-result v0

    goto :goto_0
.end method

.method public setBannerInteractionListener(Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->g:Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;

    .line 110
    return-void
.end method

.method public setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
    .locals 2

    .prologue
    .line 114
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->h:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    .line 116
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->k:Lcom/bytedance/sdk/openadsdk/c/x;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->k:Lcom/bytedance/sdk/openadsdk/c/x;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->h:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/c/x;->a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 119
    :cond_0
    return-void
.end method

.method public setShowDislikeIcon(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V
    .locals 0

    .prologue
    .line 140
    if-nez p1, :cond_0

    .line 144
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/b/e;->a(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    goto :goto_0
.end method

.method public setSlideIntervalTime(I)V
    .locals 4

    .prologue
    const v1, 0x1d4c0

    const/16 v0, 0x7530

    .line 148
    if-gtz p1, :cond_0

    .line 163
    :goto_0
    return-void

    .line 151
    :cond_0
    const-string v2, "slide_banner_ad"

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->l:Ljava/lang/String;

    .line 152
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->a:Lcom/bytedance/sdk/openadsdk/core/b/d;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/b/d;->b()Lcom/bytedance/sdk/openadsdk/core/b/c;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->b:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-direct {p0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/b/e;->a(Lcom/bytedance/sdk/openadsdk/core/b/c;Lcom/bytedance/sdk/openadsdk/core/b/a;)V

    .line 154
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->a:Lcom/bytedance/sdk/openadsdk/core/b/d;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/b/d;->a()V

    .line 155
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->a:Lcom/bytedance/sdk/openadsdk/core/b/d;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/b/d;->a(I)V

    .line 156
    if-ge p1, v0, :cond_2

    move p1, v0

    .line 161
    :cond_1
    :goto_1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->e:I

    .line 162
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/t;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/h/t;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/openadsdk/h/t$a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/e;->d:Lcom/bytedance/sdk/openadsdk/h/t;

    goto :goto_0

    .line 158
    :cond_2
    if-le p1, v1, :cond_1

    move p1, v1

    .line 159
    goto :goto_1
.end method
