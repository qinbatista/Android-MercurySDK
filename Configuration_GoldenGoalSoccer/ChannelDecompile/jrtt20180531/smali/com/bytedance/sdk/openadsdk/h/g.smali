.class public Lcom/bytedance/sdk/openadsdk/h/g;
.super Landroid/view/TouchDelegate;
.source "HackTouchDelegate.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/graphics/Rect;

.field private c:Landroid/graphics/Rect;

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 80
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/g;->b:Landroid/graphics/Rect;

    .line 82
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/h/g;->e:I

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g;->c:Landroid/graphics/Rect;

    .line 84
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g;->c:Landroid/graphics/Rect;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/h/g;->e:I

    neg-int v1, v1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/h/g;->e:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 85
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/h/g;->a:Landroid/view/View;

    .line 86
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v3, v2

    .line 97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v4, v2

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v2, v1

    .line 131
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 132
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/g;->a:Landroid/view/View;

    .line 134
    if-eqz v0, :cond_3

    .line 136
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 143
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 144
    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 147
    :cond_1
    return v1

    .line 104
    :pswitch_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/g;->b:Landroid/graphics/Rect;

    .line 106
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 107
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/h/g;->d:Z

    move v2, v0

    .line 108
    goto :goto_0

    .line 112
    :cond_2
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/h/g;->d:Z

    move v2, v1

    .line 115
    goto :goto_0

    .line 118
    :pswitch_1
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/h/g;->d:Z

    .line 119
    if-eqz v2, :cond_0

    .line 120
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/h/g;->c:Landroid/graphics/Rect;

    .line 121
    invoke-virtual {v5, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 122
    goto :goto_0

    .line 127
    :pswitch_2
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/h/g;->d:Z

    .line 128
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/h/g;->d:Z

    goto :goto_0

    .line 140
    :cond_3
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/h/g;->e:I

    .line 141
    mul-int/lit8 v3, v0, 0x2

    neg-int v3, v3

    int-to-float v3, v3

    mul-int/lit8 v0, v0, 0x2

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v3, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_1

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
