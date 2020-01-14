.class public Lcom/east2west/game/util/Base64Util;
.super Ljava/lang/Object;
.source "Base64Util.java"


# static fields
.field private static alphabet:[C

.field private static codes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    .line 104
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/east2west/game/util/Base64Util;->alphabet:[C

    const/16 v0, 0x100

    .line 106
    new-array v1, v0, [B

    sput-object v1, Lcom/east2west/game/util/Base64Util;->codes:[B

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_3

    const/16 v0, 0x41

    :goto_1
    const/16 v1, 0x5a

    if-le v0, v1, :cond_2

    const/16 v1, 0x61

    const/16 v0, 0x61

    :goto_2
    const/16 v2, 0x7a

    if-le v0, v2, :cond_1

    const/16 v2, 0x30

    const/16 v0, 0x30

    :goto_3
    const/16 v1, 0x39

    if-le v0, v1, :cond_0

    .line 117
    sget-object v0, Lcom/east2west/game/util/Base64Util;->codes:[B

    const/16 v1, 0x2b

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    .line 118
    sget-object v0, Lcom/east2west/game/util/Base64Util;->codes:[B

    const/16 v1, 0x2f

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    return-void

    .line 116
    :cond_0
    sget-object v1, Lcom/east2west/game/util/Base64Util;->codes:[B

    add-int/lit8 v3, v0, 0x34

    sub-int/2addr v3, v2

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 114
    :cond_1
    sget-object v2, Lcom/east2west/game/util/Base64Util;->codes:[B

    add-int/lit8 v3, v0, 0x1a

    sub-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 112
    :cond_2
    sget-object v1, Lcom/east2west/game/util/Base64Util;->codes:[B

    add-int/lit8 v2, v0, -0x41

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 110
    :cond_3
    sget-object v2, Lcom/east2west/game/util/Base64Util;->codes:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 9

    .line 56
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v0

    const/4 v0, 0x0

    .line 57
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xff

    if-lt v0, v3, :cond_6

    .line 64
    div-int/lit8 v0, v2, 0x4

    const/4 v3, 0x3

    mul-int/lit8 v0, v0, 0x3

    .line 65
    rem-int/lit8 v2, v2, 0x4

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x2

    :cond_0
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 70
    :cond_1
    new-array v3, v0, [B

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 77
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v0, v7, :cond_3

    .line 96
    array-length p0, v3

    if-eq v2, p0, :cond_2

    .line 98
    new-array p0, v1, [B

    return-object p0

    :cond_2
    return-object v3

    .line 79
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-le v7, v4, :cond_4

    const/4 v7, -0x1

    goto :goto_2

    :cond_4
    sget-object v7, Lcom/east2west/game/util/Base64Util;->codes:[B

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v7, v7, v8

    :goto_2
    if-ltz v7, :cond_5

    shl-int/lit8 v5, v5, 0x6

    add-int/lit8 v6, v6, 0x6

    or-int/2addr v5, v7

    const/16 v7, 0x8

    if-lt v6, v7, :cond_5

    add-int/lit8 v6, v6, -0x8

    add-int/lit8 v7, v2, 0x1

    shr-int v8, v5, v6

    and-int/2addr v8, v4

    int-to-byte v8, v8

    .line 89
    aput-byte v8, v3, v2

    move v2, v7

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 59
    :cond_6
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v3, v4, :cond_7

    sget-object v3, Lcom/east2west/game/util/Base64Util;->codes:[B

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget-byte v3, v3, v4

    if-gez v3, :cond_8

    :cond_7
    add-int/lit8 v2, v2, -0x1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 1

    .line 16
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/east2west/game/util/Base64Util;->encode([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encode([BI)Ljava/lang/String;
    .locals 10

    add-int/lit8 v0, p1, 0x2

    .line 21
    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-lt v2, p1, :cond_0

    .line 50
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0

    .line 28
    :cond_0
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, v2, 0x1

    const/4 v6, 0x1

    if-ge v5, p1, :cond_1

    .line 32
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v7, v2, 0x2

    if-ge v7, p1, :cond_2

    .line 38
    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v4, v7

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    add-int/lit8 v7, v3, 0x3

    .line 41
    sget-object v8, Lcom/east2west/game/util/Base64Util;->alphabet:[C

    const/16 v9, 0x40

    if-eqz v6, :cond_3

    and-int/lit8 v6, v4, 0x3f

    goto :goto_3

    :cond_3
    const/16 v6, 0x40

    :goto_3
    aget-char v6, v8, v6

    aput-char v6, v0, v7

    shr-int/lit8 v4, v4, 0x6

    add-int/lit8 v6, v3, 0x2

    .line 43
    sget-object v7, Lcom/east2west/game/util/Base64Util;->alphabet:[C

    if-eqz v5, :cond_4

    and-int/lit8 v9, v4, 0x3f

    :cond_4
    aget-char v5, v7, v9

    aput-char v5, v0, v6

    shr-int/lit8 v4, v4, 0x6

    add-int/lit8 v5, v3, 0x1

    .line 45
    sget-object v6, Lcom/east2west/game/util/Base64Util;->alphabet:[C

    and-int/lit8 v7, v4, 0x3f

    aget-char v6, v6, v7

    aput-char v6, v0, v5

    shr-int/lit8 v4, v4, 0x6

    add-int/lit8 v5, v3, 0x0

    .line 47
    sget-object v6, Lcom/east2west/game/util/Base64Util;->alphabet:[C

    and-int/lit8 v4, v4, 0x3f

    aget-char v4, v6, v4

    aput-char v4, v0, v5

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v3, v3, 0x4

    goto :goto_0
.end method
