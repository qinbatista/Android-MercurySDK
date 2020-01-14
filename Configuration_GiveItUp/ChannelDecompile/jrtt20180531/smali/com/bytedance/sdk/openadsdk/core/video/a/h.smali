.class public Lcom/bytedance/sdk/openadsdk/core/video/a/h;
.super Ljava/lang/Object;
.source "NativeVideoLayout.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/video/a/b;
.implements Lcom/bytedance/sdk/openadsdk/core/video/renderview/a;
.implements Lcom/bytedance/sdk/openadsdk/core/widget/a$a;
.implements Lcom/bytedance/sdk/openadsdk/core/widget/b$b;
.implements Lcom/bytedance/sdk/openadsdk/h/t$a;


# instance fields
.field private A:Lcom/bytedance/sdk/openadsdk/h/t;

.field private B:Landroid/content/Context;

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:Landroid/graphics/Rect;

.field private P:Landroid/widget/SeekBar;

.field private Q:Landroid/widget/ProgressBar;

.field private R:Landroid/widget/TextView;

.field private S:Landroid/widget/TextView;

.field private T:Landroid/content/res/ColorStateList;

.field private U:F

.field private V:Landroid/graphics/Rect;

.field private W:I

.field private X:Z

.field private Y:I

.field private Z:I

.field private a:Landroid/view/View;

.field private aA:I

.field private aa:Lcom/bytedance/sdk/openadsdk/core/video/a/d;

.field private ab:Z

.field private ac:I

.field private ad:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/video/a/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private ae:Landroid/view/WindowManager;

.field private af:Lcom/bytedance/sdk/openadsdk/core/widget/a;

.field private ag:Lcom/bytedance/sdk/openadsdk/core/widget/b;

.field private ah:Lcom/androidquery/callback/AQuery2;

.field private final ai:Lcom/bytedance/sdk/openadsdk/core/d/h;

.field private aj:Z

.field private ak:Lcom/bytedance/sdk/openadsdk/c/x;

.field private al:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

.field private am:Lcom/bytedance/sdk/openadsdk/core/a/a;

.field private an:Z

.field private ao:Landroid/view/View$OnTouchListener;

.field private ap:F

.field private aq:Landroid/content/res/ColorStateList;

.field private ar:F

.field private as:Landroid/graphics/Rect;

.field private at:F

.field private au:Landroid/content/res/ColorStateList;

.field private av:F

.field private aw:Landroid/graphics/Rect;

.field private ax:Landroid/graphics/Rect;

.field private ay:Z

.field private az:Z

.field private b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/view/View;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/view/View;

.field private s:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/RelativeLayout;

.field private x:Landroid/widget/ImageView;

.field private y:Landroid/view/View;

.field private z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;ZLjava/util/EnumSet;Lcom/bytedance/sdk/openadsdk/core/d/h;Lcom/bytedance/sdk/openadsdk/core/video/a/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Z",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/video/a/b$a;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/d/h;",
            "Lcom/bytedance/sdk/openadsdk/core/video/a/c;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v1, Lcom/bytedance/sdk/openadsdk/h/t;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/h/t;-><init>(Lcom/bytedance/sdk/openadsdk/h/t$a;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->A:Lcom/bytedance/sdk/openadsdk/h/t;

    .line 102
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->G:Z

    .line 103
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->H:Z

    .line 104
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->I:Z

    .line 106
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->J:I

    .line 107
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->K:I

    .line 108
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->L:I

    .line 109
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->M:I

    .line 111
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->N:I

    .line 112
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->O:Landroid/graphics/Rect;

    .line 123
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->V:Landroid/graphics/Rect;

    .line 125
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->W:I

    .line 129
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->Y:I

    .line 130
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->Z:I

    .line 141
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->af:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    .line 147
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->aj:Z

    .line 423
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->an:Z

    .line 425
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/a/h$9;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h$9;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/a/h;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ao:Landroid/view/View$OnTouchListener;

    .line 996
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->as:Landroid/graphics/Rect;

    .line 1001
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->aw:Landroid/graphics/Rect;

    .line 1002
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ax:Landroid/graphics/Rect;

    .line 1276
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->x()I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->aA:I

    .line 154
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ae:Landroid/view/WindowManager;

    .line 155
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->B:Landroid/content/Context;

    .line 156
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a:Landroid/view/View;

    .line 157
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->H:Z

    .line 158
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/a;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/a$a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->af:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    .line 159
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->af:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->H:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->b(Z)V

    .line 160
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->B:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 161
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->Y:I

    .line 162
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->Z:I

    .line 163
    if-nez p4, :cond_1

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/video/a/b$a;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p4

    :cond_1
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ad:Ljava/util/EnumSet;

    .line 164
    new-instance v0, Lcom/androidquery/callback/AQuery2;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->B:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/androidquery/callback/AQuery2;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ah:Lcom/androidquery/callback/AQuery2;

    .line 165
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->al:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    .line 166
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ai:Lcom/bytedance/sdk/openadsdk/core/d/h;

    .line 167
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->d(I)V

    .line 168
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 169
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->b()V

    .line 170
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->r()V

    .line 171
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 216
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->B:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;-><init>(Landroid/content/Context;)V

    .line 217
    instance-of v0, p2, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 218
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 219
    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object v0, p2

    .line 220
    check-cast v0, Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 222
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    move-object v0, v1

    .line 223
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    .line 226
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->video_back:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->c:Landroid/widget/TextView;

    .line 227
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->video_close:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->d:Landroid/widget/ImageView;

    .line 228
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->video_top_layout:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->f:Landroid/view/View;

    .line 229
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->video_fullscreen_back:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->j:Landroid/widget/ImageView;

    .line 230
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->video_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->g:Landroid/widget/TextView;

    .line 231
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->video_top_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->h:Landroid/widget/TextView;

    .line 233
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->video_current_time:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->i:Landroid/widget/TextView;

    .line 235
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->video_play:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->e:Landroid/widget/ImageView;

    .line 236
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->video_progress:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->Q:Landroid/widget/ProgressBar;

    .line 237
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->video_loading_retry_layout:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->k:Landroid/view/View;

    .line 238
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->video_loading_progress:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->l:Landroid/view/View;

    .line 239
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->video_loading_retry:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->m:Landroid/view/View;

    .line 240
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->video_retry:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->n:Landroid/widget/ImageView;

    .line 241
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->video_retry_des:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->o:Landroid/widget/TextView;

    .line 242
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->video_loading_cover:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->w:Landroid/widget/RelativeLayout;

    .line 243
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->video_loading_cover_image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->x:Landroid/widget/ImageView;

    .line 244
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->video_seekbar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->P:Landroid/widget/SeekBar;

    .line 245
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->video_time_left_time:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->R:Landroid/widget/TextView;

    .line 246
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->video_time_play:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->S:Landroid/widget/TextView;

    .line 248
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->video_ad_cover:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->p:Landroid/view/View;

    .line 249
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->video_ad_finish_cover_image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->q:Landroid/widget/ImageView;

    .line 250
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->video_ad_cover_center_layout:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->r:Landroid/view/View;

    .line 251
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->video_ad_logo_image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->s:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    .line 252
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->video_btn_ad_image_tv:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->t:Landroid/widget/TextView;

    .line 253
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->video_ad_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->u:Landroid/widget/TextView;

    .line 254
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->video_ad_button:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->v:Landroid/widget/TextView;

    .line 256
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->video_ad_bottom_layout:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->y:Landroid/view/View;

    .line 257
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->video_ad_full_screen:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->z:Landroid/widget/ImageView;

    .line 259
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/a/h;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->aj:Z

    return v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/a/h;Z)Z
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->an:Z

    return p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/video/a/h;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->B:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/video/a/h;)Lcom/bytedance/sdk/openadsdk/core/d/h;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ai:Lcom/bytedance/sdk/openadsdk/core/d/h;

    return-object v0
.end method

.method private d(Z)V
    .locals 0

    .prologue
    .line 986
    if-eqz p1, :cond_0

    .line 987
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->v()V

    .line 990
    :goto_0
    return-void

    .line 989
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->w()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/core/video/a/h;)Z
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->t()Z

    move-result v0

    return v0
.end method

.method private e(I)I
    .locals 4

    .prologue
    .line 587
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->E:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->F:I

    if-gtz v0, :cond_2

    .line 588
    :cond_0
    const/4 v0, 0x0

    .line 602
    :cond_1
    :goto_0
    return v0

    .line 590
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->B:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/bytedance/sdk/openadsdk/R$dimen;->video_container_maxheight:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 591
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->B:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/bytedance/sdk/openadsdk/R$dimen;->video_container_minheight:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 593
    int-to-float v2, p1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->E:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 594
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->F:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 595
    if-gt v2, v0, :cond_1

    .line 597
    if-ge v2, v1, :cond_3

    move v0, v1

    .line 598
    goto :goto_0

    :cond_3
    move v0, v2

    .line 600
    goto :goto_0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/core/video/a/h;)Lcom/bytedance/sdk/openadsdk/core/video/a/d;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->aa:Lcom/bytedance/sdk/openadsdk/core/video/a/d;

    return-object v0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/core/video/a/h;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->G:Z

    return v0
.end method

.method private r()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 174
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ai:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->c()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 175
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/x;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->B:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ai:Lcom/bytedance/sdk/openadsdk/core/d/h;

    const-string v3, "embeded_ad"

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/x;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ak:Lcom/bytedance/sdk/openadsdk/c/x;

    .line 176
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ak:Lcom/bytedance/sdk/openadsdk/c/x;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/a/h$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/a/h;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/c/x;->a(Lcom/bytedance/sdk/openadsdk/c/x$b;)V

    .line 201
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/a/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->B:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ai:Lcom/bytedance/sdk/openadsdk/core/d/h;

    const-string v3, "embeded_ad"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/a/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->am:Lcom/bytedance/sdk/openadsdk/core/a/a;

    .line 203
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->aj:Z

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->am:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Z)V

    .line 208
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->am:Lcom/bytedance/sdk/openadsdk/core/a/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->al:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/video/a/c;)V

    .line 209
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->am:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/a/a;->b(Z)V

    .line 210
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ak:Lcom/bytedance/sdk/openadsdk/c/x;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->am:Lcom/bytedance/sdk/openadsdk/core/a/a;

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->am:Lcom/bytedance/sdk/openadsdk/core/a/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ak:Lcom/bytedance/sdk/openadsdk/c/x;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Lcom/bytedance/sdk/openadsdk/c/x;)V

    .line 213
    :cond_1
    return-void

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->am:Lcom/bytedance/sdk/openadsdk/core/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Z)V

    goto :goto_0
.end method

.method private s()V
    .locals 3

    .prologue
    .line 263
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->aa:Lcom/bytedance/sdk/openadsdk/core/video/a/d;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ag:Lcom/bytedance/sdk/openadsdk/core/widget/b;

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/b;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/b;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ag:Lcom/bytedance/sdk/openadsdk/core/widget/b;

    .line 266
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ag:Lcom/bytedance/sdk/openadsdk/core/widget/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->B:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 267
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ag:Lcom/bytedance/sdk/openadsdk/core/widget/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->aa:Lcom/bytedance/sdk/openadsdk/core/video/a/d;

    invoke-virtual {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->a(Lcom/bytedance/sdk/openadsdk/core/video/a/d;Lcom/bytedance/sdk/openadsdk/core/widget/b$b;)V

    .line 270
    :cond_0
    return-void
.end method

.method private t()Z
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->aa:Lcom/bytedance/sdk/openadsdk/core/video/a/d;

    if-nez v0, :cond_0

    .line 313
    const-string v0, "NewLiveViewLayout"

    const-string v1, "callback is null"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const/4 v0, 0x0

    .line 316
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private u()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 706
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->p:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/view/View;I)V

    .line 707
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->q:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/view/View;I)V

    .line 708
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->r:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/view/View;I)V

    .line 709
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->s:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/view/View;I)V

    .line 710
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->t:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/view/View;I)V

    .line 711
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->u:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/view/View;I)V

    .line 712
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->v:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/view/View;I)V

    .line 713
    return-void
.end method

.method private v()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const v9, 0x3f59999a    # 0.85f

    const/high16 v8, 0x41600000    # 14.0f

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    .line 1005
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->B:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1008
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->S:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1009
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->S:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ap:F

    .line 1010
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->S:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1011
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->S:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->aq:Landroid/content/res/ColorStateList;

    .line 1013
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->aq:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->S:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->B:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/bytedance/sdk/openadsdk/R$color;->tt_ssxinzi15:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1016
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->S:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ar:F

    .line 1017
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->S:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1018
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->S:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->B:Landroid/content/Context;

    invoke-static {v2, v7}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/content/Context;F)F

    move-result v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->B:Landroid/content/Context;

    invoke-static {v3, v7}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/content/Context;F)F

    move-result v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->B:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/bytedance/sdk/openadsdk/R$color;->tt_video_shaoow_color_fullscreen:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v10, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1019
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->S:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1020
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_1

    .line 1021
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1022
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->as:Landroid/graphics/Rect;

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 1023
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->S:Landroid/widget/TextView;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v6, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->as:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 1024
    invoke-static {v6, v8, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->as:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 1023
    invoke-static {v0, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/h/s;->b(Landroid/view/View;IIII)V

    .line 1029
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->R:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1030
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->R:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->at:F

    .line 1031
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->R:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1032
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->R:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->au:Landroid/content/res/ColorStateList;

    .line 1034
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->au:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    .line 1035
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->R:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->B:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/bytedance/sdk/openadsdk/R$color;->tt_ssxinzi15:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1037
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->R:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->av:F

    .line 1038
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->R:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1039
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->R:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->B:Landroid/content/Context;

    invoke-static {v2, v7}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/content/Context;F)F

    move-result v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->B:Landroid/content/Context;

    invoke-static {v3, v7}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/content/Context;F)F

    move-result v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->B:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/bytedance/sdk/openadsdk/R$color;->tt_video_shaoow_color_fullscreen:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v10, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1040
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->R:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1041
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_3

    .line 1042
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1043
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->aw:Landroid/graphics/Rect;

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 1044
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->R:Landroid/widget/TextView;

    invoke-static {v6, v8, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->aw:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->aw:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->aw:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/h/s;->b(Landroid/view/View;IIII)V

    .line 1050
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->z:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 1051
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->z:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1052
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_4

    .line 1053
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1054
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ax:Landroid/graphics/Rect;

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 1055
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->z:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ax:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ax:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    const/high16 v4, 0x41800000    # 16.0f

    .line 1056
    invoke-static {v6, v4, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ax:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 1055
    invoke-static {v0, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/h/s;->b(Landroid/view/View;IIII)V

    .line 1062
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->z:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 1063
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->z:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->B:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/bytedance/sdk/openadsdk/R$drawable;->tt_shrink_fullscreen:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1066
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 1067
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->T:Landroid/content/res/ColorStateList;

    .line 1068
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->T:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_6

    .line 1069
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->h:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->B:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/bytedance/sdk/openadsdk/R$color;->tt_ssxinzi15:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1071
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->U:F

    .line 1072
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1073
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1074
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_7

    .line 1075
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1076
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->V:Landroid/graphics/Rect;

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 1077
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->h:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v6, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->aw:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->aw:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->aw:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/h/s;->b(Landroid/view/View;IIII)V

    .line 1082
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->f:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 1083
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1084
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->W:I

    .line 1085
    const/high16 v2, 0x42440000    # 49.0f

    invoke-static {v6, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1086
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->f:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1087
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->f:Landroid/view/View;

    sget v1, Lcom/bytedance/sdk/openadsdk/R$drawable;->tt_shadow_fullscreen_top:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1090
    :cond_8
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->X:Z

    invoke-virtual {p0, v0, v6}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a(ZZ)V

    .line 1091
    return-void
.end method

.method private w()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 1098
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->S:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1099
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->S:Landroid/widget/TextView;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ap:F

    invoke-virtual {v0, v7, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1101
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->aq:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 1102
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->S:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->aq:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1104
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->S:Landroid/widget/TextView;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ar:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1105
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->S:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->B:Landroid/content/Context;

    invoke-static {v1, v6}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/content/Context;F)F

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->B:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/bytedance/sdk/openadsdk/R$color;->tt_video_shadow_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v5, v5, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1106
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->S:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->as:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->as:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->as:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->as:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/h/s;->b(Landroid/view/View;IIII)V

    .line 1110
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->R:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1111
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->R:Landroid/widget/TextView;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->at:F

    invoke-virtual {v0, v7, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1112
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->au:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    .line 1113
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->R:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->au:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1115
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->R:Landroid/widget/TextView;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->av:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1116
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->R:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->B:Landroid/content/Context;

    invoke-static {v1, v6}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/content/Context;F)F

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->B:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/bytedance/sdk/openadsdk/R$color;->tt_video_shadow_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v5, v5, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1117
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->R:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->aw:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->aw:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->aw:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->aw:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/h/s;->b(Landroid/view/View;IIII)V

    .line 1120
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->z:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 1121
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->z:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ax:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ax:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ax:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ax:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/h/s;->b(Landroid/view/View;IIII)V

    .line 1125
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->z:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 1126
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->z:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->B:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/bytedance/sdk/openadsdk/R$drawable;->tt_enlarge_video:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1129
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 1130
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->T:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_6

    .line 1131
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->T:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1133
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->h:Landroid/widget/TextView;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->U:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1134
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->aw:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->aw:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->aw:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->aw:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/h/s;->b(Landroid/view/View;IIII)V

    .line 1138
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->f:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 1139
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1140
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->W:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1141
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->f:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1145
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->f:Landroid/view/View;

    sget v1, Lcom/bytedance/sdk/openadsdk/R$drawable;->tt_video_black_desc_gradient:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1148
    :cond_8
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->X:Z

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a(ZZ)V

    .line 1149
    return-void
.end method

.method private x()I
    .locals 1

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ae:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 1280
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ae:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 1281
    packed-switch v0, :pswitch_data_0

    .line 1292
    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 1283
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1285
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1287
    :pswitch_2
    const/16 v0, 0x9

    goto :goto_0

    .line 1289
    :pswitch_3
    const/16 v0, 0x8

    goto :goto_0

    .line 1281
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private y()Z
    .locals 2

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ad:Ljava/util/EnumSet;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/video/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/video/a/b$a;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->H:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ag:Lcom/bytedance/sdk/openadsdk/core/widget/b;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ag:Lcom/bytedance/sdk/openadsdk/core/widget/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->a(Z)V

    .line 284
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 456
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;->setVisibility(I)V

    .line 459
    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 2

    .prologue
    .line 529
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->B:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 531
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 534
    :cond_0
    if-gtz p1, :cond_1

    .line 544
    :goto_0
    return-void

    .line 537
    :cond_1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->C:I

    .line 538
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->l()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->k()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ad:Ljava/util/EnumSet;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/video/a/b$a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/b$a;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 539
    :cond_2
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->D:I

    .line 543
    :goto_1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->C:I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->D:I

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->b(II)V

    goto :goto_0

    .line 541
    :cond_3
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->e(I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->D:I

    goto :goto_1
.end method

.method public a(J)V
    .locals 3

    .prologue
    .line 678
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->S:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 679
    return-void
.end method

.method public a(JJ)V
    .locals 3

    .prologue
    .line 635
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->R:Landroid/widget/TextView;

    invoke-static {p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 636
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->S:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 637
    invoke-static {p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a(JJ)I

    move-result v0

    .line 638
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->P:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 639
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 1153
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1178
    :cond_0
    :goto_0
    return-void

    .line 1155
    :pswitch_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->m()V

    goto :goto_0

    .line 1158
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1159
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->az:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->x()I

    move-result v2

    if-eq v0, v2, :cond_0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1162
    if-ne v0, v1, :cond_1

    .line 1163
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1164
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->aa:Lcom/bytedance/sdk/openadsdk/core/video/a/d;

    invoke-interface {v0, p0, v4, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/a/b;Landroid/view/View;Z)V

    goto :goto_0

    .line 1167
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->t()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1168
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->k()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1170
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->aa:Lcom/bytedance/sdk/openadsdk/core/video/a/d;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/d;->a(I)V

    goto :goto_0

    .line 1172
    :cond_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->aa:Lcom/bytedance/sdk/openadsdk/core/video/a/d;

    const/16 v3, 0x8

    if-ne v0, v3, :cond_3

    move v0, v1

    :goto_1
    invoke-interface {v2, p0, v4, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/a/b;Landroid/view/View;ZZ)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 1153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 800
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->A:Lcom/bytedance/sdk/openadsdk/h/t;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/t;->removeMessages(I)V

    .line 801
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 808
    :cond_0
    :goto_0
    return-void

    .line 804
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ab:Z

    .line 805
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->aa:Lcom/bytedance/sdk/openadsdk/core/video/a/d;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/a/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/a/b;Landroid/view/SurfaceHolder;)V

    goto :goto_0
.end method

.method public a(Landroid/view/SurfaceHolder;III)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x2

    .line 812
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->A:Lcom/bytedance/sdk/openadsdk/h/t;

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/h/t;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->A:Lcom/bytedance/sdk/openadsdk/h/t;

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/h/t;->removeMessages(I)V

    .line 814
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->aA:I

    if-eq v0, v5, :cond_0

    .line 815
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->A:Lcom/bytedance/sdk/openadsdk/h/t;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->A:Lcom/bytedance/sdk/openadsdk/h/t;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->aA:I

    const/4 v3, 0x0

    invoke-static {v1, v4, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/h/t;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 816
    iput v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->aA:I

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eq p1, v0, :cond_2

    .line 825
    :cond_1
    :goto_0
    return-void

    .line 822
    :cond_2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 823
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->aa:Lcom/bytedance/sdk/openadsdk/core/video/a/d;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/video/a/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/a/b;Landroid/view/SurfaceHolder;III)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Z)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1300
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1301
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1302
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1303
    const-string v3, "NewLiveViewLayout"

    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/h/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ai:Lcom/bytedance/sdk/openadsdk/core/d/h;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ai:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/h;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1305
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ai:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/h;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a(Ljava/lang/String;)V

    .line 1307
    :cond_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->i:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1313
    :goto_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->aj:Z

    if-nez v0, :cond_2

    .line 1315
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->H:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->G:Z

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->c(Z)V

    .line 1316
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1317
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->aa:Lcom/bytedance/sdk/openadsdk/core/video/a/d;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->k:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    :cond_1
    invoke-interface {v0, p0, p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/a/d;->b(Lcom/bytedance/sdk/openadsdk/core/video/a/b;Landroid/view/View;ZZ)V

    .line 1320
    :cond_2
    return-void

    .line 1309
    :cond_3
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a(Ljava/lang/String;)V

    .line 1310
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->i:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 1315
    goto :goto_1
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 643
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 645
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 647
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ay:Z

    .line 649
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 650
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->d(I)V

    .line 651
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/ref/WeakReference;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/d/h;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 717
    if-nez p1, :cond_0

    .line 773
    :goto_0
    return-void

    .line 720
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->H:Z

    invoke-virtual {p0, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->b(ZZ)V

    .line 721
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->p:Landroid/view/View;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/view/View;I)V

    .line 722
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->q:Landroid/widget/ImageView;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/view/View;I)V

    .line 723
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->r:Landroid/view/View;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/view/View;I)V

    .line 724
    const-string v0, ""

    .line 725
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 726
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->b()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 733
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ai:Lcom/bytedance/sdk/openadsdk/core/d/h;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ai:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->d()Lcom/bytedance/sdk/openadsdk/core/d/g;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ai:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->d()Lcom/bytedance/sdk/openadsdk/core/d/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/g;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 734
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->s:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/view/View;I)V

    .line 735
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->t:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/view/View;I)V

    .line 736
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ah:Lcom/androidquery/callback/AQuery2;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->s:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    invoke-virtual {v0, v2}, Lcom/androidquery/callback/AQuery2;->id(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    check-cast v0, Lcom/androidquery/AQuery;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ai:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/h;->d()Lcom/bytedance/sdk/openadsdk/core/d/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/androidquery/AQuery;->image(Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;

    .line 737
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->s:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->am:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 738
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->s:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->am:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 749
    :cond_1
    :goto_2
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 750
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 752
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->u:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/view/View;I)V

    .line 754
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->v:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/view/View;I)V

    .line 755
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 767
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->v:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->B:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/bytedance/sdk/openadsdk/R$string;->video_mobile_go_detail:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 771
    :goto_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->v:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->am:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 772
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->v:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->am:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_0

    .line 727
    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 728
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->j()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_1

    .line 729
    :cond_4
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 730
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->k()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_1

    .line 739
    :cond_5
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 740
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->s:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/view/View;I)V

    .line 741
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->t:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/view/View;I)V

    .line 742
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->t:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 745
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->t:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->am:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 746
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->t:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->am:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_2

    .line 757
    :pswitch_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->v:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->B:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/bytedance/sdk/openadsdk/R$string;->video_download_apk:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 760
    :pswitch_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->v:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->B:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/bytedance/sdk/openadsdk/R$string;->video_dial_phone:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 764
    :pswitch_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->v:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->B:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/bytedance/sdk/openadsdk/R$string;->video_mobile_go_detail:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_6
    move-object v1, v0

    goto/16 :goto_1

    .line 755
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/a/a;)V
    .locals 2

    .prologue
    .line 304
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/core/video/a/d;

    if-eqz v0, :cond_0

    .line 305
    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/video/a/d;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->aa:Lcom/bytedance/sdk/openadsdk/core/video/a/d;

    .line 306
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->af:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->aa:Lcom/bytedance/sdk/openadsdk/core/video/a/d;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a(Lcom/bytedance/sdk/openadsdk/core/video/a/d;)V

    .line 307
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->s()V

    .line 309
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 564
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 461
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->aj:Z

    .line 462
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->am:Lcom/bytedance/sdk/openadsdk/core/a/a;

    if-nez v0, :cond_0

    .line 470
    :goto_0
    return-void

    .line 465
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->aj:Z

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->am:Lcom/bytedance/sdk/openadsdk/core/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Z)V

    goto :goto_0

    .line 468
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->am:Lcom/bytedance/sdk/openadsdk/core/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Z)V

    goto :goto_0
.end method

.method public a(ZZ)V
    .locals 2

    .prologue
    .line 548
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->X:Z

    .line 549
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 550
    if-eqz p1, :cond_1

    .line 551
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->e:Landroid/widget/ImageView;

    sget v1, Lcom/bytedance/sdk/openadsdk/R$drawable;->tt_play_movebar_textpage:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 556
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->e:Landroid/widget/ImageView;

    sget v1, Lcom/bytedance/sdk/openadsdk/R$drawable;->tt_stop_movebar_textpage:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public a(ZZZ)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1182
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->y:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1183
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->Q:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1184
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->G:Z

    if-eqz v0, :cond_3

    .line 1185
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1186
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1190
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->e:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1191
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->H:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->G:Z

    if-nez v0, :cond_2

    .line 1192
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ad:Ljava/util/EnumSet;

    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/video/a/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/b$a;

    invoke-virtual {v0, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    .line 1193
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1195
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->c:Landroid/widget/TextView;

    if-eqz p3, :cond_5

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1198
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->R:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1199
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->S:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1200
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->P:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1201
    return-void

    .line 1187
    :cond_3
    if-eqz p3, :cond_0

    .line 1188
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 1190
    goto :goto_1

    :cond_5
    move v2, v1

    .line 1195
    goto :goto_2
.end method

.method public a(ILcom/bytedance/sdk/openadsdk/core/d/m;)Z
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ag:Lcom/bytedance/sdk/openadsdk/core/widget/b;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ag:Lcom/bytedance/sdk/openadsdk/core/widget/b;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->a(ILcom/bytedance/sdk/openadsdk/core/d/m;)Z

    move-result v0

    .line 277
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 320
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;->a(Lcom/bytedance/sdk/openadsdk/core/video/renderview/a;)V

    .line 321
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->af:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a(Landroid/view/View;)V

    .line 323
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->d:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->H:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ad:Ljava/util/EnumSet;

    sget-object v4, Lcom/bytedance/sdk/openadsdk/core/video/a/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/b$a;

    invoke-virtual {v0, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->d:Landroid/widget/ImageView;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/video/a/h$2;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/a/h;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->c:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->H:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ad:Ljava/util/EnumSet;

    sget-object v4, Lcom/bytedance/sdk/openadsdk/core/video/a/b$a;->b:Lcom/bytedance/sdk/openadsdk/core/video/a/b$a;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->c:Landroid/widget/TextView;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/video/a/h$3;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/a/h;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->j:Landroid/widget/ImageView;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/video/a/h$4;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/a/h;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->e:Landroid/widget/ImageView;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/video/a/h$5;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/a/h;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->n:Landroid/widget/ImageView;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/video/a/h$6;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/a/h;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->z:Landroid/widget/ImageView;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/video/a/h$7;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/a/h;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->P:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 387
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->P:Landroid/widget/SeekBar;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/a/h$8;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/a/h;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 418
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->P:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ao:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 420
    return-void

    :cond_1
    move v0, v1

    .line 323
    goto :goto_0

    :cond_2
    move v2, v1

    .line 334
    goto :goto_1
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 613
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->y:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->y:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->Q:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/view/View;I)V

    .line 620
    :goto_0
    return-void

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->Q:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/view/View;I)V

    .line 617
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->P:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 618
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->Q:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method

.method public b(II)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 576
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 577
    if-eq p1, v2, :cond_0

    if-eq p1, v1, :cond_0

    if-lez p1, :cond_1

    .line 578
    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 580
    :cond_1
    if-eq p2, v2, :cond_2

    if-eq p2, v1, :cond_2

    if-lez p2, :cond_3

    .line 581
    :cond_2
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 583
    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 584
    return-void
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 1330
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1331
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->aa:Lcom/bytedance/sdk/openadsdk/core/video/a/d;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/a/d;->d(J)V

    .line 1333
    :cond_0
    return-void
.end method

.method public b(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 829
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->A:Lcom/bytedance/sdk/openadsdk/h/t;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/t;->removeMessages(I)V

    .line 830
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 837
    :cond_0
    :goto_0
    return-void

    .line 833
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ab:Z

    .line 834
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->aa:Lcom/bytedance/sdk/openadsdk/core/video/a/d;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/a/d;->b(Lcom/bytedance/sdk/openadsdk/core/video/a/b;Landroid/view/SurfaceHolder;)V

    goto :goto_0
.end method

.method public b(Landroid/view/ViewGroup;)V
    .locals 8

    .prologue
    const/4 v5, 0x3

    const/4 v2, -0x1

    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v3, 0x0

    .line 882
    if-nez p1, :cond_1

    .line 934
    :cond_0
    :goto_0
    return-void

    .line 885
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 888
    iput-boolean v7, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->G:Z

    .line 889
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->af:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-virtual {v0, v7}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a(Z)V

    .line 890
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 891
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->K:I

    .line 892
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->J:I

    .line 893
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->L:I

    .line 894
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->M:I

    .line 895
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 896
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 897
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 898
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 899
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 901
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 902
    instance-of v0, v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 903
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 904
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v2

    .line 905
    array-length v4, v2

    if-lez v4, :cond_4

    aget v2, v2, v5

    :goto_1
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->N:I

    .line 906
    invoke-virtual {v0, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 907
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 909
    :cond_2
    instance-of v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_3

    .line 910
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 911
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->O:Landroid/graphics/Rect;

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 912
    invoke-static {p1, v3, v3, v3, v3}, Lcom/bytedance/sdk/openadsdk/h/s;->b(Landroid/view/View;IIII)V

    .line 915
    :cond_3
    invoke-virtual {p0, v7}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->b(Z)V

    .line 917
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->z:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->B:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/bytedance/sdk/openadsdk/R$drawable;->tt_shrink_video:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 919
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->P:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->B:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/bytedance/sdk/openadsdk/R$drawable;->tt_seek_thumb_fullscreen_selector:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 920
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->P:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 923
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a:Landroid/view/View;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a(Landroid/view/View;Z)V

    .line 924
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->G:Z

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->d(Z)V

    .line 926
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->f:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 927
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->H:Z

    if-nez v0, :cond_5

    .line 928
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 929
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    move v2, v3

    .line 905
    goto :goto_1

    .line 930
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ad:Ljava/util/EnumSet;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/video/a/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/b$a;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 931
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->d:Landroid/widget/ImageView;

    invoke-static {v0, v6}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method public b(Z)V
    .locals 6

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 486
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->Z:I

    .line 487
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->Y:I

    .line 488
    :goto_1
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->F:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->E:I

    if-gtz v2, :cond_3

    .line 524
    :cond_0
    :goto_2
    return-void

    .line 486
    :cond_1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->C:I

    goto :goto_0

    .line 487
    :cond_2
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->D:I

    goto :goto_1

    .line 492
    :cond_3
    if-lez v0, :cond_0

    .line 498
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->l()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->k()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ad:Ljava/util/EnumSet;

    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/video/a/b$a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/b$a;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 504
    :cond_4
    :goto_3
    int-to-float v2, v0

    mul-float/2addr v2, v4

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->E:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 505
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->F:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 506
    if-le v2, v1, :cond_7

    .line 508
    int-to-float v0, v1

    mul-float/2addr v0, v4

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->F:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 509
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->E:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    move v5, v1

    move v1, v0

    move v0, v5

    .line 516
    :goto_4
    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->k()Z

    move-result v2

    if-nez v2, :cond_5

    .line 517
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->C:I

    .line 518
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->D:I

    .line 523
    :cond_5
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    invoke-interface {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;->a(II)V

    goto :goto_2

    .line 501
    :cond_6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->B:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/bytedance/sdk/openadsdk/R$dimen;->video_container_maxheight:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_3

    :cond_7
    move v1, v0

    move v0, v2

    .line 511
    goto :goto_4
.end method

.method public b(ZZ)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 1212
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->y:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1213
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1214
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->Q:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1215
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1216
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->H:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->G:Z

    if-nez v0, :cond_3

    .line 1217
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1218
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ad:Ljava/util/EnumSet;

    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/video/a/b$a;->b:Lcom/bytedance/sdk/openadsdk/core/video/a/b$a;

    invoke-virtual {v0, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1219
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1224
    :cond_0
    :goto_1
    if-eqz p2, :cond_1

    .line 1225
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->d:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/view/View;I)V

    .line 1226
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->c:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/view/View;I)V

    .line 1228
    :cond_1
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->c(Z)V

    .line 1229
    return-void

    :cond_2
    move v0, v2

    .line 1214
    goto :goto_0

    .line 1221
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ad:Ljava/util/EnumSet;

    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/video/a/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/b$a;

    invoke-virtual {v0, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1222
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->d:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/view/View;I)V

    goto :goto_1
.end method

.method public c()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 474
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->A:Lcom/bytedance/sdk/openadsdk/h/t;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/t;->removeMessages(I)V

    .line 475
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->A:Lcom/bytedance/sdk/openadsdk/h/t;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/t;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 476
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->A:Lcom/bytedance/sdk/openadsdk/h/t;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/h/t;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 477
    return-void
.end method

.method public c(II)V
    .locals 0

    .prologue
    .line 607
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->E:I

    .line 608
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->F:I

    .line 609
    return-void
.end method

.method public c(Landroid/view/ViewGroup;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 939
    if-nez p1, :cond_1

    .line 982
    :cond_0
    :goto_0
    return-void

    .line 942
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 945
    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->G:Z

    .line 946
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->af:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a(Z)V

    .line 947
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 948
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->L:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 949
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->M:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 950
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->K:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 951
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->J:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 953
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 955
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 956
    instance-of v0, v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 957
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 958
    const/4 v2, 0x3

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->N:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 959
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 961
    :cond_2
    instance-of v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_3

    .line 962
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->O:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->O:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->O:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->O:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1, v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/h/s;->b(Landroid/view/View;IIII)V

    .line 964
    :cond_3
    invoke-virtual {p0, v5}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->b(Z)V

    .line 966
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->z:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->B:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/bytedance/sdk/openadsdk/R$drawable;->tt_enlarge_video:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 969
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->P:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->B:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/bytedance/sdk/openadsdk/R$drawable;->tt_seek_thumb_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 970
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->P:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 973
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a:Landroid/view/View;

    invoke-static {v0, v5}, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a(Landroid/view/View;Z)V

    .line 975
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->G:Z

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->d(Z)V

    .line 977
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 978
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ad:Ljava/util/EnumSet;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/video/a/b$a;->b:Lcom/bytedance/sdk/openadsdk/core/video/a/b$a;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 979
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public c(Z)V
    .locals 2

    .prologue
    const/16 v0, 0x8

    .line 1243
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->g:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 1244
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->H:Z

    if-eqz v1, :cond_1

    .line 1245
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1250
    :cond_0
    :goto_0
    return-void

    .line 1247
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->g:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public c(I)Z
    .locals 1

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->P:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->P:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getSecondaryProgress()I

    move-result v0

    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->A:Lcom/bytedance/sdk/openadsdk/h/t;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/t;->removeMessages(I)V

    .line 482
    return-void
.end method

.method public d(I)V
    .locals 1

    .prologue
    .line 1259
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ac:I

    .line 1260
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/view/View;I)V

    .line 1262
    if-eqz p1, :cond_1

    .line 1263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->az:Z

    .line 1267
    :cond_0
    :goto_0
    return-void

    .line 1264
    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ay:Z

    if-eqz v0, :cond_0

    .line 1265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->az:Z

    goto :goto_0
.end method

.method public e()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 655
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 656
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 657
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->m:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 659
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->w:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->x:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ai:Lcom/bytedance/sdk/openadsdk/core/d/h;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->w:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/view/View;I)V

    .line 662
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ah:Lcom/androidquery/callback/AQuery2;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->x:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/AQuery2;->id(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    check-cast v0, Lcom/androidquery/AQuery;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ai:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->a()Lcom/bytedance/sdk/openadsdk/core/d/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/m;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androidquery/AQuery;->image(Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 666
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 668
    :cond_1
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 672
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->H:Z

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->b(ZZ)V

    .line 673
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->u()V

    .line 674
    return-void
.end method

.method public g()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 687
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a:Landroid/view/View;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/view/View;I)V

    .line 688
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    if-eqz v0, :cond_1

    .line 689
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;->getView()Landroid/view/View;

    move-result-object v1

    .line 691
    instance-of v0, v1, Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 692
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 693
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 694
    check-cast v0, Landroid/view/ViewGroup;

    .line 695
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 696
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 697
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 700
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 701
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 703
    :cond_1
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 777
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 778
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 779
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->w:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->w:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/view/View;I)V

    .line 783
    :cond_0
    return-void
.end method

.method public i()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 794
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 795
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 796
    return-void
.end method

.method public j()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 841
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->P:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 842
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->P:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 843
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->Q:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 844
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->Q:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 846
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->R:Landroid/widget/TextView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 847
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->S:Landroid/widget/TextView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 849
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->d(I)V

    .line 850
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;->setVisibility(I)V

    .line 853
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->x:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 854
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->x:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 856
    :cond_1
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->d(I)V

    .line 857
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->y:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 859
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->p:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 860
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 861
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->r:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 862
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->s:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->setVisibility(I)V

    .line 863
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 864
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 865
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ag:Lcom/bytedance/sdk/openadsdk/core/widget/b;

    if-eqz v0, :cond_2

    .line 866
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ag:Lcom/bytedance/sdk/openadsdk/core/widget/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->a(Z)V

    .line 868
    :cond_2
    return-void
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 872
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->G:Z

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 877
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->H:Z

    return v0
.end method

.method public m()V
    .locals 2

    .prologue
    .line 1233
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->b(ZZ)V

    .line 1234
    return-void
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 1254
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ab:Z

    return v0
.end method

.method public o()V
    .locals 1

    .prologue
    .line 1324
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->m()V

    .line 1325
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->c(Z)V

    .line 1326
    return-void
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->af:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a()Z

    move-result v0

    return v0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ag:Lcom/bytedance/sdk/openadsdk/core/widget/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->ag:Lcom/bytedance/sdk/openadsdk/core/widget/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1344
    const/4 v0, 0x1

    .line 1346
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
