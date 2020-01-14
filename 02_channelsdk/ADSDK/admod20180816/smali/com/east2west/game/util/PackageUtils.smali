.class public Lcom/east2west/game/util/PackageUtils;
.super Ljava/lang/Object;
.source "PackageUtils.java"


# static fields
.field private static final HEX_CHAR:[C

.field private static final sSingleton:Lcom/east2west/game/util/PackageUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/east2west/game/util/PackageUtils;

    invoke-direct {v0}, Lcom/east2west/game/util/PackageUtils;-><init>()V

    sput-object v0, Lcom/east2west/game/util/PackageUtils;->sSingleton:Lcom/east2west/game/util/PackageUtils;

    const/16 v0, 0x10

    .line 18
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/east2west/game/util/PackageUtils;->HEX_CHAR:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/east2west/game/util/PackageUtils;
    .locals 1

    .line 26
    sget-object v0, Lcom/east2west/game/util/PackageUtils;->sSingleton:Lcom/east2west/game/util/PackageUtils;

    return-object v0
.end method

.method private toHexString([B)Ljava/lang/String;
    .locals 6

    .line 61
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 62
    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    .line 67
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1

    .line 63
    :cond_0
    aget-byte v2, p1, v1

    mul-int/lit8 v3, v1, 0x2

    .line 64
    sget-object v4, Lcom/east2west/game/util/PackageUtils;->HEX_CHAR:[C

    ushr-int/lit8 v5, v2, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    .line 65
    sget-object v4, Lcom/east2west/game/util/PackageUtils;->HEX_CHAR:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    aput-char v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getInstalledPackages(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method

.method public getSignatureDigest(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 2
    .param p1    # Landroid/content/pm/PackageInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 42
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-gtz v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 47
    :cond_0
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "MD5"

    .line 50
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 52
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 55
    :goto_0
    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 56
    invoke-direct {p0, p1}, Lcom/east2west/game/util/PackageUtils;->toHexString([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
