.class final Lcom/bytedance/sdk/openadsdk/core/k$2;
.super Ljava/lang/Object;
.source "InitHelper.java"

# interfaces
.implements Lcom/ss/android/crash/log/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/k;->d(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 122
    const-class v1, Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 124
    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    .line 125
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 126
    if-eqz v5, :cond_0

    .line 130
    :goto_1
    return v0

    .line 124
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method
