.class public Lcom/bytedance/sdk/openadsdk/core/video/a/f;
.super Landroid/widget/FrameLayout;
.source "NativeVideoAdView.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/h/t$a;


# instance fields
.field a:Z

.field private b:Landroid/content/Context;

.field private final c:Lcom/bytedance/sdk/openadsdk/core/d/h;

.field private d:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

.field private e:Landroid/view/ViewGroup;

.field private f:Landroid/widget/FrameLayout;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Landroid/widget/RelativeLayout;

.field private k:Landroid/widget/ImageView;

.field private l:Lcom/androidquery/callback/AQuery2;

.field private m:Z

.field private n:J

.field private o:Lcom/bytedance/sdk/openadsdk/h/t;

.field private p:Z

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/d/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 30
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->g:Z

    .line 31
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->h:Z

    .line 32
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->i:Z

    .line 40
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->m:Z

    .line 43
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/t;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/h/t;-><init>(Lcom/bytedance/sdk/openadsdk/h/t$a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->o:Lcom/bytedance/sdk/openadsdk/h/t;

    .line 44
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->p:Z

    .line 45
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->q:Z

    .line 49
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->b:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    .line 51
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->d()V

    .line 52
    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 135
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeVideoStatus=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    .line 137
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/c;->h()Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    .line 138
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/c;->h()Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/c;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/c;->h()Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/c;->b()V

    goto :goto_0

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/c;->h()Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/c;->a()V

    goto :goto_0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 55
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->b:Landroid/content/Context;

    sget v1, Lcom/bytedance/sdk/openadsdk/R$layout;->tt_native_video_ad_view:I

    invoke-static {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 56
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->native_video_layout:I

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->e:Landroid/view/ViewGroup;

    .line 57
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->native_video_frame:I

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->f:Landroid/widget/FrameLayout;

    .line 58
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->native_video_img_cover:I

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->j:Landroid/widget/RelativeLayout;

    .line 59
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->native_video_img_id:I

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->k:Landroid/widget/ImageView;

    .line 60
    new-instance v0, Lcom/androidquery/callback/AQuery2;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/androidquery/callback/AQuery2;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->l:Lcom/androidquery/callback/AQuery2;

    .line 61
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->l:Lcom/androidquery/callback/AQuery2;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/AQuery2;->id(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    check-cast v0, Lcom/androidquery/AQuery;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->a()Lcom/bytedance/sdk/openadsdk/core/d/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/m;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androidquery/AQuery;->image(Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;

    .line 62
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->f:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/d/h;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    .line 63
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/c;->c()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    .line 101
    :cond_0
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x32

    invoke-static {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/content/Context;Landroid/view/View;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->a:Z

    .line 129
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->a:Z

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->a(Z)V

    .line 130
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->o:Lcom/bytedance/sdk/openadsdk/h/t;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/h/t;->sendEmptyMessageDelayed(IJ)Z

    .line 131
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 113
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 120
    :goto_0
    return-void

    .line 115
    :pswitch_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->f()V

    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/n;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(J)Z
    .locals 11

    .prologue
    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->e:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->f:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/d/h;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    .line 70
    :cond_0
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->n:J

    .line 72
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->a()Lcom/bytedance/sdk/openadsdk/core/d/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/m;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->l()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->e:Landroid/view/ViewGroup;

    .line 74
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->o()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->b()Z

    move-result v10

    move-wide v8, p1

    .line 73
    invoke-interface/range {v1 .. v10}, Lcom/bytedance/sdk/openadsdk/core/video/a/c;->a(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;JZ)Z

    move-result v0

    .line 77
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->h:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->i:Z

    return v0
.end method

.method public getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/video/a/c;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 90
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->p:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 94
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->e()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 154
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 156
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->p:Z

    .line 157
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/c;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->o:Lcom/bytedance/sdk/openadsdk/h/t;

    if-eqz v0, :cond_0

    .line 162
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/c;->h()Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    .line 163
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/c;->h()Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->k()Z

    move-result v0

    if-nez v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->o:Lcom/bytedance/sdk/openadsdk/h/t;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/t;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->o:Lcom/bytedance/sdk/openadsdk/h/t;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/t;->removeMessages(I)V

    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->a(Z)V

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 11

    .prologue
    .line 174
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 176
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/c;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->m:Z

    if-eqz v0, :cond_2

    .line 180
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->a()Lcom/bytedance/sdk/openadsdk/core/d/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/m;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->l()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->e:Landroid/view/ViewGroup;

    .line 181
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->o()Ljava/lang/String;

    move-result-object v7

    iget-wide v8, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->n:J

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->b()Z

    move-result v10

    .line 180
    invoke-interface/range {v1 .. v10}, Lcom/bytedance/sdk/openadsdk/core/video/a/c;->a(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;JZ)Z

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->m:Z

    .line 183
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->j:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/view/View;I)V

    .line 185
    :cond_2
    if-nez p1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->o:Lcom/bytedance/sdk/openadsdk/h/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/c;->h()Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    .line 187
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/c;->h()Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->o:Lcom/bytedance/sdk/openadsdk/h/t;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/t;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setIsAutoPlay(Z)V
    .locals 2

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->q:Z

    if-eqz v0, :cond_0

    .line 217
    :goto_0
    return-void

    .line 209
    :cond_0
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->g:Z

    .line 210
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/n;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->j:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/view/View;I)V

    .line 212
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->l:Lcom/androidquery/callback/AQuery2;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/AQuery2;->id(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    check-cast v0, Lcom/androidquery/AQuery;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->a()Lcom/bytedance/sdk/openadsdk/core/d/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/m;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androidquery/AQuery;->image(Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;

    .line 216
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->q:Z

    goto :goto_0

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->j:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/view/View;I)V

    goto :goto_1
.end method

.method public setIsInDetail(Z)V
    .locals 0

    .prologue
    .line 235
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->i:Z

    .line 236
    return-void
.end method

.method public setIsQuiet(Z)V
    .locals 1

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->h:Z

    .line 225
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/a/c;->b(Z)V

    .line 228
    :cond_0
    return-void
.end method

.method public setNativeVideoAdListener(Lcom/bytedance/sdk/openadsdk/core/video/a/c$a;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/a/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/a/c$a;)V

    .line 84
    return-void
.end method

.method public setNativeVideoController(Lcom/bytedance/sdk/openadsdk/core/video/a/c;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    .line 195
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 106
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 107
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->e()V

    .line 109
    :cond_1
    return-void
.end method
