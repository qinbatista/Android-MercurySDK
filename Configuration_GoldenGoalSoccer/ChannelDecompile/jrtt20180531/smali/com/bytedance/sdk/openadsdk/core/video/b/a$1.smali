.class Lcom/bytedance/sdk/openadsdk/core/video/b/a$1;
.super Ljava/lang/Object;
.source "RewardVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/video/b/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 219
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a(Lcom/bytedance/sdk/openadsdk/core/video/b/a;J)J

    .line 220
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)Lcom/bytedance/sdk/openadsdk/core/video/a/h;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/h;->d(I)V

    .line 221
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->c(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-nez v2, :cond_3

    .line 222
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v1, v6, v7, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(ZJZ)V

    .line 226
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->e(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)Lcom/bytedance/sdk/openadsdk/h/t;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->e(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)Lcom/bytedance/sdk/openadsdk/h/t;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->f(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/h/t;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->l()V

    .line 230
    return-void

    .line 223
    :cond_3
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 224
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->c(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)J

    move-result-wide v4

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)Z

    move-result v3

    if-nez v3, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {v2, v1, v4, v5, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(ZJZ)V

    goto :goto_0
.end method
