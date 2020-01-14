.class public Lcom/bytedance/sdk/openadsdk/core/f;
.super Landroid/view/View;
.source "EmptyView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/f$a;
    }
.end annotation


# instance fields
.field protected final a:Landroid/os/Handler;

.field private b:Z

.field private c:Z

.field private d:Lcom/bytedance/sdk/openadsdk/core/f$a;

.field private e:Landroid/view/View;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/f$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/f;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f;->a:Landroid/os/Handler;

    .line 80
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/f;->e:Landroid/view/View;

    .line 81
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/f;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/f;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/f;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/f;)Landroid/view/View;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/f;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/f;->i:I

    return v0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/core/f;)Lcom/bytedance/sdk/openadsdk/core/f$a;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f;->d:Lcom/bytedance/sdk/openadsdk/core/f$a;

    return-object v0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/core/f;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/f;->h:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 122
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f;->f:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/f;->a(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/a/d;)V

    .line 123
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f;->g:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/f;->a(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/a/d;)V

    .line 124
    return-void
.end method

.method public a(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/a/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/a/d;",
            ")V"
        }
    .end annotation

    .prologue
    .line 127
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/h/k;->b(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 129
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 133
    :cond_0
    return-void
.end method

.method b()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 140
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/f;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/f;->b:Z

    if-eqz v0, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/f;->b:Z

    .line 144
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method c()V
    .locals 2

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/f;->b:Z

    if-nez v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/f;->b:Z

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 95
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f;->b()V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/f;->h:Z

    .line 97
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f;->d:Lcom/bytedance/sdk/openadsdk/core/f$a;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f;->d:Lcom/bytedance/sdk/openadsdk/core/f$a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/f$a;->a()V

    .line 100
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 104
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f;->c()V

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/f;->h:Z

    .line 106
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f;->d:Lcom/bytedance/sdk/openadsdk/core/f$a;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f;->d:Lcom/bytedance/sdk/openadsdk/core/f$a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/f$a;->b()V

    .line 111
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 87
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f;->d:Lcom/bytedance/sdk/openadsdk/core/f$a;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f;->d:Lcom/bytedance/sdk/openadsdk/core/f$a;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/f$a;->a(Z)V

    .line 90
    :cond_0
    return-void
.end method

.method public setAdType(I)V
    .locals 0

    .prologue
    .line 170
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/f;->i:I

    .line 171
    return-void
.end method

.method public setCallback(Lcom/bytedance/sdk/openadsdk/core/f$a;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f;->d:Lcom/bytedance/sdk/openadsdk/core/f$a;

    .line 167
    return-void
.end method

.method public setNeedCheckingShow(Z)V
    .locals 1

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/f;->c:Z

    .line 157
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/f;->b:Z

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f;->c()V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/f;->b:Z

    if-nez v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/f;->b()V

    goto :goto_0
.end method

.method public setRefClickViews(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f;->f:Ljava/util/List;

    .line 115
    return-void
.end method

.method public setRefCreativeViews(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f;->g:Ljava/util/List;

    .line 119
    return-void
.end method
