.class Lcom/androidquery/callback/a;
.super Ljava/util/LinkedHashMap;
.source "DrawableCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method constructor <init>(III)V
    .locals 3

    .prologue
    .line 44
    const/16 v0, 0x8

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 46
    iput p1, p0, Lcom/androidquery/callback/a;->a:I

    .line 47
    iput p2, p0, Lcom/androidquery/callback/a;->b:I

    .line 48
    iput p3, p0, Lcom/androidquery/callback/a;->c:I

    .line 50
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 96
    if-nez p1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v0

    .line 98
    :cond_1
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_2

    .line 99
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    mul-int/2addr v0, v1

    goto :goto_0

    .line 101
    :cond_2
    instance-of v1, p1, Lpl/droidsonroids/gif/GifDrawable;

    if-eqz v1, :cond_0

    .line 102
    check-cast p1, Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifDrawable;->getAllocationByteCount()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 111
    iget v0, p0, Lcom/androidquery/callback/a;->d:I

    iget v1, p0, Lcom/androidquery/callback/a;->c:I

    if-le v0, v1, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/androidquery/callback/a;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 115
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 120
    iget v1, p0, Lcom/androidquery/callback/a;->d:I

    iget v2, p0, Lcom/androidquery/callback/a;->c:I

    if-gt v1, v2, :cond_0

    .line 128
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 79
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 80
    if-eqz v0, :cond_0

    .line 81
    iget v1, p0, Lcom/androidquery/callback/a;->d:I

    invoke-direct {p0, v0}, Lcom/androidquery/callback/a;->a(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/androidquery/callback/a;->d:I

    .line 86
    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p2}, Lcom/androidquery/callback/a;->a(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    .line 58
    iget v2, p0, Lcom/androidquery/callback/a;->b:I

    if-gt v1, v2, :cond_0

    .line 59
    iget v0, p0, Lcom/androidquery/callback/a;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/androidquery/callback/a;->d:I

    .line 60
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 61
    if-eqz v0, :cond_0

    .line 62
    iget v1, p0, Lcom/androidquery/callback/a;->d:I

    invoke-direct {p0, v0}, Lcom/androidquery/callback/a;->a(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/androidquery/callback/a;->d:I

    .line 72
    :cond_0
    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Ljava/util/LinkedHashMap;->clear()V

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/androidquery/callback/a;->d:I

    .line 93
    return-void
.end method

.method public synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lcom/androidquery/callback/a;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/androidquery/callback/a;->a(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 134
    iget v0, p0, Lcom/androidquery/callback/a;->d:I

    iget v1, p0, Lcom/androidquery/callback/a;->c:I

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/androidquery/callback/a;->size()I

    move-result v0

    iget v1, p0, Lcom/androidquery/callback/a;->a:I

    if-le v0, v1, :cond_1

    .line 143
    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androidquery/callback/a;->a(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    .line 148
    :cond_1
    invoke-direct {p0}, Lcom/androidquery/callback/a;->a()V

    .line 150
    const/4 v0, 0x0

    return v0
.end method
