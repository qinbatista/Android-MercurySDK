.class public Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;
.super Landroid/app/Activity;
.source "TTVideoLandingPageActivity.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Lcom/bytedance/sdk/openadsdk/c/x;

.field private C:Lcom/androidquery/callback/AQuery2;

.field private D:Z

.field private E:Lcom/bytedance/sdk/openadsdk/core/video/a/e;

.field private b:Lcom/bytedance/sdk/openadsdk/activity/SSWebView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/content/Context;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/bytedance/sdk/openadsdk/core/v;

.field private k:I

.field private l:Landroid/widget/RelativeLayout;

.field private m:Landroid/widget/FrameLayout;

.field private n:I

.field private o:Lcom/bytedance/sdk/openadsdk/core/video/a/f;

.field private p:Ljava/lang/Long;

.field private q:Lcom/bytedance/sdk/openadsdk/core/d/h;

.field private r:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:Landroid/widget/RelativeLayout;

.field private x:Landroid/widget/TextView;

.field private y:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

.field private z:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 75
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->s:I

    .line 76
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->t:I

    .line 77
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->u:I

    .line 78
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->v:I

    .line 90
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->D:Z

    .line 304
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$5;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$5;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->E:Lcom/bytedance/sdk/openadsdk/core/video/a/e;

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;I)I
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->t:I

    return p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;)Lcom/bytedance/sdk/openadsdk/core/d/h;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/h;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 152
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->browser_webview:I

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/activity/SSWebView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->b:Lcom/bytedance/sdk/openadsdk/activity/SSWebView;

    .line 153
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->titlebar_back:I

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->c:Landroid/widget/ImageView;

    .line 154
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$2;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    :cond_0
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->titlebar_close:I

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->d:Landroid/widget/ImageView;

    .line 169
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$3;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    :cond_1
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->titlebar_title:I

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->e:Landroid/widget/TextView;

    .line 178
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->native_video_container:I

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->m:Landroid/widget/FrameLayout;

    .line 179
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->native_video_titlebar:I

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->l:Landroid/widget/RelativeLayout;

    .line 180
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->tt_rl_download:I

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->w:Landroid/widget/RelativeLayout;

    .line 181
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->tt_video_btn_ad_image_tv:I

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->x:Landroid/widget/TextView;

    .line 182
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->video_ad_logo_image:I

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->y:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    .line 183
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->tt_video_ad_name:I

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->z:Landroid/widget/TextView;

    .line 184
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->tt_video_ad_button:I

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->A:Landroid/widget/TextView;

    .line 186
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->c()V

    .line 187
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;Z)Z
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->D:Z

    return p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;I)I
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->s:I

    return p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->f:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 190
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->n:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->r:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->r:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/c;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->p:Ljava/lang/Long;

    .line 195
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->o:Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    .line 196
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->o:Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->setIsInDetail(Z)V

    .line 197
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->o:Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->p:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->m:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 200
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->m:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->o:Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->o:Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 203
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->o:Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/c;->a(Z)V

    .line 204
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->o:Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->E:Lcom/bytedance/sdk/openadsdk/core/video/a/e;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/a/e;)V

    .line 205
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->r:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    if-eqz v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->o:Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->r:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/c;->e()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/a/c;->b(J)V

    .line 207
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->o:Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->r:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/c;->i()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/c;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/h/n;->b(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/n$a;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/h/n$a;->a:Lcom/bytedance/sdk/openadsdk/h/n$a;

    if-ne v0, v1, :cond_3

    .line 215
    sget v0, Lcom/bytedance/sdk/openadsdk/R$string;->tt_no_network:I

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 218
    :cond_3
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;I)I
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->u:I

    return p1
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;)Lcom/bytedance/sdk/openadsdk/activity/SSWebView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->b:Lcom/bytedance/sdk/openadsdk/activity/SSWebView;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 221
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->c()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->w:Landroid/widget/RelativeLayout;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/view/View;I)V

    .line 225
    const-string v0, ""

    .line 226
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 227
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->j()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 233
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->d()Lcom/bytedance/sdk/openadsdk/core/d/g;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->d()Lcom/bytedance/sdk/openadsdk/core/d/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/g;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 234
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->y:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/view/View;I)V

    .line 235
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->x:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/view/View;I)V

    .line 236
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->C:Lcom/androidquery/callback/AQuery2;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->y:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    invoke-virtual {v0, v2}, Lcom/androidquery/callback/AQuery2;->id(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    check-cast v0, Lcom/androidquery/AQuery;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/h;->d()Lcom/bytedance/sdk/openadsdk/core/d/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/androidquery/AQuery;->image(Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;

    .line 243
    :cond_2
    :goto_2
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 244
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->z:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/view/View;I)V

    .line 248
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->A:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/view/View;I)V

    goto :goto_0

    .line 228
    :cond_4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 229
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->k()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 230
    :cond_5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 231
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->b()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 237
    :cond_6
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 238
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->y:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/view/View;I)V

    .line 239
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->x:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/view/View;I)V

    .line 240
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->x:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    move-object v1, v0

    goto/16 :goto_1
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;I)I
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->v:I

    return p1
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->l:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 252
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->c()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/x;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/h;

    const-string v2, "embeded_ad"

    invoke-direct {v0, p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/c/x;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->B:Lcom/bytedance/sdk/openadsdk/c/x;

    .line 256
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/a/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/h;

    const-string v2, "embeded_ad"

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/a/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;I)V

    .line 258
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Z)V

    .line 259
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->r:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/video/a/c;)V

    .line 260
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 262
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->B:Lcom/bytedance/sdk/openadsdk/c/x;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Lcom/bytedance/sdk/openadsdk/c/x;)V

    .line 263
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->B:Lcom/bytedance/sdk/openadsdk/c/x;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$4;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/c/x;->a(Lcom/bytedance/sdk/openadsdk/c/x$b;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->m:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 287
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/v;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/v;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->j:Lcom/bytedance/sdk/openadsdk/core/v;

    .line 288
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->j:Lcom/bytedance/sdk/openadsdk/core/v;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->b:Lcom/bytedance/sdk/openadsdk/activity/SSWebView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/v;->a(Landroid/webkit/WebView;)Lcom/bytedance/sdk/openadsdk/core/v;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->h:Ljava/lang/String;

    .line 289
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/v;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/v;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->i:Ljava/lang/String;

    .line 290
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/v;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/v;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->k:I

    .line 291
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/v;->a(I)Lcom/bytedance/sdk/openadsdk/core/v;

    .line 292
    return-void
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->u:I

    return v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 364
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->o:Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->o:Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->o:Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/c;->h()Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->o:Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/c;->h()Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    move-result-object v0

    .line 366
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 368
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->o:Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->p:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->a(J)Z

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->o:Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->p:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->a(J)Z

    goto :goto_0
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->v:I

    return v0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->o:Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->o:Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/c;->h()Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->o:Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/c;->c()V

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->o:Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/c;->h()Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->o:Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/c;->c()V

    goto :goto_0
.end method

.method static synthetic h(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->t:I

    return v0
.end method

.method static synthetic i(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->s:I

    return v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 296
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->D:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->o:Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->o:Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->o:Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/a/a;

    invoke-interface {v0, v1, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->e(Lcom/bytedance/sdk/openadsdk/core/video/a/b;Landroid/view/View;)V

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->D:Z

    .line 302
    :goto_0
    return-void

    .line 301
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v6, -0x1

    const-wide/16 v8, 0x0

    .line 95
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->a()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/h;->k()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x280000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 102
    :cond_0
    sget v2, Lcom/bytedance/sdk/openadsdk/R$layout;->tt_activity_videolandingpage:I

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->setContentView(I)V

    .line 103
    iput-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->f:Landroid/content/Context;

    .line 104
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 105
    const-string v2, "sdk_version"

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->g:I

    .line 106
    const-string v2, "adid"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->h:Ljava/lang/String;

    .line 107
    const-string v2, "log_extra"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->i:Ljava/lang/String;

    .line 108
    const-string v2, "source"

    invoke-virtual {v3, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->k:I

    .line 109
    const-string v2, "url"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 110
    const-string v2, "web_title"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    const-string v5, "imageMode"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->n:I

    .line 112
    const-string v5, "video_play_position"

    invoke-virtual {v3, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->p:Ljava/lang/Long;

    .line 114
    if-eqz p1, :cond_1

    const-string v3, "video_play_position"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v3, v6, v8

    if-lez v3, :cond_1

    .line 115
    const-string v3, "video_play_position"

    invoke-virtual {p1, v3, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->p:Ljava/lang/Long;

    .line 118
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/s;->a()Lcom/bytedance/sdk/openadsdk/core/s;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/s;->c()Lcom/bytedance/sdk/openadsdk/core/d/h;

    move-result-object v3

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/h;

    .line 119
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/s;->a()Lcom/bytedance/sdk/openadsdk/core/s;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/s;->b()Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    move-result-object v3

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->r:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    .line 120
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/s;->a()Lcom/bytedance/sdk/openadsdk/core/s;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/s;->f()V

    .line 121
    new-instance v3, Lcom/androidquery/callback/AQuery2;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->f:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/androidquery/callback/AQuery2;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->C:Lcom/androidquery/callback/AQuery2;

    .line 122
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->a()V

    .line 123
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->d()V

    .line 124
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->e()V

    .line 125
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v3, v5, :cond_4

    .line 126
    :goto_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->f:Landroid/content/Context;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/q;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Z)Lcom/bytedance/sdk/openadsdk/core/q;

    move-result-object v0

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->b:Lcom/bytedance/sdk/openadsdk/activity/SSWebView;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Landroid/webkit/WebView;)V

    .line 127
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->b:Lcom/bytedance/sdk/openadsdk/activity/SSWebView;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/activity/b;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->f:Landroid/content/Context;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->j:Lcom/bytedance/sdk/openadsdk/core/v;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->h:Ljava/lang/String;

    invoke-direct {v3, v5, v6, v7}, Lcom/bytedance/sdk/openadsdk/activity/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/v;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/activity/SSWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 128
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->b:Lcom/bytedance/sdk/openadsdk/activity/SSWebView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/SSWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->b:Lcom/bytedance/sdk/openadsdk/activity/SSWebView;

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->g:I

    invoke-static {v3, v5}, Lcom/bytedance/sdk/openadsdk/h/j;->a(Landroid/webkit/WebView;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 130
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_2

    .line 131
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->b:Lcom/bytedance/sdk/openadsdk/activity/SSWebView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/SSWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->b:Lcom/bytedance/sdk/openadsdk/activity/SSWebView;

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/activity/SSWebView;->loadUrl(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->b:Lcom/bytedance/sdk/openadsdk/activity/SSWebView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/a;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->j:Lcom/bytedance/sdk/openadsdk/core/v;

    invoke-direct {v1, v3}, Lcom/bytedance/sdk/openadsdk/activity/a;-><init>(Lcom/bytedance/sdk/openadsdk/core/v;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/SSWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 135
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->b:Lcom/bytedance/sdk/openadsdk/activity/SSWebView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$1;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/SSWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 145
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 146
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->e:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/bytedance/sdk/openadsdk/R$string;->tt_web_title_default:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    :cond_3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->b()V

    .line 149
    return-void

    :cond_4
    move v0, v1

    .line 125
    goto :goto_0

    :cond_5
    move-object v0, v2

    .line 146
    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 421
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 422
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->b:Lcom/bytedance/sdk/openadsdk/activity/SSWebView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ab;->a(Landroid/content/Context;Landroid/webkit/WebView;)V

    .line 423
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->b:Lcom/bytedance/sdk/openadsdk/activity/SSWebView;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ab;->a(Landroid/webkit/WebView;)V

    .line 424
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->b:Lcom/bytedance/sdk/openadsdk/activity/SSWebView;

    .line 426
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->j:Lcom/bytedance/sdk/openadsdk/core/v;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->j:Lcom/bytedance/sdk/openadsdk/core/v;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/v;->d()V

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->o:Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->o:Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->o:Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/c;->c()V

    .line 432
    :cond_1
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->r:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    .line 433
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->o:Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    .line 434
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/h;

    .line 435
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 388
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 389
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->j:Lcom/bytedance/sdk/openadsdk/core/v;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->j:Lcom/bytedance/sdk/openadsdk/core/v;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/v;->c()V

    .line 393
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->g()V

    .line 394
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->B:Lcom/bytedance/sdk/openadsdk/c/x;

    if-eqz v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->B:Lcom/bytedance/sdk/openadsdk/c/x;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/c/x;->h()V

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->o:Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->o:Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->r:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    if-eqz v0, :cond_2

    .line 399
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->o:Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/c;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->p:Ljava/lang/Long;

    .line 400
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->r:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->o:Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/c;->e()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/a/c;->b(J)V

    .line 401
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->r:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->o:Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/c;->f()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/a/c;->c(J)V

    .line 402
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->r:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->p:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/a/c;->a(J)V

    .line 404
    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 349
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 350
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->j:Lcom/bytedance/sdk/openadsdk/core/v;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->j:Lcom/bytedance/sdk/openadsdk/core/v;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/v;->b()V

    .line 354
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->f()V

    .line 355
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->B:Lcom/bytedance/sdk/openadsdk/c/x;

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->B:Lcom/bytedance/sdk/openadsdk/c/x;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/c/x;->g()V

    .line 358
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 341
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 342
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->o:Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    if-eqz v0, :cond_0

    .line 343
    const-string v0, "video_play_position"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->o:Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/c;->d()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 345
    :cond_0
    return-void
.end method
