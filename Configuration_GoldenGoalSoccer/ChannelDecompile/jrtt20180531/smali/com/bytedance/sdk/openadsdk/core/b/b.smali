.class public Lcom/bytedance/sdk/openadsdk/core/b/b;
.super Ljava/lang/Object;
.source "BannerAdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/b/b$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field private static volatile b:Lcom/bytedance/sdk/openadsdk/core/b/b;


# instance fields
.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/bytedance/sdk/openadsdk/core/o;

.field private e:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field private f:Lcom/androidquery/callback/AQuery2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/b/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/b/b;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/b;->c:Ljava/lang/ref/WeakReference;

    .line 40
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->c()Lcom/bytedance/sdk/openadsdk/core/o;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/b;->d:Lcom/bytedance/sdk/openadsdk/core/o;

    .line 41
    new-instance v0, Lcom/androidquery/callback/AQuery2;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/androidquery/callback/AQuery2;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/b;->f:Lcom/androidquery/callback/AQuery2;

    .line 42
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/b/b;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 48
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/b/b;->b:Lcom/bytedance/sdk/openadsdk/core/b/b;

    if-nez v0, :cond_1

    .line 49
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/b/b;

    monitor-enter v1

    .line 50
    :try_start_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/b/b;->b:Lcom/bytedance/sdk/openadsdk/core/b/b;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/b/b;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/b/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/b/b;->b:Lcom/bytedance/sdk/openadsdk/core/b/b;

    .line 53
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/b/b;->b:Lcom/bytedance/sdk/openadsdk/core/b/b;

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 55
    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/b/b;->b:Lcom/bytedance/sdk/openadsdk/core/b/b;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/b/b;->b(Landroid/content/Context;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/b/b;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/b;->c:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/b/b;Lcom/bytedance/sdk/openadsdk/core/d/h;Lcom/bytedance/sdk/openadsdk/core/b/b$a;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/b/b;->a(Lcom/bytedance/sdk/openadsdk/core/d/h;Lcom/bytedance/sdk/openadsdk/core/b/b$a;)V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/d/h;Lcom/bytedance/sdk/openadsdk/core/b/b$a;)V
    .locals 4
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/d/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/b/b$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 130
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->f()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/g;->a()Ljava/lang/String;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/b;->f:Lcom/androidquery/callback/AQuery2;

    const-class v2, Landroid/graphics/Bitmap;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/b/b$3;

    invoke-direct {v3, p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/b/b$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/b/b;Lcom/bytedance/sdk/openadsdk/core/b/b$a;Lcom/bytedance/sdk/openadsdk/core/d/h;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/androidquery/callback/AQuery2;->ajax(Ljava/lang/String;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    .line 147
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/b;->c:Ljava/lang/ref/WeakReference;

    .line 46
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;)V
    .locals 4
    .param p1    # Lcom/bytedance/sdk/openadsdk/AdSlot;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 88
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/b;->e:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 89
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/b;->d:Lcom/bytedance/sdk/openadsdk/core/o;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/b/b$2;

    invoke-direct {v3, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/b/b$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/b/b;Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;)V

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/o;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/i;ILcom/bytedance/sdk/openadsdk/core/o$a;)V

    .line 127
    return-void
.end method

.method a(Lcom/bytedance/sdk/openadsdk/core/b/b$a;)V
    .locals 5

    .prologue
    .line 61
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/b;->d:Lcom/bytedance/sdk/openadsdk/core/o;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/b;->e:Lcom/bytedance/sdk/openadsdk/AdSlot;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/b/b$1;

    invoke-direct {v4, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/b/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/b/b;Lcom/bytedance/sdk/openadsdk/core/b/b$a;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/o;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/i;ILcom/bytedance/sdk/openadsdk/core/o$a;)V

    .line 85
    return-void
.end method
