.class Lcom/east2west/game/System/InAppBackUp$9;
.super Ljava/lang/Object;
.source "InAppBackUp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/east2west/game/System/InAppBackUp;->Save(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/east2west/game/System/InAppBackUp;

.field private final synthetic val$data:Ljava/lang/String;

.field private final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/east2west/game/System/InAppBackUp;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/east2west/game/System/InAppBackUp$9;->this$0:Lcom/east2west/game/System/InAppBackUp;

    iput-object p2, p0, Lcom/east2west/game/System/InAppBackUp$9;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/east2west/game/System/InAppBackUp$9;->val$data:Ljava/lang/String;

    .line 990
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 992
    sget-object v0, Lcom/east2west/game/System/InAppBackUp;->sessionidLocal:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_0

    .line 993
    iget-object v0, p0, Lcom/east2west/game/System/InAppBackUp$9;->val$name:Ljava/lang/String;

    iget-object v1, p0, Lcom/east2west/game/System/InAppBackUp$9;->val$data:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/east2west/game/System/InAppBackUp;->SaveDataWithID(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 997
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

    :goto_0
    return-void
.end method
