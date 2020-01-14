.class Lcom/bytedance/sdk/openadsdk/core/video/a/h$9;
.super Ljava/lang/Object;
.source "NativeVideoLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/video/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

.field private b:F


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/a/h;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h$9;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 430
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 431
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 449
    :goto_0
    return v2

    .line 433
    :pswitch_0
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h$9;->b:F

    goto :goto_0

    .line 436
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 439
    :pswitch_2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h$9;->b:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h$9;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a(Lcom/bytedance/sdk/openadsdk/core/video/a/h;Z)Z

    goto :goto_0

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/h$9;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a(Lcom/bytedance/sdk/openadsdk/core/video/a/h;Z)Z

    goto :goto_0

    .line 446
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 431
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
