.class Lcom/bytedance/sdk/openadsdk/core/x;
.super Ljava/lang/Object;
.source "TTInteractionAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTInteractionAd;


# static fields
.field private static i:Z


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/bytedance/sdk/openadsdk/core/d/h;

.field private c:Landroid/app/Dialog;

.field private d:Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;

.field private e:Lcom/bytedance/sdk/openadsdk/c/x;

.field private f:Lcom/bytedance/sdk/openadsdk/core/j;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->a:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/x;->b:Lcom/bytedance/sdk/openadsdk/core/d/h;

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/x;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->c:Landroid/app/Dialog;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 72
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/l;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->a:Landroid/content/Context;

    sget v2, Lcom/bytedance/sdk/openadsdk/R$style;->wg_insert_dialog:I

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/l;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->c:Landroid/app/Dialog;

    .line 74
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->c:Landroid/app/Dialog;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/x$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/x$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/x;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 89
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->c:Landroid/app/Dialog;

    sget v1, Lcom/bytedance/sdk/openadsdk/R$layout;->tt_insert_ad_layout:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 90
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->c:Landroid/app/Dialog;

    sget v1, Lcom/bytedance/sdk/openadsdk/R$id;->insert_ad_img:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->h:Landroid/widget/ImageView;

    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/content/Context;)I

    move-result v0

    .line 93
    div-int/lit8 v1, v0, 0x3

    .line 94
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/x;->h:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 95
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 96
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->c:Landroid/app/Dialog;

    sget v1, Lcom/bytedance/sdk/openadsdk/R$id;->insert_dislike_icon_img:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->g:Landroid/widget/ImageView;

    .line 100
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->a:Landroid/content/Context;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    .line 101
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->g:Landroid/widget/ImageView;

    invoke-static {v1, v0, v0, v0, v0}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/view/View;IIII)V

    .line 103
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/x;->b()V

    .line 105
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/x;->c()V

    .line 106
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/x;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->a:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    .line 113
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/a/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/x;->b:Lcom/bytedance/sdk/openadsdk/core/d/h;

    const-string v3, "interaction"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/a/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;I)V

    .line 114
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Landroid/view/View;)V

    .line 115
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->b(Landroid/view/View;)V

    .line 116
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->e:Lcom/bytedance/sdk/openadsdk/c/x;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Lcom/bytedance/sdk/openadsdk/c/x;)V

    .line 117
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/x$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/x$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/x;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/a/b$a;)V

    .line 134
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 138
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/x$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/x$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/x;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->e:Lcom/bytedance/sdk/openadsdk/c/x;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->e:Lcom/bytedance/sdk/openadsdk/c/x;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/a/c;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/x;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/x;->b:Lcom/bytedance/sdk/openadsdk/core/d/h;

    const-string v4, "interaction"

    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/a/c;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/c/x;->a(Lcom/bytedance/sdk/openadsdk/c/x$b;)V

    .line 153
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/x;)Lcom/bytedance/sdk/openadsdk/core/d/h;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->b:Lcom/bytedance/sdk/openadsdk/core/d/h;

    return-object v0
.end method

.method private c()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 161
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->b:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/g;->b()I

    move-result v4

    .line 162
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->b:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/g;->a()Ljava/lang/String;

    move-result-object v1

    .line 163
    new-instance v0, Lcom/androidquery/callback/AQuery2;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/x;->a:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/androidquery/callback/AQuery2;-><init>(Landroid/content/Context;)V

    .line 164
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/x;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Lcom/androidquery/callback/AQuery2;->id(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    check-cast v0, Lcom/androidquery/AQuery;

    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/x$4;

    invoke-direct {v6, p0}, Lcom/bytedance/sdk/openadsdk/core/x$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/x;)V

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Lcom/androidquery/AQuery;->image(Ljava/lang/String;ZZIILcom/androidquery/callback/BitmapAjaxCallback;)Lcom/androidquery/AbstractAQuery;

    .line 181
    return-void
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/core/x;)Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->d:Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/x;->i:Z

    .line 229
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 230
    return-void
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/core/x;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/core/x;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/x;->d()V

    return-void
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/core/x;)Lcom/bytedance/sdk/openadsdk/core/j;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->f:Lcom/bytedance/sdk/openadsdk/core/j;

    return-object v0
.end method


# virtual methods
.method a(Lcom/bytedance/sdk/openadsdk/core/j;)V
    .locals 4
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 59
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->f:Lcom/bytedance/sdk/openadsdk/core/j;

    .line 60
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->b:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/d/c;->a(Lcom/bytedance/sdk/openadsdk/core/d/h;)V

    .line 61
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/x;->getInteractionType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 62
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/x;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/x;->b:Lcom/bytedance/sdk/openadsdk/core/d/h;

    const-string v3, "interaction"

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/x;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->e:Lcom/bytedance/sdk/openadsdk/c/x;

    .line 65
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/x;->a()V

    .line 66
    return-void
.end method

.method public getInteractionType()I
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->b:Lcom/bytedance/sdk/openadsdk/core/d/h;

    if-nez v0, :cond_0

    .line 204
    const/4 v0, -0x1

    .line 206
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->b:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->c()I

    move-result v0

    goto :goto_0
.end method

.method public setAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->d:Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;

    .line 189
    return-void
.end method

.method public setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->e:Lcom/bytedance/sdk/openadsdk/c/x;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->e:Lcom/bytedance/sdk/openadsdk/c/x;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/c/x;->a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 199
    :cond_0
    return-void
.end method

.method public showInteractionAd(Landroid/app/Activity;)V
    .locals 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 212
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 216
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u4e0d\u80fd\u5728\u5b50\u7ebf\u7a0b\u8c03\u7528 TTInteractionAd.showInteractionAd"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_2
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/x;->i:Z

    if-nez v0, :cond_0

    .line 219
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/x;->i:Z

    .line 220
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
