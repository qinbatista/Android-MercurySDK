.class Lcom/amanitadesign/ane/E2WFunctions$Init$1;
.super Ljava/lang/Object;
.source "E2WFunctions.java"

# interfaces
.implements Lcom/east2west/game/inApp/APPBaseInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amanitadesign/ane/E2WFunctions$Init;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amanitadesign/ane/E2WFunctions$Init;


# direct methods
.method constructor <init>(Lcom/amanitadesign/ane/E2WFunctions$Init;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/amanitadesign/ane/E2WFunctions$Init$1;->this$1:Lcom/amanitadesign/ane/E2WFunctions$Init;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFunctionCallBack(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 91
    return-void
.end method

.method public onLoginCancelCallBack(Ljava/lang/String;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 69
    const-string v0, "IAP"

    const-string v1, "onCreate onLoginCancelCallBack"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    sget-object v0, Lcom/amanitadesign/ane/E2WExtension;->extensionContext:Lcom/amanitadesign/ane/E2WExtensionContext;

    const-string v1, "E2WOnLogin"

    const-string v2, "cancel"

    invoke-virtual {v0, v1, v2}, Lcom/amanitadesign/ane/E2WExtensionContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public onLoginFailedCallBack(Ljava/lang/String;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 76
    const-string v0, "IAP"

    const-string v1, "onCreate onLoginFailedCallBack"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sget-object v0, Lcom/amanitadesign/ane/E2WExtension;->extensionContext:Lcom/amanitadesign/ane/E2WExtensionContext;

    const-string v1, "E2WOnLogin"

    const-string v2, "failed"

    invoke-virtual {v0, v1, v2}, Lcom/amanitadesign/ane/E2WExtensionContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public onLoginSuccessCallBack(Ljava/lang/String;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 83
    const-string v0, "IAP"

    const-string v1, "onCreate onLoginSuccessCallBack"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    sget-object v0, Lcom/amanitadesign/ane/E2WExtension;->extensionContext:Lcom/amanitadesign/ane/E2WExtensionContext;

    const-string v1, "E2WOnLogin"

    const-string v2, "success"

    invoke-virtual {v0, v1, v2}, Lcom/amanitadesign/ane/E2WExtensionContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public onPurchaseCancelCallBack(Ljava/lang/String;)V
    .locals 3
    .param p1, "strProductId"    # Ljava/lang/String;

    .prologue
    .line 62
    const-string v0, "IAP"

    const-string v1, "onCreate onPurchaseCancelCallBack"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    sget-object v0, Lcom/amanitadesign/ane/E2WExtension;->extensionContext:Lcom/amanitadesign/ane/E2WExtensionContext;

    const-string v1, "E2WOnPurchase"

    const-string v2, "cancel"

    invoke-virtual {v0, v1, v2}, Lcom/amanitadesign/ane/E2WExtensionContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public onPurchaseFailedCallBack(Ljava/lang/String;)V
    .locals 3
    .param p1, "strProductId"    # Ljava/lang/String;

    .prologue
    .line 55
    const-string v0, "IAP"

    const-string v1, "onCreate onPurchaseFailedCallBack"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    sget-object v0, Lcom/amanitadesign/ane/E2WExtension;->extensionContext:Lcom/amanitadesign/ane/E2WExtensionContext;

    const-string v1, "E2WOnPurchase"

    const-string v2, "failed"

    invoke-virtual {v0, v1, v2}, Lcom/amanitadesign/ane/E2WExtensionContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public onPurchaseSuccessCallBack(Ljava/lang/String;)V
    .locals 4
    .param p1, "strProductId"    # Ljava/lang/String;

    .prologue
    .line 48
    const-string v0, "IAP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCreate onPurchaseSuccessCallBack strProductId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    sget-object v0, Lcom/amanitadesign/ane/E2WExtension;->extensionContext:Lcom/amanitadesign/ane/E2WExtensionContext;

    const-string v1, "E2WOnPurchase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "success|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amanitadesign/ane/E2WExtensionContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method
