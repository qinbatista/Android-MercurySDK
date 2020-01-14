.class public Lcom/east2west/game/util/Base64Utils;
.super Ljava/lang/Object;
.source "Base64Utils.java"


# static fields
.field private static base64DecodeChars:[B

.field private static base64EncodeChars:[C


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/16 v0, 0x40

    .line 11
    new-array v1, v0, [C

    fill-array-data v1, :array_0

    .line 10
    sput-object v1, Lcom/east2west/game/util/Base64Utils;->base64EncodeChars:[C

    const/16 v1, 0x80

    .line 16
    new-array v1, v1, [B

    const/4 v2, -0x1

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    const/4 v4, 0x2

    aput-byte v2, v1, v4

    const/4 v5, 0x3

    aput-byte v2, v1, v5

    const/4 v6, 0x4

    aput-byte v2, v1, v6

    const/4 v7, 0x5

    aput-byte v2, v1, v7

    const/4 v8, 0x6

    aput-byte v2, v1, v8

    const/4 v9, 0x7

    aput-byte v2, v1, v9

    const/16 v10, 0x8

    aput-byte v2, v1, v10

    const/16 v11, 0x9

    aput-byte v2, v1, v11

    const/16 v12, 0xa

    aput-byte v2, v1, v12

    const/16 v13, 0xb

    aput-byte v2, v1, v13

    const/16 v14, 0xc

    aput-byte v2, v1, v14

    const/16 v15, 0xd

    aput-byte v2, v1, v15

    const/16 v16, 0xe

    aput-byte v2, v1, v16

    const/16 v16, 0xf

    aput-byte v2, v1, v16

    const/16 v16, 0x10

    aput-byte v2, v1, v16

    const/16 v16, 0x11

    aput-byte v2, v1, v16

    const/16 v16, 0x12

    aput-byte v2, v1, v16

    const/16 v16, 0x13

    aput-byte v2, v1, v16

    const/16 v16, 0x14

    aput-byte v2, v1, v16

    const/16 v16, 0x15

    aput-byte v2, v1, v16

    const/16 v16, 0x16

    aput-byte v2, v1, v16

    const/16 v16, 0x17

    aput-byte v2, v1, v16

    const/16 v16, 0x18

    aput-byte v2, v1, v16

    const/16 v16, 0x19

    aput-byte v2, v1, v16

    const/16 v16, 0x1a

    aput-byte v2, v1, v16

    const/16 v16, 0x1b

    aput-byte v2, v1, v16

    const/16 v16, 0x1c

    aput-byte v2, v1, v16

    const/16 v16, 0x1d

    aput-byte v2, v1, v16

    const/16 v16, 0x1e

    aput-byte v2, v1, v16

    const/16 v16, 0x1f

    aput-byte v2, v1, v16

    const/16 v16, 0x20

    aput-byte v2, v1, v16

    const/16 v16, 0x21

    aput-byte v2, v1, v16

    const/16 v16, 0x22

    aput-byte v2, v1, v16

    const/16 v16, 0x23

    aput-byte v2, v1, v16

    const/16 v16, 0x24

    aput-byte v2, v1, v16

    const/16 v16, 0x25

    aput-byte v2, v1, v16

    const/16 v16, 0x26

    aput-byte v2, v1, v16

    const/16 v16, 0x27

    aput-byte v2, v1, v16

    const/16 v16, 0x28

    aput-byte v2, v1, v16

    const/16 v16, 0x29

    aput-byte v2, v1, v16

    const/16 v16, 0x2a

    aput-byte v2, v1, v16

    const/16 v16, 0x2b

    const/16 v17, 0x3e

    aput-byte v17, v1, v16

    const/16 v16, 0x2c

    aput-byte v2, v1, v16

    const/16 v16, 0x2d

    aput-byte v2, v1, v16

    const/16 v16, 0x2e

    aput-byte v2, v1, v16

    const/16 v16, 0x2f

    const/16 v17, 0x3f

    aput-byte v17, v1, v16

    const/16 v16, 0x30

    const/16 v17, 0x34

    aput-byte v17, v1, v16

    const/16 v16, 0x31

    const/16 v17, 0x35

    aput-byte v17, v1, v16

    const/16 v16, 0x32

    const/16 v17, 0x36

    aput-byte v17, v1, v16

    const/16 v16, 0x33

    const/16 v17, 0x37

    aput-byte v17, v1, v16

    const/16 v16, 0x34

    const/16 v17, 0x38

    aput-byte v17, v1, v16

    const/16 v16, 0x35

    const/16 v17, 0x39

    aput-byte v17, v1, v16

    const/16 v16, 0x36

    const/16 v17, 0x3a

    aput-byte v17, v1, v16

    const/16 v16, 0x37

    const/16 v17, 0x3b

    aput-byte v17, v1, v16

    const/16 v16, 0x38

    const/16 v17, 0x3c

    aput-byte v17, v1, v16

    const/16 v16, 0x39

    const/16 v17, 0x3d

    aput-byte v17, v1, v16

    const/16 v16, 0x3a

    aput-byte v2, v1, v16

    const/16 v16, 0x3b

    aput-byte v2, v1, v16

    const/16 v16, 0x3c

    aput-byte v2, v1, v16

    const/16 v16, 0x3d

    aput-byte v2, v1, v16

    const/16 v16, 0x3e

    aput-byte v2, v1, v16

    const/16 v16, 0x3f

    aput-byte v2, v1, v16

    aput-byte v2, v1, v0

    const/16 v0, 0x42

    aput-byte v3, v1, v0

    const/16 v0, 0x43

    aput-byte v4, v1, v0

    const/16 v0, 0x44

    aput-byte v5, v1, v0

    const/16 v0, 0x45

    aput-byte v6, v1, v0

    const/16 v0, 0x46

    aput-byte v7, v1, v0

    const/16 v0, 0x47

    aput-byte v8, v1, v0

    const/16 v0, 0x48

    aput-byte v9, v1, v0

    const/16 v0, 0x49

    aput-byte v10, v1, v0

    const/16 v0, 0x4a

    aput-byte v11, v1, v0

    const/16 v0, 0x4b

    aput-byte v12, v1, v0

    const/16 v0, 0x4c

    aput-byte v13, v1, v0

    const/16 v0, 0x4d

    aput-byte v14, v1, v0

    const/16 v0, 0x4e

    aput-byte v15, v1, v0

    const/16 v0, 0x4f

    const/16 v3, 0xe

    aput-byte v3, v1, v0

    const/16 v0, 0x50

    const/16 v3, 0xf

    aput-byte v3, v1, v0

    const/16 v0, 0x51

    const/16 v3, 0x10

    aput-byte v3, v1, v0

    const/16 v0, 0x52

    const/16 v3, 0x11

    aput-byte v3, v1, v0

    const/16 v0, 0x53

    const/16 v3, 0x12

    aput-byte v3, v1, v0

    const/16 v0, 0x54

    const/16 v3, 0x13

    aput-byte v3, v1, v0

    const/16 v0, 0x55

    const/16 v3, 0x14

    aput-byte v3, v1, v0

    const/16 v0, 0x56

    const/16 v3, 0x15

    aput-byte v3, v1, v0

    const/16 v0, 0x57

    const/16 v3, 0x16

    aput-byte v3, v1, v0

    const/16 v0, 0x58

    const/16 v3, 0x17

    aput-byte v3, v1, v0

    const/16 v0, 0x59

    const/16 v3, 0x18

    aput-byte v3, v1, v0

    const/16 v0, 0x5a

    const/16 v3, 0x19

    aput-byte v3, v1, v0

    const/16 v0, 0x5b

    aput-byte v2, v1, v0

    const/16 v0, 0x5c

    aput-byte v2, v1, v0

    const/16 v0, 0x5d

    aput-byte v2, v1, v0

    const/16 v0, 0x5e

    aput-byte v2, v1, v0

    const/16 v0, 0x5f

    aput-byte v2, v1, v0

    const/16 v0, 0x60

    aput-byte v2, v1, v0

    const/16 v0, 0x61

    const/16 v3, 0x1a

    aput-byte v3, v1, v0

    const/16 v0, 0x62

    const/16 v3, 0x1b

    aput-byte v3, v1, v0

    const/16 v0, 0x63

    const/16 v3, 0x1c

    aput-byte v3, v1, v0

    const/16 v0, 0x64

    const/16 v3, 0x1d

    aput-byte v3, v1, v0

    const/16 v0, 0x65

    const/16 v3, 0x1e

    aput-byte v3, v1, v0

    const/16 v0, 0x66

    const/16 v3, 0x1f

    aput-byte v3, v1, v0

    const/16 v0, 0x67

    const/16 v3, 0x20

    aput-byte v3, v1, v0

    const/16 v0, 0x68

    const/16 v3, 0x21

    aput-byte v3, v1, v0

    const/16 v0, 0x69

    const/16 v3, 0x22

    aput-byte v3, v1, v0

    const/16 v0, 0x6a

    const/16 v3, 0x23

    aput-byte v3, v1, v0

    const/16 v0, 0x6b

    const/16 v3, 0x24

    aput-byte v3, v1, v0

    const/16 v0, 0x6c

    const/16 v3, 0x25

    aput-byte v3, v1, v0

    const/16 v0, 0x6d

    const/16 v3, 0x26

    aput-byte v3, v1, v0

    const/16 v0, 0x6e

    const/16 v3, 0x27

    aput-byte v3, v1, v0

    const/16 v0, 0x6f

    const/16 v3, 0x28

    aput-byte v3, v1, v0

    const/16 v0, 0x70

    const/16 v3, 0x29

    aput-byte v3, v1, v0

    const/16 v0, 0x71

    const/16 v3, 0x2a

    aput-byte v3, v1, v0

    const/16 v0, 0x72

    const/16 v3, 0x2b

    aput-byte v3, v1, v0

    const/16 v0, 0x73

    const/16 v3, 0x2c

    aput-byte v3, v1, v0

    const/16 v0, 0x74

    const/16 v3, 0x2d

    aput-byte v3, v1, v0

    const/16 v0, 0x75

    const/16 v3, 0x2e

    aput-byte v3, v1, v0

    const/16 v0, 0x76

    const/16 v3, 0x2f

    aput-byte v3, v1, v0

    const/16 v0, 0x77

    const/16 v3, 0x30

    aput-byte v3, v1, v0

    const/16 v0, 0x78

    const/16 v3, 0x31

    aput-byte v3, v1, v0

    const/16 v0, 0x79

    const/16 v3, 0x32

    aput-byte v3, v1, v0

    const/16 v0, 0x7a

    const/16 v3, 0x33

    aput-byte v3, v1, v0

    const/16 v0, 0x7b

    aput-byte v2, v1, v0

    const/16 v0, 0x7c

    aput-byte v2, v1, v0

    const/16 v0, 0x7d

    aput-byte v2, v1, v0

    const/16 v0, 0x7e

    aput-byte v2, v1, v0

    const/16 v0, 0x7f

    aput-byte v2, v1, v0

    .line 15
    sput-object v1, Lcom/east2west/game/util/Base64Utils;->base64DecodeChars:[B

    return-void

    nop

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
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
        0x2bs
        0x2fs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 0

    .line 73
    :try_start_0
    invoke-static {p0}, Lcom/east2west/game/util/Base64Utils;->decodePrivate(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 76
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 p0, 0x0

    .line 79
    new-array p0, p0, [B

    return-object p0
.end method

.method private static decodePrivate(Ljava/lang/String;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "US-ASCII"

    .line 86
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 87
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    goto/16 :goto_9

    .line 95
    :cond_0
    :goto_1
    sget-object v3, Lcom/east2west/game/util/Base64Utils;->base64DecodeChars:[B

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p0, v2

    aget-byte v2, v3, v2

    const/4 v3, -0x1

    if-ge v4, v1, :cond_2

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    :goto_2
    if-ne v2, v3, :cond_3

    goto/16 :goto_9

    .line 102
    :cond_3
    :goto_3
    sget-object v5, Lcom/east2west/game/util/Base64Utils;->base64DecodeChars:[B

    add-int/lit8 v6, v4, 0x1

    aget-byte v4, p0, v4

    aget-byte v4, v5, v4

    if-ge v6, v1, :cond_5

    if-eq v4, v3, :cond_4

    goto :goto_4

    :cond_4
    move v4, v6

    goto :goto_3

    :cond_5
    :goto_4
    if-ne v4, v3, :cond_6

    goto :goto_9

    :cond_6
    shl-int/lit8 v2, v2, 0x2

    and-int/lit8 v5, v4, 0x30

    ushr-int/lit8 v5, v5, 0x4

    or-int/2addr v2, v5

    int-to-char v2, v2

    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_5
    add-int/lit8 v2, v6, 0x1

    .line 110
    aget-byte v5, p0, v6

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_7

    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "iso8859-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    .line 113
    :cond_7
    sget-object v7, Lcom/east2west/game/util/Base64Utils;->base64DecodeChars:[B

    aget-byte v5, v7, v5

    if-ge v2, v1, :cond_9

    if-eq v5, v3, :cond_8

    goto :goto_6

    :cond_8
    move v6, v2

    goto :goto_5

    :cond_9
    :goto_6
    if-ne v5, v3, :cond_a

    goto :goto_9

    :cond_a
    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x4

    and-int/lit8 v7, v5, 0x3c

    ushr-int/lit8 v7, v7, 0x2

    or-int/2addr v4, v7

    int-to-char v4, v4

    .line 117
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_7
    add-int/lit8 v4, v2, 0x1

    .line 121
    aget-byte v2, p0, v2

    if-ne v2, v6, :cond_b

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "iso8859-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    .line 124
    :cond_b
    sget-object v7, Lcom/east2west/game/util/Base64Utils;->base64DecodeChars:[B

    aget-byte v2, v7, v2

    if-ge v4, v1, :cond_d

    if-eq v2, v3, :cond_c

    goto :goto_8

    :cond_c
    move v2, v4

    goto :goto_7

    :cond_d
    :goto_8
    if-ne v2, v3, :cond_e

    .line 130
    :goto_9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "iso8859-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    :cond_e
    and-int/lit8 v3, v5, 0x3

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    int-to-char v2, v2

    .line 128
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v4

    goto/16 :goto_0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 8

    .line 31
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 32
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v2, 0x1

    .line 37
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    if-ne v3, v1, :cond_1

    .line 40
    sget-object p0, Lcom/east2west/game/util/Base64Utils;->base64EncodeChars:[C

    ushr-int/lit8 v1, v2, 0x2

    aget-char p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 41
    sget-object p0, Lcom/east2west/game/util/Base64Utils;->base64EncodeChars:[C

    and-int/lit8 v1, v2, 0x3

    shl-int/lit8 v1, v1, 0x4

    aget-char p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string p0, "=="

    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v3, 0x1

    .line 45
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    if-ne v4, v1, :cond_2

    .line 48
    sget-object p0, Lcom/east2west/game/util/Base64Utils;->base64EncodeChars:[C

    ushr-int/lit8 v1, v2, 0x2

    aget-char p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 49
    sget-object p0, Lcom/east2west/game/util/Base64Utils;->base64EncodeChars:[C

    and-int/lit8 v1, v2, 0x3

    shl-int/lit8 v1, v1, 0x4

    and-int/lit16 v2, v3, 0xf0

    ushr-int/lit8 v2, v2, 0x4

    or-int/2addr v1, v2

    aget-char p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 50
    sget-object p0, Lcom/east2west/game/util/Base64Utils;->base64EncodeChars:[C

    and-int/lit8 v1, v3, 0xf

    shl-int/lit8 v1, v1, 0x2

    aget-char p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string p0, "="

    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v5, v4, 0x1

    .line 54
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    .line 55
    sget-object v6, Lcom/east2west/game/util/Base64Utils;->base64EncodeChars:[C

    ushr-int/lit8 v7, v2, 0x2

    aget-char v6, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 56
    sget-object v6, Lcom/east2west/game/util/Base64Utils;->base64EncodeChars:[C

    and-int/lit8 v2, v2, 0x3

    shl-int/lit8 v2, v2, 0x4

    and-int/lit16 v7, v3, 0xf0

    ushr-int/lit8 v7, v7, 0x4

    or-int/2addr v2, v7

    aget-char v2, v6, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 57
    sget-object v2, Lcom/east2west/game/util/Base64Utils;->base64EncodeChars:[C

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x2

    and-int/lit16 v6, v4, 0xc0

    ushr-int/lit8 v6, v6, 0x6

    or-int/2addr v3, v6

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 58
    sget-object v2, Lcom/east2west/game/util/Base64Utils;->base64EncodeChars:[C

    and-int/lit8 v3, v4, 0x3f

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v5

    goto/16 :goto_0
.end method
