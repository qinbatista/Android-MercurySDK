.class public Lcom/bytedance/sdk/openadsdk/core/e$c;
.super Ljava/lang/Object;
.source "DBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/e;

.field private b:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/e;)V
    .locals 1

    .prologue
    .line 36
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e$c;->a:Lcom/bytedance/sdk/openadsdk/core/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e$c;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    .line 41
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/e;->b()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e$c;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e$c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/e$a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/e$c;->a:Lcom/bytedance/sdk/openadsdk/core/e;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/e$c;->a:Lcom/bytedance/sdk/openadsdk/core/e;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/core/e;->a:Landroid/content/Context;

    invoke-direct {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/e$a;-><init>(Lcom/bytedance/sdk/openadsdk/core/e;Landroid/content/Context;)V

    .line 44
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e$c;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 45
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e$c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    .line 47
    :cond_1
    monitor-exit v1

    .line 54
    :cond_2
    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e$c;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 165
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/e$c;->e()V

    .line 166
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e$c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 174
    :cond_0
    return v0

    .line 167
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 168
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 169
    const/4 v0, 0x0

    .line 170
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e$c;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    throw v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 195
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/e$c;->e()V

    .line 196
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e$c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 204
    :cond_0
    return v0

    .line 197
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 198
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 199
    const/4 v0, 0x0

    .line 200
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e$c;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    throw v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4

    .prologue
    .line 180
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/e$c;->e()V

    .line 181
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e$c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 189
    :cond_0
    return-wide v0

    .line 182
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 183
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 184
    const-wide/16 v0, -0x1

    .line 185
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e$c;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 186
    throw v2
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .prologue
    .line 117
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/e$c;->e()V

    .line 118
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e$c;->b:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 126
    :cond_0
    return-object v0

    .line 119
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 120
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 121
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/e$b;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/e$c;->a:Lcom/bytedance/sdk/openadsdk/core/e;

    invoke-direct {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/e$b;-><init>(Lcom/bytedance/sdk/openadsdk/core/e;)V

    .line 122
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e$c;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    throw v1
.end method

.method public a()V
    .locals 1

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/e$c;->e()V

    .line 222
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e$c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 223
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 59
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/e$c;->e()V

    .line 60
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e$c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e$c;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    throw v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/e$c;->e()V

    .line 227
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e$c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 228
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/e$c;->e()V

    .line 232
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e$c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 233
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e$c;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 237
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
