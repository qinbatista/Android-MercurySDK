.class Lcom/east2west/game/System/InAppBaseOperation$1;
.super Ljava/lang/Thread;
.source "InAppBaseOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/east2west/game/System/InAppBaseOperation;->LoadConfiguration()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/east2west/game/System/InAppBaseOperation;


# direct methods
.method constructor <init>(Lcom/east2west/game/System/InAppBaseOperation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/east2west/game/System/InAppBaseOperation$1;->this$0:Lcom/east2west/game/System/InAppBaseOperation;

    .line 74
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 79
    sget-object v0, Lcom/east2west/game/SdkApplication;->msg:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[InAppBaseOperation][LoadConfiguration]Using default east2west setting"

    .line 81
    invoke-static {v0}, Lcom/east2west/game/System/InAppBaseOperation;->LogLocalSystem(Ljava/lang/String;)V

    const-string v0, "east2west"

    .line 82
    sput-object v0, Lcom/east2west/game/SdkApplication;->msg:Ljava/lang/String;

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://101.200.214.15/setting/jsonServerSetting.php?name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/east2west/game/SdkApplication;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&appid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/east2west/game/QinConst;->appid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/System/InAppBaseOperation;->HttpUrlpost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[InAppBaseOperation][LoadConfiguration]http://101.200.214.15/setting/jsonServerSetting.php?name="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/east2west/game/SdkApplication;->msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&appid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/east2west/game/QinConst;->appid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/east2west/game/System/InAppBaseOperation;->LogLocalSystem(Ljava/lang/String;)V

    const-string v1, "[InAppBaseOperation][LoadConfiguration] Get Configuration Successfully"

    .line 86
    invoke-static {v1}, Lcom/east2west/game/System/InAppBaseOperation;->LogLocalSystem(Ljava/lang/String;)V

    const-string v1, ""

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/east2west/game/System/InAppBaseOperation$1;->this$0:Lcom/east2west/game/System/InAppBaseOperation;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/east2west/game/SdkApplication;->msg:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "Config"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/east2west/game/System/InAppBaseOperation;->writeFileData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
