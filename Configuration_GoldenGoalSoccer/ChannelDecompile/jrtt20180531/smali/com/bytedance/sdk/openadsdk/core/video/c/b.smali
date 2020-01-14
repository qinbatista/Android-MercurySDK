.class public Lcom/bytedance/sdk/openadsdk/core/video/c/b;
.super Lcom/bytedance/sdk/openadsdk/core/video/c/a;
.source "AndroidMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/video/c/b$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/media/MediaPlayer;

.field private final b:Lcom/bytedance/sdk/openadsdk/core/video/c/b$a;

.field private c:Landroid/media/MediaDataSource;

.field private final d:Ljava/lang/Object;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->d:Ljava/lang/Object;

    .line 44
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 45
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    .line 46
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 48
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/c/b$a;

    invoke-direct {v0, p0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/c/b;Lcom/bytedance/sdk/openadsdk/core/video/c/b;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->b:Lcom/bytedance/sdk/openadsdk/core/video/c/b$a;

    .line 49
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->n()V

    .line 50
    return-void

    .line 46
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->c:Landroid/media/MediaDataSource;

    if-eqz v0, :cond_0

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->c:Landroid/media/MediaDataSource;

    invoke-virtual {v0}, Landroid/media/MediaDataSource;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->c:Landroid/media/MediaDataSource;

    .line 98
    :cond_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->b:Lcom/bytedance/sdk/openadsdk/core/video/c/b$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 200
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->b:Lcom/bytedance/sdk/openadsdk/core/video/c/b$a;

    .line 201
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 202
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->b:Lcom/bytedance/sdk/openadsdk/core/video/c/b$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 203
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->b:Lcom/bytedance/sdk/openadsdk/core/video/c/b$a;

    .line 204
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 205
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->b:Lcom/bytedance/sdk/openadsdk/core/video/c/b$a;

    .line 206
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 207
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->b:Lcom/bytedance/sdk/openadsdk/core/video/c/b$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 208
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->b:Lcom/bytedance/sdk/openadsdk/core/video/c/b$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 209
    return-void
.end method


# virtual methods
.method public a(FF)V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 174
    return-void
.end method

.method public a(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 123
    return-void
.end method

.method public a(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 189
    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 69
    return-void
.end method

.method public a(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 58
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 59
    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->e:Z

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 62
    :cond_0
    monitor-exit v1

    .line 63
    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 118
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 169
    return-void
.end method

.method public e()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public f()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 103
    return-void
.end method

.method public g()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 108
    return-void
.end method

.method public h()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 113
    return-void
.end method

.method public i()J
    .locals 2

    .prologue
    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    .line 131
    :goto_0
    return-wide v0

    .line 129
    :catch_0
    move-exception v0

    .line 131
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public j()J
    .locals 2

    .prologue
    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    .line 141
    :goto_0
    return-wide v0

    .line 139
    :catch_0
    move-exception v0

    .line 141
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public k()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->e:Z

    .line 148
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 149
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->m()V

    .line 150
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a()V

    .line 151
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->n()V

    .line 152
    return-void
.end method

.method public l()V
    .locals 1

    .prologue
    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->m()V

    .line 162
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->a()V

    .line 163
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->n()V

    .line 164
    return-void

    .line 158
    :catch_0
    move-exception v0

    goto :goto_0
.end method
