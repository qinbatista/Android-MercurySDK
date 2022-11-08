.class public Lair/air/amanita_design/samorost3/E2W/east2west/wxapi/WXEntryActivity;
.super Landroid/app/Activity;
.source "WXEntryActivity.java"

# interfaces
.implements Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;


# static fields
.field private static final APP_ID:Ljava/lang/String; = "wxc09894676cfb0f15"


# instance fields
.field private api:Lcom/tencent/mm/sdk/openapi/IWXAPI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private goToShowMsg(Lcom/tencent/mm/sdk/modelmsg/ShowMessageFromWX$Req;)V
    .locals 0
    .param p1, "showReq"    # Lcom/tencent/mm/sdk/modelmsg/ShowMessageFromWX$Req;

    .prologue
    .line 119
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const-string v0, "wxc09894676cfb0f15"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lair/air/amanita_design/samorost3/E2W/east2west/wxapi/WXEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 35
    iget-object v0, p0, Lair/air/amanita_design/samorost3/E2W/east2west/wxapi/WXEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    const-string v1, "wxc09894676cfb0f15"

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 36
    iget-object v0, p0, Lair/air/amanita_design/samorost3/E2W/east2west/wxapi/WXEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-virtual {p0}, Lair/air/amanita_design/samorost3/E2W/east2west/wxapi/WXEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z

    .line 37
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

    .line 39
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 45
    invoke-virtual {p0, p1}, Lair/air/amanita_design/samorost3/E2W/east2west/wxapi/WXEntryActivity;->setIntent(Landroid/content/Intent;)V

    .line 46
    iget-object v0, p0, Lair/air/amanita_design/samorost3/E2W/east2west/wxapi/WXEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0, p1, p0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z

    .line 47
    const-string v0, "IAP"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
.end method

.method public onReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)V
    .locals 1
    .param p1, "req"    # Lcom/tencent/mm/sdk/modelbase/BaseReq;

    .prologue
    .line 52
    invoke-virtual {p1}, Lcom/tencent/mm/sdk/modelbase/BaseReq;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 62
    :pswitch_0
    return-void

    .line 52
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V
    .locals 4
    .param p1, "resp"    # Lcom/tencent/mm/sdk/modelbase/BaseResp;

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 68
    .local v0, "result":I
    iget v1, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    packed-switch v1, :pswitch_data_0

    .line 83
    :pswitch_0
    const/4 v0, 0x4

    .line 84
    const-string v1, "DontDestroy_Qin"

    const-string v2, "ShareResult"

    const-string v3, "3"

    invoke-static {v1, v2, v3}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lair/air/amanita_design/samorost3/E2W/east2west/wxapi/WXEntryActivity;->finish()V

    .line 90
    :goto_0
    return-void

    .line 70
    :pswitch_1
    const-string v1, "DontDestroy_Qin"

    const-string v2, "ShareResult"

    const-string v3, "0"

    invoke-static {v1, v2, v3}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lair/air/amanita_design/samorost3/E2W/east2west/wxapi/WXEntryActivity;->finish()V

    goto :goto_0

    .line 74
    :pswitch_2
    const-string v1, "DontDestroy_Qin"

    const-string v2, "ShareResult"

    const-string v3, "1"

    invoke-static {v1, v2, v3}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lair/air/amanita_design/samorost3/E2W/east2west/wxapi/WXEntryActivity;->finish()V

    goto :goto_0

    .line 78
    :pswitch_3
    const/4 v0, 0x3

    .line 79
    const-string v1, "DontDestroy_Qin"

    const-string v2, "ShareResult"

    const-string v3, "2"

    invoke-static {v1, v2, v3}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lair/air/amanita_design/samorost3/E2W/east2west/wxapi/WXEntryActivity;->finish()V

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
