.class public Lcom/bytedance/sdk/openadsdk/g/b;
.super Ljava/lang/Object;
.source "TrackAdUrlImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/g/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/g/b$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/bytedance/sdk/openadsdk/g/d;

.field private c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/g/d;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/b;->c:Ljava/util/concurrent/ExecutorService;

    .line 39
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/b;->a:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/g/b;->b:Lcom/bytedance/sdk/openadsdk/g/d;

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/g/b;)Lcom/bytedance/sdk/openadsdk/g/d;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/b;->b:Lcom/bytedance/sdk/openadsdk/g/d;

    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/g/b;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/g/b;->a(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/g/c;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/h/k;->b(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/g/c;

    .line 74
    new-instance v2, Lcom/bytedance/sdk/openadsdk/g/b$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, p2, v3}, Lcom/bytedance/sdk/openadsdk/g/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/g/b;Lcom/bytedance/sdk/openadsdk/g/c;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/b$1;)V

    .line 75
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/b;->c:Ljava/util/concurrent/ExecutorService;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/g/b$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 78
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/g/b;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/b;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/b;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/g/b$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/g/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/g/b;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 69
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/h/k;->b(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 47
    new-instance v2, Lcom/bytedance/sdk/openadsdk/g/c;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-direct {v2, v3, v0, p3, v4}, Lcom/bytedance/sdk/openadsdk/g/c;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 48
    new-instance v0, Lcom/bytedance/sdk/openadsdk/g/b$a;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, p1, v3}, Lcom/bytedance/sdk/openadsdk/g/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/g/b;Lcom/bytedance/sdk/openadsdk/g/c;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/b$1;)V

    .line 49
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/g/b;->c:Ljava/util/concurrent/ExecutorService;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/g/b$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method
