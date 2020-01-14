.class public Lcom/amanitadesign/ane/E2WFunctions$Exit;
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
    name = "Exit"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 3
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "arg1"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 249
    const-string v0, "IAP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "e2w.exit "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/amanitadesign/ane/E2WExtension;->e2w:Lcom/east2west/game/E2WApp;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    sget-object v0, Lcom/amanitadesign/ane/E2WExtension;->e2w:Lcom/east2west/game/E2WApp;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amanitadesign/ane/E2WExtension;->e2w:Lcom/east2west/game/E2WApp;

    invoke-virtual {v0}, Lcom/east2west/game/E2WApp;->ExitGame()V

    .line 251
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
