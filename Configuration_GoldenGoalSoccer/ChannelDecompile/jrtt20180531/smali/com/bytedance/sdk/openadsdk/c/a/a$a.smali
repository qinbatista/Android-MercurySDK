.class Lcom/bytedance/sdk/openadsdk/c/a/a$a;
.super Ljava/lang/Object;
.source "DownloadAppEventHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/c/a/a;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:Lcom/bytedance/sdk/openadsdk/core/d/e;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/c/a/a;Ljava/lang/String;JLcom/bytedance/sdk/openadsdk/core/d/e;)V
    .locals 1

    .prologue
    .line 117
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/a/a$a;->a:Lcom/bytedance/sdk/openadsdk/c/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/c/a/a$a;->b:Ljava/lang/String;

    .line 119
    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/c/a/a$a;->c:J

    .line 120
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/c/a/a$a;->d:Lcom/bytedance/sdk/openadsdk/core/d/e;

    .line 121
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x2710

    .line 125
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/a/a$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/c/a/a$a;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/a/a$a;->d:Lcom/bytedance/sdk/openadsdk/core/d/e;

    if-nez v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    const/16 v0, 0x1e

    .line 129
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 130
    :goto_1
    if-lez v0, :cond_0

    .line 131
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/a/a$a;->a:Lcom/bytedance/sdk/openadsdk/c/a/a;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/c/a/a;->a(Lcom/bytedance/sdk/openadsdk/c/a/a;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/a/a$a;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/h/r;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/a/a$a;->a:Lcom/bytedance/sdk/openadsdk/c/a/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/a/a$a;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/c/a/a$a;->c:J

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/c/a/a$a;->d:Lcom/bytedance/sdk/openadsdk/core/d/e;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/c/a/a;->a(Lcom/bytedance/sdk/openadsdk/c/a/a;Ljava/lang/String;JLcom/bytedance/sdk/openadsdk/core/d/e;)V

    goto :goto_0

    .line 135
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 136
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_1
.end method
