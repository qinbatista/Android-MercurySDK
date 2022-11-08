.class public Lcom/amanitadesign/ane/ApplicationForGame;
.super Landroid/app/Application;
.source "ApplicationForGame.java"


# instance fields
.field public app:Landroid/app/Application;

.field public gsa:Lcom/east2west/game/SdkApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .prologue
    .line 15
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 16
    iput-object p0, p0, Lcom/amanitadesign/ane/ApplicationForGame;->app:Landroid/app/Application;

    .line 17
    const-string v0, "IAP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SdkApplication="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amanitadesign/ane/ApplicationForGame;->app:Landroid/app/Application;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    new-instance v0, Lcom/east2west/game/SdkApplication;

    invoke-direct {v0}, Lcom/east2west/game/SdkApplication;-><init>()V

    iput-object v0, p0, Lcom/amanitadesign/ane/ApplicationForGame;->gsa:Lcom/east2west/game/SdkApplication;

    .line 19
    iget-object v0, p0, Lcom/amanitadesign/ane/ApplicationForGame;->gsa:Lcom/east2west/game/SdkApplication;

    iget-object v1, p0, Lcom/amanitadesign/ane/ApplicationForGame;->app:Landroid/app/Application;

    invoke-virtual {v0, v1}, Lcom/east2west/game/SdkApplication;->APPApplicationInit(Landroid/app/Application;)V

    .line 21
    return-void
.end method
