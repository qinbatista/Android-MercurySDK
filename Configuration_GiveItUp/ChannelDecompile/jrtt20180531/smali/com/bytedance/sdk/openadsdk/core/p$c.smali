.class public Lcom/bytedance/sdk/openadsdk/core/p$c;
.super Ljava/lang/Object;
.source "NetApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:Lcom/bytedance/sdk/openadsdk/core/d/l;


# direct methods
.method private constructor <init>(IZLcom/bytedance/sdk/openadsdk/core/d/l;)V
    .locals 0

    .prologue
    .line 800
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 801
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/p$c;->a:I

    .line 802
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/p$c;->b:Z

    .line 803
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/p$c;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 804
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/p$c;
    .locals 5

    .prologue
    .line 807
    if-nez p0, :cond_0

    .line 808
    const/4 v0, 0x0

    .line 824
    :goto_0
    return-object v0

    .line 810
    :cond_0
    const-string v0, "code"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 811
    const-string v0, "verify"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 812
    const-string v0, "data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 813
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/core/d/l;-><init>()V

    .line 815
    if-eqz v0, :cond_1

    .line 816
    :try_start_0
    const-string v4, "reason"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/d/l;->a(I)V

    .line 817
    const-string v4, "corp_type"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/d/l;->b(I)V

    .line 818
    const-string v4, "reward_amount"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/d/l;->c(I)V

    .line 819
    const-string v4, "reward_name"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    :cond_1
    :goto_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/p$c;

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/p$c;-><init>(IZLcom/bytedance/sdk/openadsdk/core/d/l;)V

    goto :goto_0

    .line 821
    :catch_0
    move-exception v0

    .line 822
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
