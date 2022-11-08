.class public Lcom/ss/android/crash/log/j;
.super Ljava/lang/Object;
.source "CrashManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/crash/log/j$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/ss/android/crash/log/j;


# instance fields
.field private b:Landroid/content/Context;

.field private volatile c:Z

.field private volatile d:Lcom/ss/android/crash/log/h;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-nez p1, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/crash/log/j;->b:Landroid/content/Context;

    .line 37
    return-void
.end method

.method public static a(Landroid/app/Application;)Lcom/ss/android/crash/log/j;
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcom/ss/android/crash/log/j;->a:Lcom/ss/android/crash/log/j;

    if-nez v0, :cond_1

    .line 25
    const-class v1, Lcom/ss/android/crash/log/j;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lcom/ss/android/crash/log/j;->a:Lcom/ss/android/crash/log/j;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/ss/android/crash/log/j;

    invoke-direct {v0, p0}, Lcom/ss/android/crash/log/j;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ss/android/crash/log/j;->a:Lcom/ss/android/crash/log/j;

    .line 29
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    sget-object v0, Lcom/ss/android/crash/log/j;->a:Lcom/ss/android/crash/log/j;

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/ss/android/crash/log/j$a;ZZZ)V
    .locals 4

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/ss/android/crash/log/j;->c:Z

    if-eqz v0, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    if-nez p1, :cond_2

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CommonParams must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_2
    if-eqz p2, :cond_3

    .line 70
    new-instance v0, Lcom/ss/android/crash/log/h;

    iget-object v1, p0, Lcom/ss/android/crash/log/j;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ss/android/crash/log/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ss/android/crash/log/j;->d:Lcom/ss/android/crash/log/h;

    .line 71
    :cond_3
    iget-object v0, p0, Lcom/ss/android/crash/log/j;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/ss/android/crash/log/i;->a(Landroid/content/Context;Lcom/ss/android/crash/log/j$a;)V

    .line 72
    if-eqz p4, :cond_4

    .line 73
    iget-object v0, p0, Lcom/ss/android/crash/log/j;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/ss/android/crash/log/g;->a(Landroid/content/Context;)Lcom/ss/android/crash/log/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/crash/log/g;->a()V

    .line 74
    :cond_4
    iget-object v0, p0, Lcom/ss/android/crash/log/j;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/ss/android/crash/log/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 75
    if-eqz p3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/ss/android/crash/log/j;->b:Landroid/content/Context;

    const-string v2, "ss_native_crash_logs"

    const-string v3, "ss_native_crash-"

    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/article/common/nativecrash/NativeCrashInit;->registerForNativeCrash(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
