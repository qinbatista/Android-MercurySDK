.class Lcom/east2west/game/System/InAppBackUp$1;
.super Landroid/os/Handler;
.source "InAppBackUp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/east2west/game/System/InAppBackUp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 607
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 610
    sget-object p1, Lcom/east2west/game/E2WApp;->mContext:Landroid/content/Context;

    const-string v0, "\u8986\u76d6\u5931\u8d25"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
