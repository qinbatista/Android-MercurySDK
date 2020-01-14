.class Lcom/bytedance/sdk/openadsdk/c/x$c;
.super Landroid/os/AsyncTask;
.source "TTAppDownloadHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/c/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/bytedance/sdk/openadsdk/c/y;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/c/x;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/c/x;)V
    .locals 0

    .prologue
    .line 539
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/x$c;->a:Lcom/bytedance/sdk/openadsdk/c/x;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/c/x;Lcom/bytedance/sdk/openadsdk/c/x$1;)V
    .locals 0

    .prologue
    .line 539
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/c/x$c;-><init>(Lcom/bytedance/sdk/openadsdk/c/x;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/c/y;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 582
    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    aget-object v0, p1, v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x$c;->a:Lcom/bytedance/sdk/openadsdk/c/x;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/x;->b(Lcom/bytedance/sdk/openadsdk/c/x;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    .line 583
    :cond_1
    const/4 v0, 0x0

    .line 588
    :goto_0
    return-object v0

    .line 585
    :cond_2
    aget-object v0, p1, v2

    .line 586
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/x$c;->a:Lcom/bytedance/sdk/openadsdk/c/x;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/c/x;->b(Lcom/bytedance/sdk/openadsdk/c/x;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/c/f;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/c/f;

    move-result-object v1

    .line 588
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/c/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/c/y;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Lcom/bytedance/sdk/openadsdk/c/y;)V
    .locals 4

    .prologue
    .line 543
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 544
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/c/x$c;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    :goto_0
    return-void

    .line 548
    :cond_0
    if-eqz p1, :cond_3

    :try_start_0
    iget-wide v0, p1, Lcom/bytedance/sdk/openadsdk/c/y;->a:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x$c;->a:Lcom/bytedance/sdk/openadsdk/c/x;

    .line 549
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/x;->b(Lcom/bytedance/sdk/openadsdk/c/x;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/f;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/c/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/c/f;->a(Lcom/bytedance/sdk/openadsdk/c/y;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x$c;->a:Lcom/bytedance/sdk/openadsdk/c/x;

    .line 550
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/x;->b(Lcom/bytedance/sdk/openadsdk/c/x;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/x$c;->a:Lcom/bytedance/sdk/openadsdk/c/x;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/c/x;->c(Lcom/bytedance/sdk/openadsdk/c/x;)Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/r;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 551
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x$c;->a:Lcom/bytedance/sdk/openadsdk/c/x;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/x;->d(Lcom/bytedance/sdk/openadsdk/c/x;)Lcom/bytedance/sdk/openadsdk/c/y;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x$c;->a:Lcom/bytedance/sdk/openadsdk/c/x;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/x;->d(Lcom/bytedance/sdk/openadsdk/c/x;)Lcom/bytedance/sdk/openadsdk/c/y;

    move-result-object v0

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/c/y;->b:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    .line 552
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x$c;->a:Lcom/bytedance/sdk/openadsdk/c/x;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/c/x;->a(Lcom/bytedance/sdk/openadsdk/c/x;Lcom/bytedance/sdk/openadsdk/c/y;)Lcom/bytedance/sdk/openadsdk/c/y;

    .line 557
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x$c;->a:Lcom/bytedance/sdk/openadsdk/c/x;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/c/x;->b(Lcom/bytedance/sdk/openadsdk/c/x;Lcom/bytedance/sdk/openadsdk/c/y;)V

    goto :goto_0

    .line 575
    :catch_0
    move-exception v0

    goto :goto_0

    .line 554
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x$c;->a:Lcom/bytedance/sdk/openadsdk/c/x;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/c/x;->a(Lcom/bytedance/sdk/openadsdk/c/x;Lcom/bytedance/sdk/openadsdk/c/y;)Lcom/bytedance/sdk/openadsdk/c/y;

    .line 555
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x$c;->a:Lcom/bytedance/sdk/openadsdk/c/x;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/x;->b(Lcom/bytedance/sdk/openadsdk/c/x;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/c/g;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/x$c;->a:Lcom/bytedance/sdk/openadsdk/c/x;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/c/x;->d(Lcom/bytedance/sdk/openadsdk/c/x;)Lcom/bytedance/sdk/openadsdk/c/y;

    move-result-object v1

    iget-wide v2, v1, Lcom/bytedance/sdk/openadsdk/c/y;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/x$c;->a:Lcom/bytedance/sdk/openadsdk/c/x;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/c/x$c;->a:Lcom/bytedance/sdk/openadsdk/c/x;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/c/x;->e(Lcom/bytedance/sdk/openadsdk/c/x;)Lcom/bytedance/sdk/openadsdk/core/d/e;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/lang/Long;Lcom/bytedance/sdk/openadsdk/c/e;Lcom/bytedance/sdk/openadsdk/core/d/e;)V

    goto :goto_1

    .line 559
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x$c;->a:Lcom/bytedance/sdk/openadsdk/c/x;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/x;->b(Lcom/bytedance/sdk/openadsdk/c/x;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/x$c;->a:Lcom/bytedance/sdk/openadsdk/c/x;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/c/x;->c(Lcom/bytedance/sdk/openadsdk/c/x;)Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/r;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 560
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x$c;->a:Lcom/bytedance/sdk/openadsdk/c/x;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/x;->d(Lcom/bytedance/sdk/openadsdk/c/x;)Lcom/bytedance/sdk/openadsdk/c/y;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 561
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x$c;->a:Lcom/bytedance/sdk/openadsdk/c/x;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/x$c;->a:Lcom/bytedance/sdk/openadsdk/c/x;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/c/x;->d(Lcom/bytedance/sdk/openadsdk/c/x;)Lcom/bytedance/sdk/openadsdk/c/y;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/c/x;->b(Lcom/bytedance/sdk/openadsdk/c/x;Lcom/bytedance/sdk/openadsdk/c/y;)V

    goto/16 :goto_0

    .line 564
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x$c;->a:Lcom/bytedance/sdk/openadsdk/c/x;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/c/y;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/c/y;-><init>()V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/c/x;->a(Lcom/bytedance/sdk/openadsdk/c/x;Lcom/bytedance/sdk/openadsdk/c/y;)Lcom/bytedance/sdk/openadsdk/c/y;

    .line 565
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x$c;->a:Lcom/bytedance/sdk/openadsdk/c/x;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/x;->d(Lcom/bytedance/sdk/openadsdk/c/x;)Lcom/bytedance/sdk/openadsdk/c/y;

    move-result-object v0

    const/16 v1, 0x8

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/c/y;->b:I

    .line 566
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x$c;->a:Lcom/bytedance/sdk/openadsdk/c/x;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/x$c;->a:Lcom/bytedance/sdk/openadsdk/c/x;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/c/x;->d(Lcom/bytedance/sdk/openadsdk/c/x;)Lcom/bytedance/sdk/openadsdk/c/y;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/c/x;->b(Lcom/bytedance/sdk/openadsdk/c/x;Lcom/bytedance/sdk/openadsdk/c/y;)V

    goto/16 :goto_0

    .line 569
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x$c;->a:Lcom/bytedance/sdk/openadsdk/c/x;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/x;->f(Lcom/bytedance/sdk/openadsdk/c/x;)Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 570
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x$c;->a:Lcom/bytedance/sdk/openadsdk/c/x;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/x;->f(Lcom/bytedance/sdk/openadsdk/c/x;)Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onIdle()V

    .line 572
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x$c;->a:Lcom/bytedance/sdk/openadsdk/c/x;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/c/x;->a(Lcom/bytedance/sdk/openadsdk/c/x;Lcom/bytedance/sdk/openadsdk/c/y;)Lcom/bytedance/sdk/openadsdk/c/y;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 539
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/c/x$c;->a([Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/c/y;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 539
    check-cast p1, Lcom/bytedance/sdk/openadsdk/c/y;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/c/x$c;->a(Lcom/bytedance/sdk/openadsdk/c/y;)V

    return-void
.end method
