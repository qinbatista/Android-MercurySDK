.class public Lcom/androidquery/callback/DrawableAjaxCallback;
.super Lcom/androidquery/callback/AbstractAjaxCallback;
.source "DrawableAjaxCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidquery/callback/AbstractAjaxCallback",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        "Lcom/androidquery/callback/DrawableAjaxCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:Z

.field private static g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/widget/ImageView;",
            "Lcom/androidquery/callback/DrawableAjaxCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private static x:Landroid/graphics/Bitmap;

.field private static y:Landroid/graphics/Bitmap;


# instance fields
.field private k:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:I

.field private n:Ljava/io/File;

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:I

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:F

.field private s:I

.field private t:Z

.field private u:F

.field private v:Z

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v0, 0x14

    const/4 v1, 0x1

    .line 69
    sput v0, Lcom/androidquery/callback/DrawableAjaxCallback;->a:I

    .line 70
    sput v0, Lcom/androidquery/callback/DrawableAjaxCallback;->b:I

    .line 71
    const/16 v0, 0x9c4

    sput v0, Lcom/androidquery/callback/DrawableAjaxCallback;->c:I

    .line 72
    const v0, 0x27100

    sput v0, Lcom/androidquery/callback/DrawableAjaxCallback;->d:I

    .line 73
    const v0, 0xf4240

    sput v0, Lcom/androidquery/callback/DrawableAjaxCallback;->e:I

    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Lcom/androidquery/callback/DrawableAjaxCallback;->f:Z

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/androidquery/callback/DrawableAjaxCallback;->j:Ljava/util/HashMap;

    .line 569
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/androidquery/callback/DrawableAjaxCallback;->x:Landroid/graphics/Bitmap;

    .line 574
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/androidquery/callback/DrawableAjaxCallback;->y:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 101
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;-><init>()V

    .line 92
    iput-boolean v1, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->t:Z

    .line 93
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->u:F

    .line 102
    const-class v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/androidquery/callback/DrawableAjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/DrawableAjaxCallback;

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/DrawableAjaxCallback;->memCache(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/DrawableAjaxCallback;

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/DrawableAjaxCallback;->fileCache(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/DrawableAjaxCallback;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/DrawableAjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    return-void
.end method

.method private static a(II)I
    .locals 3

    .prologue
    .line 447
    const/4 v1, 0x1

    .line 449
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 451
    mul-int/lit8 v2, p1, 0x2

    if-ge p0, v2, :cond_1

    .line 460
    :cond_0
    return v1

    .line 455
    :cond_1
    div-int/lit8 p0, p0, 0x2

    .line 456
    mul-int/lit8 v1, v1, 0x2

    .line 449
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1126
    if-nez p0, :cond_0

    .line 1127
    const/4 v0, 0x0

    .line 1146
    :goto_0
    return-object v0

    .line 1129
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1130
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1133
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 1134
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v7, v7, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1135
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 1136
    int-to-float v5, p1

    .line 1138
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1139
    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 1140
    const v6, -0xbdbdbe

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1141
    invoke-virtual {v1, v4, v5, v5, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1143
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1144
    invoke-virtual {v1, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 309
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 337
    :cond_0
    :goto_0
    return-object p1

    .line 316
    :cond_1
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 317
    const-string v2, "Orientation"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 323
    :goto_1
    if-lez v0, :cond_0

    .line 325
    invoke-static {v0}, Lcom/androidquery/callback/DrawableAjaxCallback;->a(I)Landroid/graphics/Matrix;

    move-result-object v5

    .line 326
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 328
    const-string v1, "before"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 329
    const-string v1, "after"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 331
    if-eq p1, v0, :cond_2

    .line 332
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    move-object p1, v0

    goto :goto_0

    .line 318
    :catch_0
    move-exception v0

    .line 320
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    move v0, v6

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 275
    .line 277
    if-nez p1, :cond_0

    .line 278
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 281
    :cond_0
    invoke-static {}, Lcom/androidquery/callback/DrawableAjaxCallback;->a()Z

    move-result v0

    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 288
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 290
    const/4 v3, 0x0

    invoke-static {v0, v3, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 292
    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 293
    :try_start_2
    invoke-static {p0, v0}, Lcom/androidquery/callback/DrawableAjaxCallback;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 300
    :cond_1
    invoke-static {v2}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    .line 303
    :goto_0
    return-object v0

    .line 297
    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 298
    :goto_1
    :try_start_3
    invoke-static {v1}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 300
    invoke-static {v2}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_2
    invoke-static {v2}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 297
    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;[BLandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 247
    const/4 v0, 0x0

    .line 250
    if-eqz p0, :cond_2

    .line 252
    invoke-static {p0, p2, p3}, Lcom/androidquery/callback/DrawableAjaxCallback;->a(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 260
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    iget-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez v1, :cond_1

    .line 261
    const-string v1, "decode image failed"

    invoke-static {v1, p0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 264
    :cond_1
    return-object v0

    .line 254
    :cond_2
    if-eqz p1, :cond_0

    .line 256
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(I)Landroid/graphics/Matrix;
    .locals 6

    .prologue
    const/high16 v5, 0x43340000    # 180.0f

    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    .line 342
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 343
    packed-switch p0, :pswitch_data_0

    .line 371
    :goto_0
    return-object v0

    .line 345
    :pswitch_0
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_0

    .line 348
    :pswitch_1
    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 351
    :pswitch_2
    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 352
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 355
    :pswitch_3
    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 356
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 359
    :pswitch_4
    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 362
    :pswitch_5
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 363
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 366
    :pswitch_6
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 343
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static a(Landroid/view/View;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 850
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 851
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 853
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/androidquery/callback/DrawableAjaxCallback;->x:Landroid/graphics/Bitmap;

    if-eq v0, v1, :cond_0

    .line 854
    const/4 v0, 0x0

    .line 857
    :cond_0
    if-eqz v0, :cond_2

    .line 858
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 867
    :cond_1
    :goto_0
    return-object p1

    .line 859
    :cond_2
    const/4 v0, -0x2

    if-ne p2, v0, :cond_3

    .line 860
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 861
    :cond_3
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 862
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private static a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FF)Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 911
    .line 913
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    .line 914
    new-instance v0, Lcom/androidquery/util/RatioDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v2, p1

    move-object v3, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/androidquery/util/RatioDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/widget/ImageView;FF)V

    .line 919
    :goto_0
    return-object v0

    .line 916
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 761
    invoke-static {p0, p1, p2}, Lcom/androidquery/callback/DrawableAjaxCallback;->b(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 763
    invoke-static {}, Lcom/androidquery/callback/DrawableAjaxCallback;->c()Ljava/util/Map;

    move-result-object v0

    .line 764
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 766
    if-nez v0, :cond_0

    .line 767
    invoke-static {}, Lcom/androidquery/callback/DrawableAjaxCallback;->d()Ljava/util/Map;

    move-result-object v0

    .line 768
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 771
    :cond_0
    if-nez v0, :cond_1

    .line 772
    invoke-static {}, Lcom/androidquery/callback/DrawableAjaxCallback;->e()Ljava/util/Map;

    move-result-object v0

    .line 773
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 775
    if-eqz v0, :cond_1

    .line 777
    invoke-static {}, Lcom/androidquery/callback/DrawableAjaxCallback;->getLastStatus()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    .line 778
    sput-object v1, Lcom/androidquery/callback/DrawableAjaxCallback;->i:Ljava/util/Map;

    move-object v0, v1

    .line 785
    :cond_1
    return-object v0
.end method

.method private a(Ljava/lang/String;[B)Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 464
    iget v2, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->l:I

    iget-boolean v3, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->t:Z

    iget v4, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->s:I

    iget-boolean v5, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->w:Z

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/androidquery/callback/DrawableAjaxCallback;->getResizedImage(Ljava/lang/String;[BIZIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;[BIZIZ)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 409
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 441
    :cond_0
    :goto_0
    return-object v1

    .line 413
    :cond_1
    if-lez p2, :cond_4

    .line 415
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 416
    const/4 v0, 0x1

    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 418
    invoke-static {p0, p1, v2, p5}, Lcom/androidquery/callback/DrawableAjaxCallback;->a(Ljava/lang/String;[BLandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    .line 420
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 421
    if-nez p3, :cond_2

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 422
    :cond_2
    invoke-static {v0, p2}, Lcom/androidquery/callback/DrawableAjaxCallback;->a(II)I

    move-result v2

    .line 424
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 425
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 431
    :goto_1
    :try_start_0
    invoke-static {p0, p1, v0, p5}, Lcom/androidquery/callback/DrawableAjaxCallback;->a(Ljava/lang/String;[BLandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 437
    :goto_2
    if-lez p4, :cond_3

    .line 438
    invoke-static {v0, p4}, Lcom/androidquery/callback/DrawableAjaxCallback;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 441
    :cond_3
    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 432
    :catch_0
    move-exception v0

    .line 433
    invoke-static {}, Lcom/androidquery/callback/DrawableAjaxCallback;->clearCache()V

    .line 434
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method private static a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIFFI)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 925
    invoke-static {p0, p1, p3}, Lcom/androidquery/callback/DrawableAjaxCallback;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 926
    if-nez v0, :cond_0

    .line 927
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 968
    :goto_0
    return-void

    .line 931
    :cond_0
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 932
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p0, v0, p5, p6}, Lcom/androidquery/callback/DrawableAjaxCallback;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 939
    :cond_1
    invoke-static {p4, p7}, Lcom/androidquery/callback/DrawableAjaxCallback;->b(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 940
    if-nez p2, :cond_2

    .line 941
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 942
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 943
    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 960
    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 962
    if-eqz v0, :cond_4

    .line 963
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 964
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 945
    :cond_2
    instance-of v1, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_5

    .line 946
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {p0, v1, p5, p6}, Lcom/androidquery/callback/DrawableAjaxCallback;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 947
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    aput-object v0, v3, v5

    .line 948
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 949
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 950
    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    move-object v1, v0

    move-object v0, v2

    .line 952
    goto :goto_1

    .line 956
    :cond_3
    if-lez p4, :cond_5

    .line 957
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1

    .line 966
    :cond_4
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_5
    move-object v1, v0

    move-object v0, v2

    goto :goto_1
.end method

.method private a(Lcom/androidquery/callback/DrawableAjaxCallback;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 611
    if-eqz p3, :cond_0

    if-nez p1, :cond_1

    .line 624
    :cond_0
    :goto_0
    return-void

    .line 613
    :cond_1
    const v0, 0x40ff0001

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 615
    instance-of v0, p3, Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 616
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/androidquery/callback/DrawableAjaxCallback;->a(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/androidquery/callback/AjaxStatus;)V

    .line 623
    :cond_2
    :goto_1
    invoke-virtual {p1, v1}, Lcom/androidquery/callback/DrawableAjaxCallback;->showProgress(Z)V

    goto :goto_0

    .line 618
    :cond_3
    invoke-direct {p1, p2, p3, p4, v1}, Lcom/androidquery/callback/DrawableAjaxCallback;->a(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;IILandroid/graphics/drawable/Drawable;Z)V
    .locals 2

    .prologue
    .line 803
    if-nez p3, :cond_1

    .line 840
    :cond_0
    :goto_0
    return-void

    .line 806
    :cond_1
    instance-of v0, p3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_3

    move-object v0, p3

    .line 807
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 808
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    mul-int/2addr v0, v1

    .line 816
    :goto_1
    if-eqz p4, :cond_4

    .line 817
    invoke-static {}, Lcom/androidquery/callback/DrawableAjaxCallback;->e()Ljava/util/Map;

    move-result-object v0

    .line 824
    :goto_2
    if-gtz p1, :cond_2

    if-lez p2, :cond_6

    .line 826
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/androidquery/callback/DrawableAjaxCallback;->b(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 827
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 831
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 811
    :cond_3
    sget v0, Lcom/androidquery/callback/DrawableAjaxCallback;->d:I

    goto :goto_1

    .line 818
    :cond_4
    sget v1, Lcom/androidquery/callback/DrawableAjaxCallback;->c:I

    if-gt v0, v1, :cond_5

    .line 819
    invoke-static {}, Lcom/androidquery/callback/DrawableAjaxCallback;->d()Ljava/util/Map;

    move-result-object v0

    goto :goto_2

    .line 821
    :cond_5
    invoke-static {}, Lcom/androidquery/callback/DrawableAjaxCallback;->c()Ljava/util/Map;

    move-result-object v0

    goto :goto_2

    .line 835
    :cond_6
    invoke-interface {v0, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3

    .prologue
    const v2, 0x40ff0001

    const/4 v1, 0x1

    .line 873
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 875
    :cond_0
    invoke-virtual {p2, v2, p1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 877
    iget-object v0, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androidquery/callback/DrawableAjaxCallback;->cacheAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 878
    iget-object v0, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->q:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/androidquery/callback/DrawableAjaxCallback;->a(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    .line 885
    :cond_1
    :goto_0
    return-void

    .line 881
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/androidquery/callback/DrawableAjaxCallback;->a(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V
    .locals 8

    .prologue
    .line 892
    if-nez p3, :cond_1

    .line 893
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 907
    :cond_0
    :goto_0
    return-void

    .line 897
    :cond_1
    if-eqz p4, :cond_2

    .line 898
    instance-of v0, p3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 899
    check-cast p3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->r:F

    iget v2, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->u:F

    invoke-static {p2, v0, v1, v2}, Lcom/androidquery/callback/DrawableAjaxCallback;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 903
    :cond_2
    iget-object v0, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    if-eqz v0, :cond_0

    .line 904
    iget-object v2, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->q:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->m:I

    iget v4, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->p:I

    iget v5, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->r:F

    iget v6, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->u:F

    iget-object v0, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxStatus;->getSource()I

    move-result v7

    move-object v0, p2

    move-object v1, p3

    invoke-static/range {v0 .. v7}, Lcom/androidquery/callback/DrawableAjaxCallback;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIFFI)V

    goto :goto_0
.end method

.method private static a()Z
    .locals 2

    .prologue
    .line 268
    const-string v0, "level"

    sget v1, Lcom/androidquery/AQuery;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 269
    sget v0, Lcom/androidquery/AQuery;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static async(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/auth/AccountHandle;Lcom/androidquery/callback/ImageOptions;Lorg/apache/http/HttpHost;Ljava/lang/String;)V
    .locals 19

    .prologue
    .line 995
    move-object/from16 v0, p6

    iget-boolean v5, v0, Lcom/androidquery/callback/ImageOptions;->memCache:Z

    move-object/from16 v0, p6

    iget-boolean v6, v0, Lcom/androidquery/callback/ImageOptions;->fileCache:Z

    move-object/from16 v0, p6

    iget v7, v0, Lcom/androidquery/callback/ImageOptions;->targetWidth:I

    move-object/from16 v0, p6

    iget v8, v0, Lcom/androidquery/callback/ImageOptions;->fallback:I

    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p6

    iget-object v1, v0, Lcom/androidquery/callback/ImageOptions;->preset:Landroid/graphics/Bitmap;

    invoke-direct {v9, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p6

    iget v10, v0, Lcom/androidquery/callback/ImageOptions;->animation:I

    move-object/from16 v0, p6

    iget v11, v0, Lcom/androidquery/callback/ImageOptions;->ratio:F

    move-object/from16 v0, p6

    iget v12, v0, Lcom/androidquery/callback/ImageOptions;->anchor:F

    move-object/from16 v0, p6

    iget v15, v0, Lcom/androidquery/callback/ImageOptions;->policy:I

    move-object/from16 v0, p6

    iget v0, v0, Lcom/androidquery/callback/ImageOptions;->round:I

    move/from16 v16, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v17, p7

    move-object/from16 v18, p8

    invoke-static/range {v1 .. v18}, Lcom/androidquery/callback/DrawableAjaxCallback;->async(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZZIILandroid/graphics/drawable/Drawable;IFFLjava/lang/Object;Lcom/androidquery/auth/AccountHandle;IILorg/apache/http/HttpHost;Ljava/lang/String;)V

    .line 997
    return-void
.end method

.method public static async(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/auth/AccountHandle;Lcom/androidquery/callback/ImageOptions;Lorg/apache/http/HttpHost;Ljava/lang/String;Lcom/androidquery/callback/DrawableAjaxCallback;)V
    .locals 20

    .prologue
    .line 1042
    move-object/from16 v0, p6

    iget-boolean v5, v0, Lcom/androidquery/callback/ImageOptions;->memCache:Z

    move-object/from16 v0, p6

    iget-boolean v6, v0, Lcom/androidquery/callback/ImageOptions;->fileCache:Z

    move-object/from16 v0, p6

    iget v7, v0, Lcom/androidquery/callback/ImageOptions;->targetWidth:I

    move-object/from16 v0, p6

    iget v8, v0, Lcom/androidquery/callback/ImageOptions;->fallback:I

    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p6

    iget-object v1, v0, Lcom/androidquery/callback/ImageOptions;->preset:Landroid/graphics/Bitmap;

    invoke-direct {v9, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p6

    iget v10, v0, Lcom/androidquery/callback/ImageOptions;->animation:I

    move-object/from16 v0, p6

    iget v11, v0, Lcom/androidquery/callback/ImageOptions;->ratio:F

    move-object/from16 v0, p6

    iget v12, v0, Lcom/androidquery/callback/ImageOptions;->anchor:F

    move-object/from16 v0, p6

    iget v15, v0, Lcom/androidquery/callback/ImageOptions;->policy:I

    move-object/from16 v0, p6

    iget v0, v0, Lcom/androidquery/callback/ImageOptions;->round:I

    move/from16 v16, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v17, p7

    move-object/from16 v18, p8

    move-object/from16 v19, p9

    invoke-static/range {v1 .. v19}, Lcom/androidquery/callback/DrawableAjaxCallback;->async(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZZIILandroid/graphics/drawable/Drawable;IFFLjava/lang/Object;Lcom/androidquery/auth/AccountHandle;IILorg/apache/http/HttpHost;Ljava/lang/String;Lcom/androidquery/callback/DrawableAjaxCallback;)V

    .line 1044
    return-void
.end method

.method public static async(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZZIILandroid/graphics/drawable/Drawable;IFFLjava/lang/Object;Lcom/androidquery/auth/AccountHandle;IILorg/apache/http/HttpHost;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 1010
    const/4 v2, 0x0

    .line 1012
    if-eqz p4, :cond_0

    .line 1013
    move/from16 v0, p15

    invoke-static {p3, p6, v0}, Lcom/androidquery/callback/DrawableAjaxCallback;->a(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1016
    :cond_0
    if-eqz v2, :cond_1

    .line 1017
    const v1, 0x40ff0001

    invoke-virtual {p2, v1, p3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 1018
    const/4 v1, 0x0

    move-object/from16 v0, p12

    invoke-static {v0, p3, v1}, Lcom/androidquery/util/Common;->showProgress(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1019
    const/4 v8, 0x4

    move-object v1, p2

    move-object/from16 v3, p8

    move/from16 v4, p7

    move/from16 v5, p9

    move/from16 v6, p10

    move/from16 v7, p11

    invoke-static/range {v1 .. v8}, Lcom/androidquery/callback/DrawableAjaxCallback;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIFFI)V

    .line 1033
    :goto_0
    return-void

    .line 1021
    :cond_1
    new-instance v2, Lcom/androidquery/callback/DrawableAjaxCallback;

    invoke-direct {v2}, Lcom/androidquery/callback/DrawableAjaxCallback;-><init>()V

    .line 1022
    invoke-virtual {v2, p3}, Lcom/androidquery/callback/DrawableAjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/DrawableAjaxCallback;

    invoke-virtual {v1, p2}, Lcom/androidquery/callback/DrawableAjaxCallback;->imageView(Landroid/widget/ImageView;)Lcom/androidquery/callback/DrawableAjaxCallback;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/androidquery/callback/DrawableAjaxCallback;->memCache(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/DrawableAjaxCallback;

    invoke-virtual {v1, p5}, Lcom/androidquery/callback/DrawableAjaxCallback;->fileCache(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/DrawableAjaxCallback;

    invoke-virtual {v1, p6}, Lcom/androidquery/callback/DrawableAjaxCallback;->targetWidth(I)Lcom/androidquery/callback/DrawableAjaxCallback;

    move-result-object v1

    move/from16 v0, p7

    invoke-virtual {v1, v0}, Lcom/androidquery/callback/DrawableAjaxCallback;->fallback(I)Lcom/androidquery/callback/DrawableAjaxCallback;

    move-result-object v1

    move-object/from16 v0, p8

    invoke-virtual {v1, v0}, Lcom/androidquery/callback/DrawableAjaxCallback;->preset(Landroid/graphics/drawable/Drawable;)Lcom/androidquery/callback/DrawableAjaxCallback;

    move-result-object v1

    move/from16 v0, p9

    invoke-virtual {v1, v0}, Lcom/androidquery/callback/DrawableAjaxCallback;->animation(I)Lcom/androidquery/callback/DrawableAjaxCallback;

    move-result-object v1

    move/from16 v0, p10

    invoke-virtual {v1, v0}, Lcom/androidquery/callback/DrawableAjaxCallback;->ratio(F)Lcom/androidquery/callback/DrawableAjaxCallback;

    move-result-object v1

    move/from16 v0, p11

    invoke-virtual {v1, v0}, Lcom/androidquery/callback/DrawableAjaxCallback;->anchor(F)Lcom/androidquery/callback/DrawableAjaxCallback;

    move-result-object v1

    move-object/from16 v0, p12

    invoke-virtual {v1, v0}, Lcom/androidquery/callback/DrawableAjaxCallback;->progress(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/DrawableAjaxCallback;

    move-object/from16 v0, p13

    invoke-virtual {v1, v0}, Lcom/androidquery/callback/DrawableAjaxCallback;->auth(Lcom/androidquery/auth/AccountHandle;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/DrawableAjaxCallback;

    move/from16 v0, p14

    invoke-virtual {v1, v0}, Lcom/androidquery/callback/DrawableAjaxCallback;->policy(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/DrawableAjaxCallback;

    move/from16 v0, p15

    invoke-virtual {v1, v0}, Lcom/androidquery/callback/DrawableAjaxCallback;->round(I)Lcom/androidquery/callback/DrawableAjaxCallback;

    move-result-object v1

    move-object/from16 v0, p17

    invoke-virtual {v1, v0}, Lcom/androidquery/callback/DrawableAjaxCallback;->networkUrl(Ljava/lang/String;)Ljava/lang/Object;

    .line 1023
    if-eqz p16, :cond_2

    .line 1024
    invoke-virtual/range {p16 .. p16}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p16 .. p16}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/androidquery/callback/DrawableAjaxCallback;->proxy(Ljava/lang/String;I)Ljava/lang/Object;

    .line 1026
    :cond_2
    if-eqz p0, :cond_3

    .line 1027
    invoke-virtual {v2, p0}, Lcom/androidquery/callback/DrawableAjaxCallback;->async(Landroid/app/Activity;)V

    goto :goto_0

    .line 1029
    :cond_3
    invoke-virtual {v2, p1}, Lcom/androidquery/callback/DrawableAjaxCallback;->async(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static async(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZZIILandroid/graphics/drawable/Drawable;IFFLjava/lang/Object;Lcom/androidquery/auth/AccountHandle;IILorg/apache/http/HttpHost;Ljava/lang/String;Lcom/androidquery/callback/DrawableAjaxCallback;)V
    .locals 3

    .prologue
    .line 1047
    move-object/from16 v0, p18

    invoke-virtual {v0, p3}, Lcom/androidquery/callback/DrawableAjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/DrawableAjaxCallback;

    invoke-virtual {v1, p2}, Lcom/androidquery/callback/DrawableAjaxCallback;->imageView(Landroid/widget/ImageView;)Lcom/androidquery/callback/DrawableAjaxCallback;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/androidquery/callback/DrawableAjaxCallback;->memCache(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/DrawableAjaxCallback;

    invoke-virtual {v1, p5}, Lcom/androidquery/callback/DrawableAjaxCallback;->fileCache(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/DrawableAjaxCallback;

    invoke-virtual {v1, p6}, Lcom/androidquery/callback/DrawableAjaxCallback;->targetWidth(I)Lcom/androidquery/callback/DrawableAjaxCallback;

    move-result-object v1

    invoke-virtual {v1, p7}, Lcom/androidquery/callback/DrawableAjaxCallback;->fallback(I)Lcom/androidquery/callback/DrawableAjaxCallback;

    move-result-object v1

    invoke-virtual {v1, p8}, Lcom/androidquery/callback/DrawableAjaxCallback;->preset(Landroid/graphics/drawable/Drawable;)Lcom/androidquery/callback/DrawableAjaxCallback;

    move-result-object v1

    invoke-virtual {v1, p9}, Lcom/androidquery/callback/DrawableAjaxCallback;->animation(I)Lcom/androidquery/callback/DrawableAjaxCallback;

    move-result-object v1

    invoke-virtual {v1, p10}, Lcom/androidquery/callback/DrawableAjaxCallback;->ratio(F)Lcom/androidquery/callback/DrawableAjaxCallback;

    move-result-object v1

    invoke-virtual {v1, p11}, Lcom/androidquery/callback/DrawableAjaxCallback;->anchor(F)Lcom/androidquery/callback/DrawableAjaxCallback;

    move-result-object v1

    invoke-virtual {v1, p12}, Lcom/androidquery/callback/DrawableAjaxCallback;->progress(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/DrawableAjaxCallback;

    move-object/from16 v0, p13

    invoke-virtual {v1, v0}, Lcom/androidquery/callback/DrawableAjaxCallback;->auth(Lcom/androidquery/auth/AccountHandle;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/DrawableAjaxCallback;

    move/from16 v0, p14

    invoke-virtual {v1, v0}, Lcom/androidquery/callback/DrawableAjaxCallback;->policy(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/DrawableAjaxCallback;

    move/from16 v0, p15

    invoke-virtual {v1, v0}, Lcom/androidquery/callback/DrawableAjaxCallback;->round(I)Lcom/androidquery/callback/DrawableAjaxCallback;

    move-result-object v1

    move-object/from16 v0, p17

    invoke-virtual {v1, v0}, Lcom/androidquery/callback/DrawableAjaxCallback;->networkUrl(Ljava/lang/String;)Ljava/lang/Object;

    .line 1048
    if-eqz p16, :cond_0

    .line 1049
    invoke-virtual/range {p16 .. p16}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p16 .. p16}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v2

    move-object/from16 v0, p18

    invoke-virtual {v0, v1, v2}, Lcom/androidquery/callback/DrawableAjaxCallback;->proxy(Ljava/lang/String;I)Ljava/lang/Object;

    .line 1051
    :cond_0
    if-eqz p0, :cond_1

    .line 1052
    move-object/from16 v0, p18

    invoke-virtual {v0, p0}, Lcom/androidquery/callback/DrawableAjaxCallback;->async(Landroid/app/Activity;)V

    .line 1056
    :goto_0
    return-void

    .line 1054
    :cond_1
    move-object/from16 v0, p18

    invoke-virtual {v0, p1}, Lcom/androidquery/callback/DrawableAjaxCallback;->async(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private b()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 532
    const/4 v1, 0x0

    .line 534
    iget-object v0, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 535
    if-eqz v0, :cond_1

    .line 537
    iget v1, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 538
    invoke-virtual {p0, v2}, Lcom/androidquery/callback/DrawableAjaxCallback;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 540
    if-nez v1, :cond_0

    .line 541
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v3, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->m:I

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 542
    if-eqz v3, :cond_0

    .line 543
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 544
    invoke-virtual {p0, v2, v0}, Lcom/androidquery/callback/DrawableAjaxCallback;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 549
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 790
    if-lez p1, :cond_1

    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 794
    :goto_0
    if-lez p2, :cond_0

    .line 795
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 798
    :cond_0
    return-object v0

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2

    .prologue
    .line 1103
    sget-object v0, Lcom/androidquery/callback/DrawableAjaxCallback;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/WeakHashMap;

    .line 1105
    if-nez v0, :cond_1

    .line 1107
    sget-object v0, Lcom/androidquery/callback/DrawableAjaxCallback;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1109
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 1110
    invoke-virtual {v0, p2, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    sget-object v1, Lcom/androidquery/callback/DrawableAjaxCallback;->j:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    :goto_0
    return-void

    .line 1114
    :cond_0
    sget-object v0, Lcom/androidquery/callback/DrawableAjaxCallback;->j:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1119
    :cond_1
    invoke-virtual {v0, p2, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static b(II)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 972
    packed-switch p0, :pswitch_data_0

    .line 980
    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    :pswitch_0
    return v0

    .line 976
    :pswitch_1
    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    .line 978
    :pswitch_2
    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 972
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private static c()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 710
    sget-object v0, Lcom/androidquery/callback/DrawableAjaxCallback;->h:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 711
    new-instance v0, Lcom/androidquery/callback/a;

    sget v1, Lcom/androidquery/callback/DrawableAjaxCallback;->b:I

    sget v2, Lcom/androidquery/callback/DrawableAjaxCallback;->d:I

    sget v3, Lcom/androidquery/callback/DrawableAjaxCallback;->e:I

    invoke-direct {v0, v1, v2, v3}, Lcom/androidquery/callback/a;-><init>(III)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/androidquery/callback/DrawableAjaxCallback;->h:Ljava/util/Map;

    .line 713
    :cond_0
    sget-object v0, Lcom/androidquery/callback/DrawableAjaxCallback;->h:Ljava/util/Map;

    return-object v0
.end method

.method public static clearCache()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 700
    sput-object v0, Lcom/androidquery/callback/DrawableAjaxCallback;->h:Ljava/util/Map;

    .line 701
    sput-object v0, Lcom/androidquery/callback/DrawableAjaxCallback;->g:Ljava/util/Map;

    .line 702
    sput-object v0, Lcom/androidquery/callback/DrawableAjaxCallback;->i:Ljava/util/Map;

    .line 703
    return-void
.end method

.method private static d()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 718
    sget-object v0, Lcom/androidquery/callback/DrawableAjaxCallback;->g:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 719
    new-instance v0, Lcom/androidquery/callback/a;

    sget v1, Lcom/androidquery/callback/DrawableAjaxCallback;->a:I

    sget v2, Lcom/androidquery/callback/DrawableAjaxCallback;->c:I

    const v3, 0x3d090

    invoke-direct {v0, v1, v2, v3}, Lcom/androidquery/callback/a;-><init>(III)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/androidquery/callback/DrawableAjaxCallback;->g:Ljava/util/Map;

    .line 721
    :cond_0
    sget-object v0, Lcom/androidquery/callback/DrawableAjaxCallback;->g:Ljava/util/Map;

    return-object v0
.end method

.method private static e()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 725
    sget-object v0, Lcom/androidquery/callback/DrawableAjaxCallback;->i:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 726
    new-instance v0, Lcom/androidquery/callback/a;

    const/16 v1, 0x64

    sget v2, Lcom/androidquery/callback/DrawableAjaxCallback;->d:I

    const v3, 0x3d090

    invoke-direct {v0, v1, v2, v3}, Lcom/androidquery/callback/a;-><init>(III)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/androidquery/callback/DrawableAjaxCallback;->i:Ljava/util/Map;

    .line 728
    :cond_0
    sget-object v0, Lcom/androidquery/callback/DrawableAjaxCallback;->i:Ljava/util/Map;

    return-object v0
.end method

.method public static getEmptyBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 571
    sget-object v0, Lcom/androidquery/callback/DrawableAjaxCallback;->x:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static getMemoryCached(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 555
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 556
    invoke-static {v1, v3, v3}, Lcom/androidquery/callback/DrawableAjaxCallback;->a(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 558
    if-nez v0, :cond_0

    .line 559
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 560
    if-eqz v2, :cond_0

    .line 561
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 562
    invoke-static {v1, v3, v3, v0, v3}, Lcom/androidquery/callback/DrawableAjaxCallback;->a(Ljava/lang/String;IILandroid/graphics/drawable/Drawable;Z)V

    .line 566
    :cond_0
    return-object v0
.end method

.method public static getMemoryCached(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 756
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/androidquery/callback/DrawableAjaxCallback;->a(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getResizedImage(Ljava/lang/String;[BIZI)Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 376
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/androidquery/callback/DrawableAjaxCallback;->getResizedImage(Ljava/lang/String;[BIZIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getResizedImage(Ljava/lang/String;[BIZIZ)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 391
    if-eqz p0, :cond_0

    .line 393
    :try_start_0
    new-instance v0, Lpl/droidsonroids/gif/GifDrawable;

    invoke-direct {v0, p0}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 405
    :goto_0
    return-object v0

    .line 397
    :cond_0
    if-eqz p1, :cond_1

    .line 399
    :try_start_1
    new-instance v0, Lpl/droidsonroids/gif/GifDrawable;

    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/GifDrawable;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 400
    :catch_0
    move-exception v0

    .line 405
    :cond_1
    :goto_1
    invoke-static/range {p0 .. p5}, Lcom/androidquery/callback/DrawableAjaxCallback;->a(Ljava/lang/String;[BIZIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 394
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static isMemoryCached(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 745
    invoke-static {}, Lcom/androidquery/callback/DrawableAjaxCallback;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/androidquery/callback/DrawableAjaxCallback;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/androidquery/callback/DrawableAjaxCallback;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setCacheLimit(I)V
    .locals 0

    .prologue
    .line 647
    sput p0, Lcom/androidquery/callback/DrawableAjaxCallback;->b:I

    .line 648
    invoke-static {}, Lcom/androidquery/callback/DrawableAjaxCallback;->clearCache()V

    .line 649
    return-void
.end method

.method public static setDelayWrite(Z)V
    .locals 0

    .prologue
    .line 659
    sput-boolean p0, Lcom/androidquery/callback/DrawableAjaxCallback;->f:Z

    .line 660
    return-void
.end method

.method public static setIconCacheLimit(I)V
    .locals 0

    .prologue
    .line 637
    sput p0, Lcom/androidquery/callback/DrawableAjaxCallback;->a:I

    .line 638
    invoke-static {}, Lcom/androidquery/callback/DrawableAjaxCallback;->clearCache()V

    .line 639
    return-void
.end method

.method public static setMaxPixelLimit(I)V
    .locals 0

    .prologue
    .line 692
    sput p0, Lcom/androidquery/callback/DrawableAjaxCallback;->e:I

    .line 693
    invoke-static {}, Lcom/androidquery/callback/DrawableAjaxCallback;->clearCache()V

    .line 694
    return-void
.end method

.method public static setPixelLimit(I)V
    .locals 0

    .prologue
    .line 670
    sput p0, Lcom/androidquery/callback/DrawableAjaxCallback;->d:I

    .line 671
    invoke-static {}, Lcom/androidquery/callback/DrawableAjaxCallback;->clearCache()V

    .line 672
    return-void
.end method

.method public static setSmallPixel(I)V
    .locals 0

    .prologue
    .line 682
    sput p0, Lcom/androidquery/callback/DrawableAjaxCallback;->c:I

    .line 683
    invoke-static {}, Lcom/androidquery/callback/DrawableAjaxCallback;->clearCache()V

    .line 684
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 733
    iget-object v0, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->o:Landroid/graphics/drawable/Drawable;

    .line 735
    :goto_0
    return-object v0

    .line 734
    :cond_0
    iget-boolean v0, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->memCache:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 735
    :cond_1
    iget v0, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->l:I

    iget v1, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->s:I

    invoke-static {p1, v0, v1}, Lcom/androidquery/callback/DrawableAjaxCallback;->a(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/io/File;Lcom/androidquery/callback/AjaxStatus;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 481
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/androidquery/callback/DrawableAjaxCallback;->a(Ljava/lang/String;[B)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 845
    iget v0, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->l:I

    iget v1, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->s:I

    iget-boolean v2, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->v:Z

    invoke-static {p1, v0, v1, p2, v2}, Lcom/androidquery/callback/DrawableAjaxCallback;->a(Ljava/lang/String;IILandroid/graphics/drawable/Drawable;Z)V

    .line 846
    return-void
.end method

.method protected a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 1

    .prologue
    .line 605
    sget-object v0, Lcom/androidquery/callback/DrawableAjaxCallback;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    return-void
.end method

.method protected a(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 1

    .prologue
    .line 627
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/androidquery/callback/DrawableAjaxCallback;->a(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    .line 628
    return-void
.end method

.method protected accessFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->n:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->n:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->n:Ljava/io/File;

    .line 475
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/androidquery/callback/AbstractAjaxCallback;->accessFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public anchor(F)Lcom/androidquery/callback/DrawableAjaxCallback;
    .locals 0

    .prologue
    .line 224
    iput p1, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->u:F

    .line 226
    return-object p0
.end method

.method public animation(I)Lcom/androidquery/callback/DrawableAjaxCallback;
    .locals 0

    .prologue
    .line 182
    iput p1, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->p:I

    .line 183
    return-object p0
.end method

.method public async(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1063
    invoke-virtual {p0}, Lcom/androidquery/callback/DrawableAjaxCallback;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 1065
    iget-object v0, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1067
    if-nez v1, :cond_0

    .line 1068
    invoke-virtual {p0, v3}, Lcom/androidquery/callback/DrawableAjaxCallback;->showProgress(Z)V

    .line 1069
    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/androidquery/callback/DrawableAjaxCallback;->a(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    .line 1093
    :goto_0
    return-void

    .line 1073
    :cond_0
    invoke-virtual {p0, v1}, Lcom/androidquery/callback/DrawableAjaxCallback;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1074
    if-eqz v2, :cond_1

    .line 1075
    const v3, 0x40ff0001

    invoke-virtual {v0, v3, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 1076
    new-instance v0, Lcom/androidquery/callback/AjaxStatus;

    invoke-direct {v0}, Lcom/androidquery/callback/AjaxStatus;-><init>()V

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/androidquery/callback/AjaxStatus;->source(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxStatus;->done()Lcom/androidquery/callback/AjaxStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    .line 1077
    iget-object v0, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {p0, v1, v2, v0}, Lcom/androidquery/callback/DrawableAjaxCallback;->callback(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/androidquery/callback/AjaxStatus;)V

    goto :goto_0

    .line 1082
    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/androidquery/callback/DrawableAjaxCallback;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 1084
    sget-object v2, Lcom/androidquery/callback/DrawableAjaxCallback;->j:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1085
    invoke-direct {p0, v1, v0}, Lcom/androidquery/callback/DrawableAjaxCallback;->b(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 1086
    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->async(Landroid/content/Context;)V

    goto :goto_0

    .line 1088
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/androidquery/callback/DrawableAjaxCallback;->showProgress(Z)V

    .line 1089
    invoke-direct {p0, v1, v0}, Lcom/androidquery/callback/DrawableAjaxCallback;->b(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method public bitmap(Landroid/graphics/drawable/Drawable;)Lcom/androidquery/callback/DrawableAjaxCallback;
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->o:Landroid/graphics/drawable/Drawable;

    .line 161
    return-object p0
.end method

.method public final callback(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 8

    .prologue
    .line 581
    iget-object v0, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 582
    sget-object v0, Lcom/androidquery/callback/DrawableAjaxCallback;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/WeakHashMap;

    .line 585
    if-eqz v6, :cond_0

    invoke-virtual {v6, v3}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 586
    invoke-direct/range {v0 .. v5}, Lcom/androidquery/callback/DrawableAjaxCallback;->a(Lcom/androidquery/callback/DrawableAjaxCallback;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/androidquery/callback/AjaxStatus;)V

    .line 589
    :cond_1
    if-eqz v6, :cond_2

    .line 591
    invoke-virtual {v6}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 593
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 594
    invoke-virtual {v6, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/DrawableAjaxCallback;

    .line 595
    iput-object p3, v1, Lcom/androidquery/callback/DrawableAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 596
    invoke-direct/range {v0 .. v5}, Lcom/androidquery/callback/DrawableAjaxCallback;->a(Lcom/androidquery/callback/DrawableAjaxCallback;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/androidquery/callback/AjaxStatus;)V

    goto :goto_0

    .line 601
    :cond_2
    return-void
.end method

.method public bridge synthetic callback(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 0

    .prologue
    .line 67
    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2, p3}, Lcom/androidquery/callback/DrawableAjaxCallback;->callback(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/androidquery/callback/AjaxStatus;)V

    return-void
.end method

.method public fallback(I)Lcom/androidquery/callback/DrawableAjaxCallback;
    .locals 0

    .prologue
    .line 171
    iput p1, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->m:I

    .line 172
    return-object p0
.end method

.method public file(Ljava/io/File;)Lcom/androidquery/callback/DrawableAjaxCallback;
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->n:Ljava/io/File;

    .line 138
    return-object p0
.end method

.method protected synthetic fileGet(Ljava/lang/String;Ljava/io/File;Lcom/androidquery/callback/AjaxStatus;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2, p3}, Lcom/androidquery/callback/DrawableAjaxCallback;->a(Ljava/lang/String;Ljava/io/File;Lcom/androidquery/callback/AjaxStatus;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public imageView(Landroid/widget/ImageView;)Lcom/androidquery/callback/DrawableAjaxCallback;
    .locals 1

    .prologue
    .line 114
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->k:Ljava/lang/ref/WeakReference;

    .line 115
    return-object p0
.end method

.method protected isStreamingContent()Z
    .locals 1

    .prologue
    .line 1097
    sget-boolean v0, Lcom/androidquery/callback/DrawableAjaxCallback;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic memGet(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/androidquery/callback/DrawableAjaxCallback;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic memPut(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 67
    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lcom/androidquery/callback/DrawableAjaxCallback;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public preset(Landroid/graphics/drawable/Drawable;)Lcom/androidquery/callback/DrawableAjaxCallback;
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->q:Landroid/graphics/drawable/Drawable;

    .line 150
    return-object p0
.end method

.method public ratio(F)Lcom/androidquery/callback/DrawableAjaxCallback;
    .locals 0

    .prologue
    .line 193
    iput p1, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->r:F

    .line 194
    return-object p0
.end method

.method public rotate(Z)Lcom/androidquery/callback/DrawableAjaxCallback;
    .locals 0

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->w:Z

    .line 205
    return-object p0
.end method

.method public round(I)Lcom/androidquery/callback/DrawableAjaxCallback;
    .locals 0

    .prologue
    .line 240
    iput p1, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->s:I

    .line 241
    return-object p0
.end method

.method protected synthetic skip(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 0

    .prologue
    .line 67
    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2, p3}, Lcom/androidquery/callback/DrawableAjaxCallback;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/androidquery/callback/AjaxStatus;)V

    return-void
.end method

.method public targetWidth(I)Lcom/androidquery/callback/DrawableAjaxCallback;
    .locals 0

    .prologue
    .line 125
    iput p1, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->l:I

    .line 126
    return-object p0
.end method

.method public transform(Ljava/lang/String;[BLcom/androidquery/callback/AjaxStatus;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 489
    const/4 v0, 0x0

    .line 491
    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getFile()Ljava/io/File;

    move-result-object v1

    .line 492
    if-eqz v1, :cond_0

    .line 493
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 496
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/androidquery/callback/DrawableAjaxCallback;->a(Ljava/lang/String;[B)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 498
    if-nez v0, :cond_3

    .line 500
    iget v2, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->m:I

    if-lez v2, :cond_4

    .line 501
    invoke-direct {p0}, Lcom/androidquery/callback/DrawableAjaxCallback;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 508
    :cond_1
    :goto_0
    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_2

    .line 509
    iput-boolean v4, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->v:Z

    .line 514
    :cond_2
    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getSource()I

    move-result v2

    if-ne v2, v4, :cond_3

    if-eqz v1, :cond_3

    .line 515
    const-string v2, "invalid bm from net"

    invoke-static {v2}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    .line 516
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 524
    :cond_3
    return-object v0

    .line 502
    :cond_4
    iget v2, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->m:I

    const/4 v3, -0x2

    if-eq v2, v3, :cond_5

    iget v2, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->m:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    .line 503
    :cond_5
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v2, Lcom/androidquery/callback/DrawableAjaxCallback;->y:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 504
    :cond_6
    iget v2, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->m:I

    const/4 v3, -0x3

    if-ne v2, v3, :cond_1

    .line 505
    iget-object v0, p0, Lcom/androidquery/callback/DrawableAjaxCallback;->q:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public bridge synthetic transform(Ljava/lang/String;[BLcom/androidquery/callback/AjaxStatus;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2, p3}, Lcom/androidquery/callback/DrawableAjaxCallback;->transform(Ljava/lang/String;[BLcom/androidquery/callback/AjaxStatus;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
