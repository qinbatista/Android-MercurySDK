.class public Lcom/east2west/testapp/GameSdkApplication;
.super Landroid/app/Application;
.source "GameSdkApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 18
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const-string v0, "E2W"

    const-string v1, "1->Applcation [change application->UnicomApplicationWrapper \ufffd\ufffd]"

    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    new-instance v0, Lcom/east2west/game/SdkApplication;

    invoke-direct {v0}, Lcom/east2west/game/SdkApplication;-><init>()V

    .line 23
    invoke-virtual {v0, p0}, Lcom/east2west/game/SdkApplication;->APPApplicationInit(Landroid/app/Application;)V

    return-void
.end method
