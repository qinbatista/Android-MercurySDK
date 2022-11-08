.class public Lcom/bytedance/sdk/openadsdk/core/s;
.super Ljava/lang/Object;
.source "SingleAppData.java"


# static fields
.field private static a:Lcom/bytedance/sdk/openadsdk/core/s;


# instance fields
.field private b:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

.field private c:Lcom/bytedance/sdk/openadsdk/core/d/h;

.field private d:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

.field private e:Lcom/bytedance/sdk/openadsdk/c/x;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/core/s;
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 29
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/s;->a:Lcom/bytedance/sdk/openadsdk/core/s;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/s;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/s;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/s;->a:Lcom/bytedance/sdk/openadsdk/core/s;

    .line 32
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/s;->a:Lcom/bytedance/sdk/openadsdk/core/s;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/s;->d:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    .line 59
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/c/x;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/s;->e:Lcom/bytedance/sdk/openadsdk/c/x;

    .line 67
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/h;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/s;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    .line 51
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/a/c;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/s;->b:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    .line 42
    return-void
.end method

.method public b()Lcom/bytedance/sdk/openadsdk/core/video/a/c;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/s;->b:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    return-object v0
.end method

.method public c()Lcom/bytedance/sdk/openadsdk/core/d/h;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/s;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    return-object v0
.end method

.method public d()Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/s;->d:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    return-object v0
.end method

.method public e()Lcom/bytedance/sdk/openadsdk/c/x;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/s;->e:Lcom/bytedance/sdk/openadsdk/c/x;

    return-object v0
.end method

.method public f()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/s;->b:Lcom/bytedance/sdk/openadsdk/core/video/a/c;

    .line 71
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/s;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    .line 72
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/s;->d:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    .line 73
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/s;->e:Lcom/bytedance/sdk/openadsdk/c/x;

    .line 74
    return-void
.end method
