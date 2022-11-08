.class Lcom/bytedance/sdk/openadsdk/core/f/b$1;
.super Ljava/lang/Object;
.source "SplashAdLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/f/b;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

.field final synthetic d:Z

.field final synthetic e:Lcom/bytedance/sdk/openadsdk/core/f/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/f/b;ZLcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;Z)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->e:Lcom/bytedance/sdk/openadsdk/core/f/b;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->a:Z

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    iput-boolean p5, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->a:Z

    if-nez v0, :cond_0

    .line 147
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a;->a()Lcom/bytedance/sdk/openadsdk/f/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 148
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->b(I)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v1

    .line 149
    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v1

    .line 147
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/a;->d(Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 151
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;->onError(ILjava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->e:Lcom/bytedance/sdk/openadsdk/core/f/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/b;->a()V

    .line 154
    :cond_0
    const-string v0, "SplashAdLoadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/a;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, -0x3

    .line 159
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 164
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 166
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->b()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->o()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 167
    const-string v0, "req_id"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/k;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :cond_0
    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 176
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/h;

    .line 177
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    const-string v1, "splash_ad"

    const-string v2, "load_ad_duration"

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->e:Lcom/bytedance/sdk/openadsdk/core/f/b;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/f/b;->a(Lcom/bytedance/sdk/openadsdk/core/f/b;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 178
    invoke-static {v0, v1, v2, v4, v5}, Lcom/bytedance/sdk/openadsdk/d/c;->a(Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;J)V

    .line 180
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->e:Lcom/bytedance/sdk/openadsdk/core/f/b;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/f/b;->a(Lcom/bytedance/sdk/openadsdk/core/f/b;J)J

    .line 181
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/d/g;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/g;->a()Ljava/lang/String;

    move-result-object v1

    .line 183
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->e:Lcom/bytedance/sdk/openadsdk/core/f/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/f/b;->b(Lcom/bytedance/sdk/openadsdk/core/f/b;J)J

    .line 184
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->e:Lcom/bytedance/sdk/openadsdk/core/f/b;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/f/b;->b(Lcom/bytedance/sdk/openadsdk/core/f/b;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/f/b$1$1;

    invoke-direct {v3, p0, v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/f/b$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/f/b$1;Lcom/bytedance/sdk/openadsdk/core/d/h;Lcom/bytedance/sdk/openadsdk/core/d/a;Ljava/lang/String;)V

    invoke-static {v2, v1, v3}, Lcom/bytedance/sdk/openadsdk/h/h;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/h/h$a;)V

    .line 265
    :goto_1
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 244
    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->a:Z

    if-nez v0, :cond_2

    .line 245
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a;->a()Lcom/bytedance/sdk/openadsdk/f/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 246
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/d/k;->b(I)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v1

    .line 247
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v1

    .line 245
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/a;->d(Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 249
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;->onError(ILjava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->e:Lcom/bytedance/sdk/openadsdk/core/f/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/b;->a()V

    .line 252
    :cond_2
    const-string v0, "SplashAdLoadManager"

    const-string v1, "\u7f51\u7edc\u8bf7\u6c42\u7684\u5e7f\u544a\u89e3\u6790\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 255
    :cond_3
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->a:Z

    if-nez v0, :cond_4

    .line 256
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a;->a()Lcom/bytedance/sdk/openadsdk/f/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 257
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/d/k;->b(I)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v1

    .line 258
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v1

    .line 256
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/a;->d(Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 260
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;->onError(ILjava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$1;->e:Lcom/bytedance/sdk/openadsdk/core/f/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/b;->a()V

    .line 263
    :cond_4
    const-string v0, "SplashAdLoadManager"

    const-string v1, "\u7f51\u7edc\u8bf7\u6c42\u7684\u5e7f\u544a\u89e3\u6790\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
