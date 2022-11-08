.class public Lcom/east2west/game/util/SHA;
.super Ljava/lang/Object;
.source "SHA.java"


# instance fields
.field private final abcde:[I

.field private digestInt:[I

.field private tmpData:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 11
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 12
    iput-object v1, p0, Lcom/east2west/game/util/SHA;->abcde:[I

    .line 15
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/east2west/game/util/SHA;->digestInt:[I

    const/16 v0, 0x50

    .line 18
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/east2west/game/util/SHA;->tmpData:[I

    return-void

    :array_0
    .array-data 4
        0x67452301
        -0x10325477
        -0x67452302
        0x10325476
        -0x3c2d1e10
    .end array-data
.end method

.method private byteArrayFormatData([B)[B
    .locals 17

    move-object/from16 v0, p1

    .line 57
    array-length v1, v0

    .line 59
    rem-int/lit8 v2, v1, 0x40

    const/16 v3, 0x3f

    const/16 v4, 0x38

    if-ge v2, v4, :cond_0

    rsub-int/lit8 v3, v2, 0x37

    sub-int v2, v1, v2

    add-int/lit8 v2, v2, 0x40

    goto :goto_0

    :cond_0
    if-ne v2, v4, :cond_1

    add-int/lit8 v2, v1, 0x8

    add-int/lit8 v2, v2, 0x40

    goto :goto_0

    :cond_1
    sub-int/2addr v3, v2

    add-int/2addr v3, v4

    add-int/lit8 v5, v1, 0x40

    sub-int/2addr v5, v2

    add-int/lit8 v2, v5, 0x40

    .line 72
    :goto_0
    new-array v2, v2, [B

    const/4 v5, 0x0

    .line 74
    invoke-static {v0, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v1, 0x1

    const/16 v6, -0x80

    .line 78
    aput-byte v6, v2, v1

    move v6, v0

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v3, :cond_2

    int-to-long v0, v1

    const-wide/16 v7, 0x8

    mul-long v0, v0, v7

    const-wide/16 v7, 0xff

    and-long v9, v0, v7

    long-to-int v3, v9

    int-to-byte v3, v3

    const/16 v5, 0x8

    shr-long v9, v0, v5

    and-long v11, v9, v7

    long-to-int v5, v11

    int-to-byte v5, v5

    const/16 v9, 0x10

    shr-long v9, v0, v9

    and-long v11, v9, v7

    long-to-int v9, v11

    int-to-byte v9, v9

    const/16 v10, 0x18

    shr-long v10, v0, v10

    and-long v12, v10, v7

    long-to-int v10, v12

    int-to-byte v10, v10

    const/16 v11, 0x20

    shr-long v11, v0, v11

    and-long v13, v11, v7

    long-to-int v11, v13

    int-to-byte v11, v11

    const/16 v12, 0x28

    shr-long v12, v0, v12

    and-long v14, v12, v7

    long-to-int v12, v14

    int-to-byte v12, v12

    const/16 v13, 0x30

    shr-long v13, v0, v13

    move/from16 v16, v5

    and-long v4, v13, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    const/16 v7, 0x38

    shr-long/2addr v0, v7

    long-to-int v0, v0

    int-to-byte v0, v0

    add-int/lit8 v1, v6, 0x1

    .line 93
    aput-byte v0, v2, v6

    add-int/lit8 v0, v1, 0x1

    .line 94
    aput-byte v4, v2, v1

    add-int/lit8 v1, v0, 0x1

    .line 95
    aput-byte v12, v2, v0

    add-int/lit8 v0, v1, 0x1

    .line 96
    aput-byte v11, v2, v1

    add-int/lit8 v1, v0, 0x1

    .line 97
    aput-byte v10, v2, v0

    add-int/lit8 v0, v1, 0x1

    .line 98
    aput-byte v9, v2, v1

    add-int/lit8 v1, v0, 0x1

    .line 99
    aput-byte v16, v2, v0

    .line 100
    aput-byte v3, v2, v1

    return-object v2

    :cond_2
    const/16 v7, 0x38

    add-int/lit8 v4, v6, 0x1

    .line 81
    aput-byte v5, v2, v6

    add-int/lit8 v0, v0, 0x1

    move v6, v4

    const/16 v4, 0x38

    goto :goto_1
.end method

.method private static byteArrayToHexString([B)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    const/4 v1, 0x0

    .line 231
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    return-object v0

    .line 232
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v0, p0, v1

    invoke-static {v0}, Lcom/east2west/game/util/SHA;->byteToHexString(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private byteArrayToInt([BI)I
    .locals 2

    .line 188
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    .line 189
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    return p1
.end method

.method private static byteToHexString(B)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x10

    .line 214
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    const/4 v1, 0x2

    .line 216
    new-array v1, v1, [C

    ushr-int/lit8 v2, p0, 0x4

    and-int/lit8 v2, v2, 0xf

    .line 217
    aget-char v2, v0, v2

    const/4 v3, 0x0

    aput-char v2, v1, v3

    and-int/lit8 p0, p0, 0xf

    .line 218
    aget-char p0, v0, p0

    const/4 v0, 0x1

    aput-char p0, v1, v0

    .line 219
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0

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

.method private encrypt()V
    .locals 14

    const/16 v0, 0x10

    :goto_0
    const/16 v1, 0x4f

    const/4 v2, 0x1

    if-le v0, v1, :cond_7

    const/4 v3, 0x5

    .line 128
    new-array v4, v3, [I

    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 129
    :goto_1
    array-length v6, v4

    if-lt v0, v6, :cond_6

    const/4 v0, 0x0

    :goto_2
    const/16 v6, 0x13

    const/16 v7, 0x1e

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x3

    if-le v0, v6, :cond_5

    const/16 v0, 0x14

    :goto_3
    const/16 v6, 0x27

    if-le v0, v6, :cond_4

    const/16 v0, 0x28

    :goto_4
    const/16 v6, 0x3b

    if-le v0, v6, :cond_3

    const/16 v0, 0x3c

    :goto_5
    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    .line 172
    :goto_6
    array-length v1, v4

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 175
    :goto_7
    iget-object v1, p0, Lcom/east2west/game/util/SHA;->tmpData:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-void

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/east2west/game/util/SHA;->tmpData:[I

    aput v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/east2west/game/util/SHA;->digestInt:[I

    iget-object v2, p0, Lcom/east2west/game/util/SHA;->digestInt:[I

    aget v2, v2, v0

    aget v3, v4, v0

    add-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 163
    :cond_2
    aget v6, v4, v5

    invoke-direct {p0, v6, v3}, Lcom/east2west/game/util/SHA;->f4(II)I

    move-result v6

    .line 164
    aget v11, v4, v2

    aget v12, v4, v9

    aget v13, v4, v10

    invoke-direct {p0, v11, v12, v13}, Lcom/east2west/game/util/SHA;->f2(III)I

    move-result v11

    add-int/2addr v6, v11

    aget v11, v4, v8

    add-int/2addr v6, v11

    .line 165
    iget-object v11, p0, Lcom/east2west/game/util/SHA;->tmpData:[I

    aget v11, v11, v0

    add-int/2addr v6, v11

    const v11, -0x359d3e2a    # -3715189.5f

    add-int/2addr v6, v11

    .line 166
    aget v11, v4, v10

    aput v11, v4, v8

    .line 167
    aget v11, v4, v9

    aput v11, v4, v10

    .line 168
    aget v11, v4, v2

    invoke-direct {p0, v11, v7}, Lcom/east2west/game/util/SHA;->f4(II)I

    move-result v11

    aput v11, v4, v9

    .line 169
    aget v11, v4, v5

    aput v11, v4, v2

    aput v6, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 153
    :cond_3
    aget v6, v4, v5

    invoke-direct {p0, v6, v3}, Lcom/east2west/game/util/SHA;->f4(II)I

    move-result v6

    .line 154
    aget v11, v4, v2

    aget v12, v4, v9

    aget v13, v4, v10

    invoke-direct {p0, v11, v12, v13}, Lcom/east2west/game/util/SHA;->f3(III)I

    move-result v11

    add-int/2addr v6, v11

    aget v11, v4, v8

    add-int/2addr v6, v11

    .line 155
    iget-object v11, p0, Lcom/east2west/game/util/SHA;->tmpData:[I

    aget v11, v11, v0

    add-int/2addr v6, v11

    const v11, -0x70e44324

    add-int/2addr v6, v11

    .line 156
    aget v11, v4, v10

    aput v11, v4, v8

    .line 157
    aget v11, v4, v9

    aput v11, v4, v10

    .line 158
    aget v11, v4, v2

    invoke-direct {p0, v11, v7}, Lcom/east2west/game/util/SHA;->f4(II)I

    move-result v11

    aput v11, v4, v9

    .line 159
    aget v11, v4, v5

    aput v11, v4, v2

    aput v6, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 143
    :cond_4
    aget v6, v4, v5

    invoke-direct {p0, v6, v3}, Lcom/east2west/game/util/SHA;->f4(II)I

    move-result v6

    .line 144
    aget v11, v4, v2

    aget v12, v4, v9

    aget v13, v4, v10

    invoke-direct {p0, v11, v12, v13}, Lcom/east2west/game/util/SHA;->f2(III)I

    move-result v11

    add-int/2addr v6, v11

    aget v11, v4, v8

    add-int/2addr v6, v11

    .line 145
    iget-object v11, p0, Lcom/east2west/game/util/SHA;->tmpData:[I

    aget v11, v11, v0

    add-int/2addr v6, v11

    const v11, 0x6ed9eba1

    add-int/2addr v6, v11

    .line 146
    aget v11, v4, v10

    aput v11, v4, v8

    .line 147
    aget v11, v4, v9

    aput v11, v4, v10

    .line 148
    aget v11, v4, v2

    invoke-direct {p0, v11, v7}, Lcom/east2west/game/util/SHA;->f4(II)I

    move-result v11

    aput v11, v4, v9

    .line 149
    aget v11, v4, v5

    aput v11, v4, v2

    aput v6, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 133
    :cond_5
    aget v6, v4, v5

    invoke-direct {p0, v6, v3}, Lcom/east2west/game/util/SHA;->f4(II)I

    move-result v6

    .line 134
    aget v11, v4, v2

    aget v12, v4, v9

    aget v13, v4, v10

    invoke-direct {p0, v11, v12, v13}, Lcom/east2west/game/util/SHA;->f1(III)I

    move-result v11

    add-int/2addr v6, v11

    aget v11, v4, v8

    add-int/2addr v6, v11

    .line 135
    iget-object v11, p0, Lcom/east2west/game/util/SHA;->tmpData:[I

    aget v11, v11, v0

    add-int/2addr v6, v11

    const v11, 0x5a827999

    add-int/2addr v6, v11

    .line 136
    aget v11, v4, v10

    aput v11, v4, v8

    .line 137
    aget v8, v4, v9

    aput v8, v4, v10

    .line 138
    aget v8, v4, v2

    invoke-direct {p0, v8, v7}, Lcom/east2west/game/util/SHA;->f4(II)I

    move-result v7

    aput v7, v4, v9

    .line 139
    aget v7, v4, v5

    aput v7, v4, v2

    aput v6, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 130
    :cond_6
    iget-object v6, p0, Lcom/east2west/game/util/SHA;->digestInt:[I

    aget v6, v6, v0

    aput v6, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 125
    :cond_7
    iget-object v1, p0, Lcom/east2west/game/util/SHA;->tmpData:[I

    iget-object v3, p0, Lcom/east2west/game/util/SHA;->tmpData:[I

    add-int/lit8 v4, v0, -0x3

    aget v3, v3, v4

    iget-object v4, p0, Lcom/east2west/game/util/SHA;->tmpData:[I

    add-int/lit8 v5, v0, -0x8

    aget v4, v4, v5

    xor-int/2addr v3, v4

    iget-object v4, p0, Lcom/east2west/game/util/SHA;->tmpData:[I

    add-int/lit8 v5, v0, -0xe

    aget v4, v4, v5

    xor-int/2addr v3, v4

    .line 126
    iget-object v4, p0, Lcom/east2west/game/util/SHA;->tmpData:[I

    add-int/lit8 v5, v0, -0x10

    aget v4, v4, v5

    xor-int/2addr v3, v4

    .line 125
    invoke-direct {p0, v3, v2}, Lcom/east2west/game/util/SHA;->f4(II)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method private f1(III)I
    .locals 0

    and-int/2addr p2, p1

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, p3

    or-int/2addr p1, p2

    return p1
.end method

.method private f2(III)I
    .locals 0

    xor-int/2addr p1, p2

    xor-int/2addr p1, p3

    return p1
.end method

.method private f3(III)I
    .locals 1

    and-int v0, p1, p2

    and-int/2addr p1, p3

    or-int/2addr p1, v0

    and-int/2addr p2, p3

    or-int/2addr p1, p2

    return p1
.end method

.method private f4(II)I
    .locals 1

    shl-int v0, p1, p2

    rsub-int/lit8 p2, p2, 0x20

    ushr-int/2addr p1, p2

    or-int/2addr p1, v0

    return p1
.end method

.method private intToByteArray(I[BI)V
    .locals 2

    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    .line 201
    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    .line 202
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    .line 203
    aput-byte v1, p2, v0

    add-int/lit8 p3, p3, 0x3

    int-to-byte p1, p1

    .line 204
    aput-byte p1, p2, p3

    return-void
.end method

.method private process_input_bytes([B)I
    .locals 7

    .line 28
    iget-object v0, p0, Lcom/east2west/game/util/SHA;->abcde:[I

    iget-object v1, p0, Lcom/east2west/game/util/SHA;->digestInt:[I

    iget-object v2, p0, Lcom/east2west/game/util/SHA;->abcde:[I

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    invoke-direct {p0, p1}, Lcom/east2west/game/util/SHA;->byteArrayFormatData([B)[B

    move-result-object p1

    .line 32
    array-length v0, p1

    div-int/lit8 v0, v0, 0x40

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    const/16 p1, 0x14

    return p1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const/16 v4, 0x10

    if-lt v2, v4, :cond_1

    .line 40
    invoke-direct {p0}, Lcom/east2west/game/util/SHA;->encrypt()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    :cond_1
    iget-object v4, p0, Lcom/east2west/game/util/SHA;->tmpData:[I

    mul-int/lit8 v5, v1, 0x40

    mul-int/lit8 v6, v2, 0x4

    add-int/2addr v5, v6

    invoke-direct {p0, p1, v5}, Lcom/east2west/game/util/SHA;->byteArrayToInt([BI)I

    move-result v5

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public Digest(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 267
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/east2west/game/util/SHA;->getDigestOfString([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public Digest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 276
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/east2west/game/util/SHA;->getDigestOfString([B)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    .line 278
    :catch_0
    invoke-virtual {p0, p1}, Lcom/east2west/game/util/SHA;->Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDigestOfBytes([B)[B
    .locals 3

    .line 244
    invoke-direct {p0, p1}, Lcom/east2west/game/util/SHA;->process_input_bytes([B)I

    const/16 p1, 0x14

    .line 245
    new-array p1, p1, [B

    const/4 v0, 0x0

    .line 246
    :goto_0
    iget-object v1, p0, Lcom/east2west/game/util/SHA;->digestInt:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-object p1

    .line 247
    :cond_0
    iget-object v1, p0, Lcom/east2west/game/util/SHA;->digestInt:[I

    aget v1, v1, v0

    mul-int/lit8 v2, v0, 0x4

    invoke-direct {p0, v1, p1, v2}, Lcom/east2west/game/util/SHA;->intToByteArray(I[BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getDigestOfString([B)Ljava/lang/String;
    .locals 0

    .line 259
    invoke-virtual {p0, p1}, Lcom/east2west/game/util/SHA;->getDigestOfBytes([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/east2west/game/util/SHA;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
