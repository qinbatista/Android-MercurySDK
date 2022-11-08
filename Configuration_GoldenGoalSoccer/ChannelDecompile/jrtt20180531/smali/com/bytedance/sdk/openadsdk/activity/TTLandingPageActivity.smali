.class public Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;
.super Landroid/app/Activity;
.source "TTLandingPageActivity.java"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field protected a:Lcom/bytedance/sdk/openadsdk/core/v;

.field private c:Lcom/bytedance/sdk/openadsdk/activity/SSWebView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/content/Context;

.field private h:I

.field private i:Landroid/view/ViewStub;

.field private j:Landroid/view/ViewStub;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->g:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 111
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->browser_webview:I

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/activity/SSWebView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->c:Lcom/bytedance/sdk/openadsdk/activity/SSWebView;

    .line 112
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->browser_titlebar_view_stub:I

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->i:Landroid/view/ViewStub;

    .line 113
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->browser_titlebar_dark_view_stub:I

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->j:Landroid/view/ViewStub;

    .line 114
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->a()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->i()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 125
    :goto_0
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->titlebar_back:I

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->d:Landroid/widget/ImageView;

    .line 126
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$2;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    :cond_0
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->titlebar_close:I

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->e:Landroid/widget/ImageView;

    .line 141
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->e:Landroid/widget/ImageView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$3;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    :cond_1
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->titlebar_title:I

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->f:Landroid/widget/TextView;

    .line 151
    return-void

    .line 116
    :pswitch_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->i:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0

    .line 119
    :pswitch_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->j:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;)Lcom/bytedance/sdk/openadsdk/activity/SSWebView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->c:Lcom/bytedance/sdk/openadsdk/activity/SSWebView;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 154
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/v;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/v;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->a:Lcom/bytedance/sdk/openadsdk/core/v;

    .line 155
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->a:Lcom/bytedance/sdk/openadsdk/core/v;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->c:Lcom/bytedance/sdk/openadsdk/activity/SSWebView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/v;->a(Landroid/webkit/WebView;)Lcom/bytedance/sdk/openadsdk/core/v;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->k:Ljava/lang/String;

    .line 156
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/v;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/v;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->l:Ljava/lang/String;

    .line 157
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/v;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/v;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->m:I

    .line 158
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/v;->a(I)Lcom/bytedance/sdk/openadsdk/core/v;

    .line 159
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x0

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->a()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x280000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 75
    :cond_0
    sget v0, Lcom/bytedance/sdk/openadsdk/R$layout;->tt_activity_ttlandingpage:I

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->setContentView(I)V

    .line 76
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->a()V

    .line 77
    iput-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->g:Landroid/content/Context;

    .line 79
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/q;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Z)Lcom/bytedance/sdk/openadsdk/core/q;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->c:Lcom/bytedance/sdk/openadsdk/activity/SSWebView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Landroid/webkit/WebView;)V

    .line 80
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 81
    const-string v0, "sdk_version"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->h:I

    .line 82
    const-string v0, "adid"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->k:Ljava/lang/String;

    .line 83
    const-string v0, "log_extra"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->l:Ljava/lang/String;

    .line 84
    const-string v0, "source"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->m:I

    .line 85
    const-string v0, "url"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    const-string v0, "web_title"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    const-string v3, "icon_url"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->b()V

    .line 89
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->c:Lcom/bytedance/sdk/openadsdk/activity/SSWebView;

    new-instance v4, Lcom/bytedance/sdk/openadsdk/activity/b;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->g:Landroid/content/Context;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->a:Lcom/bytedance/sdk/openadsdk/core/v;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->k:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7}, Lcom/bytedance/sdk/openadsdk/activity/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/v;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/activity/SSWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 90
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->c:Lcom/bytedance/sdk/openadsdk/activity/SSWebView;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/activity/SSWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->c:Lcom/bytedance/sdk/openadsdk/activity/SSWebView;

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->h:I

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/h/j;->a(Landroid/webkit/WebView;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 92
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_1

    .line 93
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->c:Lcom/bytedance/sdk/openadsdk/activity/SSWebView;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/activity/SSWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 97
    :cond_1
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->c:Lcom/bytedance/sdk/openadsdk/activity/SSWebView;

    invoke-virtual {v3, v2}, Lcom/bytedance/sdk/openadsdk/activity/SSWebView;->loadUrl(Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->c:Lcom/bytedance/sdk/openadsdk/activity/SSWebView;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/activity/a;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->a:Lcom/bytedance/sdk/openadsdk/core/v;

    invoke-direct {v3, v4}, Lcom/bytedance/sdk/openadsdk/activity/a;-><init>(Lcom/bytedance/sdk/openadsdk/core/v;)V

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/activity/SSWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 99
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->c:Lcom/bytedance/sdk/openadsdk/activity/SSWebView;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$1;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/activity/SSWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 105
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->f:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 106
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->f:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/bytedance/sdk/openadsdk/R$string;->tt_web_title_default:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :cond_3
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 179
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 180
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->c:Lcom/bytedance/sdk/openadsdk/activity/SSWebView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ab;->a(Landroid/content/Context;Landroid/webkit/WebView;)V

    .line 181
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->c:Lcom/bytedance/sdk/openadsdk/activity/SSWebView;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ab;->a(Landroid/webkit/WebView;)V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->c:Lcom/bytedance/sdk/openadsdk/activity/SSWebView;

    .line 184
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->a:Lcom/bytedance/sdk/openadsdk/core/v;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->a:Lcom/bytedance/sdk/openadsdk/core/v;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/v;->d()V

    .line 187
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 172
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->a:Lcom/bytedance/sdk/openadsdk/core/v;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->a:Lcom/bytedance/sdk/openadsdk/core/v;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/v;->c()V

    .line 175
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 164
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->a:Lcom/bytedance/sdk/openadsdk/core/v;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->a:Lcom/bytedance/sdk/openadsdk/core/v;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/v;->b()V

    .line 167
    :cond_0
    return-void
.end method
