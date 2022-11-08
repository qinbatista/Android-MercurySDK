.class public Lcom/amanitadesign/ane/E2WFunctions;
.super Ljava/lang/Object;
.source "E2WFunctions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amanitadesign/ane/E2WFunctions$Exit;,
        Lcom/amanitadesign/ane/E2WFunctions$GetChannelId;,
        Lcom/amanitadesign/ane/E2WFunctions$GetResourceString;,
        Lcom/amanitadesign/ane/E2WFunctions$Init;,
        Lcom/amanitadesign/ane/E2WFunctions$Pay;,
        Lcom/amanitadesign/ane/E2WFunctions$TestDialog;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResourceString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 24
    :try_start_0
    sget-object v2, Lcom/amanitadesign/ane/E2WExtension;->appContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 26
    .local v1, "res":Landroid/content/res/Resources;
    const-string v2, "string"

    sget-object v3, Lcom/amanitadesign/ane/E2WExtension;->appContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 29
    .end local v1    # "res":Landroid/content/res/Resources;
    :goto_0
    return-object v2

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 29
    const/4 v2, 0x0

    goto :goto_0
.end method
