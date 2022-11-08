.class public Lcom/bytedance/sdk/openadsdk/core/widget/b;
.super Ljava/lang/Object;
.source "VideoTrafficTipLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/widget/b$a;,
        Lcom/bytedance/sdk/openadsdk/core/widget/b$b;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/View;

.field private d:Landroid/content/Context;

.field private e:Lcom/bytedance/sdk/openadsdk/core/video/a/d;

.field private f:Lcom/bytedance/sdk/openadsdk/core/widget/b$b;

.field private g:Z

.field private h:Lcom/bytedance/sdk/openadsdk/core/d/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->g:Z

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/widget/b;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->c()V

    return-void
.end method

.method private a(I)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 106
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->g:Z

    if-nez v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->e:Lcom/bytedance/sdk/openadsdk/core/video/a/d;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->f:Lcom/bytedance/sdk/openadsdk/core/widget/b$b;

    if-eqz v1, :cond_3

    .line 111
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->f:Lcom/bytedance/sdk/openadsdk/core/widget/b$b;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/b$b;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->e:Lcom/bytedance/sdk/openadsdk/core/video/a/d;

    invoke-interface {v1, v3, v3}, Lcom/bytedance/sdk/openadsdk/core/video/a/d;->e(Lcom/bytedance/sdk/openadsdk/core/video/a/b;Landroid/view/View;)V

    .line 114
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->e:Lcom/bytedance/sdk/openadsdk/core/video/a/d;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/widget/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/widget/b$a;

    invoke-interface {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/a/d;->a(Lcom/bytedance/sdk/openadsdk/core/widget/b$a;Ljava/lang/String;)V

    .line 116
    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->h:Lcom/bytedance/sdk/openadsdk/core/d/m;

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->a(Lcom/bytedance/sdk/openadsdk/core/d/m;Z)V

    .line 117
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/widget/b;Z)Z
    .locals 0

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/widget/b;)Lcom/bytedance/sdk/openadsdk/core/video/a/d;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->e:Lcom/bytedance/sdk/openadsdk/core/video/a/d;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->h:Lcom/bytedance/sdk/openadsdk/core/d/m;

    .line 75
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->d:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->d()V

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 51
    if-eqz p1, :cond_0

    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->d:Landroid/content/Context;

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/bytedance/sdk/openadsdk/R$layout;->tt_video_traffic_tip:I

    check-cast p2, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 54
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->video_traffic_tip_layout:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->a:Landroid/view/View;

    .line 55
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->video_traffic_tip_tv:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->b:Landroid/widget/TextView;

    .line 56
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->video_traffic_continue_play_btn:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->c:Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->c:Landroid/view/View;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/b$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    :cond_0
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/m;Z)V
    .locals 4

    .prologue
    .line 149
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->d:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->f:Lcom/bytedance/sdk/openadsdk/core/widget/b$b;

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->f:Lcom/bytedance/sdk/openadsdk/core/widget/b$b;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/b$b;->m()V

    .line 158
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/m;->a()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    div-double/2addr v0, v2

    .line 159
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 161
    if-eqz p2, :cond_3

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/bytedance/sdk/openadsdk/R$string;->video_without_wifi_tips:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->d:Landroid/content/Context;

    .line 163
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/bytedance/sdk/openadsdk/R$string;->video_bytesize_MB:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->d:Landroid/content/Context;

    .line 164
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/bytedance/sdk/openadsdk/R$string;->video_bytesize:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->a:Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/view/View;I)V

    .line 171
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->b:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->a:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/s;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    goto :goto_0

    .line 166
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/bytedance/sdk/openadsdk/R$string;->video_without_wifi_tips:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->d:Landroid/content/Context;

    .line 167
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/bytedance/sdk/openadsdk/R$string;->video_bytesize:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/a/d;Lcom/bytedance/sdk/openadsdk/core/widget/b$b;)V
    .locals 0

    .prologue
    .line 69
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->f:Lcom/bytedance/sdk/openadsdk/core/widget/b$b;

    .line 70
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->e:Lcom/bytedance/sdk/openadsdk/core/video/a/d;

    .line 71
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 131
    if-eqz p1, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->b()V

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->d()V

    .line 135
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x1

    .line 141
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(ILcom/bytedance/sdk/openadsdk/core/d/m;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 85
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->d:Landroid/content/Context;

    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v0

    .line 89
    :cond_1
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b;->h:Lcom/bytedance/sdk/openadsdk/core/d/m;

    .line 91
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 94
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->a(I)Z

    move-result v0

    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
