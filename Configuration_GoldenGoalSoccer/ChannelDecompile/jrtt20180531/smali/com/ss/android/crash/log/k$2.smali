.class Lcom/ss/android/crash/log/k$2;
.super Ljava/lang/Object;
.source "CrashUploadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/crash/log/k;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/crash/log/k;


# direct methods
.method constructor <init>(Lcom/ss/android/crash/log/k;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/ss/android/crash/log/k$2;->a:Lcom/ss/android/crash/log/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/crash/log/k$2;->a:Lcom/ss/android/crash/log/k;

    invoke-static {v0}, Lcom/ss/android/crash/log/k;->a(Lcom/ss/android/crash/log/k;)V

    .line 75
    iget-object v0, p0, Lcom/ss/android/crash/log/k$2;->a:Lcom/ss/android/crash/log/k;

    invoke-static {v0}, Lcom/ss/android/crash/log/k;->b(Lcom/ss/android/crash/log/k;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    goto :goto_0
.end method
