.class public Lcom/bytedance/sdk/openadsdk/d/e;
.super Ljava/lang/Object;
.source "AdEventRepertoryImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/d/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/openadsdk/d/d",
        "<",
        "Lcom/bytedance/sdk/openadsdk/d/a;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/bytedance/sdk/openadsdk/core/d;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Lcom/bytedance/sdk/openadsdk/core/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/e;->b:Landroid/content/Context;

    .line 40
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/e;->a:Lcom/bytedance/sdk/openadsdk/core/d;

    .line 41
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/e;->c:Lcom/bytedance/sdk/openadsdk/core/c;

    .line 42
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    move-object p0, p1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;IZ)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<*>;IZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 206
    if-eqz p3, :cond_1

    const-string v0, " IN "

    move-object v3, v0

    .line 207
    :goto_0
    if-eqz p3, :cond_2

    const-string v0, " OR "

    .line 209
    :goto_1
    const/16 v1, 0x3e8

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 210
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 211
    rem-int v1, v5, v4

    .line 212
    if-nez v1, :cond_3

    .line 213
    div-int v1, v5, v4

    .line 217
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_4

    .line 219
    mul-int v7, v2, v4

    .line 220
    add-int v8, v7, v4

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 221
    const-string v9, "\',\'"

    invoke-interface {p1, v7, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-static {v7, v8}, Lcom/bytedance/sdk/openadsdk/d/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 222
    if-eqz v2, :cond_0

    .line 223
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :cond_0
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "(\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\')"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 206
    :cond_1
    const-string v0, " NOT IN "

    move-object v3, v0

    goto :goto_0

    .line 207
    :cond_2
    const-string v0, " AND "

    goto :goto_1

    .line 215
    :cond_3
    div-int v1, v5, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 227
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(\'\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/d/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    return-object v0
.end method

.method private b(IJ)V
    .locals 8

    .prologue
    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    .line 94
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/d/e;->a:Lcom/bytedance/sdk/openadsdk/core/d;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d;->a()Lcom/bytedance/sdk/openadsdk/core/e$c;

    move-result-object v2

    const-string v3, "adevent"

    const-string v4, "gen_time <? AND retry >?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/e$c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 95
    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "adevent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (_id INTEGER PRIMARY KEY AUTOINCREMENT,"

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id"

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT UNIQUE,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "value"

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "gen_time"

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "retry"

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER default 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/d/a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 46
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 47
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/e;->a:Lcom/bytedance/sdk/openadsdk/core/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d;->a()Lcom/bytedance/sdk/openadsdk/core/e$c;

    move-result-object v0

    const-string v1, "adevent"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "value"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/e$c;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 49
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const-string v0, "id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 51
    const-string v2, "value"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 53
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 54
    new-instance v2, Lcom/bytedance/sdk/openadsdk/d/a;

    invoke-direct {v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/d/a;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    goto :goto_0

    .line 59
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 61
    return-object v8

    .line 59
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/e;->c:Lcom/bytedance/sdk/openadsdk/core/c;

    const-string v1, "serverbusy_retrycount"

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Ljava/lang/String;I)V

    .line 153
    return-void
.end method

.method public a(IJ)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/d/e;->b(IJ)V

    .line 90
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/d/a;)V
    .locals 4

    .prologue
    .line 66
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 67
    const-string v1, "id"

    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/d/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v1, "value"

    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/d/a;->b:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v1, "gen_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 70
    const-string v1, "retry"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 71
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/e;->a:Lcom/bytedance/sdk/openadsdk/core/d;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d;->a()Lcom/bytedance/sdk/openadsdk/core/e$c;

    move-result-object v1

    const-string v2, "adevent"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/e$c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 72
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lcom/bytedance/sdk/openadsdk/d/a;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/d/e;->a(Lcom/bytedance/sdk/openadsdk/d/a;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/d/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/h/k;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 79
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 80
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/d/a;

    .line 81
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/d/a;->a:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 83
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM adevent WHERE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "id"

    const/16 v3, 0x3e8

    const/4 v4, 0x1

    invoke-static {v2, v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/d/e;->a(Ljava/lang/String;Ljava/util/List;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/e;->a:Lcom/bytedance/sdk/openadsdk/core/d;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d;->a()Lcom/bytedance/sdk/openadsdk/core/e$c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/e$c;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/util/List;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/d/a;",
            ">;IJ)V"
        }
    .end annotation

    .prologue
    .line 99
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/h/k;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/e;->a:Lcom/bytedance/sdk/openadsdk/core/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d;->a()Lcom/bytedance/sdk/openadsdk/core/e$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e$c;->a()V

    .line 104
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/d/e;->b(Ljava/util/List;)V

    .line 105
    invoke-direct {p0, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/d/e;->b(IJ)V

    .line 106
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/e;->a:Lcom/bytedance/sdk/openadsdk/core/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d;->a()Lcom/bytedance/sdk/openadsdk/core/e$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e$c;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/e;->a:Lcom/bytedance/sdk/openadsdk/core/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d;->a()Lcom/bytedance/sdk/openadsdk/core/e$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e$c;->c()V

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 110
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/e;->a:Lcom/bytedance/sdk/openadsdk/core/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d;->a()Lcom/bytedance/sdk/openadsdk/core/e$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e$c;->c()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/e;->a:Lcom/bytedance/sdk/openadsdk/core/d;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d;->a()Lcom/bytedance/sdk/openadsdk/core/e$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e$c;->c()V

    throw v0
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/e;->c:Lcom/bytedance/sdk/openadsdk/core/c;

    const-string v1, "serverbusy_flag"

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Ljava/lang/String;Z)V

    .line 138
    return-void
.end method

.method b(Ljava/util/List;)V
    .locals 5
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/d/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 118
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/d/a;

    .line 119
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/d/a;->a:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE "

    .line 122
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "adevent"

    .line 123
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " SET "

    .line 124
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "retry"

    .line 125
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = "

    .line 126
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "retry"

    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "+1"

    .line 128
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " WHERE "

    .line 129
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "id"

    const/16 v3, 0x3e8

    const/4 v4, 0x1

    .line 130
    invoke-static {v2, v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/d/e;->a(Ljava/lang/String;Ljava/util/List;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/e;->a:Lcom/bytedance/sdk/openadsdk/core/d;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d;->a()Lcom/bytedance/sdk/openadsdk/core/e$c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/e$c;->a(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public b()Z
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/e;->c:Lcom/bytedance/sdk/openadsdk/core/c;

    const-string v1, "serverbusy_flag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/c;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public c()I
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/e;->c:Lcom/bytedance/sdk/openadsdk/core/c;

    const-string v1, "serverbusy_retrycount"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/c;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
