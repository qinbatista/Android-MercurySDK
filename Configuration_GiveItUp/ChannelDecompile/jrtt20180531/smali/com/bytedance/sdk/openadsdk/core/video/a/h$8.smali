.class Lcom/bytedance/sdk/openadsdk/core/video/a/h$8;
.super Ljava/lang/Object;
.source "NativeVideoLayout.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/a/h;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/video/a/h;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/a/h;)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h$8;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h$8;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->d(Lcom/bytedance/sdk/openadsdk/core/video/a/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h$8;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->e(Lcom/bytedance/sdk/openadsdk/core/video/a/h;)Lcom/bytedance/sdk/openadsdk/core/video/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h$8;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-interface {v0, v1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/a/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/a/b;IZ)V

    .line 416
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .prologue
    .line 402
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h$8;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->f(Lcom/bytedance/sdk/openadsdk/core/video/a/h;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h$8;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->b(Lcom/bytedance/sdk/openadsdk/core/video/a/h;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 403
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/bytedance/sdk/openadsdk/R$drawable;->tt_seek_thumb_press:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h$8;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->d(Lcom/bytedance/sdk/openadsdk/core/video/a/h;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 407
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h$8;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->e(Lcom/bytedance/sdk/openadsdk/core/video/a/h;)Lcom/bytedance/sdk/openadsdk/core/video/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h$8;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/a/d;->b(Lcom/bytedance/sdk/openadsdk/core/video/a/b;I)V

    .line 409
    :cond_1
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .prologue
    .line 391
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h$8;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->f(Lcom/bytedance/sdk/openadsdk/core/video/a/h;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h$8;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->b(Lcom/bytedance/sdk/openadsdk/core/video/a/h;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 392
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/bytedance/sdk/openadsdk/R$drawable;->tt_seek_thumb_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h$8;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->d(Lcom/bytedance/sdk/openadsdk/core/video/a/h;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 396
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h$8;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->e(Lcom/bytedance/sdk/openadsdk/core/video/a/h;)Lcom/bytedance/sdk/openadsdk/core/video/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h$8;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/a/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/a/b;I)V

    .line 398
    :cond_1
    return-void
.end method
