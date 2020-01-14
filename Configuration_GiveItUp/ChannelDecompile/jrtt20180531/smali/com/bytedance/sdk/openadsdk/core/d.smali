.class public Lcom/bytedance/sdk/openadsdk/core/d;
.super Lcom/bytedance/sdk/openadsdk/core/e;
.source "DBAdapter.java"


# static fields
.field private static volatile b:Lcom/bytedance/sdk/openadsdk/core/d;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/e;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d;
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/d;->b:Lcom/bytedance/sdk/openadsdk/core/d;

    if-nez v0, :cond_1

    .line 16
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/d;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/d;->b:Lcom/bytedance/sdk/openadsdk/core/d;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/d;->b:Lcom/bytedance/sdk/openadsdk/core/d;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/d;->b:Lcom/bytedance/sdk/openadsdk/core/d;

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public bridge synthetic a()Lcom/bytedance/sdk/openadsdk/core/e$c;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/e;->a()Lcom/bytedance/sdk/openadsdk/core/e$c;

    move-result-object v0

    return-object v0
.end method
