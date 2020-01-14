.class Lcom/bytedance/sdk/openadsdk/core/f/b$1$1;
.super Ljava/lang/Object;
.source "SplashAdLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/h/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/f/b$1;->a(Lcom/bytedance/sdk/openadsdk/core/d/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/d/h;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/d/a;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/f/b$1;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/f/b$1;Lcom/bytedance/sdk/openadsdk/core/d/h;Lcom/bytedance/sdk/openadsdk/core/d/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1$1;->d:Lcom/bytedance/sdk/openadsdk/core/f/b$1;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1$1;->a:Lcom/bytedance/sdk/openadsdk/core/d/h;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/a;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    const/4 v3, -0x7

    .line 227
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1$1;->d:Lcom/bytedance/sdk/openadsdk/core/f/b$1;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->a:Z

    if-nez v0, :cond_0

    .line 228
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a;->a()Lcom/bytedance/sdk/openadsdk/f/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1$1;->d:Lcom/bytedance/sdk/openadsdk/core/f/b$1;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 229
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/d/k;->b(I)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v1

    .line 230
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1$1;->c:Ljava/lang/String;

    .line 231
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->g(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/a;->e(Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 233
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a;->a()Lcom/bytedance/sdk/openadsdk/f/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1$1;->d:Lcom/bytedance/sdk/openadsdk/core/f/b$1;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 234
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/d/k;->b(I)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v1

    .line 235
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v1

    .line 233
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/a;->d(Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 237
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1$1;->d:Lcom/bytedance/sdk/openadsdk/core/f/b$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;->onError(ILjava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1$1;->d:Lcom/bytedance/sdk/openadsdk/core/f/b$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->e:Lcom/bytedance/sdk/openadsdk/core/f/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/b;->a()V

    .line 240
    :cond_0
    const-string v0, "SplashAdLoadManager"

    const-string v1, "\u56fe\u7247\u52a0\u8f7d\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public a([B)V
    .locals 9
    .param p1    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    const/4 v8, -0x7

    .line 189
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1$1;->a:Lcom/bytedance/sdk/openadsdk/core/d/h;

    const-string v1, "splash_ad"

    const-string v2, "download_creative_duration"

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1$1;->d:Lcom/bytedance/sdk/openadsdk/core/f/b$1;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->e:Lcom/bytedance/sdk/openadsdk/core/f/b;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/f/b;->c(Lcom/bytedance/sdk/openadsdk/core/f/b;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 189
    invoke-static {v0, v1, v2, v4, v5}, Lcom/bytedance/sdk/openadsdk/d/c;->a(Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;J)V

    .line 192
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1$1;->d:Lcom/bytedance/sdk/openadsdk/core/f/b$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->e:Lcom/bytedance/sdk/openadsdk/core/f/b;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/f/b;->b(Lcom/bytedance/sdk/openadsdk/core/f/b;J)J

    .line 193
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1$1;->d:Lcom/bytedance/sdk/openadsdk/core/f/b$1;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1$1;->d:Lcom/bytedance/sdk/openadsdk/core/f/b$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->e:Lcom/bytedance/sdk/openadsdk/core/f/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/b;->d(Lcom/bytedance/sdk/openadsdk/core/f/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    :cond_0
    const-string v0, "SplashAdLoadManager"

    const-string v1, "\u52a0\u8f7d\u7684\u5e7f\u544a\u7f13\u5b58\u5230\u672c\u5730"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1$1;->d:Lcom/bytedance/sdk/openadsdk/core/f/b$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->e:Lcom/bytedance/sdk/openadsdk/core/f/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/b;->b(Lcom/bytedance/sdk/openadsdk/core/f/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/f/a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/d/j;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/a;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1$1;->a:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-direct {v1, v2, v3, p1}, Lcom/bytedance/sdk/openadsdk/core/d/j;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/a;Lcom/bytedance/sdk/openadsdk/core/d/h;[B)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/f/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/j;)V

    .line 222
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1$1;->d:Lcom/bytedance/sdk/openadsdk/core/f/b$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->e:Lcom/bytedance/sdk/openadsdk/core/f/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/f/b;->a(Lcom/bytedance/sdk/openadsdk/core/f/b;Z)Z

    .line 199
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1$1;->a:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->f()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/g;->b()I

    move-result v0

    .line 200
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/h/h;->a([BI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_2

    .line 202
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a;->a()Lcom/bytedance/sdk/openadsdk/f/a;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1$1;->d:Lcom/bytedance/sdk/openadsdk/core/f/b$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/f/a;->c(Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 204
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/f/d;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1$1;->d:Lcom/bytedance/sdk/openadsdk/core/f/b$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->e:Lcom/bytedance/sdk/openadsdk/core/f/b;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/f/b;->b(Lcom/bytedance/sdk/openadsdk/core/f/b;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1$1;->a:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/f/d;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;)V

    .line 205
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/f/d;->a(Landroid/graphics/drawable/Drawable;)V

    .line 206
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1$1;->d:Lcom/bytedance/sdk/openadsdk/core/f/b$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;->onSplashAdLoad(Lcom/bytedance/sdk/openadsdk/TTSplashAd;)V

    .line 207
    const-string v0, "SplashAdLoadManager"

    const-string v1, "\u4ece\u7f51\u7edc\u52a0\u8f7d\u6210\u529f\u5e76\u56de\u8c03\u51fa\u53bb"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1$1;->d:Lcom/bytedance/sdk/openadsdk/core/f/b$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->e:Lcom/bytedance/sdk/openadsdk/core/f/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/b;->a()V

    goto :goto_0

    .line 209
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a;->a()Lcom/bytedance/sdk/openadsdk/f/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1$1;->d:Lcom/bytedance/sdk/openadsdk/core/f/b$1;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 210
    invoke-virtual {v1, v8}, Lcom/bytedance/sdk/openadsdk/core/d/k;->b(I)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v1

    .line 211
    invoke-static {v8}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1$1;->c:Ljava/lang/String;

    .line 212
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->g(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v1

    .line 209
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/a;->e(Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 214
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a;->a()Lcom/bytedance/sdk/openadsdk/f/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1$1;->d:Lcom/bytedance/sdk/openadsdk/core/f/b$1;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 215
    invoke-virtual {v1, v8}, Lcom/bytedance/sdk/openadsdk/core/d/k;->b(I)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v1

    .line 216
    invoke-static {v8}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v1

    .line 214
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/a;->d(Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 217
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1$1;->d:Lcom/bytedance/sdk/openadsdk/core/f/b$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    invoke-static {v8}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v8, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;->onError(ILjava/lang/String;)V

    .line 218
    const-string v0, "SplashAdLoadManager"

    const-string v1, "\u56fe\u7247\u52a0\u8f7d\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
