.class Lcom/bytedance/sdk/openadsdk/core/e;
.super Ljava/lang/Object;
.source "DBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/e$b;,
        Lcom/bytedance/sdk/openadsdk/core/e$a;,
        Lcom/bytedance/sdk/openadsdk/core/e$c;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/Object;


# instance fields
.field protected a:Landroid/content/Context;

.field private b:Lcom/bytedance/sdk/openadsdk/core/e$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/e;->c:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e;->a:Landroid/content/Context;

    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e;->b:Lcom/bytedance/sdk/openadsdk/core/e$c;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/e$c;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/e$c;-><init>(Lcom/bytedance/sdk/openadsdk/core/e;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e;->b:Lcom/bytedance/sdk/openadsdk/core/e$c;

    .line 34
    :cond_0
    return-void
.end method

.method static synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/e;->c:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/openadsdk/core/e$c;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e;->b:Lcom/bytedance/sdk/openadsdk/core/e$c;

    return-object v0
.end method
