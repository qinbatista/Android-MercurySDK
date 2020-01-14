.class public Lcom/ss/android/crash/log/i;
.super Ljava/lang/Object;
.source "CrashInfoManager.java"

# interfaces
.implements Lcom/ss/android/crash/log/f$a;


# static fields
.field private static volatile a:Lcom/ss/android/crash/log/i;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/ss/android/crash/log/f;

.field private d:Lcom/ss/android/crash/log/k;

.field private e:J


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/ss/android/crash/log/j$a;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/crash/log/i;->b:Landroid/content/Context;

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/crash/log/i;->e:J

    .line 38
    new-instance v0, Lcom/ss/android/crash/log/f;

    iget-object v1, p0, Lcom/ss/android/crash/log/i;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/ss/android/crash/log/f;-><init>(Landroid/content/Context;Lcom/ss/android/crash/log/f$a;)V

    iput-object v0, p0, Lcom/ss/android/crash/log/i;->c:Lcom/ss/android/crash/log/f;

    .line 39
    new-instance v0, Lcom/ss/android/crash/log/k;

    iget-object v1, p0, Lcom/ss/android/crash/log/i;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/ss/android/crash/log/k;-><init>(Landroid/content/Context;Lcom/ss/android/crash/log/j$a;)V

    iput-object v0, p0, Lcom/ss/android/crash/log/i;->d:Lcom/ss/android/crash/log/k;

    .line 40
    return-void
.end method

.method static a(Landroid/content/Context;Lcom/ss/android/crash/log/j$a;)V
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lcom/ss/android/crash/log/i;->a:Lcom/ss/android/crash/log/i;

    if-nez v0, :cond_0

    .line 30
    const-class v1, Lcom/ss/android/crash/log/i;

    monitor-enter v1

    .line 31
    :try_start_0
    new-instance v0, Lcom/ss/android/crash/log/i;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/crash/log/i;-><init>(Landroid/content/Context;Lcom/ss/android/crash/log/j$a;)V

    sput-object v0, Lcom/ss/android/crash/log/i;->a:Lcom/ss/android/crash/log/i;

    .line 32
    monitor-exit v1

    .line 34
    :cond_0
    return-void

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static b()Lcom/ss/android/crash/log/i;
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcom/ss/android/crash/log/i;->a:Lcom/ss/android/crash/log/i;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CrashInfoManager not inited"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_0
    sget-object v0, Lcom/ss/android/crash/log/i;->a:Lcom/ss/android/crash/log/i;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ss/android/crash/log/i;->d:Lcom/ss/android/crash/log/k;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/ss/android/crash/log/i;->d:Lcom/ss/android/crash/log/k;

    invoke-virtual {v0}, Lcom/ss/android/crash/log/k;->a()V

    .line 59
    :cond_0
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 43
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/crash/log/i;->d:Lcom/ss/android/crash/log/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/crash/log/i;->c:Lcom/ss/android/crash/log/f;

    if-nez v0, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    const-string v0, "last_create_activity"

    iget-object v1, p0, Lcom/ss/android/crash/log/i;->c:Lcom/ss/android/crash/log/f;

    invoke-virtual {v1}, Lcom/ss/android/crash/log/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    const-string v0, "last_resume_activity"

    iget-object v1, p0, Lcom/ss/android/crash/log/i;->c:Lcom/ss/android/crash/log/f;

    invoke-virtual {v1}, Lcom/ss/android/crash/log/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    const-string v0, "app_start_time"

    iget-wide v2, p0, Lcom/ss/android/crash/log/i;->e:J

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 48
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy_MM_dd_HH_mm_ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 49
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/ss/android/crash/log/i;->e:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 50
    const-string v1, "app_start_time_readable"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string v0, "alive_activities"

    iget-object v1, p0, Lcom/ss/android/crash/log/i;->c:Lcom/ss/android/crash/log/f;

    invoke-virtual {v1}, Lcom/ss/android/crash/log/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    const-string v0, "running_task_info"

    iget-object v1, p0, Lcom/ss/android/crash/log/i;->c:Lcom/ss/android/crash/log/f;

    invoke-virtual {v1}, Lcom/ss/android/crash/log/f;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    iget-object v0, p0, Lcom/ss/android/crash/log/i;->d:Lcom/ss/android/crash/log/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/crash/log/k;->a(Lorg/json/JSONObject;)V

    goto :goto_0
.end method
