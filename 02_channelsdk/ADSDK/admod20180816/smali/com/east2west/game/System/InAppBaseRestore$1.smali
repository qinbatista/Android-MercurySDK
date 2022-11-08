.class Lcom/east2west/game/System/InAppBaseRestore$1;
.super Ljava/lang/Object;
.source "InAppBaseRestore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/east2west/game/System/InAppBaseRestore;->repairindentRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/east2west/game/System/InAppBaseRestore;


# direct methods
.method constructor <init>(Lcom/east2west/game/System/InAppBaseRestore;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/east2west/game/System/InAppBaseRestore$1;->this$0:Lcom/east2west/game/System/InAppBaseRestore;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 81
    iget-object v0, p0, Lcom/east2west/game/System/InAppBaseRestore$1;->this$0:Lcom/east2west/game/System/InAppBaseRestore;

    const-string v1, "PayList"

    invoke-virtual {v0, v1}, Lcom/east2west/game/System/InAppBaseRestore;->readFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[E2WApp]->RepairindentRequest:E2WApp.DeviceId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/east2west/game/E2WApp;->DeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",url=http://pay.east2west.cn/cdkey/index.php/Clipay/add"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/System/InAppBaseRestore;->LogLocalRestore(Ljava/lang/String;)V

    .line 87
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "userId"

    sget-object v3, Lcom/east2west/game/E2WApp;->DeviceId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v1, Lcom/east2west/game/util/MD5E2W;

    invoke-direct {v1}, Lcom/east2west/game/util/MD5E2W;-><init>()V

    .line 93
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 95
    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    .line 96
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "rand"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "channel"

    sget-object v4, Lcom/east2west/game/SdkApplication;->msg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "appid"

    sget-object v4, Lcom/east2west/game/QinConst;->exchangeID:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "userId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/east2west/game/E2WApp;->DeviceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 101
    sget-object v2, Lcom/east2west/game/System/InAppBaseRestore;->key:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/east2west/game/System/InAppBaseRestore;->signal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sign"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "http://pay.east2west.cn/cdkey/index.php/Clipay/add"

    .line 105
    invoke-static {v1, v0}, Lcom/east2west/game/System/InAppBaseRestore;->HttpUrlpost(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[E2WApp]->RepairindentRequest:log="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/east2west/game/System/InAppBaseRestore;->LogLocalRestore(Ljava/lang/String;)V

    .line 107
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "code"

    .line 111
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "msg"

    .line 114
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    goto :goto_1

    .line 119
    :cond_0
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 120
    new-instance v4, Lcom/east2west/game/inApp/InAppBase;

    invoke-direct {v4}, Lcom/east2west/game/inApp/InAppBase;-><init>()V

    .line 121
    invoke-virtual {v4, v3}, Lcom/east2west/game/inApp/InAppBase;->onFunctionCallBack(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[E2WApp]->RepairindentRequest e="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/east2west/game/System/InAppBaseRestore;->LogLocalRestore(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 134
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[E2WApp]->readFileData(\'PayList\')!=null->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/east2west/game/System/InAppBaseRestore$1;->this$0:Lcom/east2west/game/System/InAppBaseRestore;

    const-string v2, "PayList"

    invoke-virtual {v1, v2}, Lcom/east2west/game/System/InAppBaseRestore;->readFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/System/InAppBaseRestore;->LogLocalRestore(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/east2west/game/System/InAppBaseRestore$1;->this$0:Lcom/east2west/game/System/InAppBaseRestore;

    iget-object v1, p0, Lcom/east2west/game/System/InAppBaseRestore$1;->this$0:Lcom/east2west/game/System/InAppBaseRestore;

    const-string v2, "PayList"

    invoke-virtual {v1, v2}, Lcom/east2west/game/System/InAppBaseRestore;->readFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/east2west/game/System/InAppBaseRestore;->respondCPserver(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
