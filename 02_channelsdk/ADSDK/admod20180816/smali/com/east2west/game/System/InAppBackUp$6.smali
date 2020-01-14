.class Lcom/east2west/game/System/InAppBackUp$6;
.super Ljava/lang/Object;
.source "InAppBackUp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/east2west/game/System/InAppBackUp;->Logout()V
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
    iput-object p1, p0, Lcom/east2west/game/System/InAppBackUp$6;->this$0:Lcom/east2west/game/System/InAppBackUp;

    .line 931
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    const-string v0, ""

    .line 934
    sput-object v0, Lcom/east2west/game/System/InAppBackUp;->sessionidLocal:Ljava/lang/String;

    .line 939
    new-instance v0, Lcom/east2west/game/inApp/InAppBase;

    invoke-direct {v0}, Lcom/east2west/game/inApp/InAppBase;-><init>()V

    const-string v1, "0"

    .line 940
    invoke-virtual {v0, v1}, Lcom/east2west/game/inApp/InAppBase;->onLoginFailed(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 943
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
