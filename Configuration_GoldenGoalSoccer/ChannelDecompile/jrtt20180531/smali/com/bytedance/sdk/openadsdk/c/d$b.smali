.class public Lcom/bytedance/sdk/openadsdk/c/d$b;
.super Ljava/lang/Object;
.source "DownloadInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/c/i;

.field private b:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/c/i;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/d$b;->a:Lcom/bytedance/sdk/openadsdk/c/i;

    .line 42
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/c/d$b;->b:Landroid/database/Cursor;

    .line 43
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/d$b;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 132
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/d$b;->b:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/c/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .prologue
    .line 127
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Lcom/bytedance/sdk/openadsdk/c/d;)Ljava/util/List;

    move-result-object v0

    invoke-static {p2, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/d$b;->b:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/d$b;->b:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/c/d;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Lcom/bytedance/sdk/openadsdk/c/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 95
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/c/d;->d()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "headers"

    .line 94
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 96
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/d$b;->a:Lcom/bytedance/sdk/openadsdk/c/i;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/c/i;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 98
    :try_start_0
    const-string v0, "header"

    .line 99
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 100
    const-string v2, "value"

    .line 101
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 102
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_3

    .line 103
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v3, v4}, Lcom/bytedance/sdk/openadsdk/c/d$b;->a(Lcom/bytedance/sdk/openadsdk/c/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 109
    if-eqz v1, :cond_0

    .line 110
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 117
    :cond_0
    :goto_1
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/c/d;->p:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 118
    const-string v0, "Cookie"

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/c/d;->p:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/c/d$b;->a(Lcom/bytedance/sdk/openadsdk/c/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_1
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/c/d;->r:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 121
    const-string v0, "Referer"

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/c/d;->r:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/c/d$b;->a(Lcom/bytedance/sdk/openadsdk/c/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_2
    return-void

    .line 109
    :cond_3
    if-eqz v1, :cond_0

    .line 110
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 112
    :catch_1
    move-exception v0

    goto :goto_1

    .line 108
    :catchall_0
    move-exception v0

    .line 109
    if-eqz v1, :cond_4

    .line 110
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 114
    :cond_4
    :goto_2
    throw v0

    .line 112
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method private c(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/d$b;->b:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/d$b;->b:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/c/w;Lcom/bytedance/sdk/openadsdk/c/v;Lcom/bytedance/sdk/openadsdk/c/g;)Lcom/bytedance/sdk/openadsdk/c/d;
    .locals 6

    .prologue
    .line 47
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/d;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/c/d;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/c/w;Lcom/bytedance/sdk/openadsdk/c/v;Lcom/bytedance/sdk/openadsdk/c/g;Lcom/bytedance/sdk/openadsdk/c/d$1;)V

    .line 49
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/d$b;->a(Lcom/bytedance/sdk/openadsdk/c/d;)V

    .line 50
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/d$b;->b(Lcom/bytedance/sdk/openadsdk/c/d;)V

    .line 51
    return-object v0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/c/d;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 55
    const-string v0, "_id"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/d$b;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/bytedance/sdk/openadsdk/c/d;->a:J

    .line 56
    const-string v0, "uri"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/d$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/sdk/openadsdk/c/d;->b:Ljava/lang/String;

    .line 57
    const-string v0, "no_integrity"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/d$b;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/c/d;->c:Z

    .line 58
    const-string v0, "hint"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/d$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/sdk/openadsdk/c/d;->d:Ljava/lang/String;

    .line 59
    const-string v0, "_data"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/d$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/sdk/openadsdk/c/d;->e:Ljava/lang/String;

    .line 60
    const-string v0, "mimetype"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/d$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/sdk/openadsdk/c/d;->f:Ljava/lang/String;

    .line 61
    const-string v0, "destination"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/d$b;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/bytedance/sdk/openadsdk/c/d;->g:I

    .line 62
    const-string v0, "visibility"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/d$b;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/bytedance/sdk/openadsdk/c/d;->h:I

    .line 63
    const-string v0, "status"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/d$b;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/bytedance/sdk/openadsdk/c/d;->j:I

    .line 64
    const-string v0, "numfailed"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/d$b;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/bytedance/sdk/openadsdk/c/d;->k:I

    .line 65
    const-string v0, "method"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/d$b;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 66
    const v3, 0xfffffff

    and-int/2addr v0, v3

    iput v0, p1, Lcom/bytedance/sdk/openadsdk/c/d;->l:I

    .line 67
    const-string v0, "lastmod"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/d$b;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/bytedance/sdk/openadsdk/c/d;->m:J

    .line 68
    const-string v0, "notificationpackage"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/d$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/sdk/openadsdk/c/d;->n:Ljava/lang/String;

    .line 69
    const-string v0, "notificationextras"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/d$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/sdk/openadsdk/c/d;->o:Ljava/lang/String;

    .line 70
    const-string v0, "cookiedata"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/d$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/sdk/openadsdk/c/d;->p:Ljava/lang/String;

    .line 71
    const-string v0, "useragent"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/d$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/sdk/openadsdk/c/d;->q:Ljava/lang/String;

    .line 72
    const-string v0, "referer"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/d$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/sdk/openadsdk/c/d;->r:Ljava/lang/String;

    .line 73
    const-string v0, "total_bytes"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/d$b;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/bytedance/sdk/openadsdk/c/d;->s:J

    .line 74
    const-string v0, "current_bytes"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/d$b;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/bytedance/sdk/openadsdk/c/d;->t:J

    .line 75
    const-string v0, "etag"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/d$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/sdk/openadsdk/c/d;->u:Ljava/lang/String;

    .line 76
    const-string v0, "scanned"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/d$b;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/bytedance/sdk/openadsdk/c/d;->v:I

    .line 77
    const-string v0, "deleted"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/d$b;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/c/d;->w:Z

    .line 78
    const-string v0, "mediaprovider_uri"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/d$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/sdk/openadsdk/c/d;->x:Ljava/lang/String;

    .line 79
    const-string v0, "allowed_network_types"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/d$b;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/bytedance/sdk/openadsdk/c/d;->y:I

    .line 80
    const-string v0, "allow_roaming"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/d$b;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p1, Lcom/bytedance/sdk/openadsdk/c/d;->z:Z

    .line 81
    const-string v0, "title"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/d$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/sdk/openadsdk/c/d;->A:Ljava/lang/String;

    .line 82
    const-string v0, "description"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/d$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/sdk/openadsdk/c/d;->B:Ljava/lang/String;

    .line 83
    const-string v0, "icon_url"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/d$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/sdk/openadsdk/c/d;->C:Ljava/lang/String;

    .line 84
    const-string v0, "bypass_recommended_size_limit"

    .line 85
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/d$b;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/bytedance/sdk/openadsdk/c/d;->D:I

    .line 87
    monitor-enter p0

    .line 88
    :try_start_0
    const-string v0, "control"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/c/d$b;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/bytedance/sdk/openadsdk/c/d;->i:I

    .line 89
    monitor-exit p0

    .line 90
    return-void

    :cond_0
    move v0, v2

    .line 57
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 77
    goto :goto_1

    :cond_2
    move v1, v2

    .line 80
    goto :goto_2

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
