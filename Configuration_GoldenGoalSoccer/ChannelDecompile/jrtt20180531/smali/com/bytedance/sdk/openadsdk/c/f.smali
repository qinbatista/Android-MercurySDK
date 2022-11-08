.class public Lcom/bytedance/sdk/openadsdk/c/f;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/c/f$a;,
        Lcom/bytedance/sdk/openadsdk/c/f$b;,
        Lcom/bytedance/sdk/openadsdk/c/f$c;
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field private static g:Lcom/bytedance/sdk/openadsdk/c/f;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/content/ContentResolver;

.field private d:Lcom/bytedance/sdk/openadsdk/c/i;

.field private e:Ljava/lang/String;

.field private f:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 335
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data AS local_filename"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mediaprovider_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "destination"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "icon_url"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "uri"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "hint"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mimetype AS media_type"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "total_bytes AS total_size"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "lastmod AS last_modified_timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "current_bytes AS bytes_so_far"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "allow_write"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "etag"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\'placeholder\' AS local_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\'placeholder\' AS reason"

    aput-object v2, v0, v1

    sput-object v0, Lcom/bytedance/sdk/openadsdk/c/f;->a:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 932
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 922
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/m$a;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/f;->f:Landroid/net/Uri;

    .line 933
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/f;->b:Landroid/content/Context;

    .line 934
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/f;->c:Landroid/content/ContentResolver;

    .line 935
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/f;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/i;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/c/i;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/f;->d:Lcom/bytedance/sdk/openadsdk/c/i;

    .line 936
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/c/f;->e:Ljava/lang/String;

    .line 937
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/a/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/f;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/c/a/a;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/f;->a(Lcom/bytedance/sdk/openadsdk/c/a/b;)V

    .line 938
    return-void
.end method

.method public static a(I)I
    .locals 1

    .prologue
    .line 1619
    packed-switch p0, :pswitch_data_0

    .line 1637
    :pswitch_0
    const/16 v0, 0x10

    :goto_0
    return v0

    .line 1621
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1624
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 1630
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 1634
    :pswitch_4
    const/16 v0, 0x8

    goto :goto_0

    .line 1619
    nop

    :pswitch_data_0
    .packed-switch 0xbe
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;IJ)I
    .locals 2

    .prologue
    .line 1642
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/c/f;->a(Landroid/content/Context;IJLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;IJLjava/lang/String;)I
    .locals 8

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x2

    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    .line 1646
    if-eqz p0, :cond_0

    cmp-long v3, p2, v6

    if-gez v3, :cond_1

    :cond_0
    move v0, v1

    .line 1693
    :goto_0
    return v0

    .line 1651
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/m;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1652
    const-string v3, "AppAdViewHolder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/h/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1654
    :cond_2
    sparse-switch p1, :sswitch_data_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 1656
    :sswitch_0
    cmp-long v3, p2, v6

    if-ltz v3, :cond_3

    .line 1658
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->a()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/h;->j()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1661
    :goto_1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/c/f;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/c/f;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v5, 0x0

    aput-wide p2, v4, v5

    invoke-virtual {v3, v2, v4}, Lcom/bytedance/sdk/openadsdk/c/f;->a(I[J)V

    goto :goto_0

    .line 1690
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 1666
    :sswitch_1
    cmp-long v0, p2, v6

    if-ltz v0, :cond_3

    .line 1667
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/c/f;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/c/f;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    aput-wide p2, v3, v4

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/c/f;->c([J)V

    move v0, v2

    .line 1668
    goto :goto_0

    .line 1673
    :sswitch_2
    cmp-long v0, p2, v6

    if-ltz v0, :cond_3

    .line 1674
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/c/f;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/c/f;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide p2, v2, v3

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/c/f;->b([J)V

    .line 1675
    const/4 v0, 0x4

    goto :goto_0

    .line 1679
    :sswitch_3
    cmp-long v0, p2, v6

    if-ltz v0, :cond_3

    .line 1680
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1681
    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    aput v3, v0, v2

    .line 1682
    const/4 v2, 0x1

    const/high16 v3, 0x20000000

    aput v3, v0, v2

    .line 1683
    invoke-static {p0, p2, p3, v0, p4}, Lcom/bytedance/sdk/openadsdk/c/s;->a(Landroid/content/Context;J[ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1684
    const/16 v0, 0x8

    .line 1685
    goto/16 :goto_0

    :cond_4
    move v2, v0

    goto :goto_1

    .line 1654
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_3
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/c/f;
    .locals 3

    .prologue
    .line 926
    const-class v1, Lcom/bytedance/sdk/openadsdk/c/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/f;->g:Lcom/bytedance/sdk/openadsdk/c/f;

    if-nez v0, :cond_0

    .line 927
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/f;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/bytedance/sdk/openadsdk/c/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/c/f;->g:Lcom/bytedance/sdk/openadsdk/c/f;

    .line 929
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/f;->g:Lcom/bytedance/sdk/openadsdk/c/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 926
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static a([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1459
    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1460
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 1461
    if-lez v0, :cond_0

    .line 1462
    const-string v2, "OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1464
    :cond_0
    const-string v2, "uri"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1465
    const-string v2, " = ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1460
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1467
    :cond_1
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1468
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(J)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1094
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/m$a;->a:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1095
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/f;->d:Lcom/bytedance/sdk/openadsdk/c/i;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/c/i;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1097
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1098
    const-string v0, "status"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1099
    const-string v3, "visibility"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1100
    const-string v4, "_data"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1105
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/m$a;->a(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1106
    invoke-virtual {p0, v4, p1, p2}, Lcom/bytedance/sdk/openadsdk/c/f;->a(Ljava/lang/String;J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1107
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1108
    const-string v3, "visibility"

    const/4 v4, 0x1

    .line 1109
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1108
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1110
    const-string v3, "status"

    const/16 v4, 0xc9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1111
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/c/f;->d:Lcom/bytedance/sdk/openadsdk/c/i;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/c/i;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1112
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1113
    const/4 v1, 0x0

    const/high16 v3, 0x10000000

    aput v3, v0, v1

    .line 1114
    const/4 v1, 0x1

    const/high16 v3, 0x20000000

    aput v3, v0, v1

    .line 1115
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/f;->b:Landroid/content/Context;

    const-string v3, ""

    invoke-static {v1, p1, p2, v0, v3}, Lcom/bytedance/sdk/openadsdk/c/s;->a(Landroid/content/Context;J[ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1127
    :goto_0
    if-eqz v2, :cond_0

    .line 1128
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1134
    :cond_0
    :goto_1
    return-void

    .line 1102
    :cond_1
    :try_start_2
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing details for download "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1127
    if-eqz v2, :cond_0

    .line 1128
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1130
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1117
    :cond_2
    :try_start_4
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/f;->a(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 1118
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/f;->c([J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1123
    :catch_1
    move-exception v0

    .line 1124
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1127
    if-eqz v2, :cond_0

    .line 1128
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 1130
    :catch_2
    move-exception v0

    goto :goto_1

    .line 1120
    :cond_3
    const/4 v0, 0x1

    :try_start_7
    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    invoke-virtual {p0, v3, v0}, Lcom/bytedance/sdk/openadsdk/c/f;->a(I[J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 1126
    :catchall_0
    move-exception v0

    .line 1127
    if-eqz v2, :cond_4

    .line 1128
    :try_start_8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 1132
    :cond_4
    :goto_2
    throw v0

    .line 1130
    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_2
.end method

.method static a(Lcom/bytedance/sdk/openadsdk/c/a/b;)V
    .locals 0

    .prologue
    .line 1697
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/c/n;->a(Lcom/bytedance/sdk/openadsdk/c/a/b;)V

    .line 1698
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/c/f;J)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/c/f;->a(J)V

    return-void
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/c/f$c;)J
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 1022
    const/4 v1, 0x0

    .line 1026
    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/f$b;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/c/f$b;-><init>()V

    .line 1027
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/c/f$c;->a(Lcom/bytedance/sdk/openadsdk/c/f$c;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/c/f$b;->a([Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/c/f$b;

    .line 1028
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/f;->a(Lcom/bytedance/sdk/openadsdk/c/f$b;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 1029
    if-eqz v6, :cond_4

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt v0, v5, :cond_4

    .line 1030
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1031
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1032
    const-string v0, "etag"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1033
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1034
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/f;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/r;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1035
    invoke-direct {p0, v4, v5}, Lcom/bytedance/sdk/openadsdk/c/f;->a(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1075
    if-eqz v6, :cond_0

    .line 1076
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1082
    :cond_0
    :goto_0
    return-wide v4

    .line 1038
    :cond_1
    :try_start_3
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/f$1;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/c/f$1;-><init>(Lcom/bytedance/sdk/openadsdk/c/f;Lcom/bytedance/sdk/openadsdk/c/f$c;Ljava/lang/String;J)V

    .line 1065
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1075
    :goto_1
    if-eqz v6, :cond_0

    .line 1076
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 1078
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1067
    :cond_2
    :try_start_5
    invoke-direct {p0, v4, v5}, Lcom/bytedance/sdk/openadsdk/c/f;->a(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 1071
    :catch_1
    move-exception v0

    move-object v1, v6

    .line 1072
    :goto_2
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1075
    if-eqz v1, :cond_3

    .line 1076
    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 1082
    :cond_3
    :goto_3
    const-wide/16 v4, -0x1

    goto :goto_0

    .line 1075
    :cond_4
    if-eqz v6, :cond_3

    .line 1076
    :try_start_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_3

    .line 1078
    :catch_2
    move-exception v0

    goto :goto_3

    .line 1074
    :catchall_0
    move-exception v0

    move-object v6, v1

    .line 1075
    :goto_4
    if-eqz v6, :cond_5

    .line 1076
    :try_start_9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 1080
    :cond_5
    :goto_5
    throw v0

    .line 1078
    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_5

    .line 1074
    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v6, v1

    goto :goto_4

    .line 1071
    :catch_6
    move-exception v0

    goto :goto_2
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/Long;
    .locals 2

    .prologue
    .line 1412
    const-wide v0, 0x80000000L

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static b([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .prologue
    .line 1475
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/String;

    .line 1476
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 1477
    aget-object v2, p0, v0

    aput-object v2, v1, v0

    .line 1476
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1479
    :cond_0
    return-object v1
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/Long;
    .locals 2

    .prologue
    .line 1425
    const-wide/32 v0, 0x40000000

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static e([J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1442
    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1443
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 1444
    if-lez v0, :cond_0

    .line 1445
    const-string v2, "OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1447
    :cond_0
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1448
    const-string v2, " = ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1443
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1450
    :cond_1
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1451
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static f([J)[Ljava/lang/String;
    .locals 4

    .prologue
    .line 1486
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/String;

    .line 1487
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 1488
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1487
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1490
    :cond_0
    return-object v1
.end method


# virtual methods
.method public varargs a([J)I
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 1147
    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 1149
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input param \'ids\' can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1161
    :catch_0
    move-exception v0

    .line 1163
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 1151
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1152
    const-string v1, "deleted"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1155
    array-length v1, p1

    if-ne v1, v3, :cond_2

    .line 1156
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/f;->d:Lcom/bytedance/sdk/openadsdk/c/i;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/f;->f:Landroid/net/Uri;

    const/4 v3, 0x0

    aget-wide v4, p1, v3

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/c/i;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1159
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/f;->d:Lcom/bytedance/sdk/openadsdk/c/i;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/f;->f:Landroid/net/Uri;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/c/f;->e([J)Ljava/lang/String;

    move-result-object v3

    .line 1160
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/c/f;->f([J)[Ljava/lang/String;

    move-result-object v4

    .line 1159
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/c/i;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/c/f$c;)J
    .locals 5

    .prologue
    const-wide/16 v2, -0x1

    .line 1006
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/c/f;->b(Lcom/bytedance/sdk/openadsdk/c/f$c;)J

    move-result-wide v0

    .line 1007
    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/f;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/c/f$c;->b(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1009
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/f;->d:Lcom/bytedance/sdk/openadsdk/c/i;

    sget-object v4, Lcom/bytedance/sdk/openadsdk/c/m$a;->a:Landroid/net/Uri;

    invoke-virtual {v1, v4, v0}, Lcom/bytedance/sdk/openadsdk/c/i;->a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1010
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 1016
    :cond_0
    :goto_0
    return-wide v0

    .line 1014
    :catch_0
    move-exception v0

    move-wide v0, v2

    .line 1016
    goto :goto_0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/c/f$b;)Landroid/database/Cursor;
    .locals 4

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/f;->d:Lcom/bytedance/sdk/openadsdk/c/i;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/c/f;->a:[Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/f;->f:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/c/f$b;->a(Lcom/bytedance/sdk/openadsdk/c/i;[Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v1

    .line 1268
    if-nez v1, :cond_0

    .line 1269
    const/4 v0, 0x0

    .line 1271
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/f$a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/f;->f:Landroid/net/Uri;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/c/f;->b:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/f$a;-><init>(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/c/y;
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 941
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 970
    :cond_0
    :goto_0
    return-object v0

    .line 946
    :cond_1
    :try_start_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/c/f$b;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/c/f$b;-><init>()V

    .line 947
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/c/f$b;->a([Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/c/f$b;

    .line 948
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/c/f;->a(Lcom/bytedance/sdk/openadsdk/c/f$b;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 949
    if-eqz v2, :cond_3

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lt v1, v4, :cond_3

    .line 950
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 951
    new-instance v1, Lcom/bytedance/sdk/openadsdk/c/y;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/c/y;-><init>()V

    .line 952
    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/bytedance/sdk/openadsdk/c/y;->a:J

    .line 953
    const-string v3, "status"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/c/y;->b:I

    .line 954
    const-string v3, "total_size"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/bytedance/sdk/openadsdk/c/y;->c:J

    .line 955
    const-string v3, "bytes_so_far"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/bytedance/sdk/openadsdk/c/y;->d:J

    .line 956
    const-string v3, "local_filename"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bytedance/sdk/openadsdk/c/y;->e:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 963
    if-eqz v2, :cond_2

    .line 964
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    :goto_1
    move-object v0, v1

    .line 957
    goto :goto_0

    .line 963
    :cond_3
    if-eqz v2, :cond_0

    .line 964
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 966
    :catch_0
    move-exception v1

    goto :goto_0

    .line 959
    :catch_1
    move-exception v1

    move-object v2, v0

    .line 960
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 963
    if-eqz v2, :cond_0

    .line 964
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 966
    :catch_2
    move-exception v1

    goto :goto_0

    .line 962
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 963
    :goto_3
    if-eqz v2, :cond_4

    .line 964
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 968
    :cond_4
    :goto_4
    throw v0

    .line 966
    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_4

    .line 962
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 959
    :catch_5
    move-exception v1

    goto :goto_2
.end method

.method public varargs a(I[J)V
    .locals 6

    .prologue
    .line 1371
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/f$b;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/c/f$b;-><init>()V

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/c/f$b;->a([J)Lcom/bytedance/sdk/openadsdk/c/f$b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/f;->a(Lcom/bytedance/sdk/openadsdk/c/f$b;)Landroid/database/Cursor;

    move-result-object v1

    .line 1373
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1374
    const-string v0, "status"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1375
    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    const/16 v2, 0x10

    if-eq v0, v2, :cond_1

    .line 1376
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot restart incomplete download: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    .line 1377
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1390
    :catch_0
    move-exception v0

    .line 1394
    if-eqz v1, :cond_0

    .line 1395
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1401
    :cond_0
    :goto_1
    return-void

    .line 1373
    :cond_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1393
    :catchall_0
    move-exception v0

    .line 1394
    if-eqz v1, :cond_2

    .line 1395
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1399
    :cond_2
    :goto_2
    throw v0

    .line 1380
    :cond_3
    :try_start_4
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1381
    const-string v2, "current_bytes"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1382
    const-string v2, "total_bytes"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1383
    const-string v2, "_data"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1384
    const-string v2, "status"

    const/16 v3, 0xbe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1385
    const-string v2, "numfailed"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1386
    const-string v2, "visibility"

    .line 1387
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1386
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1388
    const-string v2, "control"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1389
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/f;->d:Lcom/bytedance/sdk/openadsdk/c/i;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/c/f;->f:Landroid/net/Uri;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/c/f;->e([J)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/c/f;->f([J)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/c/i;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1394
    if-eqz v1, :cond_0

    .line 1395
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 1397
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/c/y;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 974
    if-nez p1, :cond_1

    .line 982
    :cond_0
    :goto_0
    return v0

    .line 977
    :cond_1
    iget v2, p1, Lcom/bytedance/sdk/openadsdk/c/y;->b:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/c/y;->e:Ljava/lang/String;

    iget-wide v4, p1, Lcom/bytedance/sdk/openadsdk/c/y;->a:J

    .line 978
    invoke-virtual {p0, v2, v4, v5}, Lcom/bytedance/sdk/openadsdk/c/f;->a(Ljava/lang/String;J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 979
    new-array v2, v1, [J

    iget-wide v4, p1, Lcom/bytedance/sdk/openadsdk/c/y;->a:J

    aput-wide v4, v2, v0

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/c/f;->d([J)I

    move v0, v1

    .line 980
    goto :goto_0
.end method

.method a(Ljava/lang/String;J)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 986
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 993
    :cond_0
    :goto_0
    return v0

    .line 989
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 990
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 991
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public varargs b([J)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 1175
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/f$b;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/c/f$b;-><init>()V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/c/f$b;->a([J)Lcom/bytedance/sdk/openadsdk/c/f$b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/f;->a(Lcom/bytedance/sdk/openadsdk/c/f$b;)Landroid/database/Cursor;

    move-result-object v1

    .line 1177
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1179
    const-string v0, "status"

    .line 1180
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1181
    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-eq v0, v3, :cond_1

    .line 1182
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can only pause a running download: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    .line 1185
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1184
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1194
    :catch_0
    move-exception v0

    .line 1198
    if-eqz v1, :cond_0

    .line 1199
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1205
    :cond_0
    :goto_1
    return-void

    .line 1178
    :cond_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1197
    :catchall_0
    move-exception v0

    .line 1198
    if-eqz v1, :cond_2

    .line 1199
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1203
    :cond_2
    :goto_2
    throw v0

    .line 1189
    :cond_3
    :try_start_4
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1190
    const-string v2, "control"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1191
    const-string v2, "no_integrity"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1192
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/f;->d:Lcom/bytedance/sdk/openadsdk/c/i;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/c/f;->f:Landroid/net/Uri;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/c/f;->e([J)Ljava/lang/String;

    move-result-object v4

    .line 1193
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/c/f;->f([J)[Ljava/lang/String;

    move-result-object v5

    .line 1192
    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/c/i;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1198
    if-eqz v1, :cond_0

    .line 1199
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 1201
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method public varargs c([J)V
    .locals 6

    .prologue
    .line 1215
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/f$b;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/c/f$b;-><init>()V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/c/f$b;->a([J)Lcom/bytedance/sdk/openadsdk/c/f$b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/f;->a(Lcom/bytedance/sdk/openadsdk/c/f$b;)Landroid/database/Cursor;

    move-result-object v1

    .line 1217
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1219
    const-string v0, "status"

    .line 1220
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1221
    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    .line 1222
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cann only resume a paused download: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    .line 1225
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1224
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1228
    :catch_0
    move-exception v0

    .line 1229
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1232
    if-eqz v1, :cond_0

    .line 1233
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1240
    :cond_0
    :goto_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1241
    const-string v1, "status"

    const/16 v2, 0xbe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1242
    const-string v1, "control"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1243
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/f;->d:Lcom/bytedance/sdk/openadsdk/c/i;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/f;->f:Landroid/net/Uri;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/c/f;->e([J)Ljava/lang/String;

    move-result-object v3

    .line 1244
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/c/f;->f([J)[Ljava/lang/String;

    move-result-object v4

    .line 1243
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/c/i;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1245
    return-void

    .line 1218
    :cond_1
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1231
    :catchall_0
    move-exception v0

    .line 1232
    if-eqz v1, :cond_2

    .line 1233
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1237
    :cond_2
    :goto_2
    throw v0

    .line 1232
    :cond_3
    if-eqz v1, :cond_0

    .line 1233
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 1235
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method public varargs d([J)I
    .locals 1

    .prologue
    .line 1256
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/c/f;->a([J)I

    move-result v0

    return v0
.end method
