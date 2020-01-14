.class Lcom/east2west/game/System/InAppBackUp$7;
.super Ljava/lang/Object;
.source "InAppBackUp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/east2west/game/System/InAppBackUp;->Login()V
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
    iput-object p1, p0, Lcom/east2west/game/System/InAppBackUp$7;->this$0:Lcom/east2west/game/System/InAppBackUp;

    .line 952
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 955
    :try_start_0
    invoke-static {}, Lcom/east2west/game/System/InAppBackUp;->GetGuestID()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 962
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
