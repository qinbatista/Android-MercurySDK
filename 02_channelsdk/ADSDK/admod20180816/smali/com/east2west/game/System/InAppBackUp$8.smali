.class Lcom/east2west/game/System/InAppBackUp$8;
.super Ljava/lang/Object;
.source "InAppBackUp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/east2west/game/System/InAppBackUp;->Load(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/east2west/game/System/InAppBackUp;


# direct methods
.method constructor <init>(Lcom/east2west/game/System/InAppBackUp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/east2west/game/System/InAppBackUp$8;->this$0:Lcom/east2west/game/System/InAppBackUp;

    .line 970
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 973
    :try_start_0
    sget-object v0, Lcom/east2west/game/System/InAppBackUp;->sessionidLocal:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_0

    .line 974
    invoke-static {}, Lcom/east2west/game/System/InAppBackUp;->DownLoadDataWithID()Ljava/lang/String;

    goto :goto_0

    .line 978
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/east2west/game/System/InAppBackUp;->LogName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "][Save]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "sessionidLocal is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/System/InAppBackUp;->LogLocalServer(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 982
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
