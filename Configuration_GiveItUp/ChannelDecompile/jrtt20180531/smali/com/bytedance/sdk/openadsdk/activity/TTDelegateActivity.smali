.class public Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;
.super Landroid/app/Activity;
.source "TTDelegateActivity.java"


# instance fields
.field private a:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 71
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->a()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x280000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 78
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 79
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 80
    return-void
.end method

.method private a(IJ)V
    .locals 2

    .prologue
    .line 291
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->a()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->j()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/bytedance/sdk/openadsdk/c/g;->b(Landroid/content/Context;J)V

    .line 294
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;IJ)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->a(IJ)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    sget v0, Lcom/bytedance/sdk/openadsdk/R$style;->Theme_Dialog_TTDownload:I

    .line 118
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 120
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    sget v0, Lcom/bytedance/sdk/openadsdk/R$string;->tt_confirm_download_have_app_name:I

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 125
    :goto_1
    sget v2, Lcom/bytedance/sdk/openadsdk/R$string;->tt_tip:I

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 126
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lcom/bytedance/sdk/openadsdk/R$string;->tt_label_ok:I

    .line 127
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity$3;

    invoke-direct {v3, p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity$3;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lcom/bytedance/sdk/openadsdk/R$string;->tt_label_cancel:I

    .line 134
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity$2;

    invoke-direct {v3, p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity$2;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity$1;

    invoke-direct {v2, p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity$1;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 150
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 151
    return-void

    .line 116
    :cond_0
    sget v0, Lcom/bytedance/sdk/openadsdk/R$style;->Theme_Dialog_TTDownloadOld:I

    goto :goto_0

    .line 123
    :cond_1
    sget v0, Lcom/bytedance/sdk/openadsdk/R$string;->tt_confirm_download:I

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private b()V
    .locals 4

    .prologue
    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 100
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    const-string v2, "app_download_url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    const-string v3, "app_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 103
    invoke-direct {p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :goto_0
    return-void

    .line 104
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 106
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->c()V

    goto :goto_0

    .line 110
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->d()V

    goto :goto_0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 154
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 156
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/b/d;->a()Lcom/bytedance/sdk/openadsdk/c/b/d;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.READ_PHONE_STATE"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v3, v1, v2

    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity$4;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity$4;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/c/b/d;->a(Landroid/app/Activity;[Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/c/b/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->finish()V

    goto :goto_0

    .line 177
    :cond_0
    const-string v0, "TT_AD_SDK"

    const-string v1, "\u5df2\u7ecf\u6709Read phone state\u6743\u9650"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->finish()V

    goto :goto_0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->e()Z

    move-result v0

    .line 211
    if-nez v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->finish()V

    .line 214
    :cond_0
    return-void
.end method

.method private e()Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 217
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    if-nez v0, :cond_0

    move v0, v6

    .line 284
    :goto_0
    return v0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 221
    if-nez v1, :cond_1

    move v0, v6

    .line 222
    goto :goto_0

    .line 224
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/i;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/c/i;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/c/i;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 225
    if-nez v1, :cond_2

    move v0, v6

    .line 226
    goto :goto_0

    .line 234
    :cond_2
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 235
    const-string v0, "title"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 236
    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 237
    new-instance v4, Ljava/net/URL;

    const-string v5, "uri"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    .line 238
    const-string v5, "status"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 247
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 252
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 253
    const-string v0, "TT_AD_SDK"

    const-string v1, "Missing appName; skipping handle"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 254
    goto :goto_0

    .line 247
    :cond_3
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    move v0, v6

    .line 240
    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 248
    :catch_1
    move-exception v1

    .line 249
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 242
    :catch_2
    move-exception v0

    .line 243
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 247
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_3
    move v0, v6

    .line 244
    goto :goto_0

    .line 248
    :catch_3
    move-exception v0

    .line 249
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 246
    :catchall_0
    move-exception v0

    .line 247
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 250
    :goto_4
    throw v0

    .line 248
    :catch_4
    move-exception v1

    .line 249
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 256
    :cond_4
    sget v1, Lcom/bytedance/sdk/openadsdk/R$string;->tt_confirm_delete:I

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v0, v8, v6

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 258
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v0, v6, :cond_5

    sget v0, Lcom/bytedance/sdk/openadsdk/R$style;->Theme_Dialog_TTDownload:I

    .line 260
    :goto_5
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 261
    sget v0, Lcom/bytedance/sdk/openadsdk/R$string;->tt_tip:I

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/bytedance/sdk/openadsdk/R$string;->tt_label_ok:I

    .line 262
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v8, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity$7;

    invoke-direct {v8, p0, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity$7;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;JLjava/lang/String;)V

    invoke-virtual {v0, v1, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/bytedance/sdk/openadsdk/R$string;->tt_label_cancel:I

    .line 271
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity$6;

    invoke-direct {v4, p0, v5, v2, v3}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity$6;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;IJ)V

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity$5;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;)V

    .line 277
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 283
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v0, v7

    .line 284
    goto/16 :goto_0

    .line 258
    :cond_5
    sget v0, Lcom/bytedance/sdk/openadsdk/R$style;->Theme_Dialog_TTDownloadOld:I

    goto :goto_5
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->a()V

    .line 63
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    .line 64
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 85
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->setIntent(Landroid/content/Intent;)V

    .line 86
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 299
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/b/d;->a()Lcom/bytedance/sdk/openadsdk/c/b/d;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/c/b/d;->a(Landroid/app/Activity;[Ljava/lang/String;[I)V

    .line 300
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->finish()V

    .line 301
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 91
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_0

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->setIntent(Landroid/content/Intent;)V

    .line 94
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->b()V

    .line 96
    :cond_0
    return-void
.end method
