.class public Lcom/bytedance/sdk/openadsdk/core/widget/a;
.super Ljava/lang/Object;
.source "VideoOnTouchLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/widget/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/core/widget/a$a;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Landroid/app/Dialog;

.field private f:Landroid/widget/ProgressBar;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:I

.field private k:I

.field private l:J

.field private m:F

.field private n:F

.field private o:I

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Landroid/view/View;

.field private t:Landroid/view/View$OnTouchListener;

.field private u:Z

.field private v:Lcom/bytedance/sdk/openadsdk/core/video/a/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/a$a;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->b:Z

    .line 37
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->c:Z

    .line 39
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->d:Z

    .line 48
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->j:I

    .line 49
    const/16 v0, 0xa

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->k:I

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->l:J

    .line 62
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->q:Z

    .line 63
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->r:Z

    .line 82
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->t:Landroid/view/View$OnTouchListener;

    .line 54
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a$a;

    .line 55
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->d:Z

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/widget/a;F)F
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->m:F

    return p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/widget/a;I)I
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->o:I

    return p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/widget/a;)Lcom/bytedance/sdk/openadsdk/core/widget/a$a;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a$a;

    return-object v0
.end method

.method private a(F)V
    .locals 2

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->b:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->v:Lcom/bytedance/sdk/openadsdk/core/video/a/d;

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/d;->a(Lcom/bytedance/sdk/openadsdk/core/widget/a;FZ)V

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const v6, 0x3f7d70a4    # 0.99f

    const v5, 0x3c23d70a    # 0.01f

    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    .line 169
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/content/Context;)I

    move-result v0

    .line 170
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/s;->b(Landroid/content/Context;)I

    move-result v1

    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 173
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 175
    int-to-float v4, v0

    mul-float/2addr v4, v5

    cmpg-float v4, v2, v4

    if-lez v4, :cond_0

    int-to-float v0, v0

    mul-float/2addr v0, v6

    cmpl-float v0, v2, v0

    if-gez v0, :cond_0

    int-to-float v0, v1

    mul-float/2addr v0, v5

    cmpg-float v0, v3, v0

    if-lez v0, :cond_0

    int-to-float v0, v1

    mul-float/2addr v0, v6

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_1

    .line 177
    :cond_0
    const/4 v0, 0x1

    .line 180
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/widget/a;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/widget/a;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->u:Z

    return p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/widget/a;F)F
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->n:F

    return p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/widget/a;I)I
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->p:I

    return p1
.end method

.method private b(F)V
    .locals 2

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->b:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->v:Lcom/bytedance/sdk/openadsdk/core/video/a/d;

    const/4 v1, 0x1

    invoke-interface {v0, p0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/d;->a(Lcom/bytedance/sdk/openadsdk/core/widget/a;FZ)V

    goto :goto_0
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->v:Lcom/bytedance/sdk/openadsdk/core/video/a/d;

    if-nez v0, :cond_0

    .line 207
    const/4 v0, 0x0

    .line 209
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/widget/a;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/widget/a;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->q:Z

    return p1
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/widget/a;F)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->b(F)V

    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/widget/a;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/widget/a;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->r:Z

    return p1
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/core/widget/a;F)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a(F)V

    return-void
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/core/widget/a;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->u:Z

    return v0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/core/widget/a;)F
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->m:F

    return v0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/core/widget/a;)F
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->n:F

    return v0
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/core/widget/a;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->r:Z

    return v0
.end method

.method static synthetic h(Lcom/bytedance/sdk/openadsdk/core/widget/a;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->o:I

    return v0
.end method

.method static synthetic i(Lcom/bytedance/sdk/openadsdk/core/widget/a;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->p:I

    return v0
.end method

.method static synthetic j(Lcom/bytedance/sdk/openadsdk/core/widget/a;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->q:Z

    return v0
.end method

.method static synthetic k(Lcom/bytedance/sdk/openadsdk/core/widget/a;)J
    .locals 2

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->l:J

    return-wide v0
.end method


# virtual methods
.method public a(Landroid/content/Context;FZJJ)V
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .line 286
    if-eqz p1, :cond_0

    cmp-long v0, p4, v4

    if-gez v0, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    cmp-long v0, p6, v4

    if-lez v0, :cond_0

    .line 298
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->k:I

    int-to-float v0, v0

    div-float v0, p2, v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->j:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 300
    if-eqz p3, :cond_4

    .line 301
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->l:J

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->l:J

    .line 305
    :goto_1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->l:J

    cmp-long v0, v0, p6

    if-lez v0, :cond_2

    .line 306
    iput-wide p6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->l:J

    .line 308
    :cond_2
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->l:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_3

    .line 309
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->l:J

    .line 311
    :cond_3
    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->l:J

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-wide v6, p6

    invoke-virtual/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a(Landroid/content/Context;ZJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->l:J

    goto :goto_0

    .line 303
    :cond_4
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->l:J

    int-to-long v0, v0

    sub-long v0, v2, v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->l:J

    goto :goto_1
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 67
    if-eqz p1, :cond_0

    .line 68
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->s:Landroid/view/View;

    .line 69
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->t:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 71
    :cond_0
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/a/d;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->v:Lcom/bytedance/sdk/openadsdk/core/video/a/d;

    .line 187
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->b:Z

    .line 75
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->e:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    const/4 v0, 0x1

    .line 273
    :goto_0
    return v0

    .line 271
    :catch_0
    move-exception v0

    .line 273
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;ZJJ)Z
    .locals 5

    .prologue
    const/4 v4, -0x2

    const/4 v1, 0x0

    .line 213
    if-eqz p1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v0, p5, v2

    if-gtz v0, :cond_1

    :cond_0
    move v0, v1

    .line 262
    :goto_0
    return v0

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->e:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->d:Z

    if-eqz v0, :cond_3

    .line 217
    :cond_2
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->d:Z

    .line 218
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/bytedance/sdk/openadsdk/R$layout;->tt_video_progress_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 219
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->duration_progressbar:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->f:Landroid/widget/ProgressBar;

    .line 220
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->tv_current:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->h:Landroid/widget/TextView;

    .line 221
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->tv_duration:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->i:Landroid/widget/TextView;

    .line 222
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->duration_image_tip:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->g:Landroid/widget/ImageView;

    .line 224
    new-instance v0, Landroid/app/Dialog;

    sget v3, Lcom/bytedance/sdk/openadsdk/R$style;->volume_dialog:I

    invoke-direct {v0, p1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->e:Landroid/app/Dialog;

    .line 225
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->e:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 226
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 227
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 228
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 229
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setLayout(II)V

    .line 231
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 232
    const/16 v2, 0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 233
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->e:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 236
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->f:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_4

    .line 237
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->f:Landroid/widget/ProgressBar;

    const-wide/16 v2, 0x64

    mul-long/2addr v2, p3

    div-long/2addr v2, p5

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 240
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 241
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->h:Landroid/widget/TextView;

    invoke-static {p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 245
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->i:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p5, p6}, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 249
    if-eqz p2, :cond_8

    .line 250
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->g:Landroid/widget/ImageView;

    sget v2, Lcom/bytedance/sdk/openadsdk/R$drawable;->tt_forward_video:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 256
    :cond_7
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_9

    .line 257
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 252
    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->g:Landroid/widget/ImageView;

    sget v2, Lcom/bytedance/sdk/openadsdk/R$drawable;->tt_back_video:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 260
    :catch_0
    move-exception v0

    :cond_9
    move v0, v1

    .line 262
    goto/16 :goto_0
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a;->c:Z

    .line 79
    return-void
.end method
