.class Lcom/bytedance/sdk/openadsdk/core/w;
.super Ljava/lang/Object;
.source "TTFeedAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTFeedAd;


# instance fields
.field protected a:Landroid/content/Context;

.field private final b:Lcom/bytedance/sdk/openadsdk/core/m;

.field private final c:Lcom/bytedance/sdk/openadsdk/core/d/h;

.field private d:Lcom/bytedance/sdk/openadsdk/TTAdDislike;

.field private e:Lcom/bytedance/sdk/openadsdk/DownloadStatusController;

.field private f:Lcom/bytedance/sdk/openadsdk/core/video/a/f;


# direct methods
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
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "materialMeta\u4e0d\u80fd\u4e3anull"

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/h/o;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/w;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    .line 42
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->a:Landroid/content/Context;

    .line 43
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/m;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/m;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTFeedAd;Lcom/bytedance/sdk/openadsdk/core/d/h;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->b:Lcom/bytedance/sdk/openadsdk/core/m;

    .line 44
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/w;->getImageMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 46
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->f:Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    .line 48
    :cond_0
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 187
    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/w;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->d:Lcom/bytedance/sdk/openadsdk/TTAdDislike;

    .line 189
    :cond_0
    return-void
.end method


# virtual methods
.method public getAdView()Landroid/view/View;
    .locals 4

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/w;->getImageMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->f:Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->f:Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->a(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    :cond_0
    const/4 v0, 0x0

    .line 147
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->f:Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    goto :goto_0
.end method

.method public getAdView(ZZ)Landroid/view/View;
    .locals 4

    .prologue
    .line 132
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->f:Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->f:Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->setIsAutoPlay(Z)V

    .line 134
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->f:Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->setIsQuiet(Z)V

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/w;->getImageMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->f:Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->f:Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->a(J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 137
    :cond_1
    const/4 v0, 0x0

    .line 139
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->f:Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDislikeDialog()Lcom/bytedance/sdk/openadsdk/TTAdDislike;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->d:Lcom/bytedance/sdk/openadsdk/TTAdDislike;

    if-nez v0, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/w;->a()V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->d:Lcom/bytedance/sdk/openadsdk/TTAdDislike;

    return-object v0
.end method

.method public getDownloadStatusController()Lcom/bytedance/sdk/openadsdk/DownloadStatusController;
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->e:Lcom/bytedance/sdk/openadsdk/DownloadStatusController;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->b:Lcom/bytedance/sdk/openadsdk/core/m;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->b:Lcom/bytedance/sdk/openadsdk/core/m;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/m;->a()Lcom/bytedance/sdk/openadsdk/c/x;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_0

    .line 155
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/w$1;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/w$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/w;Lcom/bytedance/sdk/openadsdk/c/x;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->e:Lcom/bytedance/sdk/openadsdk/DownloadStatusController;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->e:Lcom/bytedance/sdk/openadsdk/DownloadStatusController;

    return-object v0
.end method

.method public getIcon()Lcom/bytedance/sdk/openadsdk/TTImage;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->d()Lcom/bytedance/sdk/openadsdk/core/d/g;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->d()Lcom/bytedance/sdk/openadsdk/core/d/g;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/g;->a(Lcom/bytedance/sdk/openadsdk/core/d/g;)Lcom/bytedance/sdk/openadsdk/TTImage;

    move-result-object v0

    goto :goto_0
.end method

.method public getImageList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/TTImage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->f()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/g;

    .line 101
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/g;->a(Lcom/bytedance/sdk/openadsdk/core/d/g;)Lcom/bytedance/sdk/openadsdk/TTImage;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    :cond_0
    return-object v1
.end method

.method public getImageMode()I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    if-nez v0, :cond_0

    .line 118
    const/4 v0, -0x1

    .line 120
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->p()I

    move-result v0

    goto :goto_0
.end method

.method public getInteractionType()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    if-nez v0, :cond_0

    .line 110
    const/4 v0, -0x1

    .line 112
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->c()I

    move-result v0

    goto :goto_0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTFeedAd$AdInteractionListener;)V
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 52
    const-string v0, "container\u4e0d\u80fd\u4e3anull"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/h/o;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    const-string v0, "clickView\u4e0d\u80fd\u4e3anull"

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/h/o;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/bytedance/sdk/openadsdk/core/w;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/TTFeedAd$AdInteractionListener;)V

    .line 58
    return-void
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/TTFeedAd$AdInteractionListener;)V
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/TTFeedAd$AdInteractionListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    const-string v0, "container\u4e0d\u80fd\u4e3anull"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/h/o;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    const-string v0, "clickView\u4e0d\u80fd\u4e3anull"

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/h/o;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "clickViews\u6570\u91cf\u5fc5\u987b\u5927\u4e8e\u7b49\u4e8e1"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/o;->a(ZLjava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->b:Lcom/bytedance/sdk/openadsdk/core/m;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/m;->a(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/TTFeedAd$AdInteractionListener;)V

    .line 67
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActivityForDownloadApp(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 177
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->b:Lcom/bytedance/sdk/openadsdk/core/m;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/m;->a(Landroid/app/Activity;)V

    .line 180
    :cond_0
    return-void
.end method

.method public setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
    .locals 1

    .prologue
    .line 71
    const-string v0, "downloadListener\u4e0d\u80fd\u4e3anull"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/h/o;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->b:Lcom/bytedance/sdk/openadsdk/core/m;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/m;->a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 73
    return-void
.end method
