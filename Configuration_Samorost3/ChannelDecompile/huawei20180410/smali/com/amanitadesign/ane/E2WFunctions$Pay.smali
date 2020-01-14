.class public Lcom/amanitadesign/ane/E2WFunctions$Pay;
.super Ljava/lang/Object;
.source "E2WFunctions.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amanitadesign/ane/E2WFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Pay"
.end annotation


# static fields
.field public static price1:I

.field public static price2:I

.field public static unlock:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 14
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 118
    const-string v9, "IAP"

    const-string v10, "e2w.pay"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v9, 0x0

    :try_start_0
    aget-object v9, p2, v9

    invoke-virtual {v9}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v9

    sput v9, Lcom/amanitadesign/ane/E2WFunctions$Pay;->unlock:I

    .line 122
    sget v9, Lcom/amanitadesign/ane/E2WFunctions$Pay;->unlock:I

    rsub-int/lit8 v3, v9, 0x4

    .line 123
    .local v3, "discount":I
    sget v9, Lcom/amanitadesign/ane/E2WFunctions$Pay;->unlock:I

    rsub-int/lit8 v7, v9, 0x5

    .line 125
    .local v7, "planets":I
    const/4 v9, 0x1

    aget-object v9, p2, v9

    invoke-virtual {v9}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 127
    .local v5, "exchange":Ljava/lang/Boolean;
    const/4 v9, 0x3

    sput v9, Lcom/amanitadesign/ane/E2WFunctions$Pay;->price1:I

    .line 129
    sget v9, Lcom/amanitadesign/ane/E2WFunctions$Pay;->unlock:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 130
    const/16 v9, 0x9

    sput v9, Lcom/amanitadesign/ane/E2WFunctions$Pay;->price2:I

    .line 144
    :goto_0
    sget v9, Lcom/amanitadesign/ane/E2WFunctions$Pay;->unlock:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_8

    .line 145
    const-string v9, "unlockLastPlanet"

    invoke-static {v9}, Lcom/amanitadesign/ane/E2WFunctions;->getResourceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget v12, Lcom/amanitadesign/ane/E2WFunctions$Pay;->price1:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 150
    .local v6, "message":Ljava/lang/String;
    :goto_1
    sget-object v9, Lcom/amanitadesign/ane/E2WExtension;->appContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 151
    .local v8, "res":Landroid/content/res/Resources;
    const-string v9, "AlertDialogCustom"

    const-string v10, "style"

    sget-object v11, Lcom/amanitadesign/ane/E2WExtension;->appContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 154
    .local v2, "dialogStyle":I
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v1, v9, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 156
    .local v1, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const-string v9, "icon"

    const-string v10, "drawable"

    sget-object v11, Lcom/amanitadesign/ane/E2WExtension;->appContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 157
    const-string v10, "xUnlock"

    invoke-static {v10}, Lcom/amanitadesign/ane/E2WFunctions;->getResourceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    sget v13, Lcom/amanitadesign/ane/E2WFunctions$Pay;->unlock:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 158
    invoke-virtual {v9, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 165
    new-instance v10, Lcom/amanitadesign/ane/E2WFunctions$Pay$1;

    invoke-direct {v10, p0}, Lcom/amanitadesign/ane/E2WFunctions$Pay$1;-><init>(Lcom/amanitadesign/ane/E2WFunctions$Pay;)V

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 171
    sget v9, Lcom/amanitadesign/ane/E2WFunctions$Pay;->price1:I

    if-lez v9, :cond_0

    .line 172
    const-string v9, "xRMB"

    invoke-static {v9}, Lcom/amanitadesign/ane/E2WFunctions;->getResourceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget v12, Lcom/amanitadesign/ane/E2WFunctions$Pay;->price1:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/amanitadesign/ane/E2WFunctions$Pay$2;

    invoke-direct {v10, p0}, Lcom/amanitadesign/ane/E2WFunctions$Pay$2;-><init>(Lcom/amanitadesign/ane/E2WFunctions$Pay;)V

    invoke-virtual {v1, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 180
    :cond_0
    sget v9, Lcom/amanitadesign/ane/E2WFunctions$Pay;->price2:I

    if-lez v9, :cond_1

    .line 181
    const-string v9, "xRMB"

    invoke-static {v9}, Lcom/amanitadesign/ane/E2WFunctions;->getResourceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget v12, Lcom/amanitadesign/ane/E2WFunctions$Pay;->price2:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/amanitadesign/ane/E2WFunctions$Pay$3;

    invoke-direct {v10, p0}, Lcom/amanitadesign/ane/E2WFunctions$Pay$3;-><init>(Lcom/amanitadesign/ane/E2WFunctions$Pay;)V

    invoke-virtual {v1, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 190
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 191
    sget v9, Lcom/amanitadesign/ane/E2WFunctions$Pay;->price2:I

    if-lez v9, :cond_2

    .line 192
    const-string v9, "xRMB"

    invoke-static {v9}, Lcom/amanitadesign/ane/E2WFunctions;->getResourceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget v12, Lcom/amanitadesign/ane/E2WFunctions$Pay;->price2:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/amanitadesign/ane/E2WFunctions$Pay$4;

    invoke-direct {v10, p0}, Lcom/amanitadesign/ane/E2WFunctions$Pay$4;-><init>(Lcom/amanitadesign/ane/E2WFunctions$Pay;)V

    invoke-virtual {v1, v9, v10}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 201
    :cond_2
    const-string v9, "\u5151\u6362"

    new-instance v10, Lcom/amanitadesign/ane/E2WFunctions$Pay$5;

    invoke-direct {v10, p0}, Lcom/amanitadesign/ane/E2WFunctions$Pay$5;-><init>(Lcom/amanitadesign/ane/E2WFunctions$Pay;)V

    invoke-virtual {v1, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 222
    :cond_3
    :goto_2
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 225
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x8

    const/16 v11, 0x8

    invoke-virtual {v9, v10, v11}, Landroid/view/Window;->setFlags(II)V

    .line 228
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 231
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    .line 232
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v10

    .line 231
    invoke-virtual {v9, v10}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 235
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/Window;->clearFlags(I)V

    .line 241
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    .end local v1    # "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "dialogStyle":I
    .end local v3    # "discount":I
    .end local v5    # "exchange":Ljava/lang/Boolean;
    .end local v6    # "message":Ljava/lang/String;
    .end local v7    # "planets":I
    .end local v8    # "res":Landroid/content/res/Resources;
    :goto_3
    const/4 v9, 0x0

    :goto_4
    return-object v9

    .line 131
    .restart local v3    # "discount":I
    .restart local v5    # "exchange":Ljava/lang/Boolean;
    .restart local v7    # "planets":I
    :cond_4
    sget v9, Lcom/amanitadesign/ane/E2WFunctions$Pay;->unlock:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_5

    .line 132
    const/4 v9, 0x7

    sput v9, Lcom/amanitadesign/ane/E2WFunctions$Pay;->price2:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 238
    .end local v3    # "discount":I
    .end local v5    # "exchange":Ljava/lang/Boolean;
    .end local v7    # "planets":I
    :catch_0
    move-exception v4

    .line 239
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 133
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v3    # "discount":I
    .restart local v5    # "exchange":Ljava/lang/Boolean;
    .restart local v7    # "planets":I
    :cond_5
    :try_start_1
    sget v9, Lcom/amanitadesign/ane/E2WFunctions$Pay;->unlock:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_6

    .line 134
    const/4 v9, 0x5

    sput v9, Lcom/amanitadesign/ane/E2WFunctions$Pay;->price2:I

    goto/16 :goto_0

    .line 135
    :cond_6
    sget v9, Lcom/amanitadesign/ane/E2WFunctions$Pay;->unlock:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_7

    .line 136
    const/4 v9, 0x0

    sput v9, Lcom/amanitadesign/ane/E2WFunctions$Pay;->price2:I

    goto/16 :goto_0

    .line 139
    :cond_7
    sget-object v9, Lcom/amanitadesign/ane/E2WExtension;->extensionContext:Lcom/amanitadesign/ane/E2WExtensionContext;

    const-string v10, "E2WOnPurchase"

    const-string v11, "cancel"

    invoke-virtual {v9, v10, v11}, Lcom/amanitadesign/ane/E2WExtensionContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const/4 v9, 0x0

    goto :goto_4

    .line 147
    :cond_8
    const-string v9, "unlockNextPlanet"

    invoke-static {v9}, Lcom/amanitadesign/ane/E2WFunctions;->getResourceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget v12, Lcom/amanitadesign/ane/E2WFunctions$Pay;->price1:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget v12, Lcom/amanitadesign/ane/E2WFunctions$Pay;->price2:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "message":Ljava/lang/String;
    goto/16 :goto_1

    .line 210
    .restart local v1    # "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    .restart local v2    # "dialogStyle":I
    .restart local v8    # "res":Landroid/content/res/Resources;
    :cond_9
    sget v9, Lcom/amanitadesign/ane/E2WFunctions$Pay;->price2:I

    if-lez v9, :cond_3

    .line 211
    const-string v9, "xRMB"

    invoke-static {v9}, Lcom/amanitadesign/ane/E2WFunctions;->getResourceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget v12, Lcom/amanitadesign/ane/E2WFunctions$Pay;->price2:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/amanitadesign/ane/E2WFunctions$Pay$6;

    invoke-direct {v10, p0}, Lcom/amanitadesign/ane/E2WFunctions$Pay$6;-><init>(Lcom/amanitadesign/ane/E2WFunctions$Pay;)V

    invoke-virtual {v1, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method
