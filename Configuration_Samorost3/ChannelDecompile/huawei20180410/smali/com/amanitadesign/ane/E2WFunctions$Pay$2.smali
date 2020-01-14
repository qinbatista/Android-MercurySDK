.class Lcom/amanitadesign/ane/E2WFunctions$Pay$2;
.super Ljava/lang/Object;
.source "E2WFunctions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amanitadesign/ane/E2WFunctions$Pay;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amanitadesign/ane/E2WFunctions$Pay;


# direct methods
.method constructor <init>(Lcom/amanitadesign/ane/E2WFunctions$Pay;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/amanitadesign/ane/E2WFunctions$Pay$2;->this$1:Lcom/amanitadesign/ane/E2WFunctions$Pay;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 174
    const-string v0, "IAP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "e2w.purchaseProduct "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/amanitadesign/ane/E2WFunctions$Pay;->price1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (nextPlanet)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    sget-object v0, Lcom/amanitadesign/ane/E2WExtension;->extensionContext:Lcom/amanitadesign/ane/E2WExtensionContext;

    const-string v1, "E2WOnPurchase"

    const-string v2, "payingNext"

    invoke-virtual {v0, v1, v2}, Lcom/amanitadesign/ane/E2WExtensionContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    sget-object v0, Lcom/amanitadesign/ane/E2WExtension;->e2w:Lcom/east2west/game/E2WApp;

    const-string v1, "UnlockNextPlanet"

    invoke-virtual {v0, v1}, Lcom/east2west/game/E2WApp;->purchaseProduct(Ljava/lang/String;)V

    .line 177
    return-void
.end method
