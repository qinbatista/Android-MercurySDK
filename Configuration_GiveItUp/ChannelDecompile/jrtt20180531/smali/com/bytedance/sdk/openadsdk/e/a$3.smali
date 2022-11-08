.class Lcom/bytedance/sdk/openadsdk/e/a$3;
.super Ljava/lang/Object;
.source "JsAppAdDownloadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/c/x$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/e/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/c/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/d/h;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/bytedance/sdk/openadsdk/e/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/e/a;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/e/a$3;->d:Lcom/bytedance/sdk/openadsdk/e/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/e/a$3;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/e/a$3;->b:Lcom/bytedance/sdk/openadsdk/core/d/h;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/e/a$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 287
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/a$3;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/e/a$3;->b:Lcom/bytedance/sdk/openadsdk/core/d/h;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/e/a$3;->c:Ljava/lang/String;

    const-string v3, "click_start_detail"

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/d/c;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    sget-object v0, Lcom/bytedance/sdk/openadsdk/e/a;->a:Ljava/lang/String;

    const-string v1, " js onClickDownloadStart"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 293
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/a$3;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/e/a$3;->b:Lcom/bytedance/sdk/openadsdk/core/d/h;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/e/a$3;->c:Ljava/lang/String;

    const-string v3, "click_pause"

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/d/c;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    sget-object v0, Lcom/bytedance/sdk/openadsdk/e/a;->a:Ljava/lang/String;

    const-string v1, " js onClickDownloadPause"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 299
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/a$3;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/e/a$3;->b:Lcom/bytedance/sdk/openadsdk/core/d/h;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/e/a$3;->c:Ljava/lang/String;

    const-string v3, "click_continue"

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/d/c;->c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    sget-object v0, Lcom/bytedance/sdk/openadsdk/e/a;->a:Ljava/lang/String;

    const-string v1, " js onClickDownloadContinue"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    .line 305
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/a$3;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/e/a$3;->b:Lcom/bytedance/sdk/openadsdk/core/d/h;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/e/a$3;->c:Ljava/lang/String;

    const-string v3, "click_open"

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/d/c;->h(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    sget-object v0, Lcom/bytedance/sdk/openadsdk/e/a;->a:Ljava/lang/String;

    const-string v1, "onClickOpenAdApp"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    return-void
.end method
