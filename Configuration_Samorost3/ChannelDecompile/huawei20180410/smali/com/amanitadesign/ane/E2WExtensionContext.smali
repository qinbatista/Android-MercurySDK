.class public Lcom/amanitadesign/ane/E2WExtensionContext;
.super Lcom/adobe/fre/FREContext;
.source "E2WExtensionContext.java"

# interfaces
.implements Lcom/adobe/air/ActivityResultCallback;
.implements Lcom/adobe/air/CommonStateChangeCallback;


# static fields
.field private static synthetic $SWITCH_TABLE$com$adobe$air$AndroidActivityWrapper$ActivityState:[I

.field public static FREContext:Lcom/adobe/fre/FREContext;


# instance fields
.field private aaw:Lcom/adobe/air/AndroidActivityWrapper;


# direct methods
.method static synthetic $SWITCH_TABLE$com$adobe$air$AndroidActivityWrapper$ActivityState()[I
    .locals 3

    .prologue
    .line 28
    sget-object v0, Lcom/amanitadesign/ane/E2WExtensionContext;->$SWITCH_TABLE$com$adobe$air$AndroidActivityWrapper$ActivityState:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->values()[Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->DESTROYED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    invoke-virtual {v1}, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->PAUSED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    invoke-virtual {v1}, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->RESTARTED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    invoke-virtual {v1}, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->RESUMED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    invoke-virtual {v1}, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->STARTED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    invoke-virtual {v1}, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->STOPPED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    invoke-virtual {v1}, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/amanitadesign/ane/E2WExtensionContext;->$SWITCH_TABLE$com$adobe$air$AndroidActivityWrapper$ActivityState:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amanitadesign/ane/E2WExtensionContext;->aaw:Lcom/adobe/air/AndroidActivityWrapper;

    .line 35
    const-string v0, "AmanitaNativeExtension"

    const-string v1, "E2WExtensionContext - adding activity wrapper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/amanitadesign/ane/E2WExtensionContext;->aaw:Lcom/adobe/air/AndroidActivityWrapper;

    .line 37
    iget-object v0, p0, Lcom/amanitadesign/ane/E2WExtensionContext;->aaw:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0, p0}, Lcom/adobe/air/AndroidActivityWrapper;->addActivityResultListener(Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;)V

    .line 38
    iget-object v0, p0, Lcom/amanitadesign/ane/E2WExtensionContext;->aaw:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0, p0}, Lcom/adobe/air/AndroidActivityWrapper;->addActivityStateChangeListner(Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;)V

    .line 39
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/amanitadesign/ane/E2WExtensionContext;->aaw:Lcom/adobe/air/AndroidActivityWrapper;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/amanitadesign/ane/E2WExtensionContext;->aaw:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0, p0}, Lcom/adobe/air/AndroidActivityWrapper;->removeActivityResultListener(Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;)V

    .line 46
    iget-object v0, p0, Lcom/amanitadesign/ane/E2WExtensionContext;->aaw:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0, p0}, Lcom/adobe/air/AndroidActivityWrapper;->removeActivityStateChangeListner(Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amanitadesign/ane/E2WExtensionContext;->aaw:Lcom/adobe/air/AndroidActivityWrapper;

    .line 49
    :cond_0
    const-string v0, "AmanitaNativeExtension"

    const-string v1, "Context disposed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 55
    .local v0, "functions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "init"

    new-instance v2, Lcom/amanitadesign/ane/E2WFunctions$Init;

    invoke-direct {v2}, Lcom/amanitadesign/ane/E2WFunctions$Init;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v1, "pay"

    new-instance v2, Lcom/amanitadesign/ane/E2WFunctions$Pay;

    invoke-direct {v2}, Lcom/amanitadesign/ane/E2WFunctions$Pay;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v1, "exit"

    new-instance v2, Lcom/amanitadesign/ane/E2WFunctions$Exit;

    invoke-direct {v2}, Lcom/amanitadesign/ane/E2WFunctions$Exit;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v1, "getChannelId"

    new-instance v2, Lcom/amanitadesign/ane/E2WFunctions$GetChannelId;

    invoke-direct {v2}, Lcom/amanitadesign/ane/E2WFunctions$GetChannelId;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v1, "testDialog"

    new-instance v2, Lcom/amanitadesign/ane/E2WFunctions$TestDialog;

    invoke-direct {v2}, Lcom/amanitadesign/ane/E2WFunctions$TestDialog;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/content/Intent;

    .prologue
    .line 87
    return-void
.end method

.method public onActivityStateChanged(Lcom/adobe/air/AndroidActivityWrapper$ActivityState;)V
    .locals 3
    .param p1, "state"    # Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    .prologue
    .line 65
    new-instance v0, Lcom/east2west/game/E2WApp;

    invoke-direct {v0}, Lcom/east2west/game/E2WApp;-><init>()V

    sput-object v0, Lcom/amanitadesign/ane/E2WExtension;->e2w:Lcom/east2west/game/E2WApp;

    .line 66
    invoke-static {}, Lcom/amanitadesign/ane/E2WExtensionContext;->$SWITCH_TABLE$com$adobe$air$AndroidActivityWrapper$ActivityState()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 80
    :goto_0
    const-string v0, "AmanitaNativeExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStateChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void

    .line 68
    :pswitch_0
    sget-object v0, Lcom/amanitadesign/ane/E2WExtension;->e2w:Lcom/east2west/game/E2WApp;

    invoke-virtual {v0}, Lcom/east2west/game/E2WApp;->onStart()V

    const-string v0, "AmanitaNativeExtension"

    const-string v1, "onActivityStateChanged onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 70
    :pswitch_1
    sget-object v0, Lcom/amanitadesign/ane/E2WExtension;->e2w:Lcom/east2west/game/E2WApp;

    invoke-virtual {v0}, Lcom/east2west/game/E2WApp;->onRestart()V

    const-string v0, "AmanitaNativeExtension"

    const-string v1, "onActivityStateChanged onRestart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 72
    :pswitch_2
    sget-object v0, Lcom/amanitadesign/ane/E2WExtension;->e2w:Lcom/east2west/game/E2WApp;

    invoke-virtual {v0}, Lcom/east2west/game/E2WApp;->onResume()V

    const-string v0, "AmanitaNativeExtension"

    const-string v1, "onActivityStateChanged onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 74
    :pswitch_3
    sget-object v0, Lcom/amanitadesign/ane/E2WExtension;->e2w:Lcom/east2west/game/E2WApp;

    invoke-virtual {v0}, Lcom/east2west/game/E2WApp;->onPause()V

    const-string v0, "AmanitaNativeExtension"

    const-string v1, "onActivityStateChanged onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 76
    :pswitch_4
    sget-object v0, Lcom/amanitadesign/ane/E2WExtension;->e2w:Lcom/east2west/game/E2WApp;

    invoke-virtual {v0}, Lcom/east2west/game/E2WApp;->onStop()V

    const-string v0, "AmanitaNativeExtension"

    const-string v1, "onActivityStateChanged onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 78
    :pswitch_5
    sget-object v0, Lcom/amanitadesign/ane/E2WExtension;->e2w:Lcom/east2west/game/E2WApp;

    invoke-virtual {v0}, Lcom/east2west/game/E2WApp;->onDestroy()V

    const-string v0, "AmanitaNativeExtension"

    const-string v1, "onActivityStateChanged onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/res/Configuration;

    .prologue
    .line 93
    return-void
.end method
