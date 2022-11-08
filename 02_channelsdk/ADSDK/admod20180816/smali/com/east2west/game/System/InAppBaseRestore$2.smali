.class Lcom/east2west/game/System/InAppBaseRestore$2;
.super Ljava/lang/Object;
.source "InAppBaseRestore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/east2west/game/System/InAppBaseRestore;->respondCPserver(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/east2west/game/System/InAppBaseRestore;

.field private final synthetic val$strID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/east2west/game/System/InAppBaseRestore;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/east2west/game/System/InAppBaseRestore$2;->this$0:Lcom/east2west/game/System/InAppBaseRestore;

    iput-object p2, p0, Lcom/east2west/game/System/InAppBaseRestore$2;->val$strID:Ljava/lang/String;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "userId"

    sget-object v3, Lcom/east2west/game/E2WApp;->DeviceId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "channel"

    sget-object v3, Lcom/east2west/game/SdkApplication;->msg:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "requestId"

    iget-object v3, p0, Lcom/east2west/game/System/InAppBaseRestore$2;->val$strID:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "E2WChannel"

    sget-object v3, Lcom/east2west/game/SdkApplication;->e2wnumber:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v1, Lcom/east2west/game/util/MD5E2W;

    invoke-direct {v1}, Lcom/east2west/game/util/MD5E2W;-><init>()V

    .line 165
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 166
    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    .line 167
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 168
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "rand"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "requestId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/east2west/game/System/InAppBaseRestore$2;->val$strID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/east2west/game/E2WApp;->DeviceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    sget-object v2, Lcom/east2west/game/System/InAppBaseRestore;->key:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/east2west/game/System/InAppBaseRestore;->signal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sign"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "http://pay.east2west.cn/cdkey/index.php/Clipay/respond"

    .line 175
    invoke-static {v1, v0}, Lcom/east2west/game/System/InAppBaseRestore;->HttpUrlpost(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[InAppBaseRestore][respondCPserver]->url:[http://pay.east2west.cn/cdkey/index.php/Clipay/respond]"

    .line 176
    invoke-static {v2}, Lcom/east2west/game/System/InAppBaseRestore;->LogLocalRestore(Ljava/lang/String;)V

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[InAppBaseRestore][respondCPserver]->list="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/System/InAppBaseRestore;->LogLocalRestore(Ljava/lang/String;)V

    .line 178
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 182
    :try_start_0
    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "code"

    .line 183
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/east2west/game/System/InAppBaseRestore$2;->this$0:Lcom/east2west/game/System/InAppBaseRestore;

    const-string v1, "PayList"

    invoke-virtual {v0, v1}, Lcom/east2west/game/System/InAppBaseRestore;->writeNullData(Ljava/lang/String;)V

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[InAppBaseRestore][respondCPserver]->respondCPserver: code=0; PayList=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/east2west/game/System/InAppBaseRestore$2;->this$0:Lcom/east2west/game/System/InAppBaseRestore;

    const-string v2, "PayList"

    invoke-virtual {v1, v2}, Lcom/east2west/game/System/InAppBaseRestore;->readFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/System/InAppBaseRestore;->LogLocalRestore(Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/east2west/game/System/InAppBaseRestore$2;->this$0:Lcom/east2west/game/System/InAppBaseRestore;

    const-string v1, "PayList"

    iget-object v2, p0, Lcom/east2west/game/System/InAppBaseRestore$2;->val$strID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/east2west/game/System/InAppBaseRestore;->writeFileData(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[InAppBaseRestore][respondCPserver]->respondCPserver: code!=0; PayList=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/east2west/game/System/InAppBaseRestore$2;->this$0:Lcom/east2west/game/System/InAppBaseRestore;

    const-string v2, "PayList"

    invoke-virtual {v1, v2}, Lcom/east2west/game/System/InAppBaseRestore;->readFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/System/InAppBaseRestore;->LogLocalRestore(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 199
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 200
    iget-object v0, p0, Lcom/east2west/game/System/InAppBaseRestore$2;->this$0:Lcom/east2west/game/System/InAppBaseRestore;

    const-string v1, "PayList"

    iget-object v2, p0, Lcom/east2west/game/System/InAppBaseRestore$2;->val$strID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/east2west/game/System/InAppBaseRestore;->writeFileData(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[InAppBaseRestore][respondCPserver]->respondCPserver: code=error; PayList=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/east2west/game/System/InAppBaseRestore$2;->this$0:Lcom/east2west/game/System/InAppBaseRestore;

    const-string v2, "PayList"

    invoke-virtual {v1, v2}, Lcom/east2west/game/System/InAppBaseRestore;->readFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/System/InAppBaseRestore;->LogLocalRestore(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
