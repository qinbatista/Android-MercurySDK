.class public Lcom/east2west/game/util/ProgressUtil;
.super Ljava/lang/Object;
.source "ProgressUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dismiss(Landroid/app/ProgressDialog;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 53
    :cond_0
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 55
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 57
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setText(Landroid/app/ProgressDialog;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 43
    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 46
    invoke-virtual {p0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public static setText(Landroid/app/ProgressDialog;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 79
    invoke-virtual {p0, p3}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 81
    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    if-eqz p2, :cond_3

    .line 83
    invoke-virtual {p0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public static show(Landroid/content/Context;II)Landroid/app/ProgressDialog;
    .locals 1

    .line 26
    :try_start_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 28
    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    .line 29
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 30
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static show(Landroid/content/Context;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;
    .locals 1

    .line 63
    :try_start_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 65
    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    .line 66
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 67
    invoke-virtual {v0, p3}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 68
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 71
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 1

    .line 12
    :try_start_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 13
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    .line 15
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 16
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
