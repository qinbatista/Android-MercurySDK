.class public Lcom/bytedance/sdk/openadsdk/h/s;
.super Ljava/lang/Object;
.source "UIUtils.java"


# direct methods
.method public static a(Landroid/content/Context;F)F
    .locals 2

    .prologue
    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 31
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    return v0
.end method

.method public static final a(Landroid/content/Context;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 45
    if-nez p0, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v0

    .line 48
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 49
    if-eqz v1, :cond_0

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0
.end method

.method public static final a(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 98
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/h/s;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static final a(Landroid/view/View;IIII)V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 62
    invoke-virtual {p0, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 64
    iget v1, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 65
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 66
    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, p3

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 67
    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, p4

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 69
    new-instance v1, Lcom/bytedance/sdk/openadsdk/h/g;

    invoke-direct {v1, v0, p0}, Lcom/bytedance/sdk/openadsdk/h/g;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 71
    return-void
.end method

.method private static a(Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;IIII)V
    .locals 2

    .prologue
    const/4 v1, -0x3

    .line 145
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v0, p2, :cond_1

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v0, p3, :cond_1

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-ne v0, p4, :cond_1

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-ne v0, p5, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    if-eq p2, v1, :cond_2

    .line 150
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 151
    :cond_2
    if-eq p3, v1, :cond_3

    .line 152
    iput p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 153
    :cond_3
    if-eq p4, v1, :cond_4

    .line 154
    iput p4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 155
    :cond_4
    if-eq p5, v1, :cond_5

    .line 156
    iput p5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 157
    :cond_5
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public static a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 113
    if-nez p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private static a(I)Z
    .locals 1

    .prologue
    .line 94
    if-eqz p0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;I)Z
    .locals 10

    .prologue
    .line 163
    if-nez p1, :cond_0

    .line 164
    const-string v0, "adView is null."

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/m;->a(Ljava/lang/String;)V

    .line 165
    const/4 v0, 0x0

    .line 226
    :goto_0
    return v0

    .line 168
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 169
    const-string v0, "adView has no parent."

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/m;->a(Ljava/lang/String;)V

    .line 170
    const/4 v0, 0x0

    goto :goto_0

    .line 173
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    const-string v0, "adView window is not set to VISIBLE."

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/m;->a(Ljava/lang/String;)V

    .line 175
    const/4 v0, 0x0

    goto :goto_0

    .line 178
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 179
    const-string v0, "adView is not set to VISIBLE."

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/m;->a(Ljava/lang/String;)V

    .line 180
    const/4 v0, 0x0

    goto :goto_0

    .line 183
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_8

    .line 184
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    const v1, 0x3f666666    # 0.9f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 185
    const-string v0, "adView is transparent."

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/m;->a(Ljava/lang/String;)V

    .line 186
    const/4 v0, 0x0

    goto :goto_0

    .line 189
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 191
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 193
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 201
    const/4 v4, 0x0

    aget v4, v2, v4

    if-ltz v4, :cond_7

    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v5, 0x0

    aget v5, v2, v5

    sub-int/2addr v4, v5

    if-lt v4, v0, :cond_7

    .line 202
    int-to-double v4, v1

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    int-to-double v8, p2

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    double-to-int v0, v4

    .line 203
    const/4 v4, 0x1

    aget v4, v2, v4

    if-gez v4, :cond_5

    const/4 v4, 0x1

    aget v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v4, v0, :cond_5

    .line 204
    const-string v0, "adView is not visible from the top."

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/m;->a(Ljava/lang/String;)V

    .line 205
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    const-string v0, "Cannot get location on screen."

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/m;->a(Ljava/lang/String;)V

    .line 197
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 208
    :cond_5
    const/4 v4, 0x1

    aget v2, v2, v4

    add-int/2addr v1, v2

    iget v2, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v1, v2

    if-le v1, v0, :cond_6

    .line 209
    const-string v0, "adView is not visible from the bottom."

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/m;->a(Ljava/lang/String;)V

    .line 210
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 213
    :cond_6
    const-string v0, "adView is visible."

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/m;->a(Ljava/lang/String;)V

    .line 214
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/h/s;->c(Landroid/content/Context;)Z

    move-result v0

    goto/16 :goto_0

    .line 217
    :cond_7
    const-string v0, "adView is not fully on screen horizontally."

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/m;->a(Ljava/lang/String;)V

    .line 218
    const/4 v0, 0x0

    .line 219
    goto/16 :goto_0

    .line 221
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adView has invisible dimensions (w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/m;->a(Ljava/lang/String;)V

    .line 223
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static a(Landroid/view/View;)[I
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 76
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 78
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 80
    :cond_0
    return-object v0
.end method

.method public static final b(Landroid/content/Context;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 53
    if-nez p0, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v0

    .line 56
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 57
    if-eqz v1, :cond_0

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0
.end method

.method public static b(Landroid/view/View;IIII)V
    .locals 6

    .prologue
    .line 134
    if-nez p0, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 137
    if-eqz v1, :cond_0

    .line 139
    instance-of v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 140
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;IIII)V

    goto :goto_0
.end method

.method public static b(Landroid/view/View;)[I
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    if-eqz p0, :cond_0

    .line 87
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 88
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    aput v2, v0, v1

    .line 89
    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    aput v2, v0, v1

    .line 91
    :cond_0
    return-object v0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 232
    :try_start_0
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 234
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 249
    :goto_0
    return v0

    .line 237
    :cond_0
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 240
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 241
    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adView exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/h/m;->a(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 247
    goto :goto_0

    .line 249
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final c(Landroid/view/View;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 105
    if-nez p0, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static d(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    .line 255
    if-nez p0, :cond_0

    .line 262
    :goto_0
    return-object v0

    .line 258
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 259
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 260
    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    .line 261
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method
