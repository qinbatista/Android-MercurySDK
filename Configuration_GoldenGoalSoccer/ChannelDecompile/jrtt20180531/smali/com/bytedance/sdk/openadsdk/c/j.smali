.class public Lcom/bytedance/sdk/openadsdk/c/j;
.super Ljava/lang/Object;
.source "DownloadScanner.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;
.implements Lcom/bytedance/sdk/openadsdk/h/t$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/c/j$a;
    }
.end annotation


# instance fields
.field protected final a:Lcom/bytedance/sdk/openadsdk/h/t;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/media/MediaScannerConnection;

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/c/j$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/t;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/h/t;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/openadsdk/h/t$a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->a:Lcom/bytedance/sdk/openadsdk/h/t;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->d:Ljava/util/HashMap;

    .line 54
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->b:Landroid/content/Context;

    .line 55
    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-direct {v0, p1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->c:Landroid/media/MediaScannerConnection;

    .line 56
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->c:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 101
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 124
    if-nez p1, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_0

    .line 131
    const-string v1, "path"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    const-string v2, "uri"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 136
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 138
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/c/j;->c:Landroid/media/MediaScannerConnection;

    monitor-enter v3

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/c/j$a;

    .line 140
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    if-nez v0, :cond_2

    .line 142
    const-string v0, "SsDownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing request for path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 147
    :cond_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 148
    const-string v3, "scanned"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 149
    if-eqz v2, :cond_3

    .line 150
    const-string v3, "mediaprovider_uri"

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_3
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/c/j;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/c/i;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/c/i;

    move-result-object v3

    .line 154
    sget-object v4, Lcom/bytedance/sdk/openadsdk/c/m$a;->a:Landroid/net/Uri;

    iget-wide v6, v0, Lcom/bytedance/sdk/openadsdk/c/j$a;->a:J

    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 156
    invoke-virtual {v3, v0, v1, v5, v5}, Lcom/bytedance/sdk/openadsdk/c/i;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 157
    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v2, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/c/d;)V
    .locals 6

    .prologue
    .line 86
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/c/b;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "SsDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestScan() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/c/d;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->c:Landroid/media/MediaScannerConnection;

    monitor-enter v1

    .line 88
    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/j$a;

    iget-wide v2, p1, Lcom/bytedance/sdk/openadsdk/c/d;->a:J

    iget-object v4, p1, Lcom/bytedance/sdk/openadsdk/c/d;->e:Ljava/lang/String;

    iget-object v5, p1, Lcom/bytedance/sdk/openadsdk/c/d;->f:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/c/j$a;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/j;->d:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/c/j$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/j;->c:Landroid/media/MediaScannerConnection;

    invoke-virtual {v2}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/j;->c:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/c/j$a;->a(Landroid/media/MediaScannerConnection;)V

    .line 96
    :goto_0
    monitor-exit v1

    .line 97
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->c:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onMediaScannerConnected()V
    .locals 4

    .prologue
    .line 105
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->c:Landroid/media/MediaScannerConnection;

    monitor-enter v1

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/c/j$a;

    .line 107
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/c/j;->c:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/c/j$a;->a(Landroid/media/MediaScannerConnection;)V

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 4

    .prologue
    .line 114
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->a:Lcom/bytedance/sdk/openadsdk/h/t;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/h/t;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 115
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 116
    const-string v2, "path"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v2, "uri"

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 119
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->a:Lcom/bytedance/sdk/openadsdk/h/t;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/h/t;->sendMessage(Landroid/os/Message;)Z

    .line 120
    return-void
.end method
