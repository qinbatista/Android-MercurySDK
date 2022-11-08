.class Lcom/bytedance/sdk/openadsdk/core/f/b$2$1;
.super Ljava/lang/Object;
.source "SplashAdLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/f/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/f/b$2;->a(Lcom/bytedance/sdk/openadsdk/core/d/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/d/j;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/f/d;

.field final synthetic c:Landroid/graphics/drawable/Drawable;

.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/f/b$2;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/f/b$2;Lcom/bytedance/sdk/openadsdk/core/d/j;Lcom/bytedance/sdk/openadsdk/core/f/d;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$2$1;->d:Lcom/bytedance/sdk/openadsdk/core/f/b$2;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$2$1;->a:Lcom/bytedance/sdk/openadsdk/core/d/j;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$2$1;->b:Lcom/bytedance/sdk/openadsdk/core/f/d;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$2$1;->c:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 307
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$2$1;->d:Lcom/bytedance/sdk/openadsdk/core/f/b$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/f/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/f/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/b;->d(Lcom/bytedance/sdk/openadsdk/core/f/b;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$2$1;->d:Lcom/bytedance/sdk/openadsdk/core/f/b$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/f/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/f/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/b;->e(Lcom/bytedance/sdk/openadsdk/core/f/b;)Lcom/bytedance/sdk/openadsdk/core/d/i;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/d/i;->a:Ljava/lang/String;

    .line 310
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$2$1;->a:Lcom/bytedance/sdk/openadsdk/core/d/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Lcom/bytedance/sdk/openadsdk/core/d/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->l()Ljava/lang/String;

    move-result-object v2

    .line 311
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$2$1;->a:Lcom/bytedance/sdk/openadsdk/core/d/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Lcom/bytedance/sdk/openadsdk/core/d/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->o()Ljava/lang/String;

    move-result-object v3

    .line 312
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$2$1;->a:Lcom/bytedance/sdk/openadsdk/core/d/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Lcom/bytedance/sdk/openadsdk/core/d/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 314
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$2$1;->a:Lcom/bytedance/sdk/openadsdk/core/d/j;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Lcom/bytedance/sdk/openadsdk/core/d/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/d/h;->o()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 315
    const-string v4, "req_id"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 320
    :cond_0
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a;->a()Lcom/bytedance/sdk/openadsdk/f/a;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v4

    .line 321
    invoke-virtual {v4, v2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v2

    const/4 v4, 0x4

    .line 322
    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a(I)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v2

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$2$1;->d:Lcom/bytedance/sdk/openadsdk/core/f/b$2;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/core/f/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/f/b;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/f/b;->f(Lcom/bytedance/sdk/openadsdk/core/f/b;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/openadsdk/core/d/k;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v2

    .line 323
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    .line 324
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/d/k;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    .line 320
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/f/a;->c(Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 326
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$2$1;->d:Lcom/bytedance/sdk/openadsdk/core/f/b$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/f/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/f/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/f/b;->a(Lcom/bytedance/sdk/openadsdk/core/f/b;Z)Z

    .line 327
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$2$1;->b:Lcom/bytedance/sdk/openadsdk/core/f/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$2$1;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/f/d;->a(Landroid/graphics/drawable/Drawable;)V

    .line 328
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$2$1;->d:Lcom/bytedance/sdk/openadsdk/core/f/b$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/f/b$2;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$2$1;->b:Lcom/bytedance/sdk/openadsdk/core/f/d;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;->onSplashAdLoad(Lcom/bytedance/sdk/openadsdk/TTSplashAd;)V

    .line 329
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$2$1;->d:Lcom/bytedance/sdk/openadsdk/core/f/b$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/f/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/f/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/b;->a()V

    .line 330
    const-string v0, "SplashAdLoadManager"

    const-string v1, "\u7f13\u5b58\u5e7f\u544a\u83b7\u53d6\u6210\u529f"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :goto_1
    return-void

    .line 316
    :catch_0
    move-exception v1

    .line 317
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 332
    :cond_1
    const-string v0, "SplashAdLoadManager"

    const-string v1, "\u7f13\u5b58\u5e7f\u544a\u4e0d\u5728\u6295\u653e\u671f\u6216\u672c\u6b21\u8c03\u7528\u5df2\u56de\u8c03\u51fa\u53bb"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$2$1;->d:Lcom/bytedance/sdk/openadsdk/core/f/b$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/f/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/f/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$2$1;->d:Lcom/bytedance/sdk/openadsdk/core/f/b$2;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/f/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/f/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/f/b;->f(Lcom/bytedance/sdk/openadsdk/core/f/b;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/b$2$1;->d:Lcom/bytedance/sdk/openadsdk/core/f/b$2;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/f/b$2;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    invoke-static {v0, v1, v2, v3, v3}, Lcom/bytedance/sdk/openadsdk/core/f/b;->a(Lcom/bytedance/sdk/openadsdk/core/f/b;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;ZZ)V

    goto :goto_1
.end method
