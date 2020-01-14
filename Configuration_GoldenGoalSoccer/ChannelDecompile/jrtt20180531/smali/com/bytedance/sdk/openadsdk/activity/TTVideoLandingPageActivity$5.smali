.class Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$5;
.super Ljava/lang/Object;
.source "TTVideoLandingPageActivity.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/video/a/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 5

    .prologue
    const/16 v1, 0x8

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 307
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;Z)Z

    .line 308
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    if-eqz p1, :cond_1

    .line 311
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->c(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;)Lcom/bytedance/sdk/openadsdk/activity/SSWebView;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/view/View;I)V

    .line 312
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->d(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/view/View;I)V

    .line 314
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->e(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 315
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;I)I

    .line 316
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->b(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;I)I

    .line 317
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->c(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;I)I

    .line 318
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->d(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;I)I

    .line 319
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 320
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 321
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 322
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 323
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->e(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->c(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;)Lcom/bytedance/sdk/openadsdk/activity/SSWebView;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/view/View;I)V

    .line 327
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->d(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/view/View;I)V

    .line 328
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->e(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 329
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->f(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 330
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->g(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 331
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->h(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 332
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->i(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 333
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->e(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
