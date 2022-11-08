.class Lcom/bytedance/sdk/openadsdk/core/f/b$2;
.super Ljava/lang/Object;
.source "SplashAdLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/f/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/f/b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/f/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/f/b;Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/f/b;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$2;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 349
    const-string v0, "SplashAdLoadManager"

    const-string v1, "\u7f13\u5b58\u5e7f\u544a\u5bf9\u8c61\u89e3\u6790\u51fa\u9519"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/f/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/f/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/f/b;->f(Lcom/bytedance/sdk/openadsdk/core/f/b;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$2;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    invoke-static {v0, v1, v2, v3, v3}, Lcom/bytedance/sdk/openadsdk/core/f/b;->a(Lcom/bytedance/sdk/openadsdk/core/f/b;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;ZZ)V

    .line 351
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/j;)V
    .locals 6
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/d/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 297
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Lcom/bytedance/sdk/openadsdk/core/d/h;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Lcom/bytedance/sdk/openadsdk/core/d/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/j;->b()[B

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/j;->b()[B

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_1

    .line 298
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Lcom/bytedance/sdk/openadsdk/core/d/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/g;->b()I

    move-result v0

    .line 299
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/j;->b()[B

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/h/h;->a([BI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 300
    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Lcom/bytedance/sdk/openadsdk/core/d/h;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/h;->b(Z)V

    .line 302
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/f/d;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/f/b;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/f/b;->b(Lcom/bytedance/sdk/openadsdk/core/f/b;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Lcom/bytedance/sdk/openadsdk/core/d/h;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/f/d;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;)V

    .line 303
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->c()Lcom/bytedance/sdk/openadsdk/core/o;

    move-result-object v2

    .line 304
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Lcom/bytedance/sdk/openadsdk/core/d/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/h;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Lcom/bytedance/sdk/openadsdk/core/d/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/d/h;->o()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/f/b$2$1;

    invoke-direct {v5, p0, p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/f/b$2$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/f/b$2;Lcom/bytedance/sdk/openadsdk/core/d/j;Lcom/bytedance/sdk/openadsdk/core/f/d;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/o;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/b$a;)V

    .line 345
    :goto_0
    return-void

    .line 338
    :cond_0
    const-string v0, "SplashAdLoadManager"

    const-string v1, "\u7f13\u5b58\u5e7f\u544a\u56fe\u7247\u7d20\u6750\u89e3\u6790\u51fa\u9519"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/f/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/f/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/f/b;->f(Lcom/bytedance/sdk/openadsdk/core/f/b;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$2;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    invoke-static {v0, v1, v2, v3, v3}, Lcom/bytedance/sdk/openadsdk/core/f/b;->a(Lcom/bytedance/sdk/openadsdk/core/f/b;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;ZZ)V

    goto :goto_0

    .line 342
    :cond_1
    const-string v0, "SplashAdLoadManager"

    const-string v1, "\u7f13\u5b58\u5e7f\u544a\u7d20\u6750\u89e3\u6790\u51fa\u9519"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/f/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/f/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/f/b;->f(Lcom/bytedance/sdk/openadsdk/core/f/b;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$2;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    invoke-static {v0, v1, v2, v3, v3}, Lcom/bytedance/sdk/openadsdk/core/f/b;->a(Lcom/bytedance/sdk/openadsdk/core/f/b;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;ZZ)V

    goto :goto_0
.end method
