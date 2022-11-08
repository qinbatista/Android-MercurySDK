.class public Lcom/bytedance/sdk/openadsdk/core/video/a/g;
.super Ljava/lang/Object;
.source "NativeVideoController.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/video/a/c;
.implements Lcom/bytedance/sdk/openadsdk/core/video/a/d;
.implements Lcom/bytedance/sdk/openadsdk/h/t$a;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private A:Z

.field private B:Ljava/lang/Runnable;

.field private C:Ljava/lang/Runnable;

.field private D:Ljava/lang/Runnable;

.field private final E:Landroid/content/BroadcastReceiver;

.field private F:Lcom/bytedance/sdk/openadsdk/h/n$a;

.field private G:Z

.field protected a:Z

.field protected b:J

.field private d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

.field private e:Landroid/view/ViewGroup;

.field private f:Lcom/bytedance/sdk/openadsdk/h/t;

.field private g:J

.field private h:J

.field private i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

.field private j:Lcom/bytedance/sdk/openadsdk/core/video/a/c$a;

.field private k:J

.field private l:J

.field private m:J

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private o:Z

.field private p:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private q:Z

.field private r:Z

.field private s:Z

.field private final t:Lcom/bytedance/sdk/openadsdk/core/d/h;

.field private u:Z

.field private v:Z

.field private w:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/video/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private x:J

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/d/h;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v2, Lcom/bytedance/sdk/openadsdk/h/t;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/h/t;-><init>(Lcom/bytedance/sdk/openadsdk/h/t$a;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->f:Lcom/bytedance/sdk/openadsdk/h/t;

    .line 46
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->g:J

    .line 47
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->h:J

    .line 50
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->k:J

    .line 51
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->l:J

    .line 56
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->q:Z

    .line 57
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->r:Z

    .line 58
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->s:Z

    .line 60
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->u:Z

    .line 61
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->v:Z

    .line 66
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->x:J

    .line 68
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->y:Z

    .line 69
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->z:Z

    .line 70
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->A:Z

    .line 235
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/video/a/g$2;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/a/g;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->B:Ljava/lang/Runnable;

    .line 244
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/video/a/g$3;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/a/g;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->C:Ljava/lang/Runnable;

    .line 262
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/video/a/g$4;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/a/g;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->D:Ljava/lang/Runnable;

    .line 753
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->a:Z

    .line 853
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/video/a/g$5;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/a/g;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->E:Landroid/content/BroadcastReceiver;

    .line 865
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/h/n;->b(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/n$a;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->F:Lcom/bytedance/sdk/openadsdk/h/n$a;

    .line 887
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->G:Z

    .line 82
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->e:Landroid/view/ViewGroup;

    .line 83
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->p:Ljava/lang/ref/WeakReference;

    .line 84
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->t:Lcom/bytedance/sdk/openadsdk/core/d/h;

    .line 85
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->b(Landroid/content/Context;)V

    .line 87
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->q:Z

    .line 88
    return-void

    :cond_0
    move v0, v1

    .line 87
    goto :goto_0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/a/g;J)J
    .locals 1

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->g:J

    return-wide p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/a/g;)Lcom/bytedance/sdk/openadsdk/core/video/a/h;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(Ljava/lang/String;)V

    .line 208
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->g:J

    .line 209
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a(I)V

    .line 211
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a(I)V

    .line 213
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/a/g$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/a/g;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->a(Ljava/lang/Runnable;)V

    .line 230
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->q()V

    .line 233
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/video/a/g;)Lcom/bytedance/sdk/openadsdk/core/video/c/d;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 73
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/video/a/b$a;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    .line 74
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/a/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/b$a;

    invoke-virtual {v4, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/a/b$a;->e:Lcom/bytedance/sdk/openadsdk/core/video/a/b$a;

    invoke-virtual {v4, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 76
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/bytedance/sdk/openadsdk/R$layout;->tt_video_play_layout_for_live:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 77
    invoke-virtual {v1, v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->t:Lcom/bytedance/sdk/openadsdk/core/d/h;

    move-object v1, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;-><init>(Landroid/content/Context;Landroid/view/View;ZLjava/util/EnumSet;Lcom/bytedance/sdk/openadsdk/core/d/h;Lcom/bytedance/sdk/openadsdk/core/video/a/c;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    .line 78
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a(Lcom/bytedance/sdk/openadsdk/core/video/a/a;)V

    .line 79
    return-void
.end method

.method private b(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->n:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->n:Ljava/util/ArrayList;

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/video/a/g;)J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->k:J

    return-wide v0
.end method

.method private c(I)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 282
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->s()Z

    move-result v0

    if-nez v0, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->h()V

    .line 289
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->j:Lcom/bytedance/sdk/openadsdk/core/video/a/c$a;

    if-eqz v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->j:Lcom/bytedance/sdk/openadsdk/core/video/a/c$a;

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->h:J

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->k:J

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->m:J

    invoke-static {v4, v5, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a(JJ)I

    move-result v1

    invoke-interface {v0, v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/c$a;->a(JI)V

    .line 292
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->g:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->h:J

    .line 293
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->t:Lcom/bytedance/sdk/openadsdk/core/d/h;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1, v2, v8}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a(Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/ref/WeakReference;Z)V

    .line 294
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->s:Z

    if-nez v0, :cond_3

    .line 295
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->t:Lcom/bytedance/sdk/openadsdk/core/d/h;

    const-string v2, "embeded_ad"

    const-string v3, "feed_over"

    .line 296
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->e()J

    move-result-wide v4

    const/16 v6, 0x64

    .line 295
    invoke-static/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/d/c;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 297
    iput-boolean v8, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->s:Z

    .line 298
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->m:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->m:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->a(JJ)V

    .line 299
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->m:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->k:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->l:J

    .line 301
    :cond_3
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->u:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->a:Z

    if-eqz v0, :cond_4

    .line 302
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->e(Lcom/bytedance/sdk/openadsdk/core/video/a/b;Landroid/view/View;)V

    .line 304
    :cond_4
    iput-boolean v8, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->A:Z

    goto :goto_0
.end method

.method private d(I)Z
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->c(I)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/core/video/a/g;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->v:Z

    return v0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/core/video/a/g;)Lcom/bytedance/sdk/openadsdk/h/t;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->f:Lcom/bytedance/sdk/openadsdk/h/t;

    return-object v0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/core/video/a/g;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->B:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/core/video/a/g;)Lcom/bytedance/sdk/openadsdk/core/video/a/c$a;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->j:Lcom/bytedance/sdk/openadsdk/core/video/a/c$a;

    return-object v0
.end method

.method static synthetic h(Lcom/bytedance/sdk/openadsdk/core/video/a/g;)J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->m:J

    return-wide v0
.end method

.method private s()Z
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->p:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private t()V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->n:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 335
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 336
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 338
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private u()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 666
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->s()Z

    move-result v0

    if-nez v0, :cond_1

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 669
    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->a:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->c(Z)V

    .line 670
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_3

    .line 671
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->c:Ljava/lang/String;

    const-string v1, "context is not activity, not support this function."

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 669
    goto :goto_1

    .line 674
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v0, :cond_4

    .line 675
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->c(Landroid/view/ViewGroup;)V

    .line 676
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->c(Z)V

    .line 678
    :cond_4
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->a(I)V

    .line 679
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->w:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->w:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/a/e;

    .line 680
    :goto_2
    if-eqz v0, :cond_0

    .line 681
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->a:Z

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/e;->a(Z)V

    goto :goto_0

    .line 679
    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a()V

    .line 351
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 4

    .prologue
    const/16 v3, 0x400

    .line 589
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->s()Z

    move-result v0

    if-nez v0, :cond_1

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    if-eqz p1, :cond_2

    const/16 v0, 0x8

    if-ne p1, v0, :cond_4

    :cond_2
    const/4 v0, 0x1

    move v1, v0

    .line 594
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 595
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 598
    check-cast v0, Landroid/app/Activity;

    .line 601
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    :goto_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v2, :cond_3

    .line 606
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->p()Z

    .line 608
    :cond_3
    if-nez v1, :cond_5

    .line 609
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0

    .line 593
    :cond_4
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1

    .line 611
    :cond_5
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 602
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method public a(J)V
    .locals 5

    .prologue
    .line 142
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->k:J

    .line 143
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->l:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->k:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->l:J

    :goto_0
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->l:J

    .line 144
    return-void

    .line 143
    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->k:J

    goto :goto_0
.end method

.method public a(JJ)V
    .locals 3

    .prologue
    .line 543
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->k:J

    .line 544
    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->m:J

    .line 545
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a(JJ)V

    .line 546
    invoke-static {p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a(JJ)I

    move-result v0

    .line 547
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->b(I)V

    .line 548
    return-void
.end method

.method protected a(JZ)V
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-nez v0, :cond_0

    .line 780
    :goto_0
    return-void

    .line 776
    :cond_0
    if-eqz p3, :cond_1

    .line 777
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->p()V

    .line 779
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(J)V

    goto :goto_0
.end method

.method protected a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 868
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->s()Z

    move-result v0

    if-nez v0, :cond_1

    .line 885
    :cond_0
    :goto_0
    return-void

    .line 871
    :cond_1
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/h/n;->b(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/n$a;

    move-result-object v0

    .line 873
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->F:Lcom/bytedance/sdk/openadsdk/h/n$a;

    if-eq v1, v0, :cond_0

    .line 877
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->z:Z

    if-nez v1, :cond_2

    .line 878
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->b(I)Z

    .line 880
    :cond_2
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->F:Lcom/bytedance/sdk/openadsdk/h/n$a;

    .line 882
    sget-object v1, Lcom/bytedance/sdk/openadsdk/h/n$a;->e:Lcom/bytedance/sdk/openadsdk/h/n$a;

    if-ne v0, v1, :cond_0

    .line 883
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->b()V

    goto :goto_0
.end method

.method public a(Landroid/os/Message;)V
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 411
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->p:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->p:Ljava/lang/ref/WeakReference;

    .line 412
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 420
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 422
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->m:J

    goto :goto_0

    .line 417
    :sswitch_1
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->c(I)V

    goto :goto_0

    .line 427
    :sswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 428
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v1, :cond_2

    .line 429
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->h()V

    .line 431
    :cond_2
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->q:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->r:Z

    if-nez v0, :cond_0

    .line 432
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->u:Z

    if-eqz v0, :cond_3

    .line 433
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->t:Lcom/bytedance/sdk/openadsdk/core/d/h;

    const-string v2, "embeded_ad"

    const-string v3, "feed_auto_play"

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/d/c;->f(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :goto_1
    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->r:Z

    goto :goto_0

    .line 435
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->t:Lcom/bytedance/sdk/openadsdk/core/d/h;

    const-string v2, "embeded_ad"

    const-string v3, "feed_play"

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/d/c;->f(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 441
    :sswitch_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->f:Lcom/bytedance/sdk/openadsdk/h/t;

    if-eqz v0, :cond_4

    .line 442
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->f:Lcom/bytedance/sdk/openadsdk/h/t;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/t;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 444
    :cond_4
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->q:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->r:Z

    if-nez v0, :cond_5

    .line 445
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->u:Z

    if-eqz v0, :cond_6

    .line 446
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->t:Lcom/bytedance/sdk/openadsdk/core/d/h;

    const-string v2, "embeded_ad"

    const-string v3, "feed_auto_play"

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/d/c;->f(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    :goto_2
    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->r:Z

    .line 452
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->h()V

    goto/16 :goto_0

    .line 448
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->t:Lcom/bytedance/sdk/openadsdk/core/d/h;

    const-string v2, "embeded_ad"

    const-string v3, "feed_play"

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/d/c;->f(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 457
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->k:J

    .line 459
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->l:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->k:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->l:J

    :goto_3
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->l:J

    .line 460
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->k:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->m:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->a(JJ)V

    goto/16 :goto_0

    .line 459
    :cond_7
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->k:J

    goto :goto_3

    .line 464
    :sswitch_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v0, :cond_8

    .line 465
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->h()V

    .line 467
    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->j:Lcom/bytedance/sdk/openadsdk/core/video/a/c$a;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->j:Lcom/bytedance/sdk/openadsdk/core/video/a/c$a;

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->h:J

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->k:J

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->m:J

    invoke-static {v4, v5, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a(JJ)I

    move-result v1

    invoke-interface {v0, v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/c$a;->b(JI)V

    goto/16 :goto_0

    .line 472
    :sswitch_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->h()V

    goto/16 :goto_0

    .line 415
    nop

    :sswitch_data_0
    .sparse-switch
        0x6c -> :sswitch_0
        0x6d -> :sswitch_4
        0x12e -> :sswitch_1
        0x12f -> :sswitch_5
        0x130 -> :sswitch_2
        0x131 -> :sswitch_3
        0x132 -> :sswitch_6
    .end sparse-switch
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/a/b;I)V
    .locals 3

    .prologue
    .line 508
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-nez v0, :cond_0

    .line 513
    :goto_0
    return-void

    .line 511
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->l()V

    .line 512
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->b:J

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d(I)Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->a(JZ)V

    goto :goto_0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/a/b;IZ)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 527
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->s()Z

    move-result v0

    if-nez v0, :cond_1

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 531
    int-to-long v2, p2

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->m:J

    mul-long/2addr v2, v4

    long-to-float v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/bytedance/sdk/openadsdk/R$integer;->video_progress_max:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float v0, v1, v0

    float-to-long v0, v0

    .line 532
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->m:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_2

    .line 533
    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->b:J

    .line 537
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a(J)V

    goto :goto_0

    .line 535
    :cond_2
    iput-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->b:J

    goto :goto_1
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/a/b;Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 697
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->o:Z

    .line 698
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-nez v0, :cond_0

    .line 703
    :goto_0
    return-void

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(Landroid/view/SurfaceHolder;)V

    .line 702
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->t()V

    goto :goto_0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/a/b;Landroid/view/SurfaceHolder;III)V
    .locals 0

    .prologue
    .line 708
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/a/b;Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 481
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->s()Z

    move-result v0

    if-nez v0, :cond_1

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 485
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->a()V

    .line 486
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a(ZZ)V

    .line 487
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->d()V

    goto :goto_0

    .line 489
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h()Z

    move-result v0

    if-nez v0, :cond_4

    .line 490
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v0, :cond_3

    .line 491
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a(Landroid/view/ViewGroup;)V

    .line 493
    :cond_3
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->k:J

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->e(J)V

    .line 494
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0, v2, v2}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a(ZZ)V

    goto :goto_0

    .line 498
    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->b()V

    .line 499
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0, v2, v2}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a(ZZ)V

    goto :goto_0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/a/b;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 662
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->u()V

    .line 663
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/a/b;Landroid/view/View;ZZ)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 557
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->s()Z

    move-result v0

    if-nez v0, :cond_1

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 560
    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->a:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->c(Z)V

    .line 561
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_3

    .line 562
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->c:Ljava/lang/String;

    const-string v1, "context is not activity, not support this function."

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 560
    goto :goto_1

    .line 565
    :cond_3
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->a:Z

    if-eqz v0, :cond_6

    .line 566
    if-eqz p3, :cond_5

    const/16 v0, 0x8

    :goto_2
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->a(I)V

    .line 568
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v0, :cond_4

    .line 569
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->b(Landroid/view/ViewGroup;)V

    .line 570
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->c(Z)V

    .line 581
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->w:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->w:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/a/e;

    .line 582
    :goto_4
    if-eqz v0, :cond_0

    .line 583
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->a:Z

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/e;->a(Z)V

    goto :goto_0

    :cond_5
    move v0, v2

    .line 566
    goto :goto_2

    .line 573
    :cond_6
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->a(I)V

    .line 575
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v0, :cond_4

    .line 576
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->c(Landroid/view/ViewGroup;)V

    .line 577
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->c(Z)V

    goto :goto_3

    .line 581
    :cond_7
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/a/c$a;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->j:Lcom/bytedance/sdk/openadsdk/core/video/a/c$a;

    .line 344
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/a/e;)V
    .locals 1

    .prologue
    .line 277
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->w:Ljava/lang/ref/WeakReference;

    .line 278
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/widget/a;FZ)V
    .locals 8

    .prologue
    .line 798
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->s()Z

    move-result v0

    if-nez v0, :cond_1

    .line 808
    :cond_0
    :goto_0
    return-void

    .line 801
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    .line 803
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 804
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->k:J

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->m:J

    move-object v0, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a(Landroid/content/Context;FZJJ)V

    goto :goto_0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/widget/b$a;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 813
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/a/g$6;->a:[I

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/b$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 826
    :goto_0
    return-void

    .line 815
    :pswitch_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->a()V

    goto :goto_0

    .line 818
    :pswitch_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->c()V

    goto :goto_0

    .line 821
    :pswitch_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->b()V

    .line 822
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->y:Z

    .line 823
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->z:Z

    goto :goto_0

    .line 813
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 313
    if-nez p1, :cond_0

    .line 321
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->o:Z

    if-eqz v0, :cond_1

    .line 317
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 319
    :cond_1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->u:Z

    .line 149
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a(Z)V

    .line 150
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;JZ)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "JZ)Z"
        }
    .end annotation

    .prologue
    .line 94
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video local url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->c:Ljava/lang/String;

    const-string v1, "No video info"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const/4 v0, 0x0

    .line 122
    :goto_0
    return v0

    .line 99
    :cond_0
    iput-boolean p9, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->v:Z

    .line 100
    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-lez v0, :cond_1

    .line 101
    iput-wide p7, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->k:J

    .line 102
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->l:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->k:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->l:J

    :goto_1
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->l:J

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->f()V

    .line 107
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->e()V

    .line 108
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->c(II)V

    .line 109
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a(Landroid/view/ViewGroup;)V

    .line 110
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a(II)V

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-nez v0, :cond_3

    .line 113
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->f:Lcom/bytedance/sdk/openadsdk/h/t;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    .line 116
    :cond_3
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->h:J

    .line 118
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    const/4 v0, 0x1

    goto :goto_0

    .line 102
    :cond_4
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->k:J

    goto :goto_1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 355
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->f()V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->g()V

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_2

    .line 362
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->k:J

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->v:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v1, v4, v5, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(ZJZ)V

    .line 363
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->l()V

    .line 367
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 362
    goto :goto_0
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 167
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->x:J

    .line 168
    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/video/a/b;I)V
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->m()V

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v0, :cond_1

    .line 521
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->d()V

    .line 523
    :cond_1
    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/video/a/b;Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 712
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->o:Z

    .line 713
    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/video/a/b;Landroid/view/View;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 552
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->a(Lcom/bytedance/sdk/openadsdk/core/video/a/b;Landroid/view/View;ZZ)V

    .line 553
    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/video/a/b;Landroid/view/View;ZZ)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 627
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->u:Z

    if-eqz v0, :cond_0

    .line 628
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->a()V

    .line 630
    :cond_0
    if-eqz p3, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->u:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 631
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->o()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a(ZZ)V

    .line 632
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0, p4, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a(ZZZ)V

    .line 634
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 635
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->d()V

    .line 636
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->c()V

    .line 640
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 631
    goto :goto_0

    .line 638
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->d()V

    goto :goto_1
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->v:Z

    .line 189
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(Z)V

    .line 192
    :cond_0
    return-void
.end method

.method protected b(I)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 829
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/n;->b(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/n$a;

    move-result-object v1

    .line 830
    sget-object v2, Lcom/bytedance/sdk/openadsdk/h/n$a;->a:Lcom/bytedance/sdk/openadsdk/h/n$a;

    if-ne v1, v2, :cond_0

    .line 832
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->t:Lcom/bytedance/sdk/openadsdk/core/d/h;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a(Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/ref/WeakReference;Z)V

    .line 834
    :cond_0
    sget-object v2, Lcom/bytedance/sdk/openadsdk/h/n$a;->e:Lcom/bytedance/sdk/openadsdk/h/n$a;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/bytedance/sdk/openadsdk/h/n$a;->a:Lcom/bytedance/sdk/openadsdk/h/n$a;

    if-eq v1, v2, :cond_2

    .line 835
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->a()V

    .line 836
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->y:Z

    .line 837
    iput-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->z:Z

    .line 838
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->t:Lcom/bytedance/sdk/openadsdk/core/d/h;

    if-eqz v1, :cond_1

    .line 839
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->t:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->a()Lcom/bytedance/sdk/openadsdk/core/d/m;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a(ILcom/bytedance/sdk/openadsdk/core/d/m;)Z

    move-result v0

    .line 847
    :cond_1
    :goto_0
    return v0

    .line 841
    :cond_2
    sget-object v2, Lcom/bytedance/sdk/openadsdk/h/n$a;->e:Lcom/bytedance/sdk/openadsdk/h/n$a;

    if-ne v1, v2, :cond_1

    .line 842
    iput-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->y:Z

    .line 843
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v1, :cond_1

    .line 844
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a()V

    goto :goto_0
.end method

.method public c()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 386
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->b()V

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->t:Lcom/bytedance/sdk/openadsdk/core/d/h;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1, v2, v7}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a(Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/ref/WeakReference;Z)V

    .line 394
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->f:Lcom/bytedance/sdk/openadsdk/h/t;

    if-eqz v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->f:Lcom/bytedance/sdk/openadsdk/h/t;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/t;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 396
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->f:Lcom/bytedance/sdk/openadsdk/h/t;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/t;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 398
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->m()V

    .line 400
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->r()V

    .line 401
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->s:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->r:Z

    if-eqz v0, :cond_2

    .line 403
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->t:Lcom/bytedance/sdk/openadsdk/core/d/h;

    const-string v2, "embeded_ad"

    const-string v3, "feed_break"

    .line 404
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->e()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->k()I

    move-result v6

    .line 403
    invoke-static/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/d/c;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 405
    iput-boolean v7, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->s:Z

    .line 407
    :cond_2
    return-void
.end method

.method public c(J)V
    .locals 1

    .prologue
    .line 175
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->m:J

    .line 176
    return-void
.end method

.method public c(Lcom/bytedance/sdk/openadsdk/core/video/a/b;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->j()V

    .line 621
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->c()V

    .line 623
    return-void
.end method

.method protected c(Z)V
    .locals 0

    .prologue
    .line 686
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->a:Z

    .line 687
    return-void
.end method

.method public d()J
    .locals 2

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->k:J

    return-wide v0
.end method

.method public d(J)V
    .locals 7

    .prologue
    .line 758
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-nez v0, :cond_1

    .line 770
    :cond_0
    :goto_0
    return-void

    .line 762
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->m:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->a:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 766
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->b:J

    .line 767
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->b:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->k:J

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->m:J

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d(I)Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->a(JZ)V

    goto :goto_0
.end method

.method public d(Lcom/bytedance/sdk/openadsdk/core/video/a/b;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 644
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->a:Z

    if-eqz v0, :cond_1

    .line 645
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->c(Z)V

    .line 646
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->c(Landroid/view/ViewGroup;)V

    .line 649
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->a(I)V

    .line 653
    :goto_0
    return-void

    .line 651
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->c()V

    goto :goto_0
.end method

.method public e()J
    .locals 4

    .prologue
    .line 180
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->p()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->x:J

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public e(J)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 371
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->k:J

    .line 372
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->l:J

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->k:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->l:J

    :goto_0
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->l:J

    .line 373
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->f()V

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_1

    .line 377
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->k:J

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->v:Z

    if-nez v0, :cond_3

    move v0, v2

    :goto_1
    invoke-virtual {v1, v2, v4, v5, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(ZJZ)V

    .line 378
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->l()V

    .line 381
    :cond_1
    return-void

    .line 372
    :cond_2
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->k:J

    goto :goto_0

    .line 377
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public e(Lcom/bytedance/sdk/openadsdk/core/video/a/b;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 657
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->a(Lcom/bytedance/sdk/openadsdk/core/video/a/b;Landroid/view/View;Z)V

    .line 658
    return-void
.end method

.method public f()J
    .locals 2

    .prologue
    .line 171
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->m:J

    return-wide v0
.end method

.method public f(Lcom/bytedance/sdk/openadsdk/core/video/a/b;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 693
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->y:Z

    return v0
.end method

.method public h()Lcom/bytedance/sdk/openadsdk/core/video/c/d;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->v:Z

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->A:Z

    return v0
.end method

.method public k()I
    .locals 4

    .prologue
    .line 201
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->l:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->m:J

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a(JJ)I

    move-result v0

    return v0
.end method

.method public l()V
    .locals 4

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->m()V

    .line 255
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->f:Lcom/bytedance/sdk/openadsdk/h/t;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->D:Ljava/lang/Runnable;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/h/t;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 256
    return-void
.end method

.method public m()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->f:Lcom/bytedance/sdk/openadsdk/h/t;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/t;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 260
    return-void
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->k()Z

    move-result v0

    return v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f()Z

    move-result v0

    .line 750
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 787
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->d(I)V

    .line 789
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0, v1, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->b(ZZ)V

    .line 790
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->c(Z)V

    .line 791
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->c()V

    .line 792
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->e()V

    .line 794
    :cond_0
    return-void
.end method

.method protected q()V
    .locals 3

    .prologue
    .line 890
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->G:Z

    if-eqz v0, :cond_0

    .line 901
    :goto_0
    return-void

    .line 893
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 894
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->G:Z

    .line 895
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 896
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 898
    :try_start_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->E:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 899
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected r()V
    .locals 2

    .prologue
    .line 904
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->G:Z

    if-nez v0, :cond_0

    .line 913
    :goto_0
    return-void

    .line 907
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 908
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->G:Z

    .line 910
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/g;->E:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 911
    :catch_0
    move-exception v0

    goto :goto_0
.end method
