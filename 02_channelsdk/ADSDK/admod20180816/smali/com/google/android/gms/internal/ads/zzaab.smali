.class public final Lcom/google/android/gms/internal/ads/zzaab;
.super Lcom/google/android/gms/internal/ads/zzaal;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# static fields
.field private static final zzbvy:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private zzbmy:Lcom/google/android/gms/internal/ads/zzaam;

.field private final zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

.field private final zzbvp:Landroid/app/Activity;

.field private zzbvz:Ljava/lang/String;

.field private zzbwa:Z

.field private zzbwb:I

.field private zzbwc:I

.field private zzbwd:I

.field private zzbwe:I

.field private zzbwf:Lcom/google/android/gms/internal/ads/zzasi;

.field private zzbwg:Landroid/widget/ImageView;

.field private zzbwh:Landroid/widget/LinearLayout;

.field private zzbwi:Landroid/widget/PopupWindow;

.field private zzbwj:Landroid/widget/RelativeLayout;

.field private zzbwk:Landroid/view/ViewGroup;

.field private zzuq:I

.field private zzur:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "top-left"

    const-string v1, "top-right"

    const-string v2, "top-center"

    const-string v3, "center"

    const-string v4, "bottom-left"

    const-string v5, "bottom-right"

    const-string v6, "bottom-center"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/CollectionUtils;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaab;->zzbvy:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaqw;Lcom/google/android/gms/internal/ads/zzaam;)V
    .locals 2

    const-string v0, "resize"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzaal;-><init>(Lcom/google/android/gms/internal/ads/zzaqw;Ljava/lang/String;)V

    const-string v0, "top-right"

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbvz:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwa:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwb:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwc:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzur:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwd:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwe:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzuq:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaqw;->zzto()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbmy:Lcom/google/android/gms/internal/ads/zzaam;

    return-void
.end method

.method private final zza(II)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzakk;->zzh(Landroid/app/Activity;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    sub-int/2addr p2, v0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzuq:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzur:I

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzaal;->zzb(IIII)V

    return-void
.end method

.method private final zzne()[I
    .locals 9

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzakk;->zzg(Landroid/app/Activity;)[I

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzakk;->zzh(Landroid/app/Activity;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v0, v0, v4

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzuq:I

    const/4 v6, 0x2

    const/16 v7, 0x32

    if-lt v5, v7, :cond_6

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzuq:I

    if-le v5, v3, :cond_0

    goto/16 :goto_6

    :cond_0
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzur:I

    if-lt v5, v7, :cond_5

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzur:I

    if-le v5, v0, :cond_1

    goto/16 :goto_5

    :cond_1
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzur:I

    if-ne v5, v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzuq:I

    if-ne v0, v3, :cond_2

    const-string v0, "Cannot resize to a full-screen ad."

    goto/16 :goto_7

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwa:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbvz:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v8, "top-center"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v8, "bottom-center"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    const-string v8, "bottom-right"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_3
    const-string v8, "bottom-left"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v8, "top-left"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_5
    const-string v8, "center"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwb:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwd:I

    add-int/2addr v0, v5

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzuq:I

    add-int/2addr v0, v5

    sub-int/2addr v0, v7

    :goto_2
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwc:I

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwe:I

    add-int/2addr v5, v8

    goto :goto_4

    :pswitch_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwb:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwd:I

    add-int/2addr v0, v5

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzuq:I

    add-int/2addr v0, v5

    sub-int/2addr v0, v7

    goto :goto_3

    :pswitch_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwb:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwd:I

    add-int/2addr v0, v5

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzuq:I

    div-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x19

    goto :goto_3

    :pswitch_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwb:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwd:I

    add-int/2addr v0, v5

    :goto_3
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwc:I

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwe:I

    add-int/2addr v5, v8

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzur:I

    add-int/2addr v5, v8

    sub-int/2addr v5, v7

    goto :goto_4

    :pswitch_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwb:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwd:I

    add-int/2addr v0, v5

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzuq:I

    div-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x19

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwc:I

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwe:I

    add-int/2addr v5, v8

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzur:I

    div-int/2addr v8, v6

    add-int/2addr v5, v8

    add-int/lit8 v5, v5, -0x19

    goto :goto_4

    :pswitch_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwb:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwd:I

    add-int/2addr v0, v5

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzuq:I

    div-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x19

    goto :goto_2

    :pswitch_5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwb:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwd:I

    add-int/2addr v0, v5

    goto :goto_2

    :goto_4
    if-ltz v0, :cond_7

    add-int/2addr v0, v7

    if-gt v0, v3, :cond_7

    aget v0, v1, v2

    if-lt v5, v0, :cond_7

    add-int/2addr v5, v7

    aget v0, v1, v4

    if-le v5, v0, :cond_4

    goto :goto_8

    :cond_4
    const/4 v0, 0x1

    goto :goto_9

    :cond_5
    :goto_5
    const-string v0, "Height is too small or too large."

    goto :goto_7

    :cond_6
    :goto_6
    const-string v0, "Width is too small or too large."

    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    :cond_7
    :goto_8
    const/4 v0, 0x0

    :goto_9
    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwa:Z

    if-eqz v0, :cond_9

    new-array v0, v6, [I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwb:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwd:I

    add-int/2addr v1, v3

    aput v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwc:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwe:I

    add-int/2addr v1, v2

    aput v1, v0, v4

    return-object v0

    :cond_9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzakk;->zzg(Landroid/app/Activity;)[I

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzakk;->zzh(Landroid/app/Activity;)[I

    move-result-object v1

    aget v0, v0, v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwb:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwd:I

    add-int/2addr v3, v5

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwc:I

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwe:I

    add-int/2addr v5, v7

    if-gez v3, :cond_a

    const/4 v0, 0x0

    goto :goto_a

    :cond_a
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzuq:I

    add-int/2addr v7, v3

    if-le v7, v0, :cond_b

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzuq:I

    sub-int/2addr v0, v3

    goto :goto_a

    :cond_b
    move v0, v3

    :goto_a
    aget v3, v1, v2

    if-ge v5, v3, :cond_c

    aget v5, v1, v2

    goto :goto_b

    :cond_c
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzur:I

    add-int/2addr v3, v5

    aget v7, v1, v4

    if-le v3, v7, :cond_d

    aget v1, v1, v4

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzur:I

    sub-int v5, v1, v3

    :cond_d
    :goto_b
    new-array v1, v6, [I

    aput v0, v1, v2

    aput v5, v1, v4

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_5
        -0x3c587281 -> :sswitch_4
        -0x27103597 -> :sswitch_3
        0x455fe3fa -> :sswitch_2
        0x4ccee637 -> :sswitch_1
        0x68a23bcd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final zza(IIZ)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwb:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwc:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwi:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaab;->zzne()[I

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwi:Landroid/widget/PopupWindow;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    const/4 v2, 0x0

    aget v3, p1, v2

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzamu;->zza(Landroid/content/Context;I)I

    move-result v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    aget v4, p1, p2

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzamu;->zza(Landroid/content/Context;I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwi:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwi:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v5

    invoke-virtual {p3, v1, v3, v4, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    aget p3, p1, v2

    aget p1, p1, p2

    invoke-direct {p0, p3, p1}, Lcom/google/android/gms/internal/ads/zzaab;->zza(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzaab;->zzm(Z)V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzb(II)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwb:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwc:I

    return-void
.end method

.method public final zzk(Ljava/util/Map;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    if-nez v1, :cond_0

    const-string p1, "Not an activity context. Cannot resize."

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaal;->zzbw(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaqw;->zzud()Lcom/google/android/gms/internal/ads/zzasi;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p1, "Webview is not yet available, size is not set."

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaal;->zzbw(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaqw;->zzud()Lcom/google/android/gms/internal/ads/zzasi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzasi;->zzvs()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "Is interstitial. Cannot resize an interstitial."

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaal;->zzbw(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaqw;->zzuj()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p1, "Cannot resize an expanded banner."

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaal;->zzbw(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_3
    const-string v1, "width"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    const-string v1, "width"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakk;->zzcv(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzuq:I

    :cond_4
    const-string v1, "height"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    const-string v1, "height"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakk;->zzcv(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzur:I

    :cond_5
    const-string v1, "offsetX"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    const-string v1, "offsetX"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakk;->zzcv(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwd:I

    :cond_6
    const-string v1, "offsetY"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    const-string v1, "offsetY"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakk;->zzcv(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwe:I

    :cond_7
    const-string v1, "allowOffscreen"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "allowOffscreen"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwa:Z

    :cond_8
    const-string v1, "customClosePosition"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbvz:Ljava/lang/String;

    :cond_9
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzuq:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz p1, :cond_a

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzur:I

    if-ltz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_0

    :cond_a
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_b

    const-string p1, "Invalid width and height options. Cannot resize."

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaal;->zzbw(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_c

    goto/16 :goto_9

    :cond_c
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaab;->zzne()[I

    move-result-object v3

    if-nez v3, :cond_d

    const-string p1, "Resize location out of screen or close button is not visible."

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaal;->zzbw(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_d
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzuq:I

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzamu;->zza(Landroid/content/Context;I)I

    move-result v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzur:I

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzamu;->zza(Landroid/content/Context;I)I

    move-result v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzaqw;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_13

    instance-of v7, v6, Landroid/view/ViewGroup;

    if-eqz v7, :cond_13

    move-object v7, v6

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzaqw;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwi:Landroid/widget/PopupWindow;

    if-nez v7, :cond_e

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwk:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzaqw;->getView()Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzakk;->zzs(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwg:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwg:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzaqw;->zzud()Lcom/google/android/gms/internal/ads/zzasi;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwf:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwk:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwg:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_e
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwi:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->dismiss()V

    :goto_1
    new-instance v6, Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwj:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwj:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwj:Landroid/widget/RelativeLayout;

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwj:Landroid/widget/RelativeLayout;

    invoke-static {v6, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzakk;->zza(Landroid/view/View;IIZ)Landroid/widget/PopupWindow;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwi:Landroid/widget/PopupWindow;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwi:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwi:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwi:Landroid/widget/PopupWindow;

    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwa:Z

    xor-int/2addr v7, v2

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwj:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/zzaqw;->getView()Landroid/view/View;

    move-result-object v7

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwh:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    const/16 v9, 0x32

    invoke-static {v7, v9}, Lcom/google/android/gms/internal/ads/zzamu;->zza(Landroid/content/Context;I)I

    move-result v7

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    invoke-static {v10, v9}, Lcom/google/android/gms/internal/ads/zzamu;->zza(Landroid/content/Context;I)I

    move-result v9

    invoke-direct {v6, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbvz:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v9, "top-center"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    const/4 v7, 0x1

    goto :goto_3

    :sswitch_1
    const-string v9, "bottom-center"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    const/4 v7, 0x4

    goto :goto_3

    :sswitch_2
    const-string v9, "bottom-right"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    const/4 v7, 0x5

    goto :goto_3

    :sswitch_3
    const-string v9, "bottom-left"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    const/4 v7, 0x3

    goto :goto_3

    :sswitch_4
    const-string v9, "top-left"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    const/4 v7, 0x0

    goto :goto_3

    :sswitch_5
    const-string v9, "center"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    const/4 v7, 0x2

    goto :goto_3

    :cond_f
    :goto_2
    const/4 v7, -0x1

    :goto_3
    const/16 v8, 0x9

    const/16 v9, 0xe

    const/16 v10, 0xb

    const/16 v11, 0xc

    const/16 v12, 0xa

    packed-switch v7, :pswitch_data_0

    invoke-virtual {v6, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_4

    :pswitch_0
    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_4
    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_7

    :pswitch_1
    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_5
    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_7

    :pswitch_2
    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_6
    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_7

    :pswitch_3
    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_7

    :pswitch_4
    invoke-virtual {v6, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_5

    :pswitch_5
    invoke-virtual {v6, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_6

    :goto_7
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwh:Landroid/widget/LinearLayout;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzaac;

    invoke-direct {v8, p0}, Lcom/google/android/gms/internal/ads/zzaac;-><init>(Lcom/google/android/gms/internal/ads/zzaab;)V

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwh:Landroid/widget/LinearLayout;

    const-string v8, "Close button"

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwj:Landroid/widget/RelativeLayout;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwh:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwi:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    aget v8, v3, v1

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzamu;->zza(Landroid/content/Context;I)I

    move-result v7

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    aget v9, v3, v2

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzamu;->zza(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v6, p1, v1, v7, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    aget p1, v3, v1

    aget v6, v3, v2

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbmy:Lcom/google/android/gms/internal/ads/zzaam;

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbmy:Lcom/google/android/gms/internal/ads/zzaam;

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzuq:I

    iget v9, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzur:I

    invoke-interface {v7, p1, v6, v8, v9}, Lcom/google/android/gms/internal/ads/zzaam;->zza(IIII)V

    :cond_10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzasi;->zzi(II)Lcom/google/android/gms/internal/ads/zzasi;

    move-result-object v4

    invoke-interface {p1, v4}, Lcom/google/android/gms/internal/ads/zzaqw;->zza(Lcom/google/android/gms/internal/ads/zzasi;)V

    aget p1, v3, v1

    aget v1, v3, v2

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzaab;->zza(II)V

    const-string p1, "resized"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaal;->zzby(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catch_0
    move-exception p1

    const-string v1, "Cannot show popup window: "

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :cond_11
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaal;->zzbw(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwj:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaqw;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwk:Landroid/view/ViewGroup;

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwk:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwg:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwk:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaqw;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwf:Lcom/google/android/gms/internal/ads/zzasi;

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzaqw;->zza(Lcom/google/android/gms/internal/ads/zzasi;)V

    :cond_12
    monitor-exit v0

    return-void

    :cond_13
    const-string p1, "Webview is detached, probably in the middle of a resize or expand."

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaal;->zzbw(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_14
    :goto_9
    const-string p1, "Activity context is not ready, cannot get window or decor view."

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaal;->zzbw(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_5
        -0x3c587281 -> :sswitch_4
        -0x27103597 -> :sswitch_3
        0x455fe3fa -> :sswitch_2
        0x4ccee637 -> :sswitch_1
        0x68a23bcd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzm(Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwi:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwi:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwj:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzaqw;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwk:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwk:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwg:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwk:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzaqw;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwf:Lcom/google/android/gms/internal/ads/zzasi;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzaqw;->zza(Lcom/google/android/gms/internal/ads/zzasi;)V

    :cond_0
    if-eqz p1, :cond_1

    const-string p1, "default"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaal;->zzby(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbmy:Lcom/google/android/gms/internal/ads/zzaam;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbmy:Lcom/google/android/gms/internal/ads/zzaam;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaam;->zzcq()V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwi:Landroid/widget/PopupWindow;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwj:Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwk:Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwh:Landroid/widget/LinearLayout;

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zznf()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwi:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
