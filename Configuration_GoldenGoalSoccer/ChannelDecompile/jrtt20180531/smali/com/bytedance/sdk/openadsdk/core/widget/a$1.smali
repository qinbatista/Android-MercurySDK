.class Lcom/bytedance/sdk/openadsdk/core/widget/a$1;
.super Ljava/lang/Object;
.source "VideoOnTouchLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/widget/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/a;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    .prologue
    const/high16 v9, 0x41a00000    # 20.0f

    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 85
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a(Lcom/bytedance/sdk/openadsdk/core/widget/a;)Lcom/bytedance/sdk/openadsdk/core/widget/a$a;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/a$a;->q()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 86
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->b(Lcom/bytedance/sdk/openadsdk/core/widget/a;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->c(Lcom/bytedance/sdk/openadsdk/core/widget/a;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 157
    :cond_1
    :goto_0
    return v0

    .line 88
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 89
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 90
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 157
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->b(Lcom/bytedance/sdk/openadsdk/core/widget/a;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->c(Lcom/bytedance/sdk/openadsdk/core/widget/a;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_4
    move v0, v1

    goto :goto_0

    .line 92
    :pswitch_0
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-static {v5, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a(Lcom/bytedance/sdk/openadsdk/core/widget/a;Landroid/view/MotionEvent;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a(Lcom/bytedance/sdk/openadsdk/core/widget/a;Z)Z

    .line 93
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-static {v4, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a(Lcom/bytedance/sdk/openadsdk/core/widget/a;F)F

    .line 94
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-static {v4, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->b(Lcom/bytedance/sdk/openadsdk/core/widget/a;F)F

    .line 95
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    float-to-int v2, v2

    invoke-static {v4, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a(Lcom/bytedance/sdk/openadsdk/core/widget/a;I)I

    .line 96
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    float-to-int v3, v3

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->b(Lcom/bytedance/sdk/openadsdk/core/widget/a;I)I

    .line 97
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->b(Lcom/bytedance/sdk/openadsdk/core/widget/a;Z)Z

    .line 98
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a(Lcom/bytedance/sdk/openadsdk/core/widget/a;)Lcom/bytedance/sdk/openadsdk/core/widget/a$a;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->c(Lcom/bytedance/sdk/openadsdk/core/widget/a;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->b(Lcom/bytedance/sdk/openadsdk/core/widget/a;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 99
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a(Lcom/bytedance/sdk/openadsdk/core/widget/a;)Lcom/bytedance/sdk/openadsdk/core/widget/a$a;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/a$a;->a(Landroid/view/View;Z)V

    goto :goto_1

    .line 103
    :pswitch_1
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->b(Lcom/bytedance/sdk/openadsdk/core/widget/a;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->d(Lcom/bytedance/sdk/openadsdk/core/widget/a;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 106
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->e(Lcom/bytedance/sdk/openadsdk/core/widget/a;)F

    move-result v4

    sub-float v4, v2, v4

    .line 107
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->f(Lcom/bytedance/sdk/openadsdk/core/widget/a;)F

    move-result v5

    sub-float v5, v3, v5

    .line 108
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 109
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 111
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->g(Lcom/bytedance/sdk/openadsdk/core/widget/a;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 112
    cmpl-float v7, v6, v9

    if-gtz v7, :cond_5

    cmpl-float v7, v5, v9

    if-lez v7, :cond_9

    .line 113
    :cond_5
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-static {v7, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->c(Lcom/bytedance/sdk/openadsdk/core/widget/a;Z)Z

    .line 118
    :cond_6
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a(Lcom/bytedance/sdk/openadsdk/core/widget/a;)Lcom/bytedance/sdk/openadsdk/core/widget/a$a;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 119
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a(Lcom/bytedance/sdk/openadsdk/core/widget/a;)Lcom/bytedance/sdk/openadsdk/core/widget/a$a;

    move-result-object v7

    invoke-interface {v7}, Lcom/bytedance/sdk/openadsdk/core/widget/a$a;->o()V

    .line 121
    :cond_7
    cmpl-float v5, v6, v5

    if-lez v5, :cond_8

    .line 122
    cmpl-float v5, v4, v8

    if-lez v5, :cond_a

    .line 123
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-static {v4, v6}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->c(Lcom/bytedance/sdk/openadsdk/core/widget/a;F)V

    .line 128
    :cond_8
    :goto_2
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-static {v4, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a(Lcom/bytedance/sdk/openadsdk/core/widget/a;F)F

    .line 129
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->b(Lcom/bytedance/sdk/openadsdk/core/widget/a;F)F

    goto/16 :goto_1

    :cond_9
    move v0, v1

    .line 115
    goto/16 :goto_0

    .line 124
    :cond_a
    cmpg-float v4, v4, v8

    if-gez v4, :cond_8

    .line 125
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-static {v4, v6}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->d(Lcom/bytedance/sdk/openadsdk/core/widget/a;F)V

    goto :goto_2

    .line 132
    :pswitch_2
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->h(Lcom/bytedance/sdk/openadsdk/core/widget/a;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v9

    if-gtz v2, :cond_b

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    .line 133
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->i(Lcom/bytedance/sdk/openadsdk/core/widget/a;)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v9

    if-lez v2, :cond_c

    .line 134
    :cond_b
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->b(Lcom/bytedance/sdk/openadsdk/core/widget/a;Z)Z

    .line 136
    :cond_c
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->b(Lcom/bytedance/sdk/openadsdk/core/widget/a;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 137
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->b(Lcom/bytedance/sdk/openadsdk/core/widget/a;Z)Z

    .line 139
    :cond_d
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->c(Lcom/bytedance/sdk/openadsdk/core/widget/a;Z)Z

    .line 140
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-static {v2, v8}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a(Lcom/bytedance/sdk/openadsdk/core/widget/a;F)F

    .line 141
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-static {v2, v8}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->b(Lcom/bytedance/sdk/openadsdk/core/widget/a;F)F

    .line 142
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a(Lcom/bytedance/sdk/openadsdk/core/widget/a;I)I

    .line 143
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a(Lcom/bytedance/sdk/openadsdk/core/widget/a;)Lcom/bytedance/sdk/openadsdk/core/widget/a$a;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 144
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a(Lcom/bytedance/sdk/openadsdk/core/widget/a;)Lcom/bytedance/sdk/openadsdk/core/widget/a$a;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->j(Lcom/bytedance/sdk/openadsdk/core/widget/a;)Z

    move-result v3

    invoke-interface {v2, p1, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/a$a;->a(Landroid/view/View;Z)V

    .line 146
    :cond_e
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a(Lcom/bytedance/sdk/openadsdk/core/widget/a;)Lcom/bytedance/sdk/openadsdk/core/widget/a$a;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 147
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a(Lcom/bytedance/sdk/openadsdk/core/widget/a;)Lcom/bytedance/sdk/openadsdk/core/widget/a$a;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->k(Lcom/bytedance/sdk/openadsdk/core/widget/a;)J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/widget/a$a;->b(J)V

    .line 149
    :cond_f
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a(Lcom/bytedance/sdk/openadsdk/core/widget/a;Z)Z

    goto/16 :goto_1

    .line 152
    :pswitch_3
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a(Lcom/bytedance/sdk/openadsdk/core/widget/a;Z)Z

    goto/16 :goto_1

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
