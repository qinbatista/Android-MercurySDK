.class public Lcom/ss/android/crash/log/p;
.super Ljava/lang/Object;
.source "TTExcutor.java"


# static fields
.field private static volatile a:Lcom/ss/android/crash/log/p;

.field private static b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/ss/android/crash/log/p;->b:Ljava/util/concurrent/ExecutorService;

    .line 24
    return-void
.end method

.method public static a()Lcom/ss/android/crash/log/p;
    .locals 2

    .prologue
    .line 13
    sget-object v0, Lcom/ss/android/crash/log/p;->a:Lcom/ss/android/crash/log/p;

    if-nez v0, :cond_1

    .line 14
    const-class v1, Lcom/ss/android/crash/log/p;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/ss/android/crash/log/p;->a:Lcom/ss/android/crash/log/p;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/ss/android/crash/log/p;

    invoke-direct {v0}, Lcom/ss/android/crash/log/p;-><init>()V

    sput-object v0, Lcom/ss/android/crash/log/p;->a:Lcom/ss/android/crash/log/p;

    .line 17
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :cond_1
    sget-object v0, Lcom/ss/android/crash/log/p;->a:Lcom/ss/android/crash/log/p;

    return-object v0

    .line 17
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/ss/android/crash/log/p;->b:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 28
    sget-object v0, Lcom/ss/android/crash/log/p;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 29
    :cond_0
    return-void
.end method
