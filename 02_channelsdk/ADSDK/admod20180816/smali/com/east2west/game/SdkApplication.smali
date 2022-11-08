.class public Lcom/east2west/game/SdkApplication;
.super Landroid/app/Application;
.source "SdkApplication.java"


# static fields
.field public static Acontext:Landroid/app/Application; = null

.field public static channelSplash:Ljava/lang/String; = "1"

.field public static channelname:Ljava/lang/String; = ""

.field public static e2wnumber:Ljava/lang/String; = ""

.field public static isAntLogOpen:Ljava/lang/String; = "open"

.field public static isLogOpen:Ljava/lang/String; = "1"

.field public static iscarriersneed:Ljava/lang/String; = "1"

.field public static jschannel:Ljava/lang/String; = ""

.field public static jsid:Ljava/lang/String; = ""

.field public static jstjid:Ljava/lang/String; = ""

.field public static key:Ljava/lang/String; = ""

.field private static mChannelId:I = -0x1

.field private static mExtSDKId:I = -0x1

.field public static msg:Ljava/lang/String; = ""


# instance fields
.field public mInApp:Lcom/east2west/game/inApp/InAppBase;

.field private mInAppExt:Lcom/east2west/game/inApp/InAppBase;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private checkChannel()V
    .locals 0

    return-void
.end method

.method private checkChannelName()V
    .locals 0

    return-void
.end method

.method private checkChannelSplash()V
    .locals 0

    return-void
.end method

.method private checkExtJSCHANNELChannel()V
    .locals 4

    const/4 v0, 0x0

    .line 256
    :try_start_0
    invoke-virtual {p0}, Lcom/east2west/game/SdkApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/east2west/game/SdkApplication;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    .line 260
    :try_start_1
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 262
    :goto_0
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "JS_CHANNEL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/east2west/game/SdkApplication;->jschannel:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    :try_start_2
    const-string v1, "game"

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "3Failed to load meta-data, NameNotFound: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v1, "game"

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "4Failed to load meta-data, NullPointer: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private checkExtJSIDChannel()V
    .locals 4

    const/4 v0, 0x0

    .line 229
    :try_start_0
    invoke-virtual {p0}, Lcom/east2west/game/SdkApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/east2west/game/SdkApplication;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    .line 233
    :try_start_1
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 235
    :goto_0
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "JS_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/east2west/game/SdkApplication;->jsid:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    :try_start_2
    const-string v1, "game"

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "3Failed to load meta-data, NameNotFound: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v1, "game"

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "4Failed to load meta-data, NullPointer: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private checkExtJSTJIDChannel()V
    .locals 4

    const/4 v0, 0x0

    .line 282
    :try_start_0
    invoke-virtual {p0}, Lcom/east2west/game/SdkApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/east2west/game/SdkApplication;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    .line 286
    :try_start_1
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 288
    :goto_0
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "JS_TJID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/east2west/game/SdkApplication;->jstjid:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    :try_start_2
    const-string v1, "game"

    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "3Failed to load meta-data, NameNotFound: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v1, "game"

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "4Failed to load meta-data, NullPointer: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private checkExtSDK()V
    .locals 0

    return-void
.end method

.method private checkLoge()V
    .locals 0

    return-void
.end method

.method private checkMobileSplash()V
    .locals 0

    return-void
.end method

.method private checkNumber()V
    .locals 0

    return-void
.end method

.method private checkSIM()V
    .locals 0

    return-void
.end method

.method public static getChannelId()I
    .locals 1

    .line 210
    sget v0, Lcom/east2west/game/SdkApplication;->mChannelId:I

    return v0
.end method

.method public static getChannelname()Ljava/lang/String;
    .locals 1

    .line 214
    sget-object v0, Lcom/east2west/game/SdkApplication;->channelname:Ljava/lang/String;

    return-object v0
.end method

.method public static getExtSDKId()I
    .locals 1

    .line 205
    sget v0, Lcom/east2west/game/SdkApplication;->mExtSDKId:I

    return v0
.end method

.method private getSign(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v0, 0x40

    .line 121
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p1

    .line 122
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 123
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 124
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 125
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 126
    sget-object v2, Lcom/east2west/game/SdkApplication;->Acontext:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    iget-object p1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public APPApplicationInit(Landroid/app/Application;)V
    .locals 2

    .line 82
    sput-object p1, Lcom/east2west/game/SdkApplication;->Acontext:Landroid/app/Application;

    .line 85
    invoke-direct {p0}, Lcom/east2west/game/SdkApplication;->checkSIM()V

    .line 86
    invoke-direct {p0}, Lcom/east2west/game/SdkApplication;->checkChannel()V

    .line 87
    invoke-direct {p0}, Lcom/east2west/game/SdkApplication;->checkExtSDK()V

    .line 88
    invoke-direct {p0}, Lcom/east2west/game/SdkApplication;->checkChannelName()V

    .line 89
    invoke-direct {p0}, Lcom/east2west/game/SdkApplication;->checkMobileSplash()V

    .line 90
    invoke-direct {p0}, Lcom/east2west/game/SdkApplication;->checkChannelSplash()V

    .line 91
    invoke-direct {p0}, Lcom/east2west/game/SdkApplication;->checkLoge()V

    .line 92
    invoke-virtual {p0}, Lcom/east2west/game/SdkApplication;->JSXML()V

    .line 93
    invoke-direct {p0}, Lcom/east2west/game/SdkApplication;->checkNumber()V

    .line 97
    :try_start_0
    sget-object p1, Lcom/east2west/game/SdkApplication;->Acontext:Landroid/app/Application;

    invoke-direct {p0, p1}, Lcom/east2west/game/SdkApplication;->getSign(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/east2west/game/SdkApplication;->key:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 102
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string p1, "IAP"

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[SDKApp]SdkName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/east2west/game/SdkApplication;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    sget-object p1, Lcom/east2west/game/SdkApplication;->iscarriersneed:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 109
    sget-object p1, Lcom/east2west/game/SdkApplication;->iscarriersneed:Ljava/lang/String;

    const-string v0, "open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 111
    sget-object p1, Lcom/east2west/game/E2WApp;->SortChannelID:Ljava/lang/String;

    const-string v0, "telecom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/east2west/game/E2WApp;->SortChannelID:Ljava/lang/String;

    const-string v0, "unicom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "megjb"

    .line 112
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public JSXML()V
    .locals 0

    .line 218
    invoke-direct {p0}, Lcom/east2west/game/SdkApplication;->checkExtJSIDChannel()V

    .line 219
    invoke-direct {p0}, Lcom/east2west/game/SdkApplication;->checkExtJSCHANNELChannel()V

    .line 220
    invoke-direct {p0}, Lcom/east2west/game/SdkApplication;->checkExtJSTJIDChannel()V

    return-void
.end method

.method public getSingInfo()V
    .locals 3

    .line 137
    :try_start_0
    invoke-virtual {p0}, Lcom/east2west/game/SdkApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 138
    sget-object v1, Lcom/east2west/game/SdkApplication;->Acontext:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    .line 137
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 140
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    .line 141
    aget-object v0, v0, v1

    .line 142
    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/east2west/game/SdkApplication;->parseSignature([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 50
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 52
    invoke-direct {p0}, Lcom/east2west/game/SdkApplication;->checkSIM()V

    .line 53
    invoke-direct {p0}, Lcom/east2west/game/SdkApplication;->checkChannel()V

    .line 54
    invoke-direct {p0}, Lcom/east2west/game/SdkApplication;->checkExtSDK()V

    .line 55
    invoke-direct {p0}, Lcom/east2west/game/SdkApplication;->checkChannelName()V

    .line 56
    invoke-direct {p0}, Lcom/east2west/game/SdkApplication;->checkMobileSplash()V

    .line 57
    invoke-direct {p0}, Lcom/east2west/game/SdkApplication;->checkChannelSplash()V

    .line 58
    invoke-direct {p0}, Lcom/east2west/game/SdkApplication;->checkLoge()V

    .line 59
    invoke-virtual {p0}, Lcom/east2west/game/SdkApplication;->JSXML()V

    .line 60
    invoke-direct {p0}, Lcom/east2west/game/SdkApplication;->checkNumber()V

    .line 63
    :try_start_0
    invoke-direct {p0, p0}, Lcom/east2west/game/SdkApplication;->getSign(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/east2west/game/SdkApplication;->key:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string v0, "IAP"

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[SDKApp]SdkName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/east2west/game/SdkApplication;->msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    sget-object v0, Lcom/east2west/game/SdkApplication;->iscarriersneed:Ljava/lang/String;

    const-string v1, "open"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, Lcom/east2west/game/E2WApp;->SortChannelID:Ljava/lang/String;

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/east2west/game/E2WApp;->SortChannelID:Ljava/lang/String;

    const-string v1, "unicom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "megjb"

    .line 74
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :cond_0
    const-string v0, "jinli20180518Config"

    .line 77
    sput-object v0, Lcom/east2west/game/SdkApplication;->msg:Ljava/lang/String;

    return-void
.end method

.method public parseSignature([B)V
    .locals 2

    :try_start_0
    const-string v0, "X.509"

    .line 151
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 153
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    .line 152
    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 154
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 158
    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->printStackTrace()V

    :goto_0
    return-void
.end method
