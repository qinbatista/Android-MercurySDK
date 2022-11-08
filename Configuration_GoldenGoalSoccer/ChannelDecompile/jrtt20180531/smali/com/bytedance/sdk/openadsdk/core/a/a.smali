.class public Lcom/bytedance/sdk/openadsdk/core/a/a;
.super Lcom/bytedance/sdk/openadsdk/core/a/b;
.source "ClickCreativeListener.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/d/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/a/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;I)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->a:Z

    .line 29
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 96
    const-string v0, ""

    :goto_1
    return-object v0

    .line 84
    :sswitch_0
    const-string v1, "embeded_ad"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "banner_ad"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "slide_banner_ad"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "interaction"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "splash_ad"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    .line 86
    :pswitch_0
    const-string v0, "feed_call"

    goto :goto_1

    .line 88
    :pswitch_1
    const-string v0, "banner_call"

    goto :goto_1

    .line 90
    :pswitch_2
    const-string v0, "banner_call"

    goto :goto_1

    .line 92
    :pswitch_3
    const-string v0, "interaction_call"

    goto :goto_1

    .line 94
    :pswitch_4
    const-string v0, "splash_ad"

    goto :goto_1

    .line 84
    nop

    :sswitch_data_0
    .sparse-switch
        -0x65146dea -> :sswitch_1
        -0x2a77c376 -> :sswitch_0
        0xa6dd8fb -> :sswitch_4
        0x6deace12 -> :sswitch_3
        0x7cab2108 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->a:Z

    .line 33
    return-void
.end method

.method public b(Landroid/view/View;IIII)V
    .locals 12

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->b:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->r:J

    iget-wide v8, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->s:J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->f:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_2

    const/4 v10, 0x0

    .line 41
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->g:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_3

    const/4 v11, 0x0

    :goto_2
    move-object v1, p0

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 40
    invoke-virtual/range {v1 .. v11}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(IIIIJJLandroid/view/View;Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/core/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/c;

    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->c()I

    move-result v7

    .line 43
    packed-switch v7, :pswitch_data_0

    .line 73
    const/4 v0, -0x1

    .line 75
    :goto_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->i:Lcom/bytedance/sdk/openadsdk/core/a/b$a;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->i:Lcom/bytedance/sdk/openadsdk/core/a/b$a;

    invoke-interface {v1, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/a/b$a;->a(Landroid/view/View;I)V

    goto :goto_0

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->f:Ljava/lang/ref/WeakReference;

    .line 41
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v10, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v11, v0

    goto :goto_2

    .line 45
    :pswitch_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->m:Lcom/bytedance/sdk/openadsdk/c/x;

    if-eqz v0, :cond_6

    .line 46
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->m:Lcom/bytedance/sdk/openadsdk/c/x;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/c/x;->c()V

    .line 47
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->a:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->m:Lcom/bytedance/sdk/openadsdk/c/x;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/c/x;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->b:Landroid/content/Context;

    const-string v1, "click"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/c;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/d/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/h;Lcom/bytedance/sdk/openadsdk/core/d/c;Ljava/lang/String;Z)V

    move v0, v7

    goto :goto_3

    .line 53
    :pswitch_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 54
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 55
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->b:Landroid/content/Context;

    const-string v1, "click_call"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/c;

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/d/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/h;Lcom/bytedance/sdk/openadsdk/core/d/c;Ljava/lang/String;Z)V

    .line 57
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/r;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    .line 58
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->b:Landroid/content/Context;

    const-string v1, "click"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/c;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/d/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/h;Lcom/bytedance/sdk/openadsdk/core/d/c;Ljava/lang/String;Z)V

    move v0, v7

    .line 59
    goto :goto_3

    .line 62
    :pswitch_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->p()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 64
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->b:Landroid/content/Context;

    const-string v1, "click_button"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/c;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/d/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/h;Lcom/bytedance/sdk/openadsdk/core/d/c;Ljava/lang/String;Z)V

    .line 66
    :cond_5
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa;->a(Z)V

    .line 67
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->e:I

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->k:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->j:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->e:I

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/h/r;->a(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->m:Lcom/bytedance/sdk/openadsdk/c/x;

    invoke-static/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/aa;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;ILcom/bytedance/sdk/openadsdk/core/video/a/c;Lcom/bytedance/sdk/openadsdk/TTFeedAd;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/c/x;)Z

    move-result v5

    .line 68
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->a:Z

    if-eqz v0, :cond_6

    .line 69
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->b:Landroid/content/Context;

    const-string v1, "click"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->h:Lcom/bytedance/sdk/openadsdk/core/d/c;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->d:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/d/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/h;Lcom/bytedance/sdk/openadsdk/core/d/c;Ljava/lang/String;Z)V

    move v0, v7

    goto/16 :goto_3

    :cond_6
    move v0, v7

    goto/16 :goto_3

    .line 43
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
