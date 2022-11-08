.class public Lcom/east2west/game/E2WApp;
.super Ljava/lang/Object;
.source "E2WApp.java"


# static fields
.field public static ChannelForServer:Ljava/lang/String; = null

.field public static DeviceId:Ljava/lang/String; = ""

.field public static LongChannelID:Ljava/lang/String; = ""

.field public static Platform:I = -0x1

.field public static SavePidName:Ljava/lang/String; = ""

.field public static SortChannelID:Ljava/lang/String; = ""

.field public static activityforappbase:Lcom/east2west/game/E2WApp; = null

.field public static imei:Ljava/lang/String; = ""

.field private static img:Landroid/widget/ImageView; = null

.field public static isLogOpen:Ljava/lang/String; = "1"

.field public static mContext:Landroid/content/Context;

.field public static mSimOperatorId:I

.field public static nikeString:Ljava/lang/String;

.field public static packagenameforuse:Ljava/lang/String;


# instance fields
.field private mChannelId:I

.field private mExtSDKId:I

.field private mInApp:Lcom/east2west/game/inApp/InAppBase;

.field private mInAppExt:Lcom/east2west/game/inApp/InAppBase;

.field public mInAppShow:Lcom/east2west/game/inApp/InAppBase;

.field private mInShare:Lcom/east2west/game/inApp/InAppBase;

.field public platform:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 57
    iput v0, p0, Lcom/east2west/game/E2WApp;->mExtSDKId:I

    return-void
.end method

.method private GetmInAppExt()V
    .locals 2

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[E2WApp] GetmInAppExt()->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/east2west/game/E2WApp;->mExtSDKId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 434
    iget v0, p0, Lcom/east2west/game/E2WApp;->mExtSDKId:I

    return-void
.end method

.method public static LogLocal(Ljava/lang/String;)V
    .locals 1

    const-string v0, "IAP"

    .line 550
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$0(Lcom/east2west/game/E2WApp;)Lcom/east2west/game/inApp/InAppBase;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/east2west/game/E2WApp;->mInApp:Lcom/east2west/game/inApp/InAppBase;

    return-object p0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 92
    sput-object v0, Lcom/east2west/game/E2WApp;->imei:Ljava/lang/String;

    :try_start_0
    const-string v0, "phone"

    .line 95
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 96
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/east2west/game/E2WApp;->imei:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 99
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[E2WApp] -imei = ["

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/east2west/game/E2WApp;->imei:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 102
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[E2WApp] -readFileData(\"UserIMEI\") = ["

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "UserIMEI"

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->readFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 103
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[E2WApp] -readFileData(\"UserIMEI\") = ["

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "UserIMEI"

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->readFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 104
    sget-object p0, Lcom/east2west/game/E2WApp;->imei:Ljava/lang/String;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/east2west/game/E2WApp;->imei:Ljava/lang/String;

    const-string v0, ""

    if-ne p0, v0, :cond_1

    :cond_0
    const-string p0, "UserIMEI"

    invoke-static {p0}, Lcom/east2west/game/E2WApp;->readFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8

    const-string p0, "UserIMEI"

    invoke-static {p0}, Lcom/east2west/game/E2WApp;->readFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    if-ne p0, v0, :cond_1

    goto/16 :goto_3

    .line 111
    :cond_1
    sget-object p0, Lcom/east2west/game/E2WApp;->imei:Ljava/lang/String;

    if-eqz p0, :cond_2

    sget-object p0, Lcom/east2west/game/E2WApp;->imei:Ljava/lang/String;

    const-string v0, ""

    if-ne p0, v0, :cond_3

    :cond_2
    const-string p0, "UserIMEI"

    invoke-static {p0}, Lcom/east2west/game/E2WApp;->readFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_7

    const-string p0, "UserIMEI"

    invoke-static {p0}, Lcom/east2west/game/E2WApp;->readFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    if-eq p0, v0, :cond_3

    goto :goto_2

    .line 117
    :cond_3
    sget-object p0, Lcom/east2west/game/E2WApp;->imei:Ljava/lang/String;

    if-nez p0, :cond_4

    sget-object p0, Lcom/east2west/game/E2WApp;->imei:Ljava/lang/String;

    const-string v0, ""

    if-eq p0, v0, :cond_5

    :cond_4
    const-string p0, "UserIMEI"

    invoke-static {p0}, Lcom/east2west/game/E2WApp;->readFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_6

    const-string p0, "UserIMEI"

    invoke-static {p0}, Lcom/east2west/game/E2WApp;->readFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    if-eq p0, v0, :cond_5

    goto :goto_1

    .line 124
    :cond_5
    sget-object p0, Lcom/east2west/game/E2WApp;->imei:Ljava/lang/String;

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[E2WApp] Set imei as phone = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/east2west/game/E2WApp;->imei:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_6
    :goto_1
    const-string p0, "UserIMEI"

    .line 119
    invoke-static {p0}, Lcom/east2west/game/E2WApp;->readFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[E2WApp] Set imei as local imei = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    :goto_2
    const-string p0, "UserIMEI"

    .line 113
    invoke-static {p0}, Lcom/east2west/game/E2WApp;->readFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/east2west/game/E2WApp;->imei:Ljava/lang/String;

    .line 114
    sget-object p0, Lcom/east2west/game/E2WApp;->imei:Ljava/lang/String;

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[E2WApp] read imei = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/east2west/game/E2WApp;->imei:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    goto :goto_4

    .line 106
    :cond_8
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    sget-object v0, Lcom/east2west/game/QinConst;->appid:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/east2west/game/E2WApp;->imei:Ljava/lang/String;

    const-string p0, "UserIMEI"

    .line 107
    sget-object v0, Lcom/east2west/game/E2WApp;->imei:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/east2west/game/E2WApp;->writeFileData(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    sget-object p0, Lcom/east2west/game/E2WApp;->imei:Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[E2WApp] write imei = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/east2west/game/E2WApp;->imei:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 127
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[E2WApp] strUserID = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/util/MD5;->getMessageDigest([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/east2west/game/E2WApp;->DeviceId:Ljava/lang/String;

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[E2WApp] Get DeviceId = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/east2west/game/E2WApp;->DeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/east2west/game/util/MD5;->getMessageDigest([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Ljava/lang/Object;
    .locals 1

    .line 393
    sget-object v0, Lcom/east2west/game/E2WApp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static readFileData(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 154
    :try_start_0
    sget-object v1, Lcom/east2west/game/E2WApp;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p0

    .line 155
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 156
    new-array v1, v1, [B

    .line 157
    invoke-virtual {p0, v1}, Ljava/io/FileInputStream;->read([B)I

    const-string v2, "UTF-8"

    .line 158
    invoke-static {v1, v2}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 159
    :try_start_1
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    move-object v1, v0

    .line 164
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object v1
.end method

.method public static writeFileData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 137
    :try_start_0
    sget-object v0, Lcom/east2west/game/E2WApp;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p0

    .line 138
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 139
    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 140
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 144
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public Exchange()V
    .locals 2

    .line 412
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/east2west/game/E2WApp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/east2west/game/E2WApp$2;

    invoke-direct {v1, p0}, Lcom/east2west/game/E2WApp$2;-><init>(Lcom/east2west/game/E2WApp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Exchange(Lcom/east2west/game/inApp/APPBaseInterface;)V
    .locals 1

    .line 423
    new-instance p1, Landroid/os/Handler;

    sget-object v0, Lcom/east2west/game/E2WApp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/east2west/game/E2WApp$3;

    invoke-direct {v0, p0}, Lcom/east2west/game/E2WApp$3;-><init>(Lcom/east2west/game/E2WApp;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public ExitGame()V
    .locals 2

    .line 189
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/east2west/game/E2WApp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/east2west/game/E2WApp$1;

    invoke-direct {v1, p0}, Lcom/east2west/game/E2WApp$1;-><init>(Lcom/east2west/game/E2WApp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Function1(Ljava/lang/String;)V
    .locals 0

    .line 200
    new-instance p1, Lcom/east2west/game/System/InAppBaseOperation;

    invoke-direct {p1}, Lcom/east2west/game/System/InAppBaseOperation;-><init>()V

    .line 201
    invoke-virtual {p1}, Lcom/east2west/game/System/InAppBaseOperation;->LoadConfiguration()V

    return-void
.end method

.method public Function2(Ljava/lang/String;)V
    .locals 2

    .line 209
    new-instance p1, Lcom/east2west/game/System/InAppBaseOperation;

    invoke-direct {p1}, Lcom/east2west/game/System/InAppBaseOperation;-><init>()V

    const-string v0, "IAP"

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/east2west/game/System/InAppBaseOperation;->IsRatingAvailable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public Function3(Ljava/lang/String;)V
    .locals 2

    .line 214
    new-instance p1, Lcom/east2west/game/System/InAppBaseOperation;

    invoke-direct {p1}, Lcom/east2west/game/System/InAppBaseOperation;-><init>()V

    const-string v0, "IAP"

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/east2west/game/System/InAppBaseOperation;->GetRatingURL()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public InitAd(Lcom/east2west/game/inApp/APPBaseInterface;)V
    .locals 0

    return-void
.end method

.method public InitCarriers(Lcom/east2west/game/inApp/APPBaseInterface;)V
    .locals 0

    return-void
.end method

.method public InitChannel(Lcom/east2west/game/inApp/APPBaseInterface;)V
    .locals 7

    .line 170
    sget-object v0, Lcom/east2west/game/E2WApp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 171
    new-instance v0, Lcom/east2west/game/inApp/InAppBase;

    invoke-direct {v0}, Lcom/east2west/game/inApp/InAppBase;-><init>()V

    iput-object v0, p0, Lcom/east2west/game/E2WApp;->mInApp:Lcom/east2west/game/inApp/InAppBase;

    .line 172
    iget-object v1, p0, Lcom/east2west/game/E2WApp;->mInApp:Lcom/east2west/game/inApp/InAppBase;

    sget-object v0, Lcom/east2west/game/E2WApp;->mContext:Landroid/content/Context;

    move-object v3, v0

    check-cast v3, Landroid/app/Activity;

    const-string v4, ""

    const-string v5, ""

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/east2west/game/inApp/InAppBase;->init(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/east2west/game/inApp/APPBaseInterface;)V

    return-void
.end method

.method public InitE2WSDK(Landroid/content/Context;)V
    .locals 0

    .line 75
    sput-object p1, Lcom/east2west/game/E2WApp;->mContext:Landroid/content/Context;

    .line 76
    sput-object p0, Lcom/east2west/game/E2WApp;->activityforappbase:Lcom/east2west/game/E2WApp;

    .line 77
    sget-object p1, Lcom/east2west/game/E2WApp;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/east2west/game/E2WApp;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    const-string p1, "jinli20180518"

    .line 78
    sput-object p1, Lcom/east2west/game/SdkApplication;->channelname:Ljava/lang/String;

    const-string p1, "east2west1"

    .line 79
    sput-object p1, Lcom/east2west/game/SdkApplication;->e2wnumber:Ljava/lang/String;

    const-string p1, "123"

    .line 80
    sput-object p1, Lcom/east2west/game/System/InAppBaseRestore;->OrderID:Ljava/lang/String;

    const-string p1, "east2west"

    .line 81
    sput-object p1, Lcom/east2west/game/SdkApplication;->msg:Ljava/lang/String;

    .line 82
    new-instance p1, Lcom/east2west/game/QinConst;

    invoke-direct {p1}, Lcom/east2west/game/QinConst;-><init>()V

    sput-object p1, Lcom/east2west/game/inApp/InAppBase;->qc:Lcom/east2west/game/QinConst;

    .line 83
    new-instance p1, Lcom/east2west/game/System/InAppBackUp;

    invoke-direct {p1}, Lcom/east2west/game/System/InAppBackUp;-><init>()V

    .line 84
    invoke-virtual {p1}, Lcom/east2west/game/System/InAppBackUp;->Login()V

    return-void
.end method

.method public LongChannelID()Ljava/lang/String;
    .locals 1

    .line 229
    sget-object v0, Lcom/east2west/game/E2WApp;->LongChannelID:Ljava/lang/String;

    return-object v0
.end method

.method public Message(Ljava/lang/String;)V
    .locals 2

    .line 442
    sget-object v0, Lcom/east2west/game/E2WApp;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public SharePicture(Ljava/lang/String;ZLcom/east2west/game/inApp/APPBaseInterface;)V
    .locals 0

    return-void
.end method

.method public ShowTencentAd()V
    .locals 2

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[E2WApp]->ShowTencentAd:mInAppExt="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->ShowTencentAd()V

    :cond_0
    return-void
.end method

.method public TencentLogin(I)V
    .locals 2

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[E2WApp]->TencentLogin:mInAppExt="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " kind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0, p1}, Lcom/east2west/game/inApp/InAppBase;->login(I)V

    :cond_0
    return-void
.end method

.method public TencentLoginOut()V
    .locals 2

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[E2WApp]->TencentLoginOut:mInAppExt="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->logout()V

    :cond_0
    return-void
.end method

.method public TencentLoginOutOnly()V
    .locals 2

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[E2WApp]->TencentLoginOutOnly:mInAppExt="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->TencentLoginOutOnly()V

    :cond_0
    return-void
.end method

.method public TestFunction()V
    .locals 6

    const-string v0, "[E2WApp] TestFunction()"

    .line 241
    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/east2west/game/E2WApp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "machinarium_save.bin"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 248
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x400

    .line 249
    :try_start_1
    new-array v0, v0, [B

    const-string v0, "123156487asfafas564a65fssassssssssssssssssssa56s4f69"

    .line 250
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v3, 0x0

    .line 251
    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    .line 261
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 264
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_2

    :catch_2
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    .line 255
    :goto_0
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[E2WApp] copyFileUsingFileStreams err="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_0

    .line 261
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 267
    :cond_0
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[E2WApp] f1_org.length()="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v2, :cond_1

    .line 261
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 264
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 266
    :cond_1
    :goto_3
    throw v0
.end method

.method public getBaseInApp()Lcom/east2west/game/inApp/InAppBase;
    .locals 2

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[E2WApp] getBaseInApp()->mInApp="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/east2west/game/E2WApp;->mInApp:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 404
    new-instance v0, Lcom/east2west/game/inApp/InAppBase;

    invoke-direct {v0}, Lcom/east2west/game/inApp/InAppBase;-><init>()V

    return-object v0
.end method

.method public getChannelId()I
    .locals 1

    .line 398
    iget v0, p0, Lcom/east2west/game/E2WApp;->mChannelId:I

    return v0
.end method

.method public letUserLogin()V
    .locals 2

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[E2WApp]->letUserLogin:mInAppExt="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->letUserLogin()V

    :cond_0
    return-void
.end method

.method public letUserLogout()V
    .locals 2

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[E2WApp]->letUserLogout:mInAppExt="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->letUserLogout()V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[E2WApp]->onActivityResult:mInAppExt="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/east2west/game/inApp/InAppBase;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInApp:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInApp:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->onDestroy()V

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->onDestroy()V

    :cond_1
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[E2WApp]->onNewIntent:mInAppExt="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0, p1}, Lcom/east2west/game/inApp/InAppBase;->onNewIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInApp:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInApp:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->onPause()V

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->onPause()V

    :cond_1
    return-void
.end method

.method public onRestart()V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInApp:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInApp:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->onRestart()V

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->onRestart()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInApp:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInApp:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->onResume()V

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->onResume()V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInApp:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInApp:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->onStart()V

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->onStart()V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInApp:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInApp:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->onStop()V

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->onStop()V

    :cond_1
    return-void
.end method

.method public purchaseProduct(Ljava/lang/String;)V
    .locals 2

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[E2WApp] purchaseProduct: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    return-void
.end method

.method public repairindentRequest()V
    .locals 0

    return-void
.end method

.method public respondCPserver()V
    .locals 0

    return-void
.end method

.method public showDiffLogin()V
    .locals 2

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[E2WApp]->showDiffLogin:mInAppExt="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->showDiffLogin()V

    :cond_0
    return-void
.end method

.method public showMessageDialog()V
    .locals 2

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[E2WApp]->showMessageDialog:mInAppExt="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->showMessageDialog()V

    :cond_0
    return-void
.end method

.method public show_banner()V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppShow:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppShow:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->show_banner()V

    :cond_0
    return-void
.end method

.method public show_insert()V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppShow:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppShow:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->show_insert()V

    :cond_0
    return-void
.end method

.method public show_out()V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppShow:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppShow:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->show_out()V

    :cond_0
    return-void
.end method

.method public show_push()V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppShow:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppShow:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->show_push()V

    :cond_0
    return-void
.end method

.method public show_video()V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppShow:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppShow:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->show_video()V

    :cond_0
    return-void
.end method

.method public stopWaiting()V
    .locals 2

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[E2WApp]->stopWaiting:mInAppExt="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/E2WApp;->LogLocal(Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppExt:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->stopWaiting()V

    :cond_0
    return-void
.end method

.method public swtichuser()V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppShow:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppShow:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->swtichuser()V

    :cond_0
    return-void
.end method

.method public uploadclick()V
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppShow:Lcom/east2west/game/inApp/InAppBase;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/east2west/game/E2WApp;->mInAppShow:Lcom/east2west/game/inApp/InAppBase;

    invoke-virtual {v0}, Lcom/east2west/game/inApp/InAppBase;->uploadclick()V

    :cond_0
    return-void
.end method
