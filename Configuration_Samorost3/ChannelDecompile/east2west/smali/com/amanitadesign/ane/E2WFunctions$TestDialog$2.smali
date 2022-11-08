.class Lcom/amanitadesign/ane/E2WFunctions$TestDialog$2;
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
    iput-object p1, p0, Lcom/amanitadesign/ane/E2WFunctions$TestDialog$2;->this$1:Lcom/amanitadesign/ane/E2WFunctions$TestDialog;

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 304
    const-string v0, "IAP"

    const-string v1, "e2w.exit"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    sget-object v0, Lcom/amanitadesign/ane/E2WExtension;->e2w:Lcom/east2west/game/E2WApp;

    invoke-virtual {v0}, Lcom/east2west/game/E2WApp;->ExitGame()V

    .line 306
    return-void
.end method
