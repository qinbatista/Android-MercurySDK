.class Lcom/amanitadesign/ane/E2WFunctions$TestDialog$1;
.super Ljava/lang/Object;
.source "E2WFunctions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amanitadesign/ane/E2WFunctions$TestDialog;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amanitadesign/ane/E2WFunctions$TestDialog;


# direct methods
.method constructor <init>(Lcom/amanitadesign/ane/E2WFunctions$TestDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/amanitadesign/ane/E2WFunctions$TestDialog$1;->this$1:Lcom/amanitadesign/ane/E2WFunctions$TestDialog;

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 297
    const-string v0, "IAP"

    const-string v1, "e2w.purchaseProduct"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    sget-object v0, Lcom/amanitadesign/ane/E2WExtension;->e2w:Lcom/east2west/game/E2WApp;

    const-string v1, "Unlock"

    invoke-virtual {v0, v1}, Lcom/east2west/game/E2WApp;->purchaseProduct(Ljava/lang/String;)V

    .line 299
    return-void
.end method
