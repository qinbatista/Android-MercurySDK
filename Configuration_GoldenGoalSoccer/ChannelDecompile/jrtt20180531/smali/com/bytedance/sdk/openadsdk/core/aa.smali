.class public Lcom/bytedance/sdk/openadsdk/core/aa;
.super Ljava/lang/Object;
.source "WebHelper.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/aa;->a:Z

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/h;ILcom/bytedance/sdk/openadsdk/core/video/a/c;Lcom/bytedance/sdk/openadsdk/TTFeedAd;)Landroid/content/Intent;
    .locals 6
    .param p4    # Lcom/bytedance/sdk/openadsdk/core/video/a/c;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/bytedance/sdk/openadsdk/TTFeedAd;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x5

    .line 113
    .line 114
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/h;->p()I

    move-result v0

    if-ne v0, v3, :cond_2

    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/aa;->a:Z

    if-nez v0, :cond_2

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v1, v0

    .line 119
    :goto_0
    const-string v0, "url"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v0, "web_title"

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/h;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v0, "sdk_version"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    const-string v0, "adid"

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/h;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v0, "log_extra"

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/h;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/h;->d()Lcom/bytedance/sdk/openadsdk/core/d/g;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 125
    :goto_1
    const-string v2, "icon_url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string v0, "source"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 128
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 130
    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/h;->p()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 131
    const-string v0, "imageMode"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    if-eqz p4, :cond_4

    .line 133
    const-string v0, "video_play_position"

    invoke-interface {p4}, Lcom/bytedance/sdk/openadsdk/core/video/a/c;->d()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 134
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/s;->a()Lcom/bytedance/sdk/openadsdk/core/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/s;->f()V

    .line 135
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/s;->a()Lcom/bytedance/sdk/openadsdk/core/s;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/s;->a(Lcom/bytedance/sdk/openadsdk/core/d/h;)V

    .line 136
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/s;->a()Lcom/bytedance/sdk/openadsdk/core/s;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/bytedance/sdk/openadsdk/core/s;->a(Lcom/bytedance/sdk/openadsdk/core/video/a/c;)V

    .line 148
    :cond_1
    :goto_2
    return-object v1

    .line 117
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v1, v0

    goto :goto_0

    .line 124
    :cond_3
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/h;->d()Lcom/bytedance/sdk/openadsdk/core/d/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/g;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 137
    :cond_4
    if-eqz p5, :cond_1

    invoke-interface {p5}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getAdView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 138
    invoke-interface {p5}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getAdView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/a/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/f;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_5

    .line 140
    const-string v2, "video_play_position"

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/c;->d()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 143
    :cond_5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/s;->a()Lcom/bytedance/sdk/openadsdk/core/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/s;->f()V

    .line 144
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/s;->a()Lcom/bytedance/sdk/openadsdk/core/s;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/bytedance/sdk/openadsdk/core/s;->a(Lcom/bytedance/sdk/openadsdk/core/d/h;)V

    .line 145
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/s;->a()Lcom/bytedance/sdk/openadsdk/core/s;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/s;->a(Lcom/bytedance/sdk/openadsdk/core/video/a/c;)V

    goto :goto_2
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 30
    sput-boolean p0, Lcom/bytedance/sdk/openadsdk/core/aa;->a:Z

    .line 31
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;ILcom/bytedance/sdk/openadsdk/core/video/a/c;Lcom/bytedance/sdk/openadsdk/TTFeedAd;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/c/x;)Z
    .locals 9
    .param p3    # Lcom/bytedance/sdk/openadsdk/core/video/a/c;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/bytedance/sdk/openadsdk/TTFeedAd;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/bytedance/sdk/openadsdk/c/x;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/high16 v8, 0x10000000

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 37
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    :cond_0
    move v0, v7

    .line 108
    :goto_0
    return v0

    .line 41
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->n()Lcom/bytedance/sdk/openadsdk/core/d/d;

    move-result-object v1

    .line 42
    if-eqz v1, :cond_9

    .line 43
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 45
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/d;->a()Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 47
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 49
    invoke-static {p0, v3}, Lcom/bytedance/sdk/openadsdk/h/r;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 50
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_2

    .line 51
    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 53
    :cond_2
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 54
    const-string v0, "open_url_app"

    invoke-static {p0, p1, p5, v0}, Lcom/bytedance/sdk/openadsdk/d/c;->h(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 55
    goto :goto_0

    .line 60
    :cond_3
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/d;->c()I

    move-result v2

    if-ne v2, v5, :cond_6

    .line 61
    if-eqz p6, :cond_7

    .line 62
    invoke-virtual {p6}, Lcom/bytedance/sdk/openadsdk/c/x;->e()Z

    move-result v0

    if-nez v0, :cond_4

    .line 63
    invoke-virtual {p6}, Lcom/bytedance/sdk/openadsdk/c/x;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 64
    const-string v0, "open_fallback_url"

    invoke-static {p0, p1, p5, v0}, Lcom/bytedance/sdk/openadsdk/d/c;->h(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 65
    goto :goto_0

    .line 68
    :cond_4
    const-string v0, "open_fallback_url"

    invoke-static {p0, p1, p5, v0}, Lcom/bytedance/sdk/openadsdk/d/c;->h(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 69
    goto :goto_0

    .line 71
    :cond_5
    const-string v0, "open_fallback_url"

    invoke-static {p0, p1, p5, v0}, Lcom/bytedance/sdk/openadsdk/d/c;->h(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    .line 72
    goto :goto_0

    .line 74
    :cond_6
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/d;->c()I

    move-result v0

    if-ne v0, v6, :cond_8

    .line 75
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/d;->b()Ljava/lang/String;

    move-result-object v0

    .line 80
    :cond_7
    :goto_1
    const-string v1, "open_fallback_url"

    invoke-static {p0, p1, p5, v1}, Lcom/bytedance/sdk/openadsdk/d/c;->h(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 85
    :goto_2
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 86
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->c()I

    move-result v0

    if-ne v0, v5, :cond_c

    .line 87
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v7

    .line 88
    goto/16 :goto_0

    .line 77
    :cond_8
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 83
    :cond_9
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->e()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 90
    :cond_a
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    :try_start_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_b

    .line 98
    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 100
    :cond_b
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_3
    move v0, v6

    .line 106
    goto/16 :goto_0

    .line 94
    :catch_0
    move-exception v0

    move v0, v7

    .line 95
    goto/16 :goto_0

    :cond_c
    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 102
    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/aa;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/h;ILcom/bytedance/sdk/openadsdk/core/video/a/c;Lcom/bytedance/sdk/openadsdk/TTFeedAd;)Landroid/content/Intent;

    move-result-object v0

    .line 103
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 104
    sput-boolean v7, Lcom/bytedance/sdk/openadsdk/core/aa;->a:Z

    goto :goto_3

    :cond_d
    move v0, v7

    .line 108
    goto/16 :goto_0
.end method
