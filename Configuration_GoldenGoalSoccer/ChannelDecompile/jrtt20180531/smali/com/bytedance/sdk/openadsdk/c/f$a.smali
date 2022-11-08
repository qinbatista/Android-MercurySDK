.class Lcom/bytedance/sdk/openadsdk/c/f$a;
.super Landroid/database/CursorWrapper;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/net/Uri;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1503
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 1504
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/c/f$a;->a:Landroid/net/Uri;

    .line 1505
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/f$a;->b:Landroid/content/Context;

    .line 1506
    return-void
.end method

.method private a(I)J
    .locals 2

    .prologue
    .line 1551
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/c/f;->a(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1559
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 1553
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/c/f$a;->c(I)J

    move-result-wide v0

    goto :goto_0

    .line 1556
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/c/f$a;->b(I)J

    move-result-wide v0

    goto :goto_0

    .line 1551
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method private a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1531
    const-string v0, "destination"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/f$a;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/f$a;->getLong(I)J

    move-result-wide v0

    .line 1532
    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 1534
    :cond_0
    const-string v0, "local_filename"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/f$a;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/f$a;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1535
    if-nez v0, :cond_1

    .line 1536
    const/4 v0, 0x0

    .line 1547
    :goto_0
    return-object v0

    .line 1540
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_2

    .line 1541
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/f$a;->b:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/c/f$a;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".fileprovider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1543
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1546
    :cond_3
    const-string v0, "_id"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/f$a;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/f$a;->getLong(I)J

    move-result-wide v0

    .line 1547
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/f$a;->a:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b(I)J
    .locals 2

    .prologue
    .line 1564
    packed-switch p1, :pswitch_data_0

    .line 1575
    const-wide/16 v0, 0x4

    :goto_0
    return-wide v0

    .line 1566
    :pswitch_0
    const-wide/16 v0, 0x1

    goto :goto_0

    .line 1569
    :pswitch_1
    const-wide/16 v0, 0x2

    goto :goto_0

    .line 1572
    :pswitch_2
    const-wide/16 v0, 0x3

    goto :goto_0

    .line 1564
    nop

    :pswitch_data_0
    .packed-switch 0xc2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private c(I)J
    .locals 2

    .prologue
    .line 1580
    const/16 v0, 0x190

    if-gt v0, p1, :cond_0

    const/16 v0, 0x1e8

    if-lt p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x1f4

    if-gt v0, p1, :cond_2

    const/16 v0, 0x258

    if-ge p1, v0, :cond_2

    .line 1583
    :cond_1
    int-to-long v0, p1

    .line 1613
    :goto_0
    return-wide v0

    .line 1586
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 1613
    const-wide/16 v0, 0x3e8

    goto :goto_0

    .line 1588
    :sswitch_0
    const-wide/16 v0, 0x3e9

    goto :goto_0

    .line 1592
    :sswitch_1
    const-wide/16 v0, 0x3ea

    goto :goto_0

    .line 1595
    :sswitch_2
    const-wide/16 v0, 0x3ec

    goto :goto_0

    .line 1598
    :sswitch_3
    const-wide/16 v0, 0x3ed

    goto :goto_0

    .line 1601
    :sswitch_4
    const-wide/16 v0, 0x3ee

    goto :goto_0

    .line 1604
    :sswitch_5
    const-wide/16 v0, 0x3ef

    goto :goto_0

    .line 1607
    :sswitch_6
    const-wide/16 v0, 0x3f0

    goto :goto_0

    .line 1610
    :sswitch_7
    const-wide/16 v0, 0x3f1

    goto :goto_0

    .line 1586
    :sswitch_data_0
    .sparse-switch
        0xc6 -> :sswitch_4
        0xc7 -> :sswitch_5
        0x1e8 -> :sswitch_7
        0x1e9 -> :sswitch_6
        0x1ec -> :sswitch_0
        0x1ed -> :sswitch_1
        0x1ee -> :sswitch_1
        0x1ef -> :sswitch_2
        0x1f1 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public getInt(I)I
    .locals 2

    .prologue
    .line 1510
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/c/f$a;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLong(I)J
    .locals 2

    .prologue
    .line 1515
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/c/f$a;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "reason"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1516
    const-string v0, "status"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/f$a;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/f$a;->a(I)J

    move-result-wide v0

    .line 1520
    :goto_0
    return-wide v0

    .line 1517
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/c/f$a;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1518
    const-string v0, "status"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/f$a;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/f;->a(I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 1520
    :cond_1
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1526
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/c/f$a;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "local_uri"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/f$a;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1527
    :cond_0
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
