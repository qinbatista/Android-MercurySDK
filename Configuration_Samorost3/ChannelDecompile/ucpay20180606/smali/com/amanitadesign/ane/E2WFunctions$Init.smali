.class public Lcom/amanitadesign/ane/E2WFunctions$Init;
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
    name = "Init"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 4
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "arg1"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v3, 0x0

    .line 37
    sget-object v0, Lcom/amanitadesign/ane/E2WExtension;->e2w:Lcom/east2west/game/E2WApp;

    if-eqz v0, :cond_0

    .line 106
    :goto_0
    return-object v3

    .line 39
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/amanitadesign/ane/E2WExtension;->appContext:Landroid/content/Context;

    .line 43
    new-instance v0, Lcom/amanitadesign/ane/E2WFunctions$Init$1;

    invoke-direct {v0, p0}, Lcom/amanitadesign/ane/E2WFunctions$Init$1;-><init>(Lcom/amanitadesign/ane/E2WFunctions$Init;)V

    sput-object v0, Lcom/amanitadesign/ane/E2WExtension;->callbacks:Lcom/east2west/game/inApp/APPBaseInterface;

    .line 94
    const-string v0, "IAP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "E2W---"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/amanitadesign/ane/E2WExtension;->callbacks:Lcom/east2west/game/inApp/APPBaseInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v0, Lcom/east2west/game/E2WApp;

    invoke-direct {v0}, Lcom/east2west/game/E2WApp;-><init>()V

    sput-object v0, Lcom/amanitadesign/ane/E2WExtension;->e2w:Lcom/east2west/game/E2WApp;

    .line 97
    sget-object v0, Lcom/amanitadesign/ane/E2WExtension;->e2w:Lcom/east2west/game/E2WApp;

    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/east2west/game/E2WApp;->InitE2WSDK(Landroid/content/Context;)V

    .line 98
    sget-object v0, Lcom/amanitadesign/ane/E2WExtension;->e2w:Lcom/east2west/game/E2WApp;

    sget-object v1, Lcom/amanitadesign/ane/E2WExtension;->callbacks:Lcom/east2west/game/inApp/APPBaseInterface;

    invoke-virtual {v0, v1}, Lcom/east2west/game/E2WApp;->InitCarriers(Lcom/east2west/game/inApp/APPBaseInterface;)V

    .line 99
    sget-object v0, Lcom/amanitadesign/ane/E2WExtension;->e2w:Lcom/east2west/game/E2WApp;

    sget-object v1, Lcom/amanitadesign/ane/E2WExtension;->callbacks:Lcom/east2west/game/inApp/APPBaseInterface;

    invoke-virtual {v0, v1}, Lcom/east2west/game/E2WApp;->InitChannel(Lcom/east2west/game/inApp/APPBaseInterface;)V

    .line 100
    sget-object v0, Lcom/amanitadesign/ane/E2WExtension;->e2w:Lcom/east2west/game/E2WApp;

    sget-object v1, Lcom/amanitadesign/ane/E2WExtension;->callbacks:Lcom/east2west/game/inApp/APPBaseInterface;

    invoke-virtual {v0, v1}, Lcom/east2west/game/E2WApp;->InitAd(Lcom/east2west/game/inApp/APPBaseInterface;)V

    .line 102
    const-string v0, "IAP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "E2W1---"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
