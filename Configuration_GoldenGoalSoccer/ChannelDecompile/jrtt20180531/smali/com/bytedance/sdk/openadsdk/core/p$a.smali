.class public Lcom/bytedance/sdk/openadsdk/core/p$a;
.super Ljava/lang/Object;
.source "NetApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:I

.field final b:I

.field final c:Ljava/lang/String;

.field public final d:Lcom/bytedance/sdk/openadsdk/core/d/a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/a;)V
    .locals 0
    .param p5    # Lcom/bytedance/sdk/openadsdk/core/d/a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 707
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/p$a;->a:I

    .line 708
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/p$a;->b:I

    .line 709
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/p$a;->c:Ljava/lang/String;

    .line 710
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/p$a;->d:Lcom/bytedance/sdk/openadsdk/core/d/a;

    .line 711
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p$a;->e:Ljava/lang/String;

    .line 712
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/p$a;
    .locals 8

    .prologue
    .line 715
    const-string v0, "did"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 716
    const-string v0, "processing_time_ms"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 717
    const-string v0, "status_code"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 718
    const-string v0, "request_id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 719
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/b;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/a;

    move-result-object v5

    .line 720
    if-eqz v5, :cond_0

    .line 722
    const-string v0, "request_after"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a(J)V

    .line 724
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/p$a;

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/p$a;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/a;)V

    return-object v0
.end method
