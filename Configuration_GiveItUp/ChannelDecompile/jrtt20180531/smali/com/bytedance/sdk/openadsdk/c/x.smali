.class public Lcom/bytedance/sdk/openadsdk/c/x;
.super Ljava/lang/Object;
.source "TTAppDownloadHandler.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/c/e;
.implements Lcom/bytedance/sdk/openadsdk/h/t$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/c/x$a;,
        Lcom/bytedance/sdk/openadsdk/c/x$b;,
        Lcom/bytedance/sdk/openadsdk/c/x$c;
    }
.end annotation


# static fields
.field private static l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/c/x$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Lcom/bytedance/sdk/openadsdk/core/d/b;

.field private final c:Lcom/bytedance/sdk/openadsdk/core/d/h;

.field private d:Z

.field private e:Lcom/bytedance/sdk/openadsdk/c/y;

.field private f:J

.field private g:Lcom/bytedance/sdk/openadsdk/c/x$c;

.field private h:Lcom/bytedance/sdk/openadsdk/c/x$b;

.field private i:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

.field private j:Lcom/bytedance/sdk/openadsdk/e/d;

.field private final k:Lcom/bytedance/sdk/openadsdk/h/t;

.field private m:Lcom/bytedance/sdk/openadsdk/core/d/e;

.field private n:Z

.field private o:Z

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/d/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/t;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/h/t;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/openadsdk/h/t$a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->k:Lcom/bytedance/sdk/openadsdk/h/t;

    .line 71
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/c/x;->n:Z

    .line 73
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/c/x;->o:Z

    .line 78
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->a:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/c/x;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    .line 80
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/h;->m()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    .line 81
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/c/x;->p:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not a App type Ad !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/e;

    invoke-direct {v0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/d/e;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->m:Lcom/bytedance/sdk/openadsdk/core/d/e;

    .line 86
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/c/x;->g()V

    .line 87
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/c/x;Lcom/bytedance/sdk/openadsdk/c/y;)Lcom/bytedance/sdk/openadsdk/c/y;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->e:Lcom/bytedance/sdk/openadsdk/c/y;

    return-object p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/c/x;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/x;->m()V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/c/y;)V
    .locals 8

    .prologue
    .line 593
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->i:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    if-nez v0, :cond_1

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    if-nez p1, :cond_2

    .line 597
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->i:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onIdle()V

    goto :goto_0

    .line 600
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/c/y;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    iget v0, p1, Lcom/bytedance/sdk/openadsdk/c/y;->b:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 604
    :cond_3
    const-wide/16 v2, 0x0

    .line 606
    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/c/y;->b()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/c/y;->a()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    .line 610
    :goto_1
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 611
    if-gez v0, :cond_4

    .line 615
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b()Ljava/lang/String;

    move-result-object v7

    .line 616
    iget v0, p1, Lcom/bytedance/sdk/openadsdk/c/y;->b:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 625
    :sswitch_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->i:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    iget-wide v2, p1, Lcom/bytedance/sdk/openadsdk/c/y;->c:J

    iget-wide v4, p1, Lcom/bytedance/sdk/openadsdk/c/y;->d:J

    iget-object v6, p1, Lcom/bytedance/sdk/openadsdk/c/y;->e:Ljava/lang/String;

    invoke-interface/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 607
    :catch_0
    move-exception v0

    .line 608
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v0, v2

    goto :goto_1

    .line 618
    :sswitch_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->i:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    iget-wide v2, p1, Lcom/bytedance/sdk/openadsdk/c/y;->c:J

    iget-wide v4, p1, Lcom/bytedance/sdk/openadsdk/c/y;->d:J

    iget-object v6, p1, Lcom/bytedance/sdk/openadsdk/c/y;->e:Ljava/lang/String;

    invoke-interface/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 621
    :sswitch_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->i:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    iget-wide v2, p1, Lcom/bytedance/sdk/openadsdk/c/y;->c:J

    iget-wide v4, p1, Lcom/bytedance/sdk/openadsdk/c/y;->d:J

    iget-object v6, p1, Lcom/bytedance/sdk/openadsdk/c/y;->e:Ljava/lang/String;

    invoke-interface/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 628
    :sswitch_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/r;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 629
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->i:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/c/y;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v7}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onInstalled(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 631
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->i:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    iget-wide v2, p1, Lcom/bytedance/sdk/openadsdk/c/y;->c:J

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/c/y;->e:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v1, v7}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 616
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/c/y;III)V
    .locals 2

    .prologue
    .line 426
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 427
    iput p4, v0, Landroid/os/Message;->what:I

    .line 428
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 429
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 430
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 431
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->k:Lcom/bytedance/sdk/openadsdk/h/t;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/h/t;->sendMessage(Landroid/os/Message;)Z

    .line 432
    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 176
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/x;->l:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/x;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/x;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/c/x$a;

    .line 178
    if-eqz v0, :cond_0

    .line 179
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 180
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/c/x$a;->a()V

    .line 185
    :cond_0
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/x;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_1
    return-void

    .line 181
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 182
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/c/x$a;->b()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/c/x;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/c/x;Lcom/bytedance/sdk/openadsdk/c/y;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/c/x;->a(Lcom/bytedance/sdk/openadsdk/c/y;)V

    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/c/x;)Lcom/bytedance/sdk/openadsdk/core/d/b;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    return-object v0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/c/x;)Lcom/bytedance/sdk/openadsdk/c/y;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->e:Lcom/bytedance/sdk/openadsdk/c/y;

    return-object v0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/c/x;)Lcom/bytedance/sdk/openadsdk/core/d/e;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->m:Lcom/bytedance/sdk/openadsdk/core/d/e;

    return-object v0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/c/x;)Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->i:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    return-object v0
.end method

.method private j()V
    .locals 5

    .prologue
    .line 190
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/x;->k()V

    .line 223
    :goto_0
    return-void

    .line 194
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->a:Landroid/content/Context;

    sget v2, Lcom/bytedance/sdk/openadsdk/R$style;->Theme_Dialog_TTDownload:I

    invoke-direct {v1, v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 196
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->a:Landroid/content/Context;

    sget v2, Lcom/bytedance/sdk/openadsdk/R$string;->tt_confirm_download_have_app_name:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/c/x;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 201
    :goto_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/x;->a:Landroid/content/Context;

    sget v3, Lcom/bytedance/sdk/openadsdk/R$string;->tt_tip:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 202
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/x;->a:Landroid/content/Context;

    sget v3, Lcom/bytedance/sdk/openadsdk/R$string;->tt_label_ok:I

    .line 203
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/c/x$3;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/c/x$3;-><init>(Lcom/bytedance/sdk/openadsdk/c/x;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/x;->a:Landroid/content/Context;

    sget v3, Lcom/bytedance/sdk/openadsdk/R$string;->tt_label_cancel:I

    .line 210
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/c/x$2;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/c/x$2;-><init>(Lcom/bytedance/sdk/openadsdk/c/x;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/c/x$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/c/x$1;-><init>(Lcom/bytedance/sdk/openadsdk/c/x;)V

    .line 216
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 222
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->a:Landroid/content/Context;

    sget v2, Lcom/bytedance/sdk/openadsdk/R$string;->tt_confirm_download:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private k()V
    .locals 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/x;->l:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 233
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/c/x;->l:Ljava/util/HashMap;

    .line 235
    :cond_2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/x$4;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/c/x$4;-><init>(Lcom/bytedance/sdk/openadsdk/c/x;)V

    .line 248
    sget-object v1, Lcom/bytedance/sdk/openadsdk/c/x;->l:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/x;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->a:Landroid/content/Context;

    const-class v2, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 251
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 252
    const-string v1, "app_download_url"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/x;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 254
    const-string v1, "app_name"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/x;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->a:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 260
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/x;->l:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private l()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 295
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->n()Lcom/bytedance/sdk/openadsdk/core/d/d;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 296
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->n()Lcom/bytedance/sdk/openadsdk/core/d/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/d;->a()Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 298
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 299
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 302
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/h/r;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->a:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 304
    const/high16 v1, 0x10000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 307
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/x;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/c/x;->p:Ljava/lang/String;

    const-string v4, "open_url_app"

    invoke-static {v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/d/c;->h(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :goto_0
    return v0

    .line 311
    :cond_1
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->o:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->n:Z

    if-eqz v1, :cond_3

    .line 312
    :cond_2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->o:Z

    .line 313
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/x;->p:Ljava/lang/String;

    const-string v3, "open_fallback_url"

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/d/c;->h(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 357
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/x;->n()V

    .line 358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->n:Z

    .line 359
    return-void
.end method

.method private n()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, -0x1

    .line 362
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->d()Lcom/bytedance/sdk/openadsdk/core/d/g;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 363
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/x;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/b;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/c/x;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/c/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 364
    cmp-long v2, v0, v6

    if-ltz v2, :cond_3

    .line 365
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/x;->h:Lcom/bytedance/sdk/openadsdk/c/x$b;

    if-eqz v2, :cond_0

    .line 366
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/x;->h:Lcom/bytedance/sdk/openadsdk/c/x$b;

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/c/x$b;->a()V

    .line 368
    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/x;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/c/g;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->m:Lcom/bytedance/sdk/openadsdk/core/d/e;

    invoke-virtual {v2, v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/lang/Long;Lcom/bytedance/sdk/openadsdk/c/e;Lcom/bytedance/sdk/openadsdk/core/d/e;)V

    .line 369
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/y;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/c/y;-><init>()V

    .line 370
    iput v4, v0, Lcom/bytedance/sdk/openadsdk/c/y;->b:I

    .line 371
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v4, v2}, Lcom/bytedance/sdk/openadsdk/c/x;->a(Lcom/bytedance/sdk/openadsdk/c/y;III)V

    .line 375
    :cond_1
    :goto_1
    return-void

    .line 362
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->c:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->d()Lcom/bytedance/sdk/openadsdk/core/d/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/g;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 372
    :cond_3
    cmp-long v0, v0, v6

    if-gez v0, :cond_1

    .line 373
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/x;->o()V

    goto :goto_1
.end method

.method private o()V
    .locals 4

    .prologue
    .line 420
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/y;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/c/y;-><init>()V

    .line 421
    const/16 v1, 0x10

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/c/y;->b:I

    .line 422
    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/x;->a(Lcom/bytedance/sdk/openadsdk/c/y;III)V

    .line 423
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .prologue
    .line 388
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->f:J

    .line 389
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 97
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->a:Landroid/content/Context;

    .line 98
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 9

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 475
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->i:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    if-nez v0, :cond_1

    .line 537
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 478
    :cond_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 479
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 480
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/c/y;

    .line 482
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/x;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b()Ljava/lang/String;

    move-result-object v7

    .line 483
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 485
    :pswitch_1
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 487
    :pswitch_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->i:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    iget-wide v2, v0, Lcom/bytedance/sdk/openadsdk/c/y;->c:J

    iget-wide v4, v0, Lcom/bytedance/sdk/openadsdk/c/y;->d:J

    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/c/y;->e:Ljava/lang/String;

    invoke-interface/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V

    .line 488
    iput-boolean v8, p0, Lcom/bytedance/sdk/openadsdk/c/x;->n:Z

    goto :goto_0

    .line 491
    :pswitch_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->i:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    iget-wide v2, v0, Lcom/bytedance/sdk/openadsdk/c/y;->c:J

    iget-wide v4, v0, Lcom/bytedance/sdk/openadsdk/c/y;->d:J

    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/c/y;->e:Ljava/lang/String;

    invoke-interface/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V

    .line 492
    iput-boolean v8, p0, Lcom/bytedance/sdk/openadsdk/c/x;->n:Z

    goto :goto_0

    .line 495
    :pswitch_4
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/c/x;->n:Z

    .line 496
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/c/y;->b:I

    if-ne v1, v4, :cond_2

    .line 497
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->i:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    iget-wide v2, v0, Lcom/bytedance/sdk/openadsdk/c/y;->c:J

    iget-wide v4, v0, Lcom/bytedance/sdk/openadsdk/c/y;->d:J

    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/c/y;->e:Ljava/lang/String;

    invoke-interface/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V

    .line 498
    iput-boolean v8, p0, Lcom/bytedance/sdk/openadsdk/c/x;->n:Z

    goto :goto_0

    .line 499
    :cond_2
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/c/y;->b:I

    const/16 v2, 0x20

    if-ne v1, v2, :cond_3

    .line 500
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->i:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/c/y;->e:Ljava/lang/String;

    invoke-interface {v1, v0, v7}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onInstalled(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 501
    :cond_3
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/c/y;->b:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 502
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/x;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/h/r;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 503
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->i:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/c/y;->e:Ljava/lang/String;

    invoke-interface {v1, v0, v7}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onInstalled(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 505
    :cond_4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->i:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    iget-wide v2, v0, Lcom/bytedance/sdk/openadsdk/c/y;->c:J

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/c/y;->e:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0, v7}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 514
    :pswitch_5
    packed-switch v1, :pswitch_data_2

    :pswitch_6
    goto :goto_0

    .line 523
    :pswitch_7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->i:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    iget-wide v2, v0, Lcom/bytedance/sdk/openadsdk/c/y;->c:J

    iget-wide v4, v0, Lcom/bytedance/sdk/openadsdk/c/y;->d:J

    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/c/y;->e:Ljava/lang/String;

    invoke-interface/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V

    .line 524
    iput-boolean v8, p0, Lcom/bytedance/sdk/openadsdk/c/x;->n:Z

    goto/16 :goto_0

    .line 519
    :pswitch_8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->i:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    iget-wide v2, v0, Lcom/bytedance/sdk/openadsdk/c/y;->c:J

    iget-wide v4, v0, Lcom/bytedance/sdk/openadsdk/c/y;->d:J

    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/c/y;->e:Ljava/lang/String;

    invoke-interface/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V

    .line 520
    iput-boolean v8, p0, Lcom/bytedance/sdk/openadsdk/c/x;->n:Z

    goto/16 :goto_0

    .line 527
    :pswitch_9
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/c/x;->n:Z

    .line 528
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/c/y;->b:I

    if-ne v1, v4, :cond_0

    .line 529
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->i:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    iget-wide v2, v0, Lcom/bytedance/sdk/openadsdk/c/y;->c:J

    iget-wide v4, v0, Lcom/bytedance/sdk/openadsdk/c/y;->d:J

    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/c/y;->e:Ljava/lang/String;

    invoke-interface/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V

    .line 530
    iput-boolean v8, p0, Lcom/bytedance/sdk/openadsdk/c/x;->n:Z

    goto/16 :goto_0

    .line 483
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
    .end packed-switch

    .line 485
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 514
    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->i:Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    .line 321
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/c/x$b;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->h:Lcom/bytedance/sdk/openadsdk/c/x$b;

    .line 383
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/c/y;IJJJ)V
    .locals 4

    .prologue
    .line 400
    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/bytedance/sdk/openadsdk/c/y;->a:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/c/x;->f:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->e:Lcom/bytedance/sdk/openadsdk/c/y;

    .line 405
    const-wide/16 v2, 0x0

    .line 407
    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/c/y;->b()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/c/y;->a()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    .line 411
    :goto_1
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 412
    if-gez v0, :cond_2

    .line 413
    const/4 v0, 0x0

    .line 415
    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/bytedance/sdk/openadsdk/c/x;->a(Lcom/bytedance/sdk/openadsdk/c/y;III)V

    goto :goto_0

    .line 408
    :catch_0
    move-exception v0

    .line 409
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v0, v2

    goto :goto_1
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/e/d;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->j:Lcom/bytedance/sdk/openadsdk/e/d;

    .line 325
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->n:Z

    return v0
.end method

.method public b()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 104
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    if-nez v0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->e:Lcom/bytedance/sdk/openadsdk/c/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->e:Lcom/bytedance/sdk/openadsdk/c/y;

    iget-wide v0, v0, Lcom/bytedance/sdk/openadsdk/c/y;->a:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->e:Lcom/bytedance/sdk/openadsdk/c/y;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/c/y;->b:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/x;->e:Lcom/bytedance/sdk/openadsdk/c/y;

    iget-wide v2, v2, Lcom/bytedance/sdk/openadsdk/c/y;->a:J

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/c/x;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/c/f;->a(Landroid/content/Context;IJLjava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->e:Lcom/bytedance/sdk/openadsdk/c/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->e:Lcom/bytedance/sdk/openadsdk/c/y;

    iget-wide v0, v0, Lcom/bytedance/sdk/openadsdk/c/y;->a:J

    cmp-long v0, v0, v6

    if-ltz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/c/g;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->e:Lcom/bytedance/sdk/openadsdk/c/y;

    iget-wide v2, v1, Lcom/bytedance/sdk/openadsdk/c/y;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/x;->m:Lcom/bytedance/sdk/openadsdk/core/d/e;

    invoke-virtual {v0, v1, p0, v2}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/lang/Long;Lcom/bytedance/sdk/openadsdk/c/e;Lcom/bytedance/sdk/openadsdk/core/d/e;)V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    if-nez v0, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/x;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->n:Z

    goto :goto_0

    .line 124
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/c/x;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/c/x;->d()Z

    goto :goto_0
.end method

.method public d()Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 132
    .line 133
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/x;->e:Lcom/bytedance/sdk/openadsdk/c/y;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/x;->e:Lcom/bytedance/sdk/openadsdk/c/y;

    iget-wide v2, v2, Lcom/bytedance/sdk/openadsdk/c/y;->a:J

    cmp-long v2, v2, v8

    if-gez v2, :cond_4

    .line 135
    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/x;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/h/n;->b(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/n$a;

    move-result-object v2

    .line 136
    sget-object v3, Lcom/bytedance/sdk/openadsdk/h/n$a;->a:Lcom/bytedance/sdk/openadsdk/h/n$a;

    if-ne v2, v3, :cond_2

    .line 137
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/x;->a:Landroid/content/Context;

    sget v3, Lcom/bytedance/sdk/openadsdk/R$string;->tt_no_network:I

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    move v0, v1

    .line 166
    :cond_1
    :goto_1
    return v0

    .line 138
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->a()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/h/n$a;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/h;->d(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/x;->m()V

    goto :goto_0

    .line 141
    :cond_3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/x;->j()V

    goto :goto_0

    .line 145
    :cond_4
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/x;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/c/x;->e:Lcom/bytedance/sdk/openadsdk/c/y;

    iget v3, v3, Lcom/bytedance/sdk/openadsdk/c/y;->b:I

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/c/x;->e:Lcom/bytedance/sdk/openadsdk/c/y;

    iget-wide v4, v4, Lcom/bytedance/sdk/openadsdk/c/y;->a:J

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/c/x;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/c/f;->a(Landroid/content/Context;IJLjava/lang/String;)I

    move-result v2

    .line 146
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/c/x;->e:Lcom/bytedance/sdk/openadsdk/c/y;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/c/x;->e:Lcom/bytedance/sdk/openadsdk/c/y;

    iget-wide v4, v3, Lcom/bytedance/sdk/openadsdk/c/y;->a:J

    cmp-long v3, v4, v8

    if-ltz v3, :cond_5

    .line 147
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/c/x;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/c/g;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/c/x;->e:Lcom/bytedance/sdk/openadsdk/c/y;

    iget-wide v4, v4, Lcom/bytedance/sdk/openadsdk/c/y;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/c/x;->m:Lcom/bytedance/sdk/openadsdk/core/d/e;

    invoke-virtual {v3, v4, p0, v5}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/lang/Long;Lcom/bytedance/sdk/openadsdk/c/e;Lcom/bytedance/sdk/openadsdk/core/d/e;)V

    .line 149
    :cond_5
    const/4 v3, 0x4

    if-ne v2, v3, :cond_6

    .line 151
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->h:Lcom/bytedance/sdk/openadsdk/c/x$b;

    if-eqz v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->h:Lcom/bytedance/sdk/openadsdk/c/x$b;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/c/x$b;->b()V

    .line 153
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->n:Z

    goto :goto_1

    .line 155
    :cond_6
    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 157
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->h:Lcom/bytedance/sdk/openadsdk/c/x$b;

    if-eqz v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->h:Lcom/bytedance/sdk/openadsdk/c/x$b;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/c/x$b;->c()V

    .line 159
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->n:Z

    goto :goto_1

    .line 161
    :cond_7
    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 162
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->n:Z

    goto :goto_1
.end method

.method public e()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 265
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/x;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    if-nez v2, :cond_1

    .line 285
    :cond_0
    :goto_0
    return v0

    .line 268
    :cond_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/x;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v2

    .line 269
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/c/x;->a:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/bytedance/sdk/openadsdk/h/r;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 270
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/c/x;->a:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/bytedance/sdk/openadsdk/h/r;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 271
    if-eqz v2, :cond_0

    .line 274
    const-string v0, "START_ONLY_FOR_ANDROID"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 275
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 278
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->h:Lcom/bytedance/sdk/openadsdk/c/x$b;

    if-eqz v0, :cond_2

    .line 279
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->h:Lcom/bytedance/sdk/openadsdk/c/x$b;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/c/x$b;->d()V

    .line 280
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->n:Z

    :cond_2
    move v0, v1

    .line 283
    goto :goto_0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->j:Lcom/bytedance/sdk/openadsdk/e/d;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->j:Lcom/bytedance/sdk/openadsdk/e/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/e/d;->a()V

    .line 331
    :cond_0
    return-void
.end method

.method public g()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 438
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/c/x;->d:Z

    .line 439
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->g:Lcom/bytedance/sdk/openadsdk/c/x$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->g:Lcom/bytedance/sdk/openadsdk/c/x$c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/c/x$c;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 440
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->g:Lcom/bytedance/sdk/openadsdk/c/x$c;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/c/x$c;->cancel(Z)Z

    .line 442
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/x$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/c/x$c;-><init>(Lcom/bytedance/sdk/openadsdk/c/x;Lcom/bytedance/sdk/openadsdk/c/x$1;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->g:Lcom/bytedance/sdk/openadsdk/c/x$c;

    .line 443
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->g:Lcom/bytedance/sdk/openadsdk/c/x$c;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/c/x;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/d/b;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/c/x$c;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 444
    return-void
.end method

.method public h()V
    .locals 4

    .prologue
    .line 450
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->d:Z

    .line 451
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->e:Lcom/bytedance/sdk/openadsdk/c/y;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/c/g;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->e:Lcom/bytedance/sdk/openadsdk/c/y;

    iget-wide v2, v1, Lcom/bytedance/sdk/openadsdk/c/y;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/c/g;->a(Ljava/lang/Long;Lcom/bytedance/sdk/openadsdk/c/e;)V

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->g:Lcom/bytedance/sdk/openadsdk/c/x$c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->g:Lcom/bytedance/sdk/openadsdk/c/x$c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/c/x$c;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    .line 455
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->g:Lcom/bytedance/sdk/openadsdk/c/x$c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/c/x$c;->cancel(Z)Z

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->k:Lcom/bytedance/sdk/openadsdk/h/t;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/t;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 458
    return-void
.end method

.method public i()V
    .locals 5

    .prologue
    .line 464
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->e:Lcom/bytedance/sdk/openadsdk/c/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->e:Lcom/bytedance/sdk/openadsdk/c/y;

    iget-wide v0, v0, Lcom/bytedance/sdk/openadsdk/c/y;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->e:Lcom/bytedance/sdk/openadsdk/c/y;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/c/y;->b:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/m$a;->a:Landroid/net/Uri;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/x;->e:Lcom/bytedance/sdk/openadsdk/c/y;

    iget-wide v2, v1, Lcom/bytedance/sdk/openadsdk/c/y;->a:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 469
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.ss.intent.action.DOWNLOAD_DELETE"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/c/x;->a:Landroid/content/Context;

    const-class v4, Lcom/bytedance/sdk/openadsdk/service/TTDownloadHandlerService;

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 470
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
