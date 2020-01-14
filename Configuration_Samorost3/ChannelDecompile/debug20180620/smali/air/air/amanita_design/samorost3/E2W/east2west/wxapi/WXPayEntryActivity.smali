.class public Lair/air/amanita_design/samorost3/E2W/east2west/wxapi/WXPayEntryActivity;
.super Landroid/app/Activity;
.source "WXPayEntryActivity.java"

# interfaces
.implements Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "WXPayEntryActivity"


# instance fields
.field private api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

.field public channelname:Ljava/lang/String;

.field private mBaseInApp:Lcom/east2west/game/inApp/InAppBase;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lair/air/amanita_design/samorost3/E2W/east2west/wxapi/WXPayEntryActivity;->mBaseInApp:Lcom/east2west/game/inApp/InAppBase;

    .line 25
    const-string v0, "[air.air.amanita_design.samorost3.E2W.east2west.wxapi]"

    iput-object v0, p0, Lair/air/amanita_design/samorost3/E2W/east2west/wxapi/WXPayEntryActivity;->channelname:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    sget-object v0, Lcom/east2west/game/inApp/InAppEAST2WEST;->WX_APP_ID:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lair/air/amanita_design/samorost3/E2W/east2west/wxapi/WXPayEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 31
    iget-object v0, p0, Lair/air/amanita_design/samorost3/E2W/east2west/wxapi/WXPayEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-virtual {p0}, Lair/air/amanita_design/samorost3/E2W/east2west/wxapi/WXPayEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z

    .line 32
    const-string v0, "Max"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[WXPayEntryActivity] onCreate->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/east2west/game/inApp/InAppEAST2WEST;->WX_APP_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 39
    invoke-virtual {p0, p1}, Lair/air/amanita_design/samorost3/E2W/east2west/wxapi/WXPayEntryActivity;->setIntent(Landroid/content/Intent;)V

    .line 40
    iget-object v0, p0, Lair/air/amanita_design/samorost3/E2W/east2west/wxapi/WXPayEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0, p1, p0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z

    .line 41
    const-string v0, "[WXPayEntryActivity]->onNewIntent"

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public onReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)V
    .locals 0
    .param p1, "req"    # Lcom/tencent/mm/sdk/modelbase/BaseReq;

    .prologue
    .line 46
    return-void
.end method

.method public onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V
    .locals 4
    .param p1, "resp"    # Lcom/tencent/mm/sdk/modelbase/BaseResp;

    .prologue
    const/4 v3, 0x1

    .line 50
    const-string v0, "IAP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "air.air.amanita_design.samorost3.E2W.east2west.wxapi->onPayFinish, errCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {p1}, Lcom/tencent/mm/sdk/modelbase/BaseResp;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 52
    iget v0, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    if-nez v0, :cond_1

    .line 54
    sget-object v0, Lcom/east2west/game/E2WApp;->activityforappbase:Lcom/east2west/game/E2WApp;

    invoke-virtual {v0}, Lcom/east2west/game/E2WApp;->getBaseInApp()Lcom/east2west/game/inApp/InAppBase;

    move-result-object v0

    iput-object v0, p0, Lair/air/amanita_design/samorost3/E2W/east2west/wxapi/WXPayEntryActivity;->mBaseInApp:Lcom/east2west/game/inApp/InAppBase;

    .line 55
    const-string v0, "IAP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "finish()->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lair/air/amanita_design/samorost3/E2W/east2west/wxapi/WXPayEntryActivity;->mBaseInApp:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string v0, "IAP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "E2WApp.activityforappbase->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/east2west/game/E2WApp;->activityforappbase:Lcom/east2west/game/E2WApp;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    sget-object v0, Lcom/east2west/game/E2WApp;->activityforappbase:Lcom/east2west/game/E2WApp;

    invoke-virtual {v0}, Lcom/east2west/game/E2WApp;->getBaseInApp()Lcom/east2west/game/inApp/InAppBase;

    move-result-object v0

    iput-object v0, p0, Lair/air/amanita_design/samorost3/E2W/east2west/wxapi/WXPayEntryActivity;->mBaseInApp:Lcom/east2west/game/inApp/InAppBase;

    .line 58
    const-string v0, "\u652f\u4ed8\u6210\u529f"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 59
    iget-object v0, p0, Lair/air/amanita_design/samorost3/E2W/east2west/wxapi/WXPayEntryActivity;->mBaseInApp:Lcom/east2west/game/inApp/InAppBase;

    iget-object v1, p0, Lair/air/amanita_design/samorost3/E2W/east2west/wxapi/WXPayEntryActivity;->channelname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/east2west/game/inApp/InAppBase;->onPurchaseSuccess(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lair/air/amanita_design/samorost3/E2W/east2west/wxapi/WXPayEntryActivity;->finish()V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    sget-object v0, Lcom/east2west/game/E2WApp;->activityforappbase:Lcom/east2west/game/E2WApp;

    invoke-virtual {v0}, Lcom/east2west/game/E2WApp;->getBaseInApp()Lcom/east2west/game/inApp/InAppBase;

    move-result-object v0

    iput-object v0, p0, Lair/air/amanita_design/samorost3/E2W/east2west/wxapi/WXPayEntryActivity;->mBaseInApp:Lcom/east2west/game/inApp/InAppBase;

    .line 67
    const-string v0, "IAP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "E2WApp.activityforappbase->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/east2west/game/E2WApp;->activityforappbase:Lcom/east2west/game/E2WApp;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string v0, "IAP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "finish()->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lair/air/amanita_design/samorost3/E2W/east2west/wxapi/WXPayEntryActivity;->mBaseInApp:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const-string v0, "\u652f\u4ed8\u5931\u8d25"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 72
    iget-object v0, p0, Lair/air/amanita_design/samorost3/E2W/east2west/wxapi/WXPayEntryActivity;->mBaseInApp:Lcom/east2west/game/inApp/InAppBase;

    iget-object v1, p0, Lair/air/amanita_design/samorost3/E2W/east2west/wxapi/WXPayEntryActivity;->channelname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/east2west/game/inApp/InAppBase;->onPurchaseFailed(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lair/air/amanita_design/samorost3/E2W/east2west/wxapi/WXPayEntryActivity;->finish()V

    goto :goto_0
.end method
