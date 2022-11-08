.class Lcom/amanitadesign/ane/E2WFunctions$Pay$1;
.super Ljava/lang/Object;
.source "E2WFunctions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    iput-object p1, p0, Lcom/amanitadesign/ane/E2WFunctions$Pay$1;->this$1:Lcom/amanitadesign/ane/E2WFunctions$Pay;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 168
    sget-object v0, Lcom/amanitadesign/ane/E2WExtension;->extensionContext:Lcom/amanitadesign/ane/E2WExtensionContext;

    const-string v1, "E2WOnPurchase"

    const-string v2, "cancel"

    invoke-virtual {v0, v1, v2}, Lcom/amanitadesign/ane/E2WExtensionContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method
