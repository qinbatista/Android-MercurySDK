.class Lcom/bytedance/sdk/openadsdk/core/m;
.super Ljava/lang/Object;
.source "InteractionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/m$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field private b:Lcom/bytedance/sdk/openadsdk/core/d/h;

.field private c:Lcom/bytedance/sdk/openadsdk/c/x;

.field private d:Lcom/bytedance/sdk/openadsdk/core/m$a;

.field private e:Lcom/bytedance/sdk/openadsdk/TTFeedAd;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTFeedAd;Lcom/bytedance/sdk/openadsdk/core/d/h;)V
    .locals 5

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/m;->e:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 43
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/m;->b:Lcom/bytedance/sdk/openadsdk/core/d/h;

    .line 44
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/m;->a:Landroid/content/Context;

    .line 46
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->b:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->c()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 47
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/m$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/m$a;-><init>(Lcom/bytedance/sdk/openadsdk/core/m;Lcom/bytedance/sdk/openadsdk/core/m$1;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->d:Lcom/bytedance/sdk/openadsdk/core/m$a;

    .line 48
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/x;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/m;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/m;->b:Lcom/bytedance/sdk/openadsdk/core/d/h;

    const-string v3, "embeded_ad"

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/x;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->c:Lcom/bytedance/sdk/openadsdk/c/x;

    .line 50
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->c:Lcom/bytedance/sdk/openadsdk/c/x;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/a/c;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/m;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/m;->b:Lcom/bytedance/sdk/openadsdk/core/d/h;

    const-string v4, "embeded_ad"

    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/a/c;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/c/x;->a(Lcom/bytedance/sdk/openadsdk/c/x$b;)V

    .line 52
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/m;)Lcom/bytedance/sdk/openadsdk/TTFeedAd;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->e:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/f;
    .locals 3

    .prologue
    .line 145
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 146
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 147
    instance-of v2, v0, Lcom/bytedance/sdk/openadsdk/core/f;

    if-eqz v2, :cond_0

    .line 148
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/f;

    .line 151
    :goto_1
    return-object v0

    .line 145
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 151
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/m;)Lcom/bytedance/sdk/openadsdk/c/x;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->c:Lcom/bytedance/sdk/openadsdk/c/x;

    return-object v0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/m;)Lcom/bytedance/sdk/openadsdk/core/d/h;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->b:Lcom/bytedance/sdk/openadsdk/core/d/h;

    return-object v0
.end method


# virtual methods
.method a()Lcom/bytedance/sdk/openadsdk/c/x;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->c:Lcom/bytedance/sdk/openadsdk/c/x;

    return-object v0
.end method

.method a(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 55
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->c:Lcom/bytedance/sdk/openadsdk/c/x;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->c:Lcom/bytedance/sdk/openadsdk/c/x;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/c/x;->a(Landroid/app/Activity;)V

    .line 58
    :cond_0
    return-void
.end method

.method a(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/TTFeedAd$AdInteractionListener;)V
    .locals 7
    .param p1    # Landroid/view/ViewGroup;
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
    const/4 v6, 0x1

    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->c:Lcom/bytedance/sdk/openadsdk/c/x;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->c:Lcom/bytedance/sdk/openadsdk/c/x;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/c/x;->g()V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->b:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/d/c;->a(Lcom/bytedance/sdk/openadsdk/core/d/h;)V

    .line 70
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/m;->a(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/f;

    move-result-object v0

    .line 71
    if-nez v0, :cond_1

    .line 72
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/m;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/f;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 73
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 75
    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f;->a()V

    .line 76
    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/f;->setRefClickViews(Ljava/util/List;)V

    .line 77
    invoke-virtual {v0, p3}, Lcom/bytedance/sdk/openadsdk/core/f;->setRefCreativeViews(Ljava/util/List;)V

    .line 80
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/a/b;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/m;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/m;->b:Lcom/bytedance/sdk/openadsdk/core/d/h;

    const-string v4, "embeded_ad"

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/bytedance/sdk/openadsdk/core/a/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;I)V

    .line 81
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/a/b;->a(Landroid/view/View;)V

    .line 82
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/m;->c:Lcom/bytedance/sdk/openadsdk/c/x;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/a/b;->a(Lcom/bytedance/sdk/openadsdk/c/x;)V

    .line 83
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/m;->e:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/a/b;->a(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V

    .line 84
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/m$1;

    invoke-direct {v2, p0, p4}, Lcom/bytedance/sdk/openadsdk/core/m$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/m;Lcom/bytedance/sdk/openadsdk/TTFeedAd$AdInteractionListener;)V

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/a/b;->a(Lcom/bytedance/sdk/openadsdk/core/a/b$a;)V

    .line 94
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/a/a;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/m;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/m;->b:Lcom/bytedance/sdk/openadsdk/core/d/h;

    const-string v5, "embeded_ad"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/a/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;I)V

    .line 95
    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Landroid/view/View;)V

    .line 96
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/m;->c:Lcom/bytedance/sdk/openadsdk/c/x;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Lcom/bytedance/sdk/openadsdk/c/x;)V

    .line 97
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/m$2;

    invoke-direct {v3, p0, p4}, Lcom/bytedance/sdk/openadsdk/core/m$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/m;Lcom/bytedance/sdk/openadsdk/TTFeedAd$AdInteractionListener;)V

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/a/b$a;)V

    .line 106
    invoke-virtual {v0, p2, v1}, Lcom/bytedance/sdk/openadsdk/core/f;->a(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/a/d;)V

    .line 107
    invoke-virtual {v0, p3, v2}, Lcom/bytedance/sdk/openadsdk/core/f;->a(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/a/d;)V

    .line 109
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/m$3;

    invoke-direct {v1, p0, p4}, Lcom/bytedance/sdk/openadsdk/core/m$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/m;Lcom/bytedance/sdk/openadsdk/TTFeedAd$AdInteractionListener;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/f;->setCallback(Lcom/bytedance/sdk/openadsdk/core/f$a;)V

    .line 140
    invoke-virtual {v0, v6}, Lcom/bytedance/sdk/openadsdk/core/f;->setNeedCheckingShow(Z)V

    .line 142
    return-void
.end method

.method a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->c:Lcom/bytedance/sdk/openadsdk/c/x;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->d:Lcom/bytedance/sdk/openadsdk/core/m$a;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/m$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/m$a;-><init>(Lcom/bytedance/sdk/openadsdk/core/m;Lcom/bytedance/sdk/openadsdk/core/m$1;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->d:Lcom/bytedance/sdk/openadsdk/core/m$a;

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->d:Lcom/bytedance/sdk/openadsdk/core/m$a;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/m$a;->a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 161
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->c:Lcom/bytedance/sdk/openadsdk/c/x;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/c/x;->a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 163
    :cond_1
    return-void
.end method
