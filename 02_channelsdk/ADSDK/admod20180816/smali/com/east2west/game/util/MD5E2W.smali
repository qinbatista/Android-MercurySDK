.class public Lcom/east2west/game/util/MD5E2W;
.super Ljava/lang/Object;
.source "MD5E2W.java"


# static fields
.field static final PADDING:[B

.field static final S11:I = 0x7

.field static final S12:I = 0xc

.field static final S13:I = 0x11

.field static final S14:I = 0x16

.field static final S21:I = 0x5

.field static final S22:I = 0x9

.field static final S23:I = 0xe

.field static final S24:I = 0x14

.field static final S31:I = 0x4

.field static final S32:I = 0xb

.field static final S33:I = 0x10

.field static final S34:I = 0x17

.field static final S41:I = 0x6

.field static final S42:I = 0xa

.field static final S43:I = 0xf

.field static final S44:I = 0x15


# instance fields
.field private buffer:[B

.field private count:[J

.field private digest:[B

.field public digestHexStr:Ljava/lang/String;

.field private state:[J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x40

    .line 26
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    sput-object v0, Lcom/east2west/game/util/MD5E2W;->PADDING:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 31
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/east2west/game/util/MD5E2W;->state:[J

    const/4 v0, 0x2

    .line 32
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/east2west/game/util/MD5E2W;->count:[J

    const/16 v0, 0x40

    .line 33
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/east2west/game/util/MD5E2W;->buffer:[B

    const/16 v0, 0x10

    .line 37
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/east2west/game/util/MD5E2W;->digest:[B

    .line 66
    invoke-direct {p0}, Lcom/east2west/game/util/MD5E2W;->md5Init()V

    return-void
.end method

.method private Decode([J[BI)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-lt v0, p3, :cond_0

    return-void

    .line 296
    :cond_0
    aget-byte v2, p2, v0

    invoke-static {v2}, Lcom/east2west/game/util/MD5E2W;->b2iu(B)J

    move-result-wide v2

    add-int/lit8 v4, v0, 0x1

    .line 297
    aget-byte v4, p2, v4

    invoke-static {v4}, Lcom/east2west/game/util/MD5E2W;->b2iu(B)J

    move-result-wide v4

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long v6, v2, v4

    add-int/lit8 v2, v0, 0x2

    .line 298
    aget-byte v2, p2, v2

    invoke-static {v2}, Lcom/east2west/game/util/MD5E2W;->b2iu(B)J

    move-result-wide v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long v4, v6, v2

    add-int/lit8 v2, v0, 0x3

    .line 299
    aget-byte v2, p2, v2

    invoke-static {v2}, Lcom/east2west/game/util/MD5E2W;->b2iu(B)J

    move-result-wide v2

    const/16 v6, 0x18

    shl-long/2addr v2, v6

    or-long v6, v4, v2

    .line 296
    aput-wide v6, p1, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method private Encode([B[JI)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-lt v0, p3, :cond_0

    return-void

    .line 284
    :cond_0
    aget-wide v2, p2, v1

    const-wide/16 v4, 0xff

    and-long v6, v2, v4

    long-to-int v2, v6

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v2, v0, 0x1

    .line 285
    aget-wide v6, p2, v1

    const/16 v3, 0x8

    ushr-long/2addr v6, v3

    and-long v8, v6, v4

    long-to-int v3, v8

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    add-int/lit8 v2, v0, 0x2

    .line 286
    aget-wide v6, p2, v1

    const/16 v3, 0x10

    ushr-long/2addr v6, v3

    and-long v8, v6, v4

    long-to-int v3, v8

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    add-int/lit8 v2, v0, 0x3

    .line 287
    aget-wide v6, p2, v1

    const/16 v3, 0x18

    ushr-long/2addr v6, v3

    and-long v8, v6, v4

    long-to-int v3, v8

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method private F(JJJ)J
    .locals 4

    and-long v0, p1, p3

    const-wide/16 p3, -0x1

    xor-long v2, p1, p3

    and-long p1, v2, p5

    or-long p3, v0, p1

    return-wide p3
.end method

.method private FF(JJJJJJJ)J
    .locals 9

    move-wide/from16 v0, p11

    move-object v2, p0

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    .line 106
    invoke-direct/range {v2 .. v8}, Lcom/east2west/game/util/MD5E2W;->F(JJJ)J

    move-result-wide v2

    add-long v6, v2, p9

    add-long v4, v6, p13

    add-long v6, p1, v4

    long-to-int v2, v6

    long-to-int v3, v0

    shl-int v3, v2, v3

    const-wide/16 v4, 0x20

    sub-long v6, v4, v0

    long-to-int v0, v6

    ushr-int v0, v2, v0

    or-int/2addr v0, v3

    int-to-long v0, v0

    add-long v4, v0, p3

    return-wide v4
.end method

.method private G(JJJ)J
    .locals 4

    and-long v0, p1, p5

    const-wide/16 p1, -0x1

    xor-long v2, p5, p1

    and-long p1, p3, v2

    or-long p3, v0, p1

    return-wide p3
.end method

.method private GG(JJJJJJJ)J
    .locals 9

    move-wide/from16 v0, p11

    move-object v2, p0

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    .line 114
    invoke-direct/range {v2 .. v8}, Lcom/east2west/game/util/MD5E2W;->G(JJJ)J

    move-result-wide v2

    add-long v6, v2, p9

    add-long v4, v6, p13

    add-long v6, p1, v4

    long-to-int v2, v6

    long-to-int v3, v0

    shl-int v3, v2, v3

    const-wide/16 v4, 0x20

    sub-long v6, v4, v0

    long-to-int v0, v6

    ushr-int v0, v2, v0

    or-int/2addr v0, v3

    int-to-long v0, v0

    add-long v4, v0, p3

    return-wide v4
.end method

.method private H(JJJ)J
    .locals 2

    xor-long v0, p1, p3

    xor-long p1, v0, p5

    return-wide p1
.end method

.method private HH(JJJJJJJ)J
    .locals 9

    move-wide/from16 v0, p11

    move-object v2, p0

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    .line 121
    invoke-direct/range {v2 .. v8}, Lcom/east2west/game/util/MD5E2W;->H(JJJ)J

    move-result-wide v2

    add-long v6, v2, p9

    add-long v4, v6, p13

    add-long v6, p1, v4

    long-to-int v2, v6

    long-to-int v3, v0

    shl-int v3, v2, v3

    const-wide/16 v4, 0x20

    sub-long v6, v4, v0

    long-to-int v0, v6

    ushr-int v0, v2, v0

    or-int/2addr v0, v3

    int-to-long v0, v0

    add-long v4, v0, p3

    return-wide v4
.end method

.method private I(JJJ)J
    .locals 4

    const-wide/16 v0, -0x1

    xor-long v2, p5, v0

    or-long p5, p1, v2

    xor-long p1, p3, p5

    return-wide p1
.end method

.method private II(JJJJJJJ)J
    .locals 9

    move-wide/from16 v0, p11

    move-object v2, p0

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    .line 128
    invoke-direct/range {v2 .. v8}, Lcom/east2west/game/util/MD5E2W;->I(JJJ)J

    move-result-wide v2

    add-long v6, v2, p9

    add-long v4, v6, p13

    add-long v6, p1, v4

    long-to-int v2, v6

    long-to-int v3, v0

    shl-int v3, v2, v3

    const-wide/16 v4, 0x20

    sub-long v6, v4, v0

    long-to-int v0, v6

    ushr-int v0, v2, v0

    or-int/2addr v0, v3

    int-to-long v0, v0

    add-long v4, v0, p3

    return-wide v4
.end method

.method public static b2iu(B)J
    .locals 2

    if-gez p0, :cond_0

    and-int/lit16 p0, p0, 0xff

    :cond_0
    int-to-long v0, p0

    return-wide v0
.end method

.method public static byteHEX(B)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x10

    .line 309
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    const/4 v1, 0x2

    .line 311
    new-array v1, v1, [C

    ushr-int/lit8 v2, p0, 0x4

    and-int/lit8 v2, v2, 0xf

    .line 312
    aget-char v2, v0, v2

    const/4 v3, 0x0

    aput-char v2, v1, v3

    and-int/lit8 p0, p0, 0xf

    .line 313
    aget-char p0, v0, p0

    const/4 v0, 0x1

    aput-char p0, v1, v0

    .line 314
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

.method public static main([Ljava/lang/String;)V
    .locals 5

    const-string p0, "admin888"

    .line 322
    new-instance v0, Lcom/east2west/game/util/MD5E2W;

    invoke-direct {v0}, Lcom/east2west/game/util/MD5E2W;-><init>()V

    .line 324
    invoke-virtual {v0, p0}, Lcom/east2west/game/util/MD5E2W;->getMD5ofStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 325
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MD5("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 326
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MD5("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/east2west/game/util/MD5E2W;->getMD5ofStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private md5Final()V
    .locals 5

    const/16 v0, 0x8

    .line 167
    new-array v1, v0, [B

    .line 171
    iget-object v2, p0, Lcom/east2west/game/util/MD5E2W;->count:[J

    invoke-direct {p0, v1, v2, v0}, Lcom/east2west/game/util/MD5E2W;->Encode([B[JI)V

    .line 174
    iget-object v2, p0, Lcom/east2west/game/util/MD5E2W;->count:[J

    const/4 v3, 0x0

    aget-wide v3, v2, v3

    const/4 v2, 0x3

    ushr-long v2, v3, v2

    long-to-int v2, v2

    and-int/lit8 v2, v2, 0x3f

    const/16 v3, 0x38

    if-ge v2, v3, :cond_0

    sub-int/2addr v3, v2

    goto :goto_0

    :cond_0
    rsub-int/lit8 v3, v2, 0x78

    .line 176
    :goto_0
    sget-object v2, Lcom/east2west/game/util/MD5E2W;->PADDING:[B

    invoke-direct {p0, v2, v3}, Lcom/east2west/game/util/MD5E2W;->md5Update([BI)V

    .line 179
    invoke-direct {p0, v1, v0}, Lcom/east2west/game/util/MD5E2W;->md5Update([BI)V

    .line 182
    iget-object v0, p0, Lcom/east2west/game/util/MD5E2W;->digest:[B

    iget-object v1, p0, Lcom/east2west/game/util/MD5E2W;->state:[J

    const/16 v2, 0x10

    invoke-direct {p0, v0, v1, v2}, Lcom/east2west/game/util/MD5E2W;->Encode([B[JI)V

    return-void
.end method

.method private md5Init()V
    .locals 5

    .line 75
    iget-object v0, p0, Lcom/east2west/game/util/MD5E2W;->count:[J

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    .line 76
    iget-object v0, p0, Lcom/east2west/game/util/MD5E2W;->count:[J

    const/4 v4, 0x1

    aput-wide v1, v0, v4

    .line 79
    iget-object v0, p0, Lcom/east2west/game/util/MD5E2W;->state:[J

    const-wide/32 v1, 0x67452301

    aput-wide v1, v0, v3

    .line 80
    iget-object v0, p0, Lcom/east2west/game/util/MD5E2W;->state:[J

    const-wide v1, 0xefcdab89L

    aput-wide v1, v0, v4

    .line 81
    iget-object v0, p0, Lcom/east2west/game/util/MD5E2W;->state:[J

    const/4 v1, 0x2

    const-wide v2, 0x98badcfeL

    aput-wide v2, v0, v1

    .line 82
    iget-object v0, p0, Lcom/east2west/game/util/MD5E2W;->state:[J

    const/4 v1, 0x3

    const-wide/32 v2, 0x10325476

    aput-wide v2, v0, v1

    return-void
.end method

.method private md5Memcpy([B[BIII)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p5, :cond_0

    return-void

    :cond_0
    add-int v1, p3, v0

    add-int v2, p4, v0

    .line 192
    aget-byte v2, p2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private md5Transform([B)V
    .locals 40

    move-object/from16 v15, p0

    .line 196
    iget-object v0, v15, Lcom/east2west/game/util/MD5E2W;->state:[J

    const/16 v16, 0x0

    aget-wide v1, v0, v16

    iget-object v0, v15, Lcom/east2west/game/util/MD5E2W;->state:[J

    const/16 v17, 0x1

    aget-wide v18, v0, v17

    iget-object v0, v15, Lcom/east2west/game/util/MD5E2W;->state:[J

    const/16 v20, 0x2

    aget-wide v21, v0, v20

    iget-object v0, v15, Lcom/east2west/game/util/MD5E2W;->state:[J

    const/16 v23, 0x3

    aget-wide v24, v0, v23

    const/16 v0, 0x10

    .line 197
    new-array v13, v0, [J

    const/16 v0, 0x40

    move-object/from16 v3, p1

    .line 199
    invoke-direct {v15, v13, v3, v0}, Lcom/east2west/game/util/MD5E2W;->Decode([J[BI)V

    .line 202
    aget-wide v9, v13, v16

    const-wide/16 v11, 0x7

    const-wide v26, 0xd76aa478L

    move-object v0, v15

    move-wide/from16 v3, v18

    move-wide/from16 v5, v21

    move-wide/from16 v7, v24

    move-object/from16 v28, v13

    move-wide/from16 v13, v26

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->FF(JJJJJJJ)J

    move-result-wide v26

    .line 203
    aget-wide v9, v28, v17

    const-wide/16 v11, 0xc

    const-wide v13, 0xe8c7b756L

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    move-wide/from16 v5, v18

    move-wide/from16 v7, v21

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->FF(JJJJJJJ)J

    move-result-wide v24

    .line 204
    aget-wide v9, v28, v20

    const-wide/16 v11, 0x11

    const-wide/32 v13, 0x242070db

    move-wide/from16 v1, v21

    move-wide/from16 v3, v24

    move-wide/from16 v5, v26

    move-wide/from16 v7, v18

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->FF(JJJJJJJ)J

    move-result-wide v21

    .line 205
    aget-wide v9, v28, v23

    const-wide/16 v11, 0x16

    const-wide v13, 0xc1bdceeeL

    move-wide/from16 v1, v18

    move-wide/from16 v3, v21

    move-wide/from16 v5, v24

    move-wide/from16 v7, v26

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->FF(JJJJJJJ)J

    move-result-wide v18

    const/16 v29, 0x4

    .line 206
    aget-wide v9, v28, v29

    const-wide/16 v11, 0x7

    const-wide v13, 0xf57c0fafL

    move-wide/from16 v1, v26

    move-wide/from16 v3, v18

    move-wide/from16 v5, v21

    move-wide/from16 v7, v24

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->FF(JJJJJJJ)J

    move-result-wide v26

    const/16 v30, 0x5

    .line 207
    aget-wide v9, v28, v30

    const-wide/16 v11, 0xc

    const-wide/32 v13, 0x4787c62a

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    move-wide/from16 v5, v18

    move-wide/from16 v7, v21

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->FF(JJJJJJJ)J

    move-result-wide v24

    const/16 v31, 0x6

    .line 208
    aget-wide v9, v28, v31

    const-wide/16 v11, 0x11

    const-wide v13, 0xa8304613L

    move-wide/from16 v1, v21

    move-wide/from16 v3, v24

    move-wide/from16 v5, v26

    move-wide/from16 v7, v18

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->FF(JJJJJJJ)J

    move-result-wide v21

    const/16 v32, 0x7

    .line 209
    aget-wide v9, v28, v32

    const-wide/16 v11, 0x16

    const-wide v13, 0xfd469501L

    move-wide/from16 v1, v18

    move-wide/from16 v3, v21

    move-wide/from16 v5, v24

    move-wide/from16 v7, v26

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->FF(JJJJJJJ)J

    move-result-wide v18

    const/16 v33, 0x8

    .line 210
    aget-wide v9, v28, v33

    const-wide/16 v11, 0x7

    const-wide/32 v13, 0x698098d8

    move-wide/from16 v1, v26

    move-wide/from16 v3, v18

    move-wide/from16 v5, v21

    move-wide/from16 v7, v24

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->FF(JJJJJJJ)J

    move-result-wide v26

    const/16 v34, 0x9

    .line 211
    aget-wide v9, v28, v34

    const-wide/16 v11, 0xc

    const-wide v13, 0x8b44f7afL

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    move-wide/from16 v5, v18

    move-wide/from16 v7, v21

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->FF(JJJJJJJ)J

    move-result-wide v24

    const/16 v35, 0xa

    .line 212
    aget-wide v9, v28, v35

    const-wide/16 v11, 0x11

    const-wide v13, 0xffff5bb1L

    move-wide/from16 v1, v21

    move-wide/from16 v3, v24

    move-wide/from16 v5, v26

    move-wide/from16 v7, v18

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->FF(JJJJJJJ)J

    move-result-wide v21

    const/16 v36, 0xb

    .line 213
    aget-wide v9, v28, v36

    const-wide/16 v11, 0x16

    const-wide v13, 0x895cd7beL

    move-wide/from16 v1, v18

    move-wide/from16 v3, v21

    move-wide/from16 v5, v24

    move-wide/from16 v7, v26

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->FF(JJJJJJJ)J

    move-result-wide v18

    const/16 v37, 0xc

    .line 214
    aget-wide v9, v28, v37

    const-wide/16 v11, 0x7

    const-wide/32 v13, 0x6b901122

    move-wide/from16 v1, v26

    move-wide/from16 v3, v18

    move-wide/from16 v5, v21

    move-wide/from16 v7, v24

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->FF(JJJJJJJ)J

    move-result-wide v26

    const/16 v38, 0xd

    .line 215
    aget-wide v9, v28, v38

    const-wide/16 v11, 0xc

    const-wide v13, 0xfd987193L

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    move-wide/from16 v5, v18

    move-wide/from16 v7, v21

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->FF(JJJJJJJ)J

    move-result-wide v24

    const/16 v39, 0xe

    .line 216
    aget-wide v9, v28, v39

    const-wide/16 v11, 0x11

    const-wide v13, 0xa679438eL

    move-wide/from16 v1, v21

    move-wide/from16 v3, v24

    move-wide/from16 v5, v26

    move-wide/from16 v7, v18

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->FF(JJJJJJJ)J

    move-result-wide v21

    const/16 v0, 0xf

    .line 217
    aget-wide v9, v28, v0

    const-wide/16 v11, 0x16

    const-wide/32 v13, 0x49b40821

    move-object v0, v15

    move-wide/from16 v1, v18

    move-wide/from16 v3, v21

    move-wide/from16 v5, v24

    move-wide/from16 v7, v26

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->FF(JJJJJJJ)J

    move-result-wide v18

    .line 220
    aget-wide v9, v28, v17

    const-wide/16 v11, 0x5

    const-wide v13, 0xf61e2562L

    move-wide/from16 v1, v26

    move-wide/from16 v3, v18

    move-wide/from16 v5, v21

    move-wide/from16 v7, v24

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->GG(JJJJJJJ)J

    move-result-wide v26

    .line 221
    aget-wide v9, v28, v31

    const-wide/16 v11, 0x9

    const-wide v13, 0xc040b340L

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    move-wide/from16 v5, v18

    move-wide/from16 v7, v21

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->GG(JJJJJJJ)J

    move-result-wide v24

    .line 222
    aget-wide v9, v28, v36

    const-wide/16 v11, 0xe

    const-wide/32 v13, 0x265e5a51

    move-wide/from16 v1, v21

    move-wide/from16 v3, v24

    move-wide/from16 v5, v26

    move-wide/from16 v7, v18

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->GG(JJJJJJJ)J

    move-result-wide v21

    .line 223
    aget-wide v9, v28, v16

    const-wide/16 v11, 0x14

    const-wide v13, 0xe9b6c7aaL

    move-wide/from16 v1, v18

    move-wide/from16 v3, v21

    move-wide/from16 v5, v24

    move-wide/from16 v7, v26

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->GG(JJJJJJJ)J

    move-result-wide v18

    .line 224
    aget-wide v9, v28, v30

    const-wide/16 v11, 0x5

    const-wide v13, 0xd62f105dL

    move-wide/from16 v1, v26

    move-wide/from16 v3, v18

    move-wide/from16 v5, v21

    move-wide/from16 v7, v24

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->GG(JJJJJJJ)J

    move-result-wide v26

    .line 225
    aget-wide v9, v28, v35

    const-wide/16 v11, 0x9

    const-wide/32 v13, 0x2441453

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    move-wide/from16 v5, v18

    move-wide/from16 v7, v21

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->GG(JJJJJJJ)J

    move-result-wide v24

    const/16 v0, 0xf

    .line 226
    aget-wide v9, v28, v0

    const-wide/16 v11, 0xe

    const-wide v13, 0xd8a1e681L

    move-object v0, v15

    move-wide/from16 v1, v21

    move-wide/from16 v3, v24

    move-wide/from16 v5, v26

    move-wide/from16 v7, v18

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->GG(JJJJJJJ)J

    move-result-wide v21

    .line 227
    aget-wide v9, v28, v29

    const-wide/16 v11, 0x14

    const-wide v13, 0xe7d3fbc8L

    move-wide/from16 v1, v18

    move-wide/from16 v3, v21

    move-wide/from16 v5, v24

    move-wide/from16 v7, v26

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->GG(JJJJJJJ)J

    move-result-wide v18

    .line 228
    aget-wide v9, v28, v34

    const-wide/16 v11, 0x5

    const-wide/32 v13, 0x21e1cde6

    move-wide/from16 v1, v26

    move-wide/from16 v3, v18

    move-wide/from16 v5, v21

    move-wide/from16 v7, v24

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->GG(JJJJJJJ)J

    move-result-wide v26

    .line 229
    aget-wide v9, v28, v39

    const-wide/16 v11, 0x9

    const-wide v13, 0xc33707d6L

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    move-wide/from16 v5, v18

    move-wide/from16 v7, v21

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->GG(JJJJJJJ)J

    move-result-wide v24

    .line 230
    aget-wide v9, v28, v23

    const-wide/16 v11, 0xe

    const-wide v13, 0xf4d50d87L

    move-wide/from16 v1, v21

    move-wide/from16 v3, v24

    move-wide/from16 v5, v26

    move-wide/from16 v7, v18

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->GG(JJJJJJJ)J

    move-result-wide v21

    .line 231
    aget-wide v9, v28, v33

    const-wide/16 v11, 0x14

    const-wide/32 v13, 0x455a14ed

    move-wide/from16 v1, v18

    move-wide/from16 v3, v21

    move-wide/from16 v5, v24

    move-wide/from16 v7, v26

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->GG(JJJJJJJ)J

    move-result-wide v18

    .line 232
    aget-wide v9, v28, v38

    const-wide/16 v11, 0x5

    const-wide v13, 0xa9e3e905L

    move-wide/from16 v1, v26

    move-wide/from16 v3, v18

    move-wide/from16 v5, v21

    move-wide/from16 v7, v24

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->GG(JJJJJJJ)J

    move-result-wide v26

    .line 233
    aget-wide v9, v28, v20

    const-wide/16 v11, 0x9

    const-wide v13, 0xfcefa3f8L

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    move-wide/from16 v5, v18

    move-wide/from16 v7, v21

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->GG(JJJJJJJ)J

    move-result-wide v24

    .line 234
    aget-wide v9, v28, v32

    const-wide/16 v11, 0xe

    const-wide/32 v13, 0x676f02d9

    move-wide/from16 v1, v21

    move-wide/from16 v3, v24

    move-wide/from16 v5, v26

    move-wide/from16 v7, v18

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->GG(JJJJJJJ)J

    move-result-wide v21

    .line 235
    aget-wide v9, v28, v37

    const-wide/16 v11, 0x14

    const-wide v13, 0x8d2a4c8aL

    move-wide/from16 v1, v18

    move-wide/from16 v3, v21

    move-wide/from16 v5, v24

    move-wide/from16 v7, v26

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->GG(JJJJJJJ)J

    move-result-wide v18

    .line 238
    aget-wide v9, v28, v30

    const-wide/16 v11, 0x4

    const-wide v13, 0xfffa3942L

    move-wide/from16 v1, v26

    move-wide/from16 v3, v18

    move-wide/from16 v5, v21

    move-wide/from16 v7, v24

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->HH(JJJJJJJ)J

    move-result-wide v26

    .line 239
    aget-wide v9, v28, v33

    const-wide/16 v11, 0xb

    const-wide v13, 0x8771f681L

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    move-wide/from16 v5, v18

    move-wide/from16 v7, v21

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->HH(JJJJJJJ)J

    move-result-wide v24

    .line 240
    aget-wide v9, v28, v36

    const-wide/16 v11, 0x10

    const-wide/32 v13, 0x6d9d6122

    move-wide/from16 v1, v21

    move-wide/from16 v3, v24

    move-wide/from16 v5, v26

    move-wide/from16 v7, v18

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->HH(JJJJJJJ)J

    move-result-wide v21

    .line 241
    aget-wide v9, v28, v39

    const-wide/16 v11, 0x17

    const-wide v13, 0xfde5380cL

    move-wide/from16 v1, v18

    move-wide/from16 v3, v21

    move-wide/from16 v5, v24

    move-wide/from16 v7, v26

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->HH(JJJJJJJ)J

    move-result-wide v18

    .line 242
    aget-wide v9, v28, v17

    const-wide/16 v11, 0x4

    const-wide v13, 0xa4beea44L

    move-wide/from16 v1, v26

    move-wide/from16 v3, v18

    move-wide/from16 v5, v21

    move-wide/from16 v7, v24

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->HH(JJJJJJJ)J

    move-result-wide v26

    .line 243
    aget-wide v9, v28, v29

    const-wide/16 v11, 0xb

    const-wide/32 v13, 0x4bdecfa9

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    move-wide/from16 v5, v18

    move-wide/from16 v7, v21

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->HH(JJJJJJJ)J

    move-result-wide v24

    .line 244
    aget-wide v9, v28, v32

    const-wide/16 v11, 0x10

    const-wide v13, 0xf6bb4b60L

    move-wide/from16 v1, v21

    move-wide/from16 v3, v24

    move-wide/from16 v5, v26

    move-wide/from16 v7, v18

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->HH(JJJJJJJ)J

    move-result-wide v21

    .line 245
    aget-wide v9, v28, v35

    const-wide/16 v11, 0x17

    const-wide v13, 0xbebfbc70L

    move-wide/from16 v1, v18

    move-wide/from16 v3, v21

    move-wide/from16 v5, v24

    move-wide/from16 v7, v26

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->HH(JJJJJJJ)J

    move-result-wide v18

    .line 246
    aget-wide v9, v28, v38

    const-wide/16 v11, 0x4

    const-wide/32 v13, 0x289b7ec6

    move-wide/from16 v1, v26

    move-wide/from16 v3, v18

    move-wide/from16 v5, v21

    move-wide/from16 v7, v24

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->HH(JJJJJJJ)J

    move-result-wide v26

    .line 247
    aget-wide v9, v28, v16

    const-wide/16 v11, 0xb

    const-wide v13, 0xeaa127faL

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    move-wide/from16 v5, v18

    move-wide/from16 v7, v21

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->HH(JJJJJJJ)J

    move-result-wide v24

    .line 248
    aget-wide v9, v28, v23

    const-wide/16 v11, 0x10

    const-wide v13, 0xd4ef3085L

    move-wide/from16 v1, v21

    move-wide/from16 v3, v24

    move-wide/from16 v5, v26

    move-wide/from16 v7, v18

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->HH(JJJJJJJ)J

    move-result-wide v21

    .line 249
    aget-wide v9, v28, v31

    const-wide/16 v11, 0x17

    const-wide/32 v13, 0x4881d05

    move-wide/from16 v1, v18

    move-wide/from16 v3, v21

    move-wide/from16 v5, v24

    move-wide/from16 v7, v26

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->HH(JJJJJJJ)J

    move-result-wide v18

    .line 250
    aget-wide v9, v28, v34

    const-wide/16 v11, 0x4

    const-wide v13, 0xd9d4d039L

    move-wide/from16 v1, v26

    move-wide/from16 v3, v18

    move-wide/from16 v5, v21

    move-wide/from16 v7, v24

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->HH(JJJJJJJ)J

    move-result-wide v26

    .line 251
    aget-wide v9, v28, v37

    const-wide/16 v11, 0xb

    const-wide v13, 0xe6db99e5L

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    move-wide/from16 v5, v18

    move-wide/from16 v7, v21

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->HH(JJJJJJJ)J

    move-result-wide v24

    const/16 v0, 0xf

    .line 252
    aget-wide v9, v28, v0

    const-wide/16 v11, 0x10

    const-wide/32 v13, 0x1fa27cf8

    move-object v0, v15

    move-wide/from16 v1, v21

    move-wide/from16 v3, v24

    move-wide/from16 v5, v26

    move-wide/from16 v7, v18

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->HH(JJJJJJJ)J

    move-result-wide v21

    .line 253
    aget-wide v9, v28, v20

    const-wide/16 v11, 0x17

    const-wide v13, 0xc4ac5665L

    move-wide/from16 v1, v18

    move-wide/from16 v3, v21

    move-wide/from16 v5, v24

    move-wide/from16 v7, v26

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->HH(JJJJJJJ)J

    move-result-wide v18

    .line 256
    aget-wide v9, v28, v16

    const-wide/16 v11, 0x6

    const-wide v13, 0xf4292244L

    move-wide/from16 v1, v26

    move-wide/from16 v3, v18

    move-wide/from16 v5, v21

    move-wide/from16 v7, v24

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->II(JJJJJJJ)J

    move-result-wide v26

    .line 257
    aget-wide v9, v28, v32

    const-wide/16 v11, 0xa

    const-wide/32 v13, 0x432aff97

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    move-wide/from16 v5, v18

    move-wide/from16 v7, v21

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->II(JJJJJJJ)J

    move-result-wide v24

    .line 258
    aget-wide v9, v28, v39

    const-wide/16 v11, 0xf

    const-wide v13, 0xab9423a7L

    move-wide/from16 v1, v21

    move-wide/from16 v3, v24

    move-wide/from16 v5, v26

    move-wide/from16 v7, v18

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->II(JJJJJJJ)J

    move-result-wide v21

    .line 259
    aget-wide v9, v28, v30

    const-wide/16 v11, 0x15

    const-wide v13, 0xfc93a039L

    move-wide/from16 v1, v18

    move-wide/from16 v3, v21

    move-wide/from16 v5, v24

    move-wide/from16 v7, v26

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->II(JJJJJJJ)J

    move-result-wide v18

    .line 260
    aget-wide v9, v28, v37

    const-wide/16 v11, 0x6

    const-wide/32 v13, 0x655b59c3

    move-wide/from16 v1, v26

    move-wide/from16 v3, v18

    move-wide/from16 v5, v21

    move-wide/from16 v7, v24

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->II(JJJJJJJ)J

    move-result-wide v26

    .line 261
    aget-wide v9, v28, v23

    const-wide/16 v11, 0xa

    const-wide v13, 0x8f0ccc92L

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    move-wide/from16 v5, v18

    move-wide/from16 v7, v21

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->II(JJJJJJJ)J

    move-result-wide v24

    .line 262
    aget-wide v9, v28, v35

    const-wide/16 v11, 0xf

    const-wide v13, 0xffeff47dL

    move-wide/from16 v1, v21

    move-wide/from16 v3, v24

    move-wide/from16 v5, v26

    move-wide/from16 v7, v18

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->II(JJJJJJJ)J

    move-result-wide v21

    .line 263
    aget-wide v9, v28, v17

    const-wide/16 v11, 0x15

    const-wide v13, 0x85845dd1L

    move-wide/from16 v1, v18

    move-wide/from16 v3, v21

    move-wide/from16 v5, v24

    move-wide/from16 v7, v26

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->II(JJJJJJJ)J

    move-result-wide v18

    .line 264
    aget-wide v9, v28, v33

    const-wide/16 v11, 0x6

    const-wide/32 v13, 0x6fa87e4f

    move-wide/from16 v1, v26

    move-wide/from16 v3, v18

    move-wide/from16 v5, v21

    move-wide/from16 v7, v24

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->II(JJJJJJJ)J

    move-result-wide v26

    const/16 v0, 0xf

    .line 265
    aget-wide v9, v28, v0

    const-wide/16 v11, 0xa

    const-wide v13, 0xfe2ce6e0L

    move-object v0, v15

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    move-wide/from16 v5, v18

    move-wide/from16 v7, v21

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->II(JJJJJJJ)J

    move-result-wide v24

    .line 266
    aget-wide v9, v28, v31

    const-wide/16 v11, 0xf

    const-wide v13, 0xa3014314L

    move-wide/from16 v1, v21

    move-wide/from16 v3, v24

    move-wide/from16 v5, v26

    move-wide/from16 v7, v18

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->II(JJJJJJJ)J

    move-result-wide v21

    .line 267
    aget-wide v9, v28, v38

    const-wide/16 v11, 0x15

    const-wide/32 v13, 0x4e0811a1

    move-wide/from16 v1, v18

    move-wide/from16 v3, v21

    move-wide/from16 v5, v24

    move-wide/from16 v7, v26

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->II(JJJJJJJ)J

    move-result-wide v18

    .line 268
    aget-wide v9, v28, v29

    const-wide/16 v11, 0x6

    const-wide v13, 0xf7537e82L

    move-wide/from16 v1, v26

    move-wide/from16 v3, v18

    move-wide/from16 v5, v21

    move-wide/from16 v7, v24

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->II(JJJJJJJ)J

    move-result-wide v26

    .line 269
    aget-wide v9, v28, v36

    const-wide/16 v11, 0xa

    const-wide v13, 0xbd3af235L

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    move-wide/from16 v5, v18

    move-wide/from16 v7, v21

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->II(JJJJJJJ)J

    move-result-wide v24

    .line 270
    aget-wide v9, v28, v20

    const-wide/16 v11, 0xf

    const-wide/32 v13, 0x2ad7d2bb

    move-wide/from16 v1, v21

    move-wide/from16 v3, v24

    move-wide/from16 v5, v26

    move-wide/from16 v7, v18

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->II(JJJJJJJ)J

    move-result-wide v21

    .line 271
    aget-wide v9, v28, v34

    const-wide/16 v11, 0x15

    const-wide v13, 0xeb86d391L

    move-wide/from16 v1, v18

    move-wide/from16 v3, v21

    move-wide/from16 v5, v24

    move-wide/from16 v7, v26

    invoke-direct/range {v0 .. v14}, Lcom/east2west/game/util/MD5E2W;->II(JJJJJJJ)J

    move-result-wide v0

    .line 273
    iget-object v2, v15, Lcom/east2west/game/util/MD5E2W;->state:[J

    aget-wide v3, v2, v16

    add-long v5, v3, v26

    aput-wide v5, v2, v16

    .line 274
    iget-object v2, v15, Lcom/east2west/game/util/MD5E2W;->state:[J

    aget-wide v3, v2, v17

    add-long v5, v3, v0

    aput-wide v5, v2, v17

    .line 275
    iget-object v0, v15, Lcom/east2west/game/util/MD5E2W;->state:[J

    aget-wide v1, v0, v20

    add-long v3, v1, v21

    aput-wide v3, v0, v20

    .line 276
    iget-object v0, v15, Lcom/east2west/game/util/MD5E2W;->state:[J

    aget-wide v1, v0, v23

    add-long v3, v1, v24

    aput-wide v3, v0, v23

    return-void
.end method

.method private md5Update([BI)V
    .locals 14

    move-object v6, p0

    move/from16 v7, p2

    const/16 v0, 0x40

    .line 136
    new-array v8, v0, [B

    .line 137
    iget-object v1, v6, Lcom/east2west/game/util/MD5E2W;->count:[J

    const/4 v9, 0x0

    aget-wide v2, v1, v9

    const/4 v1, 0x3

    ushr-long v1, v2, v1

    long-to-int v1, v1

    and-int/lit8 v3, v1, 0x3f

    .line 139
    iget-object v1, v6, Lcom/east2west/game/util/MD5E2W;->count:[J

    aget-wide v4, v1, v9

    shl-int/lit8 v2, v7, 0x3

    int-to-long v10, v2

    add-long v12, v4, v10

    aput-wide v12, v1, v9

    cmp-long v1, v12, v10

    const/4 v2, 0x1

    if-gez v1, :cond_0

    .line 140
    iget-object v1, v6, Lcom/east2west/game/util/MD5E2W;->count:[J

    aget-wide v4, v1, v2

    const-wide/16 v10, 0x1

    add-long v12, v4, v10

    aput-wide v12, v1, v2

    .line 141
    :cond_0
    iget-object v1, v6, Lcom/east2west/game/util/MD5E2W;->count:[J

    aget-wide v4, v1, v2

    ushr-int/lit8 v10, v7, 0x1d

    int-to-long v10, v10

    add-long v12, v4, v10

    aput-wide v12, v1, v2

    rsub-int/lit8 v10, v3, 0x40

    if-lt v7, v10, :cond_2

    .line 147
    iget-object v1, v6, Lcom/east2west/game/util/MD5E2W;->buffer:[B

    const/4 v4, 0x0

    move-object v0, v6

    move-object v2, p1

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/east2west/game/util/MD5E2W;->md5Memcpy([B[BIII)V

    .line 148
    iget-object v0, v6, Lcom/east2west/game/util/MD5E2W;->buffer:[B

    invoke-direct {v6, v0}, Lcom/east2west/game/util/MD5E2W;->md5Transform([B)V

    :goto_0
    add-int/lit8 v0, v10, 0x3f

    if-lt v0, v7, :cond_1

    move v4, v10

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    const/16 v5, 0x40

    move-object v0, v6

    move-object v1, v8

    move-object v2, p1

    move v4, v10

    .line 152
    invoke-direct/range {v0 .. v5}, Lcom/east2west/game/util/MD5E2W;->md5Memcpy([B[BIII)V

    .line 153
    invoke-direct {v6, v8}, Lcom/east2west/game/util/MD5E2W;->md5Transform([B)V

    add-int/lit8 v10, v10, 0x40

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 162
    :goto_1
    iget-object v1, v6, Lcom/east2west/game/util/MD5E2W;->buffer:[B

    sub-int v5, v7, v4

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/east2west/game/util/MD5E2W;->md5Memcpy([B[BIII)V

    return-void
.end method


# virtual methods
.method public getMD5Str(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 53
    invoke-direct {p0}, Lcom/east2west/game/util/MD5E2W;->md5Init()V

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/east2west/game/util/MD5E2W;->md5Update([BI)V

    .line 55
    invoke-direct {p0}, Lcom/east2west/game/util/MD5E2W;->md5Final()V

    const-string p1, ""

    .line 56
    iput-object p1, p0, Lcom/east2west/game/util/MD5E2W;->digestHexStr:Ljava/lang/String;

    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0x10

    if-lt p1, v0, :cond_0

    .line 60
    iget-object p1, p0, Lcom/east2west/game/util/MD5E2W;->digestHexStr:Ljava/lang/String;

    return-object p1

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/east2west/game/util/MD5E2W;->digestHexStr:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/east2west/game/util/MD5E2W;->digest:[B

    aget-byte v0, v0, p1

    invoke-static {v0}, Lcom/east2west/game/util/MD5E2W;->byteHEX(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/east2west/game/util/MD5E2W;->digestHexStr:Ljava/lang/String;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public getMD5ofStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 40
    invoke-direct {p0}, Lcom/east2west/game/util/MD5E2W;->md5Init()V

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/east2west/game/util/MD5E2W;->md5Update([BI)V

    .line 42
    invoke-direct {p0}, Lcom/east2west/game/util/MD5E2W;->md5Final()V

    const-string p1, ""

    .line 43
    iput-object p1, p0, Lcom/east2west/game/util/MD5E2W;->digestHexStr:Ljava/lang/String;

    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0x10

    if-lt p1, v0, :cond_0

    .line 48
    iget-object p1, p0, Lcom/east2west/game/util/MD5E2W;->digestHexStr:Ljava/lang/String;

    const/16 v0, 0x8

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/east2west/game/util/MD5E2W;->digestHexStr:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/east2west/game/util/MD5E2W;->digest:[B

    aget-byte v0, v0, p1

    invoke-static {v0}, Lcom/east2west/game/util/MD5E2W;->byteHEX(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/east2west/game/util/MD5E2W;->digestHexStr:Ljava/lang/String;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method
