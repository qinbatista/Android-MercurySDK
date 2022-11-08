.class Lcom/ss/android/crash/log/k$3;
.super Ljava/lang/Object;
.source "CrashUploadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/crash/log/k;->a(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ss/android/crash/log/k;


# direct methods
.method constructor <init>(Lcom/ss/android/crash/log/k;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/ss/android/crash/log/k$3;->c:Lcom/ss/android/crash/log/k;

    iput-object p2, p0, Lcom/ss/android/crash/log/k$3;->a:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/ss/android/crash/log/k$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/ss/android/crash/log/k$3;->a:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/crash/log/k$3;->c:Lcom/ss/android/crash/log/k;

    invoke-static {v1}, Lcom/ss/android/crash/log/k;->c(Lcom/ss/android/crash/log/k;)Lcom/ss/android/crash/log/j$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/ss/android/crash/log/j$a;->a()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/crash/log/l;->a(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-static {}, Lcom/ss/android/crash/log/k;->b()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/crash/log/k$3;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/ss/android/crash/log/n;->a(Ljava/lang/String;)V

    .line 197
    monitor-exit v1

    .line 198
    :cond_0
    return-void

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
