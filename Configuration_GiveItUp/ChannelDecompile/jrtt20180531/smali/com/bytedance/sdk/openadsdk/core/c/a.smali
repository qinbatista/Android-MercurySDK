.class public Lcom/bytedance/sdk/openadsdk/core/c/a;
.super Ljava/lang/Object;
.source "FrequentCallController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/c/a$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/core/c/a;

.field private static volatile b:Z

.field private static volatile c:J


# instance fields
.field private d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/c/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/os/Handler;

.field private f:Lcom/bytedance/sdk/openadsdk/core/e/c;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->d:Ljava/util/Queue;

    .line 35
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->e()Lcom/bytedance/sdk/openadsdk/core/e/c;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->f:Lcom/bytedance/sdk/openadsdk/core/e/c;

    .line 36
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/core/c/a;
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Lcom/bytedance/sdk/openadsdk/core/c/a;

    if-nez v0, :cond_1

    .line 40
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/c/a;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Lcom/bytedance/sdk/openadsdk/core/c/a;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/c/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/c/a;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Lcom/bytedance/sdk/openadsdk/core/c/a;

    .line 44
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Lcom/bytedance/sdk/openadsdk/core/c/a;

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized a(J)V
    .locals 3

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->e:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->e:Landroid/os/Handler;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->e:Landroid/os/Handler;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/c/a$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/c/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/c/a;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/c/a;Z)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(Z)V

    return-void
.end method

.method private declared-synchronized a(Z)V
    .locals 1

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    sput-boolean p1, Lcom/bytedance/sdk/openadsdk/core/c/a;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(J)V
    .locals 1

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    sput-wide p1, Lcom/bytedance/sdk/openadsdk/core/c/a;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Ljava/lang/String;)Z
    .locals 7

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->f:Lcom/bytedance/sdk/openadsdk/core/e/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/c;->d()I

    move-result v0

    .line 57
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->f:Lcom/bytedance/sdk/openadsdk/core/e/c;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/c;->c()J

    move-result-wide v4

    .line 58
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->d:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-lt v1, v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/c/a$a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c/a$a;->a(Lcom/bytedance/sdk/openadsdk/core/c/a$a;)J

    move-result-wide v0

    .line 60
    sub-long v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 62
    cmp-long v6, v0, v4

    if-gtz v6, :cond_0

    .line 63
    sub-long v0, v4, v0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c/a;->b(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    const/4 v0, 0x1

    .line 72
    :goto_0
    monitor-exit p0

    return v0

    .line 66
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->d:Ljava/util/Queue;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/c/a$a;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/bytedance/sdk/openadsdk/core/c/a$a;-><init>(JLjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/c/a$1;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 72
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->d:Ljava/util/Queue;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/c/a$a;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/bytedance/sdk/openadsdk/core/c/a$a;-><init>(JLjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/c/a$1;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/c/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(Z)V

    .line 81
    sget-wide v0, Lcom/bytedance/sdk/openadsdk/core/c/a;->c:J

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(J)V

    .line 85
    :goto_0
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/c/a;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 83
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 108
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/c/a;->b:Z

    return v0
.end method

.method public declared-synchronized c()Ljava/lang/String;
    .locals 6

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 120
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/c/a$a;

    .line 121
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c/a$a;->b(Lcom/bytedance/sdk/openadsdk/core/c/a$a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c/a$a;->b(Lcom/bytedance/sdk/openadsdk/core/c/a$a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c/a$a;->b(Lcom/bytedance/sdk/openadsdk/core/c/a$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 124
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c/a$a;->b(Lcom/bytedance/sdk/openadsdk/core/c/a$a;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 128
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 129
    const/high16 v1, -0x80000000

    .line 130
    const-string v0, ""

    move-object v2, v0

    move v3, v1

    .line 133
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 134
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 135
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 136
    if-ge v3, v1, :cond_2

    move-object v2, v0

    move v3, v1

    .line 138
    goto :goto_1

    .line 141
    :cond_3
    monitor-exit p0

    return-object v2
.end method
