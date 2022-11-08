.class Lcom/east2west/game/System/InAppBackUp$2;
.super Ljava/lang/Object;
.source "InAppBackUp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/east2west/game/System/InAppBackUp;->BackUpThread()V
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
    iput-object p1, p0, Lcom/east2west/game/System/InAppBackUp$2;->this$0:Lcom/east2west/game/System/InAppBackUp;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 100
    sget-object v0, Lcom/east2west/game/E2WApp;->imei:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    :goto_0
    :try_start_0
    sget-object v0, Lcom/east2west/game/System/InAppBackUp;->sessionidLocal:Ljava/lang/String;

    const-string v1, ""

    const/4 v2, 0x3

    if-ne v0, v1, :cond_0

    sget v0, Lcom/east2west/game/System/InAppBackUp;->ThreadCountGetGuestID:I

    if-ge v0, v2, :cond_0

    .line 106
    invoke-static {}, Lcom/east2west/game/System/InAppBackUp;->GetGuestID()V

    .line 107
    sget v0, Lcom/east2west/game/System/InAppBackUp;->ThreadCountGetGuestID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/east2west/game/System/InAppBackUp;->ThreadCountGetGuestID:I

    .line 109
    :cond_0
    sget-object v0, Lcom/east2west/game/System/InAppBackUp;->sessionidLocal:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_1

    sget v0, Lcom/east2west/game/System/InAppBackUp;->ThreadCountCheckBackUp:I

    if-ge v0, v2, :cond_1

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/east2west/game/System/InAppBackUp;->LogName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "][BackUpThread]->CheckBackUp()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/System/InAppBackUp;->LogLocalServer(Ljava/lang/String;)V

    .line 111
    sget-object v0, Lcom/east2west/game/System/InAppBackUp;->DataLocation:Ljava/lang/String;

    invoke-static {v0}, Lcom/east2west/game/System/InAppBackUp;->CheckBackUp(Ljava/lang/String;)V

    .line 112
    sget v0, Lcom/east2west/game/System/InAppBackUp;->ThreadCountCheckBackUp:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/east2west/game/System/InAppBackUp;->ThreadCountCheckBackUp:I

    :cond_1
    const-wide/16 v0, 0x1388

    .line 118
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
