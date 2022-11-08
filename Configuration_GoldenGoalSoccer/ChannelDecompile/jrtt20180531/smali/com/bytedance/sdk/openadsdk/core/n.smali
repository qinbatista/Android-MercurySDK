.class public Lcom/bytedance/sdk/openadsdk/core/n;
.super Ljava/lang/Object;
.source "InternalContainer.java"


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/d/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/d/b",
            "<",
            "Lcom/bytedance/sdk/openadsdk/d/a;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile b:Lcom/bytedance/sdk/openadsdk/core/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/core/o",
            "<",
            "Lcom/bytedance/sdk/openadsdk/d/a;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile c:Lcom/bytedance/sdk/openadsdk/g/a;

.field private static d:Landroid/content/Context;

.field private static volatile e:Lcom/bytedance/sdk/openadsdk/core/e/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/n;->d:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/n;->d:Landroid/content/Context;

    .line 34
    return-void
.end method

.method public static b()Lcom/bytedance/sdk/openadsdk/d/b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/sdk/openadsdk/d/b",
            "<",
            "Lcom/bytedance/sdk/openadsdk/d/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/n;->a:Lcom/bytedance/sdk/openadsdk/d/b;

    if-nez v0, :cond_1

    .line 38
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/n;

    monitor-enter v1

    .line 39
    :try_start_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/n;->a:Lcom/bytedance/sdk/openadsdk/d/b;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/bytedance/sdk/openadsdk/d/b;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/d/e;

    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/n;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/bytedance/sdk/openadsdk/d/e;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->c()Lcom/bytedance/sdk/openadsdk/core/o;

    move-result-object v3

    .line 43
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->f()Lcom/bytedance/sdk/openadsdk/d/f$b;

    move-result-object v4

    sget-object v5, Lcom/bytedance/sdk/openadsdk/core/n;->d:Landroid/content/Context;

    .line 44
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/n;->b(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/d/f$a;

    move-result-object v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/d/b;-><init>(Lcom/bytedance/sdk/openadsdk/d/d;Lcom/bytedance/sdk/openadsdk/core/o;Lcom/bytedance/sdk/openadsdk/d/f$b;Lcom/bytedance/sdk/openadsdk/d/f$a;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/n;->a:Lcom/bytedance/sdk/openadsdk/d/b;

    .line 46
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/n;->a:Lcom/bytedance/sdk/openadsdk/d/b;

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static b(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/d/f$a;
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/n$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/n$1;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static c()Lcom/bytedance/sdk/openadsdk/core/o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/sdk/openadsdk/core/o",
            "<",
            "Lcom/bytedance/sdk/openadsdk/d/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/n;->b:Lcom/bytedance/sdk/openadsdk/core/o;

    if-nez v0, :cond_1

    .line 53
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/n;

    monitor-enter v1

    .line 54
    :try_start_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/n;->b:Lcom/bytedance/sdk/openadsdk/core/o;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/p;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/n;->d:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/p;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/n;->b:Lcom/bytedance/sdk/openadsdk/core/o;

    .line 57
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/n;->b:Lcom/bytedance/sdk/openadsdk/core/o;

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static d()Lcom/bytedance/sdk/openadsdk/g/a;
    .locals 5

    .prologue
    .line 63
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/n;->c:Lcom/bytedance/sdk/openadsdk/g/a;

    if-nez v0, :cond_1

    .line 64
    const-class v1, Lcom/bytedance/sdk/openadsdk/g/a;

    monitor-enter v1

    .line 65
    :try_start_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/n;->c:Lcom/bytedance/sdk/openadsdk/g/a;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/bytedance/sdk/openadsdk/g/b;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/n;->d:Landroid/content/Context;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/g/e;

    sget-object v4, Lcom/bytedance/sdk/openadsdk/core/n;->d:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/bytedance/sdk/openadsdk/g/e;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/g/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/g/d;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/n;->c:Lcom/bytedance/sdk/openadsdk/g/a;

    .line 68
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/n;->c:Lcom/bytedance/sdk/openadsdk/g/a;

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static e()Lcom/bytedance/sdk/openadsdk/core/e/c;
    .locals 2

    .prologue
    .line 87
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/n;->e:Lcom/bytedance/sdk/openadsdk/core/e/c;

    if-nez v0, :cond_1

    .line 88
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/e/c;

    monitor-enter v1

    .line 89
    :try_start_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/n;->e:Lcom/bytedance/sdk/openadsdk/core/e/c;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/e/c;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/e/c;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/n;->e:Lcom/bytedance/sdk/openadsdk/core/e/c;

    .line 92
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/n;->e:Lcom/bytedance/sdk/openadsdk/core/e/c;

    return-object v0

    .line 92
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static f()Lcom/bytedance/sdk/openadsdk/d/f$b;
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/d/f$b;->a()Lcom/bytedance/sdk/openadsdk/d/f$b;

    move-result-object v0

    return-object v0
.end method
