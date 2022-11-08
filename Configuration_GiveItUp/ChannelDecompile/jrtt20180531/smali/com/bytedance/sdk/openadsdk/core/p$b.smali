.class public Lcom/bytedance/sdk/openadsdk/core/p$b;
.super Ljava/lang/Object;
.source "NetApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:Z


# direct methods
.method private constructor <init>(IZ)V
    .locals 0

    .prologue
    .line 951
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 952
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/p$b;->a:I

    .line 953
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/p$b;->b:Z

    .line 954
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/p$b;
    .locals 3

    .prologue
    .line 957
    if-nez p0, :cond_0

    .line 958
    const/4 v0, 0x0

    .line 962
    :goto_0
    return-object v0

    .line 960
    :cond_0
    const-string v0, "error_code"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 961
    const-string v0, "result"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 962
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/p$b;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/p$b;-><init>(IZ)V

    goto :goto_0
.end method
