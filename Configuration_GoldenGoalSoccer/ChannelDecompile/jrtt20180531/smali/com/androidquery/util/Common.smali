.class public Lcom/androidquery/util/Common;
.super Ljava/lang/Object;
.source "Common.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/lang/Runnable;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;",
        "Ljava/lang/Runnable;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnLongClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "Landroid/text/TextWatcher;"
    }
.end annotation


# static fields
.field protected static final CLEAN_CACHE:I = 0x2

.field protected static final STORE_FILE:I = 0x1


# instance fields
.field private fallback:Z

.field private galleryListen:Z

.field private galleryListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private handler:Ljava/lang/Object;

.field private lastBottom:I

.field private method:Ljava/lang/String;

.field private methodId:I

.field private osl:Landroid/widget/AbsListView$OnScrollListener;

.field private params:[Ljava/lang/Object;

.field private scrollState:I

.field private sig:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput v0, p0, Lcom/androidquery/util/Common;->scrollState:I

    .line 422
    iput-boolean v0, p0, Lcom/androidquery/util/Common;->galleryListen:Z

    .line 50
    return-void
.end method

.method private checkScrolledBottom(Landroid/widget/AbsListView;I)V
    .locals 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 186
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    .line 187
    .local v0, "cc":I
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    .line 189
    .local v1, "last":I
    if-nez p2, :cond_1

    add-int/lit8 v2, v1, 0x1

    if-ne v0, v2, :cond_1

    .line 190
    iget v2, p0, Lcom/androidquery/util/Common;->lastBottom:I

    if-eq v1, v2, :cond_0

    .line 191
    iput v1, p0, Lcom/androidquery/util/Common;->lastBottom:I

    .line 192
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v2}, Lcom/androidquery/util/Common;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    const/4 v2, -0x1

    iput v2, p0, Lcom/androidquery/util/Common;->lastBottom:I

    goto :goto_0
.end method

.method private varargs invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 82
    iget-object v1, p0, Lcom/androidquery/util/Common;->method:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 84
    move-object v5, p1

    .line 85
    .local v5, "input":[Ljava/lang/Object;
    iget-object v1, p0, Lcom/androidquery/util/Common;->params:[Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 86
    iget-object v5, p0, Lcom/androidquery/util/Common;->params:[Ljava/lang/Object;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/androidquery/util/Common;->handler:Ljava/lang/Object;

    .line 90
    .local v0, "cbo":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 91
    move-object v0, p0

    .line 94
    .end local v0    # "cbo":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/androidquery/util/Common;->method:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/androidquery/util/Common;->fallback:Z

    iget-object v4, p0, Lcom/androidquery/util/Common;->sig:[Ljava/lang/Class;

    invoke-static/range {v0 .. v5}, Lcom/androidquery/util/AQUtility;->invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 112
    .end local v5    # "input":[Ljava/lang/Object;
    :goto_0
    return-object v6

    .line 96
    :cond_2
    iget v1, p0, Lcom/androidquery/util/Common;->methodId:I

    if-eqz v1, :cond_3

    .line 98
    iget v1, p0, Lcom/androidquery/util/Common;->methodId:I

    packed-switch v1, :pswitch_data_0

    .line 112
    :cond_3
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 101
    :pswitch_0
    iget-object v1, p0, Lcom/androidquery/util/Common;->params:[Ljava/lang/Object;

    aget-object v1, v1, v2

    check-cast v1, Ljava/io/File;

    iget-object v2, p0, Lcom/androidquery/util/Common;->params:[Ljava/lang/Object;

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v2, p0, Lcom/androidquery/util/Common;->params:[Ljava/lang/Object;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v8, v9, v2, v3}, Lcom/androidquery/util/AQUtility;->cleanCache(Ljava/io/File;JJ)V

    goto :goto_1

    .line 104
    :pswitch_1
    iget-object v1, p0, Lcom/androidquery/util/Common;->params:[Ljava/lang/Object;

    aget-object v1, v1, v2

    check-cast v1, Ljava/io/File;

    iget-object v2, p0, Lcom/androidquery/util/Common;->params:[Ljava/lang/Object;

    aget-object v2, v2, v3

    check-cast v2, [B

    invoke-static {v1, v2}, Lcom/androidquery/util/AQUtility;->store(Ljava/io/File;[B)V

    goto :goto_1

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onScrollStateChanged(Landroid/widget/ExpandableListView;I)V
    .locals 18
    .param p1, "elv"    # Landroid/widget/ExpandableListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 218
    const v5, 0x40ff0004

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v7}, Landroid/widget/ExpandableListView;->setTag(ILjava/lang/Object;)V

    .line 220
    if-nez p2, :cond_0

    .line 222
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ExpandableListView;->getFirstVisiblePosition()I

    move-result v9

    .line 223
    .local v9, "first":I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ExpandableListView;->getLastVisiblePosition()I

    move-result v11

    .line 225
    .local v11, "last":I
    sub-int v8, v11, v9

    .line 227
    .local v8, "count":I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v2

    .line 229
    .local v2, "ela":Landroid/widget/ExpandableListAdapter;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-le v10, v8, :cond_1

    .line 265
    .end local v2    # "ela":Landroid/widget/ExpandableListAdapter;
    .end local v8    # "count":I
    .end local v9    # "first":I
    .end local v10    # "i":I
    .end local v11    # "last":I
    :cond_0
    return-void

    .line 231
    .restart local v2    # "ela":Landroid/widget/ExpandableListAdapter;
    .restart local v8    # "count":I
    .restart local v9    # "first":I
    .restart local v10    # "i":I
    .restart local v11    # "last":I
    :cond_1
    add-int v5, v10, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v12

    .line 233
    .local v12, "packed":J
    invoke-static {v12, v13}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v3

    .line 234
    .local v3, "group":I
    invoke-static {v12, v13}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v4

    .line 236
    .local v4, "child":I
    if-ltz v3, :cond_2

    .line 238
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 239
    .local v6, "convertView":Landroid/view/View;
    const v5, 0x40ff0004

    invoke-virtual {v6, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    .line 241
    .local v14, "targetPacked":Ljava/lang/Long;
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v5, v16, v12

    if-nez v5, :cond_2

    .line 243
    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 245
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v5

    move-object/from16 v0, p1

    invoke-interface {v2, v3, v5, v6, v0}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 252
    :goto_1
    const v5, 0x40ff0004

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 229
    .end local v6    # "convertView":Landroid/view/View;
    .end local v14    # "targetPacked":Ljava/lang/Long;
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 249
    .restart local v6    # "convertView":Landroid/view/View;
    .restart local v14    # "targetPacked":Ljava/lang/Long;
    :cond_3
    invoke-interface {v2, v3}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_4

    const/4 v5, 0x1

    :goto_2
    move-object/from16 v7, p1

    invoke-interface/range {v2 .. v7}, Landroid/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private onScrollStateChanged2(Landroid/widget/AbsListView;I)V
    .locals 11
    .param p1, "lv"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    const v10, 0x40ff0004

    .line 270
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1, v10, v9}, Landroid/widget/AbsListView;->setTag(ILjava/lang/Object;)V

    .line 272
    if-nez p2, :cond_0

    .line 274
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    .line 275
    .local v2, "first":I
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v5

    .line 277
    .local v5, "last":I
    sub-int v1, v5, v2

    .line 279
    .local v1, "count":I
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    .line 281
    .local v4, "la":Landroid/widget/ListAdapter;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-le v3, v1, :cond_1

    .line 298
    .end local v1    # "count":I
    .end local v2    # "first":I
    .end local v3    # "i":I
    .end local v4    # "la":Landroid/widget/ListAdapter;
    .end local v5    # "last":I
    :cond_0
    return-void

    .line 283
    .restart local v1    # "count":I
    .restart local v2    # "first":I
    .restart local v3    # "i":I
    .restart local v4    # "la":Landroid/widget/ListAdapter;
    .restart local v5    # "last":I
    :cond_1
    add-int v9, v3, v2

    int-to-long v6, v9

    .line 285
    .local v6, "packed":J
    invoke-virtual {p1, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 286
    .local v0, "convertView":Landroid/view/View;
    invoke-virtual {v0, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    .line 288
    .local v8, "targetPacked":Ljava/lang/Number;
    if-eqz v8, :cond_2

    .line 289
    long-to-int v9, v6

    invoke-interface {v4, v9, v0, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 290
    const/4 v9, 0x0

    invoke-virtual {v0, v10, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 281
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static shouldDelay(IILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z
    .locals 10
    .param p0, "groupPosition"    # I
    .param p1, "childPosition"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    const v9, 0x40ff0004

    const v8, 0x40ff0002

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 303
    if-eqz p4, :cond_0

    invoke-static {p4}, Lcom/androidquery/callback/BitmapAjaxCallback;->isMemoryCached(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    move v5, v6

    .line 332
    :goto_0
    return v5

    :cond_1
    move-object v0, p3

    .line 307
    check-cast v0, Landroid/widget/AbsListView;

    .line 310
    .local v0, "lv":Landroid/widget/AbsListView;
    invoke-virtual {p3, v8}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$OnScrollListener;

    .line 312
    .local v4, "sl":Landroid/widget/AbsListView$OnScrollListener;
    if-nez v4, :cond_2

    .line 313
    new-instance v4, Lcom/androidquery/util/Common;

    .end local v4    # "sl":Landroid/widget/AbsListView$OnScrollListener;
    invoke-direct {v4}, Lcom/androidquery/util/Common;-><init>()V

    .line 314
    .restart local v4    # "sl":Landroid/widget/AbsListView$OnScrollListener;
    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 315
    invoke-virtual {p3, v8, v4}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 318
    :cond_2
    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 320
    .local v1, "scrollState":Ljava/lang/Integer;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v5, :cond_4

    :cond_3
    move v5, v6

    .line 321
    goto :goto_0

    .line 324
    :cond_4
    int-to-long v2, p1

    .line 325
    .local v2, "packed":J
    instance-of v6, p3, Landroid/widget/ExpandableListView;

    if-eqz v6, :cond_5

    .line 326
    invoke-static {p0, p1}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v2

    .line 328
    :cond_5
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p2, v9, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static shouldDelay(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z
    .locals 1
    .param p0, "position"    # I
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 337
    instance-of v0, p2, Landroid/widget/Gallery;

    if-eqz v0, :cond_0

    .line 338
    invoke-static {p0, p1, p2, p3}, Lcom/androidquery/util/Common;->shouldDelayGallery(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z

    move-result v0

    .line 340
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x2

    invoke-static {v0, p0, p1, p2, p3}, Lcom/androidquery/util/Common;->shouldDelay(IILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static shouldDelay(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;FZ)Z
    .locals 1
    .param p0, "convertView"    # Landroid/view/View;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "velocity"    # F
    .param p4, "fileCheck"    # Z

    .prologue
    .line 348
    const/4 v0, -0x1

    invoke-static {v0, p0, p1, p2}, Lcom/androidquery/util/Common;->shouldDelay(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static shouldDelayGallery(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z
    .locals 12
    .param p0, "position"    # I
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    const v11, 0x40ff0004

    const/4 v9, 0x0

    .line 354
    if-eqz p3, :cond_0

    invoke-static {p3}, Lcom/androidquery/callback/BitmapAjaxCallback;->isMemoryCached(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 399
    :cond_0
    :goto_0
    return v9

    :cond_1
    move-object v5, p2

    .line 358
    check-cast v5, Landroid/widget/Gallery;

    .line 360
    .local v5, "gallery":Landroid/widget/Gallery;
    invoke-virtual {v5, v11}, Landroid/widget/Gallery;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 362
    .local v7, "selected":Ljava/lang/Integer;
    if-nez v7, :cond_2

    .line 364
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 365
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v11, v10}, Landroid/widget/Gallery;->setTag(ILjava/lang/Object;)V

    .line 367
    invoke-virtual {v5, v9}, Landroid/widget/Gallery;->setCallbackDuringFling(Z)V

    .line 369
    new-instance v0, Lcom/androidquery/util/Common;

    invoke-direct {v0}, Lcom/androidquery/util/Common;-><init>()V

    .line 370
    .local v0, "common":Lcom/androidquery/util/Common;
    invoke-virtual {v0, v5}, Lcom/androidquery/util/Common;->listen(Landroid/widget/Gallery;)V

    .line 374
    .end local v0    # "common":Lcom/androidquery/util/Common;
    :cond_2
    invoke-virtual {v5}, Landroid/widget/Gallery;->getFirstVisiblePosition()I

    move-result v3

    .line 375
    .local v3, "first":I
    invoke-virtual {v5}, Landroid/widget/Gallery;->getLastVisiblePosition()I

    move-result v6

    .line 377
    .local v6, "last":I
    sub-int v2, v6, v3

    .line 378
    .local v2, "diff":I
    div-int/lit8 v10, v2, 0x2

    add-int/lit8 v1, v10, 0x1

    .line 380
    .local v1, "delta":I
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sub-int v4, v10, v1

    .line 381
    .local v4, "from":I
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int v8, v10, v1

    .line 383
    .local v8, "to":I
    if-gez v4, :cond_3

    .line 385
    sub-int/2addr v8, v4

    .line 386
    const/4 v4, 0x0

    .line 389
    :cond_3
    if-lt p0, v4, :cond_4

    if-gt p0, v8, :cond_4

    .line 392
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p1, v11, v10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 398
    :cond_4
    const/4 v9, 0x0

    invoke-virtual {p1, v11, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 399
    const/4 v9, 0x1

    goto :goto_0
.end method

.method public static showProgress(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 9
    .param p0, "p"    # Ljava/lang/Object;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "show"    # Z

    .prologue
    const v8, 0x40ff0001

    const/4 v7, 0x0

    .line 489
    if-eqz p0, :cond_1

    .line 491
    instance-of v6, p0, Landroid/view/View;

    if-eqz v6, :cond_5

    move-object v4, p0

    .line 493
    check-cast v4, Landroid/view/View;

    .line 495
    .local v4, "pv":Landroid/view/View;
    const/4 v2, 0x0

    .line 497
    .local v2, "pbar":Landroid/widget/ProgressBar;
    instance-of v6, p0, Landroid/widget/ProgressBar;

    if-eqz v6, :cond_0

    move-object v2, p0

    .line 498
    check-cast v2, Landroid/widget/ProgressBar;

    .line 501
    :cond_0
    if-eqz p2, :cond_2

    .line 502
    invoke-virtual {v4, v8, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 503
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 504
    if-eqz v2, :cond_1

    .line 505
    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 506
    const/16 v6, 0x64

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 543
    .end local v2    # "pbar":Landroid/widget/ProgressBar;
    .end local v4    # "pv":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 510
    .restart local v2    # "pbar":Landroid/widget/ProgressBar;
    .restart local v4    # "pv":Landroid/view/View;
    :cond_2
    invoke-virtual {v4, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    .line 511
    .local v5, "tag":Ljava/lang/Object;
    if-eqz v5, :cond_3

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 512
    :cond_3
    const/4 v6, 0x0

    invoke-virtual {v4, v8, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 514
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 515
    :cond_4
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 519
    .end local v2    # "pbar":Landroid/widget/ProgressBar;
    .end local v4    # "pv":Landroid/view/View;
    .end local v5    # "tag":Ljava/lang/Object;
    :cond_5
    instance-of v6, p0, Landroid/app/Dialog;

    if-eqz v6, :cond_7

    move-object v3, p0

    .line 521
    check-cast v3, Landroid/app/Dialog;

    .line 523
    .local v3, "pd":Landroid/app/Dialog;
    new-instance v1, Lcom/androidquery/AQuery;

    invoke-virtual {v3}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    .line 525
    .local v1, "aq":Lcom/androidquery/AQuery;
    if-eqz p2, :cond_6

    .line 526
    invoke-virtual {v1, v3}, Lcom/androidquery/AQuery;->show(Landroid/app/Dialog;)Lcom/androidquery/AbstractAQuery;

    goto :goto_0

    .line 528
    :cond_6
    invoke-virtual {v1, v3}, Lcom/androidquery/AQuery;->dismiss(Landroid/app/Dialog;)Lcom/androidquery/AbstractAQuery;

    goto :goto_0

    .line 531
    .end local v1    # "aq":Lcom/androidquery/AQuery;
    .end local v3    # "pd":Landroid/app/Dialog;
    :cond_7
    instance-of v6, p0, Landroid/app/Activity;

    if-eqz v6, :cond_1

    move-object v0, p0

    .line 533
    check-cast v0, Landroid/app/Activity;

    .line 534
    .local v0, "act":Landroid/app/Activity;
    invoke-virtual {v0, p2}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 535
    invoke-virtual {v0, p2}, Landroid/app/Activity;->setProgressBarVisibility(Z)V

    .line 537
    if-eqz p2, :cond_1

    .line 538
    invoke-virtual {v0, v7}, Landroid/app/Activity;->setProgress(I)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 406
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 412
    return-void
.end method

.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 5
    .param p1, "f1"    # Ljava/io/File;
    .param p2, "f2"    # Ljava/io/File;

    .prologue
    .line 119
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 120
    .local v0, "m1":J
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 122
    .local v2, "m2":J
    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    .line 123
    const/4 v4, 0x1

    .line 127
    :goto_0
    return v4

    .line 124
    :cond_0
    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    .line 125
    const/4 v4, 0x0

    goto :goto_0

    .line 127
    :cond_1
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/androidquery/util/Common;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public forward(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;)Lcom/androidquery/util/Common;
    .locals 0
    .param p1, "handler"    # Ljava/lang/Object;
    .param p2, "callback"    # Ljava/lang/String;
    .param p3, "fallback"    # Z
    .param p4, "sig"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/androidquery/util/Common;"
        }
    .end annotation

    .prologue
    .line 62
    iput-object p1, p0, Lcom/androidquery/util/Common;->handler:Ljava/lang/Object;

    .line 63
    iput-object p2, p0, Lcom/androidquery/util/Common;->method:Ljava/lang/String;

    .line 64
    iput-boolean p3, p0, Lcom/androidquery/util/Common;->fallback:Z

    .line 65
    iput-object p4, p0, Lcom/androidquery/util/Common;->sig:[Ljava/lang/Class;

    .line 67
    return-object p0
.end method

.method public forward(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/androidquery/util/Common;->osl:Landroid/widget/AbsListView$OnScrollListener;

    .line 181
    return-void
.end method

.method public getScrollState()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/androidquery/util/Common;->scrollState:I

    return v0
.end method

.method public listen(Landroid/widget/Gallery;)V
    .locals 1
    .param p1, "gallery"    # Landroid/widget/Gallery;

    .prologue
    .line 426
    invoke-virtual {p1}, Landroid/widget/Gallery;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    iput-object v0, p0, Lcom/androidquery/util/Common;->galleryListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 427
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androidquery/util/Common;->galleryListen:Z

    .line 429
    invoke-virtual {p1, p0}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 430
    return-void
.end method

.method public varargs method(I[Ljava/lang/Object;)Lcom/androidquery/util/Common;
    .locals 0
    .param p1, "methodId"    # I
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 73
    iput p1, p0, Lcom/androidquery/util/Common;->methodId:I

    .line 74
    iput-object p2, p0, Lcom/androidquery/util/Common;->params:[Ljava/lang/Object;

    .line 76
    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 145
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/androidquery/util/Common;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "v"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/androidquery/util/Common;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 16
    .param p2, "v"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 435
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/androidquery/util/Common;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidquery/util/Common;->galleryListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v2, :cond_0

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidquery/util/Common;->galleryListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    invoke-interface/range {v2 .. v7}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 441
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/androidquery/util/Common;->galleryListen:Z

    if-eqz v2, :cond_1

    .line 443
    const v2, 0x40ff0004

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->getTag(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 445
    .local v15, "selected":Ljava/lang/Integer;
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v0, p3

    if-eq v2, v0, :cond_1

    .line 447
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v8

    .line 448
    .local v8, "adapter":Landroid/widget/Adapter;
    const v2, 0x40ff0004

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/widget/AdapterView;->setTag(ILjava/lang/Object;)V

    .line 450
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v10

    .line 454
    .local v10, "count":I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v12

    .line 456
    .local v12, "first":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-lt v13, v10, :cond_2

    .line 475
    .end local v8    # "adapter":Landroid/widget/Adapter;
    .end local v10    # "count":I
    .end local v12    # "first":I
    .end local v13    # "i":I
    .end local v15    # "selected":Ljava/lang/Integer;
    :cond_1
    return-void

    .line 457
    .restart local v8    # "adapter":Landroid/widget/Adapter;
    .restart local v10    # "count":I
    .restart local v12    # "first":I
    .restart local v13    # "i":I
    .restart local v15    # "selected":Ljava/lang/Integer;
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 459
    .local v9, "convertView":Landroid/view/View;
    add-int v11, v12, v13

    .line 461
    .local v11, "drawPos":I
    const v2, 0x40ff0004

    invoke-virtual {v9, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 463
    .local v14, "lastDrawn":Ljava/lang/Integer;
    if-eqz v14, :cond_3

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v11, :cond_4

    .line 467
    :cond_3
    move-object/from16 v0, p1

    invoke-interface {v8, v11, v9, v0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 456
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 150
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-direct {p0, v2}, Lcom/androidquery/util/Common;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 151
    .local v0, "result":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 152
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "result":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 154
    :cond_0
    return v1
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 481
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/androidquery/util/Common;->galleryListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/androidquery/util/Common;->galleryListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p1}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    .line 485
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "first"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 169
    iget v0, p0, Lcom/androidquery/util/Common;->scrollState:I

    invoke-direct {p0, p1, v0}, Lcom/androidquery/util/Common;->checkScrolledBottom(Landroid/widget/AbsListView;I)V

    .line 171
    iget-object v0, p0, Lcom/androidquery/util/Common;->osl:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidquery/util/Common;->osl:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 173
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 203
    iput p2, p0, Lcom/androidquery/util/Common;->scrollState:I

    .line 205
    invoke-direct {p0, p1, p2}, Lcom/androidquery/util/Common;->checkScrolledBottom(Landroid/widget/AbsListView;I)V

    .line 207
    instance-of v0, p1, Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 208
    check-cast v0, Landroid/widget/ExpandableListView;

    invoke-direct {p0, v0, p2}, Lcom/androidquery/util/Common;->onScrollStateChanged(Landroid/widget/ExpandableListView;I)V

    .line 213
    :goto_0
    iget-object v0, p0, Lcom/androidquery/util/Common;->osl:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidquery/util/Common;->osl:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 214
    :cond_0
    return-void

    .line 210
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/androidquery/util/Common;->onScrollStateChanged2(Landroid/widget/AbsListView;I)V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 418
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/androidquery/util/Common;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/androidquery/util/Common;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    return-void
.end method
