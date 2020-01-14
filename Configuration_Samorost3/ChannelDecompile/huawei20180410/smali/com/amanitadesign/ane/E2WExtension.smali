.class public Lcom/amanitadesign/ane/E2WExtension;
.super Ljava/lang/Object;
.source "E2WExtension.java"

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# static fields
.field public static final TAG:Ljava/lang/String; = "AmanitaNativeExtension"

.field public static final VERBOSE:I = 0x1

.field public static appContext:Landroid/content/Context;

.field public static callbacks:Lcom/east2west/game/inApp/APPBaseInterface;

.field public static e2w:Lcom/east2west/game/E2WApp;

.field public static extensionContext:Lcom/amanitadesign/ane/E2WExtensionContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 3
    .param p1, "contextType"    # Ljava/lang/String;

    .prologue
    .line 28
    const-string v0, "AmanitaNativeExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "createContext: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    new-instance v0, Lcom/amanitadesign/ane/E2WExtensionContext;

    invoke-direct {v0}, Lcom/amanitadesign/ane/E2WExtensionContext;-><init>()V

    sput-object v0, Lcom/amanitadesign/ane/E2WExtension;->extensionContext:Lcom/amanitadesign/ane/E2WExtensionContext;

    .line 30
    sget-object v0, Lcom/amanitadesign/ane/E2WExtension;->extensionContext:Lcom/amanitadesign/ane/E2WExtensionContext;

    return-object v0
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    const-string v0, "AmanitaNativeExtension"

    const-string v1, "Extension disposed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    sput-object v2, Lcom/amanitadesign/ane/E2WExtension;->appContext:Landroid/content/Context;

    .line 37
    sput-object v2, Lcom/amanitadesign/ane/E2WExtension;->extensionContext:Lcom/amanitadesign/ane/E2WExtensionContext;

    .line 38
    sput-object v2, Lcom/amanitadesign/ane/E2WExtension;->e2w:Lcom/east2west/game/E2WApp;

    .line 39
    sput-object v2, Lcom/amanitadesign/ane/E2WExtension;->callbacks:Lcom/east2west/game/inApp/APPBaseInterface;

    .line 40
    return-void
.end method

.method public initialize()V
    .locals 2

    .prologue
    .line 44
    const-string v0, "AmanitaNativeExtension"

    const-string v1, "Extension initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void
.end method
