.class public Lcom/east2west/game/QinConst;
.super Ljava/lang/Object;
.source "QinConst.java"


# static fields
.field public static ADChannel:Ljava/lang/String; = ""

.field public static ADParamList:[Ljava/lang/String; = null

.field public static APPChineseName:Ljava/lang/String; = "\u94a2\u94c1\u6218\u961f"

.field public static APPID:Ljava/lang/String; = ""

.field public static APPKEY:Ljava/lang/String; = ""

.field public static CarriersID:Ljava/lang/String; = ""

.field public static CarriersPayLock:Ljava/lang/String; = "0"

.field public static DataFileName:Ljava/lang/String; = "machinarium_save.bin"

.field public static GameId:Ljava/lang/String; = "e2w25e3847c9ed078e1"

.field public static LogVERSION:Ljava/lang/String; = "1.1"

.field public static QinPid:Ljava/lang/String; = ""

.field public static Qindesc:Ljava/lang/String; = ""

.field public static Qinpricefloat:F = 0.0f

.field public static Restoreappid:Ljava/lang/String; = "IronMarine"

.field public static SDKID:Ljava/lang/String; = ""

.field public static SDKKey:Ljava/lang/String; = ""

.field public static SDKNeed:Ljava/lang/String; = ""

.field public static SDKPay:Ljava/lang/String; = ""

.field public static SDKPayLock:Ljava/lang/String; = "0"

.field public static SDKValue:Ljava/lang/String; = ""

.field public static ServerLocation:Ljava/lang/String; = "101.201.101.114:9000"

.field public static accesstoken:Ljava/lang/String; = "9d4d765b489220b2b32b7f0db4762493"

.field public static appid:Ljava/lang/String; = "IronMarine"

.field public static exchangeID:Ljava/lang/String; = "5701"

.field public static exchangeKEY:Ljava/lang/String; = "4dcb6ba1fd3139623c0d3554e4fae8ac"

.field public static key:Ljava/lang/String; = "MIICeAIBADANBgkqhkiG9w0BAQEFAASCAmIwggJeAgEAAoGBALnMsImln+S8fxJtf7NDqQhh8EA318buO6ScnyzNbaBkVmu4oL97ggRrgmI7z1YKYkPNs6ymufqjHDAAqqyMm+KgNYodKsr+LtWOxwHVYEI7rdZL6ioNoOyv396pGQjoyXDB6FfP+dGXGN/WMSyJrcXn2tdY025S+dBbQaMTnqhvAgMBAAECgYEAiaTJN//aF1NJdDZofz5lsA8WNAzqrrX4u3dIOKGrUEJk/4KUm6Z86JdYzTtv21bv+zkdnY8agkJp9GnaBuBX7mVEg3tHqzZrOCq5nVX9OHJoMytGwLxlHvejBZPVS1PmkfFnEYRAkBcti5nmsY+fCV5/lxVScrYGdzfrf1vio1ECQQDpxHmicfwYCTb0ZcUIKU0CQvfD9Te/94TIxr82EKcq/pPfoU3vQY+Ks7LI41Zc2kRYhT1dXezzKf/r2FjAMid3AkEAy3hXmEUZYdg+SPVURzrQt6PGjvLv/5Uxe75t8Ovx2JxHRgCD5j7IArzDg7ACMNn50xMHfQUD4QVdEG2vtvK0yQJBAJp/wiw8zXJNVMa+JDS6pyzhecNHZGs5eccApAtlgjaGPtFEWK/SUr5G+diPd9qyXw1qMh5tH1eu4HfNawrLmw0CQBRZ3hEJ4EcMFPbBKwPQ2y1zARotLFoY9xEUc/Sj9NWgk/Rpesfdwa2cacXTJfTy6Gz3O0mC5eds3OkWv3uB/RkCQQCEkR2M+vdStNq08KV7g+bOZKXElvnYjpUHMdVkO+oeXHPhLf9ltlpBOynA7WA60Jdg0OJa14ngZcu2loawd+q2"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ExitGame()V
    .locals 1

    .line 46
    sget-object v0, Lcom/east2west/game/E2WApp;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 47
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method public FunctionL(Ljava/lang/String;)V
    .locals 0

    .line 42
    sput-object p1, Lcom/east2west/game/E2WApp;->isLogOpen:Ljava/lang/String;

    return-void
.end method

.method public QinUnityMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public ShareResult(I)V
    .locals 0

    return-void
.end method

.method public onFunctionCallBack(Ljava/lang/String;Lcom/east2west/game/inApp/InAppBase;)V
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[QinConst] onFunctionCallBack callback->strError="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " inbase->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 63
    sget-object p2, Lcom/east2west/game/inApp/InAppBase;->appinterface:Lcom/east2west/game/inApp/APPBaseInterface;

    invoke-interface {p2, p1}, Lcom/east2west/game/inApp/APPBaseInterface;->onFunctionCallBack(Ljava/lang/String;)V

    return-void
.end method

.method public onLoadFailedCallBack(Ljava/lang/String;Lcom/east2west/game/inApp/InAppBase;)V
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[QinConst] onLoadFailedCallBack callback->strError="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " inbase->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 74
    sget-object p2, Lcom/east2west/game/inApp/InAppBase;->appinterface:Lcom/east2west/game/inApp/APPBaseInterface;

    invoke-interface {p2, p1}, Lcom/east2west/game/inApp/APPBaseInterface;->onLoadFailedCallBack(Ljava/lang/String;)V

    return-void
.end method

.method public onLoadSuccessfulCallBack(Ljava/lang/String;Lcom/east2west/game/inApp/InAppBase;)V
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[QinConst] onLoadSuccessfulCallBack callback->strError="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " inbase->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 70
    sget-object p2, Lcom/east2west/game/inApp/InAppBase;->appinterface:Lcom/east2west/game/inApp/APPBaseInterface;

    invoke-interface {p2, p1}, Lcom/east2west/game/inApp/APPBaseInterface;->onLoadSuccessfulCallBack(Ljava/lang/String;)V

    return-void
.end method

.method public onLoginCancel(Ljava/lang/String;Lcom/east2west/game/inApp/InAppBase;)V
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[QinConst] onLoginCancel callback->strError="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " inbase->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 107
    sget-object p2, Lcom/east2west/game/inApp/InAppBase;->appinterface:Lcom/east2west/game/inApp/APPBaseInterface;

    invoke-interface {p2, p1}, Lcom/east2west/game/inApp/APPBaseInterface;->onLoginCancelCallBack(Ljava/lang/String;)V

    return-void
.end method

.method public onLoginFailed(Ljava/lang/String;Lcom/east2west/game/inApp/InAppBase;)V
    .locals 1

    .line 101
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "[QinConst] onLoginFailed callback->strError="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " inbase.appinterface->"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/east2west/game/inApp/InAppBase;->appinterface:Lcom/east2west/game/inApp/APPBaseInterface;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 102
    sget-object p2, Lcom/east2west/game/inApp/InAppBase;->appinterface:Lcom/east2west/game/inApp/APPBaseInterface;

    invoke-interface {p2, p1}, Lcom/east2west/game/inApp/APPBaseInterface;->onLoginFailedCallBack(Ljava/lang/String;)V

    return-void
.end method

.method public onLoginSuccess(Ljava/lang/String;Lcom/east2west/game/inApp/InAppBase;)V
    .locals 1

    .line 96
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "[QinConst] onLoginSuccess callback->strError="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " inbase.appinterface->"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/east2west/game/inApp/InAppBase;->appinterface:Lcom/east2west/game/inApp/APPBaseInterface;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 97
    sget-object p2, Lcom/east2west/game/inApp/InAppBase;->appinterface:Lcom/east2west/game/inApp/APPBaseInterface;

    invoke-interface {p2, p1}, Lcom/east2west/game/inApp/APPBaseInterface;->onLoginSuccessCallBack(Ljava/lang/String;)V

    return-void
.end method

.method public onOnVideoCompletedCallBack(Ljava/lang/String;Lcom/east2west/game/inApp/InAppBase;)V
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[QinConst] onOnVideoCompletedCallBack callback->strError="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " inbase->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 88
    sget-object p2, Lcom/east2west/game/inApp/InAppBase;->appinterface:Lcom/east2west/game/inApp/APPBaseInterface;

    invoke-interface {p2, p1}, Lcom/east2west/game/inApp/APPBaseInterface;->onOnVideoCompletedCallBack(Ljava/lang/String;)V

    return-void
.end method

.method public onOnVideoFailedCallBack(Ljava/lang/String;Lcom/east2west/game/inApp/InAppBase;)V
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[QinConst] onOnVideoFailedCallBack callback->strError="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " inbase->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 92
    sget-object p2, Lcom/east2west/game/inApp/InAppBase;->appinterface:Lcom/east2west/game/inApp/APPBaseInterface;

    invoke-interface {p2, p1}, Lcom/east2west/game/inApp/APPBaseInterface;->onOnVideoFailedCallBack(Ljava/lang/String;)V

    return-void
.end method

.method public onPurchaseCanceled(Ljava/lang/String;Lcom/east2west/game/inApp/InAppBase;Ljava/lang/String;)V
    .locals 1

    .line 58
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "[QinConst] onPurchaseCanceled callback->strError="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " inbase->"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " SdkApplication.msg="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/east2west/game/SdkApplication;->getExtSDKId()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 59
    sget-object p2, Lcom/east2west/game/inApp/InAppBase;->appinterface:Lcom/east2west/game/inApp/APPBaseInterface;

    invoke-interface {p2, p1}, Lcom/east2west/game/inApp/APPBaseInterface;->onPurchaseCancelCallBack(Ljava/lang/String;)V

    return-void
.end method

.method public onPurchaseFailed(Ljava/lang/String;Lcom/east2west/game/inApp/InAppBase;Ljava/lang/String;)V
    .locals 1

    .line 54
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "[QinConst] onPurchaseFailed callback->strError="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " inbase->"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " SdkApplication.msg="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/east2west/game/SdkApplication;->getExtSDKId()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 55
    sget-object p2, Lcom/east2west/game/inApp/InAppBase;->appinterface:Lcom/east2west/game/inApp/APPBaseInterface;

    invoke-interface {p2, p1}, Lcom/east2west/game/inApp/APPBaseInterface;->onPurchaseFailedCallBack(Ljava/lang/String;)V

    return-void
.end method

.method public onPurchaseSuccess(Ljava/lang/String;Lcom/east2west/game/inApp/InAppBase;Ljava/lang/String;)V
    .locals 0

    .line 51
    sget-object p2, Lcom/east2west/game/inApp/InAppBase;->appinterface:Lcom/east2west/game/inApp/APPBaseInterface;

    invoke-interface {p2, p1}, Lcom/east2west/game/inApp/APPBaseInterface;->onPurchaseSuccessCallBack(Ljava/lang/String;)V

    return-void
.end method

.method public onSaveFailedCallBack(Ljava/lang/String;Lcom/east2west/game/inApp/InAppBase;)V
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[QinConst] onSaveFailedCallBack callback->strError="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " inbase->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 83
    sget-object p2, Lcom/east2west/game/inApp/InAppBase;->appinterface:Lcom/east2west/game/inApp/APPBaseInterface;

    invoke-interface {p2, p1}, Lcom/east2west/game/inApp/APPBaseInterface;->onSaveFailedCallBack(Ljava/lang/String;)V

    return-void
.end method

.method public onSaveSuccessfulCallBack(Ljava/lang/String;Lcom/east2west/game/inApp/InAppBase;)V
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[QinConst] onSaveSuccessfulCallBack callback->strError="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " inbase->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 79
    sget-object p2, Lcom/east2west/game/inApp/InAppBase;->appinterface:Lcom/east2west/game/inApp/APPBaseInterface;

    invoke-interface {p2, p1}, Lcom/east2west/game/inApp/APPBaseInterface;->onSaveSuccessfulCallBack(Ljava/lang/String;)V

    return-void
.end method
