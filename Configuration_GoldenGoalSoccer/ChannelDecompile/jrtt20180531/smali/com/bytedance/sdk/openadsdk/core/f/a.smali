.class Lcom/bytedance/sdk/openadsdk/core/f/a;
.super Ljava/lang/Object;
.source "SplashAdCacheManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/h/t$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/f/a$a;,
        Lcom/bytedance/sdk/openadsdk/core/f/a$c;,
        Lcom/bytedance/sdk/openadsdk/core/f/a$b;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/core/f/a;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/bytedance/sdk/openadsdk/h/t;

.field private d:Lcom/bytedance/sdk/openadsdk/core/f/a$a;

.field private e:Lcom/bytedance/sdk/openadsdk/core/f/a$b;

.field private f:Lcom/bytedance/sdk/openadsdk/core/f/a$c;

.field private g:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/t;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/h/t;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/openadsdk/h/t$a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->c:Lcom/bytedance/sdk/openadsdk/h/t;

    .line 69
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->g:Ljava/util/concurrent/ScheduledExecutorService;

    .line 76
    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->b:Landroid/content/Context;

    .line 79
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/f/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->b:Landroid/content/Context;

    return-object v0
.end method

.method static a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/f/a;
    .locals 2

    .prologue
    .line 82
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/f/a;->a:Lcom/bytedance/sdk/openadsdk/core/f/a;

    if-nez v0, :cond_1

    .line 83
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/f/a;

    monitor-enter v1

    .line 84
    :try_start_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/f/a;->a:Lcom/bytedance/sdk/openadsdk/core/f/a;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/a;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/f/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/f/a;->a:Lcom/bytedance/sdk/openadsdk/core/f/a;

    .line 87
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/f/a;->a:Lcom/bytedance/sdk/openadsdk/core/f/a;

    return-object v0

    .line 87
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .prologue
    .line 215
    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/h/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/io/File;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/a$b;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/a$b;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/f/a$b;-><init>(Lcom/bytedance/sdk/openadsdk/core/f/a;Ljava/io/File;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/a$b;

    .line 181
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/a$b;

    return-object v0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->e:Lcom/bytedance/sdk/openadsdk/core/f/a$b;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/f/a$b;->a(Ljava/io/File;)V

    goto :goto_0
.end method

.method private a(J)V
    .locals 7

    .prologue
    .line 150
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->b:Landroid/content/Context;

    const-string v1, "tt_splash"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 151
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 152
    const-string v1, "expiration"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "update"

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "has_ad_cache"

    const/4 v2, 0x1

    .line 154
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 155
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 156
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/d/j;Ljava/io/File;)V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->f:Lcom/bytedance/sdk/openadsdk/core/f/a$c;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/a$c;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/f/a$c;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/j;Ljava/io/File;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->f:Lcom/bytedance/sdk/openadsdk/core/f/a$c;

    .line 143
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->g:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->f:Lcom/bytedance/sdk/openadsdk/core/f/a$c;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 144
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->f:Lcom/bytedance/sdk/openadsdk/core/f/a$c;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/f/a$c;->a(Lcom/bytedance/sdk/openadsdk/core/d/j;)V

    .line 141
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->f:Lcom/bytedance/sdk/openadsdk/core/f/a$c;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/f/a$c;->a(Ljava/io/File;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/f/a;)Lcom/bytedance/sdk/openadsdk/h/t;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->c:Lcom/bytedance/sdk/openadsdk/h/t;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 221
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 222
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->d:Lcom/bytedance/sdk/openadsdk/core/f/a$a;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/core/d/j;

    if-eqz v0, :cond_2

    .line 224
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->d:Lcom/bytedance/sdk/openadsdk/core/f/a$a;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/j;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/f/a$a;->a(Lcom/bytedance/sdk/openadsdk/core/d/j;)V

    .line 225
    const-string v0, "SplashAdCacheManager"

    const-string v1, "\u7f13\u5b58\u53cd\u5e8f\u5217\u5316\u6210\u529f"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->c:Lcom/bytedance/sdk/openadsdk/h/t;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/t;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 233
    :cond_1
    return-void

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->d:Lcom/bytedance/sdk/openadsdk/core/f/a$a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/f/a$a;->a()V

    .line 228
    const-string v0, "SplashAdCacheManager"

    const-string v1, "\u7f13\u5b58\u53cd\u5e8f\u5217\u5316\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method a(Lcom/bytedance/sdk/openadsdk/core/d/j;)V
    .locals 4

    .prologue
    .line 98
    if-nez p1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->b:Landroid/content/Context;

    const-string v1, "/splash_ad_cache/"

    const-string v2, "tt_splash_image_cache"

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/f/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Lcom/bytedance/sdk/openadsdk/core/d/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->r()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/f/a;->a(J)V

    .line 109
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/f/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/j;Ljava/io/File;)V

    goto :goto_0
.end method

.method a(Lcom/bytedance/sdk/openadsdk/core/f/a$a;)V
    .locals 3
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/f/a$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 164
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->b:Landroid/content/Context;

    const-string v1, "/splash_ad_cache/"

    const-string v2, "tt_splash_image_cache"

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/f/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 165
    if-nez v0, :cond_0

    .line 166
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/f/a$a;->a()V

    .line 168
    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->d:Lcom/bytedance/sdk/openadsdk/core/f/a$a;

    .line 169
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->g:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/f/a;->a(Ljava/io/File;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 170
    return-void
.end method

.method a()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 185
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->b:Landroid/content/Context;

    const-string v1, "tt_splash"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 186
    const-string v1, "has_ad_cache"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 187
    return v0
.end method

.method b()Z
    .locals 10

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    .line 196
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->b:Landroid/content/Context;

    const-string v2, "tt_splash"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 197
    const-string v2, "expiration"

    invoke-interface {v1, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 198
    const-string v4, "update"

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 201
    cmp-long v1, v6, v4

    if-ltz v1, :cond_0

    cmp-long v1, v6, v2

    if-ltz v1, :cond_1

    .line 202
    :cond_0
    const/4 v0, 0x1

    .line 205
    :cond_1
    return v0
.end method

.method c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 239
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->b:Landroid/content/Context;

    const-string v1, "tt_materialMeta"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 240
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 241
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/a;->b:Landroid/content/Context;

    const-string v1, "tt_splash"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 242
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 243
    return-void
.end method
