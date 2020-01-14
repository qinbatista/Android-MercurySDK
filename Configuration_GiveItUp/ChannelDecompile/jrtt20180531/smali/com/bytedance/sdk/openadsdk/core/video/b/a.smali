.class public Lcom/bytedance/sdk/openadsdk/core/video/b/a;
.super Ljava/lang/Object;
.source "RewardVideoController.java"

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
    .line 47
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/d/h;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v2, Lcom/bytedance/sdk/openadsdk/h/t;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/h/t;-><init>(Lcom/bytedance/sdk/openadsdk/h/t$a;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->f:Lcom/bytedance/sdk/openadsdk/h/t;

    .line 51
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->g:J

    .line 52
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->h:J

    .line 55
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->k:J

    .line 56
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->l:J

    .line 61
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->q:Z

    .line 62
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->r:Z

    .line 63
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->s:Z

    .line 65
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->u:Z

    .line 66
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->v:Z

    .line 71
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->x:J

    .line 73
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->y:Z

    .line 74
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->z:Z

    .line 75
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->A:Z

    .line 238
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/video/b/a$2;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->B:Ljava/lang/Runnable;

    .line 247
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/video/b/a$3;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->C:Ljava/lang/Runnable;

    .line 265
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/video/b/a$4;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->D:Ljava/lang/Runnable;

    .line 758
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a:Z

    .line 854
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/video/b/a$5;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->E:Landroid/content/BroadcastReceiver;

    .line 866
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/h/n;->b(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/n$a;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->F:Lcom/bytedance/sdk/openadsdk/h/n$a;

    .line 885
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->G:Z

    .line 87
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->e:Landroid/view/ViewGroup;

    .line 88
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->p:Ljava/lang/ref/WeakReference;

    .line 89
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->t:Lcom/bytedance/sdk/openadsdk/core/d/h;

    .line 90
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b(Landroid/content/Context;)V

    .line 92
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->q:Z

    .line 93
    return-void

    :cond_0
    move v0, v1

    .line 92
    goto :goto_0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/b/a;J)J
    .locals 1

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->g:J

    return-wide p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)Lcom/bytedance/sdk/openadsdk/core/video/a/h;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

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
    .line 208
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(Ljava/lang/String;)V

    .line 211
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->g:J

    .line 212
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a(I)V

    .line 214
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a(I)V

    .line 216
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a(Ljava/lang/Runnable;)V

    .line 233
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->q()V

    .line 236
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)Lcom/bytedance/sdk/openadsdk/core/video/c/d;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 78
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/video/a/b$a;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    .line 79
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/a/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/a/b$a;

    invoke-virtual {v4, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/a/b$a;->e:Lcom/bytedance/sdk/openadsdk/core/video/a/b$a;

    invoke-virtual {v4, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 81
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/bytedance/sdk/openadsdk/R$layout;->tt_video_play_layout_for_live:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 82
    invoke-virtual {v1, v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->t:Lcom/bytedance/sdk/openadsdk/core/d/h;

    move-object v1, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;-><init>(Landroid/content/Context;Landroid/view/View;ZLjava/util/EnumSet;Lcom/bytedance/sdk/openadsdk/core/d/h;Lcom/bytedance/sdk/openadsdk/core/video/a/c;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    .line 83
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a(Lcom/bytedance/sdk/openadsdk/core/video/a/a;)V

    .line 84
    return-void
.end method

.method private b(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Ljava/util/ArrayList;

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->k:J

    return-wide v0
.end method

.method private c(I)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 285
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->s()Z

    move-result v0

    if-nez v0, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->h()V

    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->g:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->h:J

    .line 293
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/a/c$a;

    if-eqz v0, :cond_2

    .line 294
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/a/c$a;

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->h:J

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->k:J

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->m:J

    invoke-static {v4, v5, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a(JJ)I

    move-result v1

    invoke-interface {v0, v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/c$a;->a(JI)V

    .line 297
    :cond_2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->s:Z

    if-nez v0, :cond_3

    .line 298
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->t:Lcom/bytedance/sdk/openadsdk/core/d/h;

    const-string v2, "embeded_ad"

    const-string v3, "feed_over"

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->m:J

    const/16 v6, 0x64

    invoke-static/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/d/c;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 300
    iput-boolean v8, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->s:Z

    .line 301
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->m:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->m:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a(JJ)V

    .line 302
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->m:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->k:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->l:J

    .line 307
    :cond_3
    iput-boolean v8, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->A:Z

    goto :goto_0
.end method

.method private d(I)Z
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->c(I)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->v:Z

    return v0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)Lcom/bytedance/sdk/openadsdk/h/t;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->f:Lcom/bytedance/sdk/openadsdk/h/t;

    return-object v0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->B:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)Lcom/bytedance/sdk/openadsdk/core/video/a/c$a;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/a/c$a;

    return-object v0
.end method

.method static synthetic h(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->m:J

    return-wide v0
.end method

.method private s()Z
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->p:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->p:Ljava/lang/ref/WeakReference;

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
    .line 334
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 338
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 339
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 341
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private u()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 671
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->s()Z

    move-result v0

    if-nez v0, :cond_1

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 674
    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->c(Z)V

    .line 675
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_3

    .line 676
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->c:Ljava/lang/String;

    const-string v1, "context is not activity, not support this function."

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 674
    goto :goto_1

    .line 679
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v0, :cond_4

    .line 680
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->c(Landroid/view/ViewGroup;)V

    .line 681
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->c(Z)V

    .line 683
    :cond_4
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a(I)V

    .line 684
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->w:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->w:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/a/e;

    .line 685
    :goto_2
    if-eqz v0, :cond_0

    .line 686
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a:Z

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/e;->a(Z)V

    goto :goto_0

    .line 684
    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    .line 351
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a()V

    .line 354
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->s:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->r:Z

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->t:Lcom/bytedance/sdk/openadsdk/core/d/h;

    const-string v2, "embeded_ad"

    const-string v3, "play_pause"

    .line 357
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->e()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->k()I

    move-result v6

    .line 356
    invoke-static/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/d/c;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 359
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->r()V

    .line 360
    return-void
.end method

.method public a(I)V
    .locals 4

    .prologue
    const/16 v3, 0x400

    .line 594
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->s()Z

    move-result v0

    if-nez v0, :cond_1

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 598
    :cond_1
    if-eqz p1, :cond_2

    const/16 v0, 0x8

    if-ne p1, v0, :cond_4

    :cond_2
    const/4 v0, 0x1

    move v1, v0

    .line 599
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 600
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 603
    check-cast v0, Landroid/app/Activity;

    .line 606
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    :goto_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v2, :cond_3

    .line 611
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->p()Z

    .line 613
    :cond_3
    if-nez v1, :cond_5

    .line 614
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0

    .line 598
    :cond_4
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1

    .line 616
    :cond_5
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 607
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method public a(J)V
    .locals 5

    .prologue
    .line 147
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->k:J

    .line 148
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->l:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->k:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->l:J

    :goto_0
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->l:J

    .line 149
    return-void

    .line 148
    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->k:J

    goto :goto_0
.end method

.method public a(JJ)V
    .locals 3

    .prologue
    .line 545
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->k:J

    .line 546
    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->m:J

    .line 547
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a(JJ)V

    .line 548
    invoke-static {p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a(JJ)I

    move-result v0

    .line 549
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->b(I)V

    .line 550
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/a/c$a;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/a/c$a;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/a/c$a;->a(JJ)V

    .line 553
    :cond_0
    return-void
.end method

.method protected a(JZ)V
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-nez v0, :cond_0

    .line 785
    :goto_0
    return-void

    .line 781
    :cond_0
    if-eqz p3, :cond_1

    .line 782
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->p()V

    .line 784
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(J)V

    goto :goto_0
.end method

.method protected a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 869
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->s()Z

    move-result v0

    if-nez v0, :cond_1

    .line 883
    :cond_0
    :goto_0
    return-void

    .line 872
    :cond_1
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/h/n;->b(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/n$a;

    move-result-object v0

    .line 874
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->F:Lcom/bytedance/sdk/openadsdk/h/n$a;

    if-eq v1, v0, :cond_0

    .line 878
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->z:Z

    if-nez v1, :cond_2

    .line 879
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b(I)Z

    .line 882
    :cond_2
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->F:Lcom/bytedance/sdk/openadsdk/h/n$a;

    goto :goto_0
.end method

.method public a(Landroid/os/Message;)V
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 421
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->p:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->p:Ljava/lang/ref/WeakReference;

    .line 422
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 430
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 432
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->m:J

    goto :goto_0

    .line 427
    :sswitch_1
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->c(I)V

    goto :goto_0

    .line 437
    :sswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 438
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v1, :cond_2

    .line 439
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->h()V

    .line 441
    :cond_2
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->q:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->r:Z

    if-nez v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->t:Lcom/bytedance/sdk/openadsdk/core/d/h;

    const-string v2, "embeded_ad"

    const-string v3, "feed_play"

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/d/c;->f(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->r:Z

    goto :goto_0

    .line 447
    :sswitch_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->f:Lcom/bytedance/sdk/openadsdk/h/t;

    if-eqz v0, :cond_3

    .line 448
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->f:Lcom/bytedance/sdk/openadsdk/h/t;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/t;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 450
    :cond_3
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->q:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->r:Z

    if-nez v0, :cond_4

    .line 451
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->t:Lcom/bytedance/sdk/openadsdk/core/d/h;

    const-string v2, "embeded_ad"

    const-string v3, "feed_play"

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/d/c;->f(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->r:Z

    .line 454
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->h()V

    goto/16 :goto_0

    .line 459
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->k:J

    .line 461
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->l:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->k:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->l:J

    :goto_1
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->l:J

    .line 462
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->k:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->m:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a(JJ)V

    goto/16 :goto_0

    .line 461
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->k:J

    goto :goto_1

    .line 466
    :sswitch_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v0, :cond_6

    .line 467
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->h()V

    .line 469
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/a/c$a;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/a/c$a;

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->h:J

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->k:J

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->m:J

    invoke-static {v4, v5, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a(JJ)I

    move-result v1

    invoke-interface {v0, v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/c$a;->b(JI)V

    goto/16 :goto_0

    .line 474
    :sswitch_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->h()V

    goto/16 :goto_0

    .line 425
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
    .line 510
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-nez v0, :cond_0

    .line 515
    :goto_0
    return-void

    .line 513
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->l()V

    .line 514
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b:J

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d(I)Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a(JZ)V

    goto :goto_0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/a/b;IZ)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 529
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->s()Z

    move-result v0

    if-nez v0, :cond_1

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 533
    int-to-long v2, p2

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->m:J

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

    .line 534
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->m:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_2

    .line 535
    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b:J

    .line 539
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a(J)V

    goto :goto_0

    .line 537
    :cond_2
    iput-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b:J

    goto :goto_1
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/a/b;Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 702
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->o:Z

    .line 703
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-nez v0, :cond_0

    .line 708
    :goto_0
    return-void

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(Landroid/view/SurfaceHolder;)V

    .line 707
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->t()V

    goto :goto_0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/a/b;Landroid/view/SurfaceHolder;III)V
    .locals 0

    .prologue
    .line 713
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/a/b;Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 483
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->s()Z

    move-result v0

    if-nez v0, :cond_1

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 487
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a()V

    .line 488
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a(ZZ)V

    .line 489
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->d()V

    goto :goto_0

    .line 491
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h()Z

    move-result v0

    if-nez v0, :cond_4

    .line 492
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v0, :cond_3

    .line 493
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a(Landroid/view/ViewGroup;)V

    .line 495
    :cond_3
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->k:J

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->e(J)V

    .line 496
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0, v2, v2}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a(ZZ)V

    goto :goto_0

    .line 500
    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b()V

    .line 501
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0, v2, v2}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a(ZZ)V

    goto :goto_0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/a/b;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 667
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->u()V

    .line 668
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/a/b;Landroid/view/View;ZZ)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 562
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->s()Z

    move-result v0

    if-nez v0, :cond_1

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->c(Z)V

    .line 566
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_3

    .line 567
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->c:Ljava/lang/String;

    const-string v1, "context is not activity, not support this function."

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 565
    goto :goto_1

    .line 570
    :cond_3
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a:Z

    if-eqz v0, :cond_6

    .line 571
    if-eqz p3, :cond_5

    const/16 v0, 0x8

    :goto_2
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a(I)V

    .line 573
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v0, :cond_4

    .line 574
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->b(Landroid/view/ViewGroup;)V

    .line 575
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->c(Z)V

    .line 586
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->w:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->w:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/a/e;

    .line 587
    :goto_4
    if-eqz v0, :cond_0

    .line 588
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a:Z

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/e;->a(Z)V

    goto :goto_0

    :cond_5
    move v0, v2

    .line 571
    goto :goto_2

    .line 578
    :cond_6
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a(I)V

    .line 580
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v0, :cond_4

    .line 581
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->c(Landroid/view/ViewGroup;)V

    .line 582
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->c(Z)V

    goto :goto_3

    .line 586
    :cond_7
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/a/c$a;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/a/c$a;

    .line 347
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/a/e;)V
    .locals 1

    .prologue
    .line 280
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->w:Ljava/lang/ref/WeakReference;

    .line 281
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/widget/a;FZ)V
    .locals 8

    .prologue
    .line 803
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->s()Z

    move-result v0

    if-nez v0, :cond_1

    .line 813
    :cond_0
    :goto_0
    return-void

    .line 806
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    .line 808
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 809
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->k:J

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->m:J

    move-object v0, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a(Landroid/content/Context;FZJJ)V

    goto :goto_0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/widget/b$a;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 818
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$6;->a:[I

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/b$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 831
    :goto_0
    return-void

    .line 820
    :pswitch_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a()V

    goto :goto_0

    .line 823
    :pswitch_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->c()V

    goto :goto_0

    .line 826
    :pswitch_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b()V

    .line 827
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->y:Z

    .line 828
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->z:Z

    goto :goto_0

    .line 818
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
    .line 316
    if-nez p1, :cond_0

    .line 324
    :goto_0
    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->o:Z

    if-eqz v0, :cond_1

    .line 320
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 322
    :cond_1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->u:Z

    .line 154
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a(Z)V

    .line 155
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
    .line 99
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->c:Ljava/lang/String;

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

    .line 100
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->c:Ljava/lang/String;

    const-string v1, "No video info"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x0

    .line 127
    :goto_0
    return v0

    .line 104
    :cond_0
    iput-boolean p9, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->v:Z

    .line 105
    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-lez v0, :cond_1

    .line 106
    iput-wide p7, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->k:J

    .line 107
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->l:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->k:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->l:J

    :goto_1
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->l:J

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->f()V

    .line 112
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->e()V

    .line 113
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->c(II)V

    .line 114
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a(Landroid/view/ViewGroup;)V

    .line 115
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a(II)V

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-nez v0, :cond_3

    .line 118
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->f:Lcom/bytedance/sdk/openadsdk/h/t;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    .line 121
    :cond_3
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->h:J

    .line 123
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    const/4 v0, 0x1

    goto :goto_0

    .line 107
    :cond_4
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->k:J

    goto :goto_1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 364
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->f()V

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_1

    .line 368
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->k:J

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->v:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v1, v4, v5, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(ZJZ)V

    .line 369
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->l()V

    .line 370
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->q()V

    .line 372
    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->s:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->r:Z

    if-eqz v0, :cond_2

    .line 373
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->t:Lcom/bytedance/sdk/openadsdk/core/d/h;

    const-string v2, "embeded_ad"

    const-string v3, "continue_play"

    .line 374
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->e()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->k()I

    move-result v6

    .line 373
    invoke-static/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/d/c;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 377
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 368
    goto :goto_0
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 172
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->x:J

    .line 173
    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/video/a/b;I)V
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_0

    .line 520
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->m()V

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v0, :cond_1

    .line 523
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->d()V

    .line 525
    :cond_1
    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/video/a/b;Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 717
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->o:Z

    .line 718
    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/video/a/b;Landroid/view/View;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 557
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a(Lcom/bytedance/sdk/openadsdk/core/video/a/b;Landroid/view/View;ZZ)V

    .line 558
    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/video/a/b;Landroid/view/View;ZZ)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 632
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->u:Z

    if-eqz v0, :cond_0

    .line 633
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a()V

    .line 635
    :cond_0
    if-eqz p3, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->u:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 636
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->o()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a(ZZ)V

    .line 637
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0, p4, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a(ZZZ)V

    .line 639
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 640
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->d()V

    .line 641
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->c()V

    .line 645
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 636
    goto :goto_0

    .line 643
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->d()V

    goto :goto_1
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->v:Z

    .line 194
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(Z)V

    .line 197
    :cond_0
    return-void
.end method

.method protected b(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 834
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/n;->b(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/n$a;

    move-result-object v1

    .line 835
    sget-object v2, Lcom/bytedance/sdk/openadsdk/h/n$a;->e:Lcom/bytedance/sdk/openadsdk/h/n$a;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/bytedance/sdk/openadsdk/h/n$a;->a:Lcom/bytedance/sdk/openadsdk/h/n$a;

    if-eq v1, v2, :cond_1

    .line 836
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a()V

    .line 837
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->y:Z

    .line 838
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->z:Z

    .line 839
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->t:Lcom/bytedance/sdk/openadsdk/core/d/h;

    if-eqz v1, :cond_0

    .line 840
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->t:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->a()Lcom/bytedance/sdk/openadsdk/core/d/m;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a(ILcom/bytedance/sdk/openadsdk/core/d/m;)Z

    move-result v0

    .line 848
    :cond_0
    :goto_0
    return v0

    .line 842
    :cond_1
    sget-object v2, Lcom/bytedance/sdk/openadsdk/h/n$a;->e:Lcom/bytedance/sdk/openadsdk/h/n$a;

    if-ne v1, v2, :cond_0

    .line 843
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->y:Z

    .line 844
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v1, :cond_0

    .line 845
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->a()V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->b()V

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->j()V

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->f:Lcom/bytedance/sdk/openadsdk/h/t;

    if-eqz v0, :cond_2

    .line 405
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->f:Lcom/bytedance/sdk/openadsdk/h/t;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/t;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 406
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->f:Lcom/bytedance/sdk/openadsdk/h/t;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/t;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 408
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->m()V

    .line 410
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->r()V

    .line 417
    return-void
.end method

.method public c(J)V
    .locals 1

    .prologue
    .line 180
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->m:J

    .line 181
    return-void
.end method

.method public c(Lcom/bytedance/sdk/openadsdk/core/video/a/b;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->j()V

    .line 626
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->c()V

    .line 628
    return-void
.end method

.method protected c(Z)V
    .locals 0

    .prologue
    .line 691
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a:Z

    .line 692
    return-void
.end method

.method public d()J
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->k:J

    return-wide v0
.end method

.method public d(J)V
    .locals 7

    .prologue
    .line 763
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-nez v0, :cond_1

    .line 775
    :cond_0
    :goto_0
    return-void

    .line 767
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 768
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->m:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 771
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b:J

    .line 772
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->k:J

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->m:J

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d(I)Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a(JZ)V

    goto :goto_0
.end method

.method public d(Lcom/bytedance/sdk/openadsdk/core/video/a/b;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 649
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a:Z

    if-eqz v0, :cond_1

    .line 650
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->c(Z)V

    .line 651
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->c(Landroid/view/ViewGroup;)V

    .line 654
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a(I)V

    .line 658
    :goto_0
    return-void

    .line 656
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->c()V

    goto :goto_0
.end method

.method public e()J
    .locals 4

    .prologue
    .line 185
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->p()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->x:J

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public e(J)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 381
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->k:J

    .line 382
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->l:J

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->k:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->l:J

    :goto_0
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->l:J

    .line 383
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->f()V

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_1

    .line 387
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->k:J

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->v:Z

    if-nez v0, :cond_3

    move v0, v2

    :goto_1
    invoke-virtual {v1, v2, v4, v5, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(ZJZ)V

    .line 388
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->l()V

    .line 390
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->q()V

    .line 392
    :cond_1
    return-void

    .line 382
    :cond_2
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->k:J

    goto :goto_0

    .line 387
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public e(Lcom/bytedance/sdk/openadsdk/core/video/a/b;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 662
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a(Lcom/bytedance/sdk/openadsdk/core/video/a/b;Landroid/view/View;Z)V

    .line 663
    return-void
.end method

.method public f()J
    .locals 2

    .prologue
    .line 176
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->m:J

    return-wide v0
.end method

.method public f(Lcom/bytedance/sdk/openadsdk/core/video/a/b;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 698
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->y:Z

    return v0
.end method

.method public h()Lcom/bytedance/sdk/openadsdk/core/video/c/d;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->v:Z

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->A:Z

    return v0
.end method

.method public k()I
    .locals 4

    .prologue
    .line 204
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->l:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->m:J

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a(JJ)I

    move-result v0

    return v0
.end method

.method public l()V
    .locals 4

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->m()V

    .line 258
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->f:Lcom/bytedance/sdk/openadsdk/h/t;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->D:Ljava/lang/Runnable;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/h/t;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 259
    return-void
.end method

.method public m()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->f:Lcom/bytedance/sdk/openadsdk/h/t;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/t;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 263
    return-void
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->k()Z

    move-result v0

    return v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f()Z

    move-result v0

    .line 755
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

    .line 792
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->d(I)V

    .line 794
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0, v1, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->b(ZZ)V

    .line 795
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->c(Z)V

    .line 796
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->c()V

    .line 797
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->e()V

    .line 799
    :cond_0
    return-void
.end method

.method protected q()V
    .locals 3

    .prologue
    .line 888
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->G:Z

    if-eqz v0, :cond_0

    .line 899
    :goto_0
    return-void

    .line 891
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 892
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->G:Z

    .line 893
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 894
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 896
    :try_start_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->E:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 897
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected r()V
    .locals 2

    .prologue
    .line 902
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->G:Z

    if-nez v0, :cond_0

    .line 911
    :goto_0
    return-void

    .line 905
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 906
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->G:Z

    .line 908
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->E:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 909
    :catch_0
    move-exception v0

    goto :goto_0
.end method
