.class public Lcom/ss/android/crash/log/k;
.super Ljava/lang/Object;
.source "CrashUploadManager.java"


# static fields
.field private static final f:Ljava/lang/Object;

.field private static final g:Ljava/io/FilenameFilter;


# instance fields
.field private volatile a:Landroid/content/Context;

.field private b:Lcom/ss/android/crash/log/j$a;

.field private c:Landroid/content/SharedPreferences;

.field private volatile d:Ljava/lang/String;

.field private volatile e:Z

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ss/android/crash/log/k;->f:Ljava/lang/Object;

    .line 35
    new-instance v0, Lcom/ss/android/crash/log/k$1;

    invoke-direct {v0}, Lcom/ss/android/crash/log/k$1;-><init>()V

    sput-object v0, Lcom/ss/android/crash/log/k;->g:Ljava/io/FilenameFilter;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/ss/android/crash/log/j$a;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object v3, p0, Lcom/ss/android/crash/log/k;->h:Ljava/lang/String;

    .line 43
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context and ICommonParams must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_1
    iput-object p2, p0, Lcom/ss/android/crash/log/k;->b:Lcom/ss/android/crash/log/j$a;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/crash/log/k;->a:Landroid/content/Context;

    .line 47
    iget-object v0, p0, Lcom/ss/android/crash/log/k;->a:Landroid/content/Context;

    const-string v1, "app_crash_copy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/crash/log/k;->c:Landroid/content/SharedPreferences;

    .line 48
    iget-object v0, p0, Lcom/ss/android/crash/log/k;->c:Landroid/content/SharedPreferences;

    const-string v1, "header"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/crash/log/k;->d:Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Lcom/ss/android/crash/log/k;->c()V

    .line 50
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    :cond_0
    const/4 v0, 0x0

    .line 214
    :goto_0
    return-object v0

    .line 208
    :cond_1
    sget-object v1, Lcom/ss/android/crash/log/k;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 209
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/ss/android/crash/log/k;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/ss/android/crash/log/l;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "tt_crash_log_dir"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 211
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 212
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 213
    invoke-static {v2, p1}, Lcom/ss/android/crash/log/n;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 214
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/ss/android/crash/log/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/ss/android/crash/log/k;->d()V

    return-void
.end method

.method static synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/ss/android/crash/log/k;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/ss/android/crash/log/k;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/ss/android/crash/log/k;->e()V

    return-void
.end method

.method static synthetic c(Lcom/ss/android/crash/log/k;)Lcom/ss/android/crash/log/j$a;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ss/android/crash/log/k;->b:Lcom/ss/android/crash/log/j$a;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 70
    invoke-static {}, Lcom/ss/android/crash/log/p;->a()Lcom/ss/android/crash/log/p;

    move-result-object v0

    new-instance v1, Lcom/ss/android/crash/log/k$2;

    invoke-direct {v1, p0}, Lcom/ss/android/crash/log/k$2;-><init>(Lcom/ss/android/crash/log/k;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/crash/log/p;->a(Ljava/lang/Runnable;)V

    .line 81
    return-void
.end method

.method private d()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ss/android/crash/log/k;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/ss/android/crash/log/l;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tt_crash_log_dir"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 103
    :cond_0
    return-void

    .line 87
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 88
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 89
    const/4 v0, 0x0

    :goto_0
    array-length v1, v2

    if-ge v0, v1, :cond_0

    .line 90
    aget-object v3, v2, v0

    .line 91
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    .line 94
    :try_start_0
    sget-object v4, Lcom/ss/android/crash/log/k;->f:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/crash/log/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :try_start_2
    iget-object v4, p0, Lcom/ss/android/crash/log/k;->b:Lcom/ss/android/crash/log/j$a;

    invoke-interface {v4}, Lcom/ss/android/crash/log/j$a;->a()Ljava/util/Map;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/ss/android/crash/log/l;->a(Ljava/lang/String;Ljava/util/Map;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 101
    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 98
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private e()V
    .locals 22

    .prologue
    .line 106
    const/4 v6, 0x0

    .line 108
    :try_start_0
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ss/android/crash/log/k;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/ss/android/crash/log/l;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ss_native_crash_logs"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    sget-object v3, Lcom/ss/android/crash/log/k;->g:Ljava/io/FilenameFilter;

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v12

    .line 110
    if-eqz v12, :cond_0

    array-length v2, v12
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v2, :cond_1

    .line 177
    :cond_0
    invoke-static {v6}, Lcom/ss/android/crash/log/l;->a(Ljava/io/Closeable;)V

    .line 179
    :goto_0
    return-void

    .line 113
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v12, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 114
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ss/android/crash/log/k;->h:Ljava/lang/String;

    .line 115
    const/4 v2, 0x0

    aget-object v2, v12, v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ss/android/crash/log/k;->h:Ljava/lang/String;

    .line 116
    array-length v14, v12
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    const/4 v3, 0x0

    .line 119
    const/4 v2, 0x0

    move v8, v2

    move-object v2, v6

    :goto_1
    if-ge v8, v14, :cond_a

    .line 120
    :try_start_2
    aget-object v15, v12, v8

    .line 121
    const/4 v4, 0x5

    if-ge v8, v4, :cond_2

    if-eqz v13, :cond_c

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 122
    :cond_2
    const/4 v3, 0x1

    move v7, v3

    .line 124
    :goto_2
    const-wide/16 v10, 0x0

    .line 126
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 127
    const/4 v4, 0x0

    .line 128
    const/4 v3, 0x0

    .line 129
    if-nez v7, :cond_b

    invoke-virtual {v15}, Ljava/io/File;->length()J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v18

    const-wide/16 v20, 0x4000

    cmp-long v5, v18, v20

    if-gez v5, :cond_b

    .line 131
    :try_start_3
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v15}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v9, v3

    move-object v3, v4

    move-wide v4, v10

    .line 132
    :goto_3
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 133
    if-nez v9, :cond_4

    .line 134
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    move-object v2, v3

    .line 141
    :cond_3
    :goto_4
    add-int/lit8 v3, v9, 0x1

    move v9, v3

    move-object v3, v2

    goto :goto_3

    .line 136
    :cond_4
    const/4 v10, 0x1

    if-eq v9, v10, :cond_3

    .line 139
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, "\n"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v2, v3

    goto :goto_4

    .line 143
    :cond_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 144
    const/4 v6, 0x0

    .line 145
    const/4 v9, 0x0

    .line 146
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ss/android/crash/log/k;->d:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 147
    new-instance v2, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/ss/android/crash/log/k;->d:Ljava/lang/String;

    invoke-direct {v2, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 154
    :goto_5
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 155
    const-string v10, "header"

    invoke-virtual {v9, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    const-string v2, "data"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    const-string v2, "is_native_crash"

    const/4 v10, 0x1

    invoke-virtual {v9, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 158
    const-string v2, "no_process_name"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 159
    const-string v2, "process_name"

    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    :cond_6
    const-wide/16 v10, 0x0

    cmp-long v2, v4, v10

    if-lez v2, :cond_7

    .line 161
    const-string v2, "crash_time"

    invoke-virtual {v9, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 162
    :cond_7
    if-eqz v3, :cond_9

    const-string v2, ":"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 163
    const-string v2, "remote_process"

    const/4 v3, 0x1

    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 166
    :goto_6
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ss/android/crash/log/k;->b:Lcom/ss/android/crash/log/j$a;

    invoke-interface {v3}, Lcom/ss/android/crash/log/j$a;->a()Ljava/util/Map;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/crash/log/l;->a(Ljava/lang/String;Ljava/util/Map;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 171
    :goto_7
    :try_start_6
    invoke-virtual {v15}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 119
    :goto_8
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v3, v7

    move-object v2, v6

    goto/16 :goto_1

    .line 149
    :cond_8
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ss/android/crash/log/k;->b:Lcom/ss/android/crash/log/j$a;

    invoke-interface {v2}, Lcom/ss/android/crash/log/j$a;->a()Ljava/util/Map;

    move-result-object v10

    .line 150
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 151
    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_9

    .line 167
    :catch_0
    move-exception v2

    move-object v2, v6

    :goto_a
    move-object v6, v2

    goto :goto_7

    .line 165
    :cond_9
    const-string v2, "remote_process"

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_6

    .line 175
    :catch_1
    move-exception v2

    .line 177
    :goto_b
    invoke-static {v6}, Lcom/ss/android/crash/log/l;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :cond_a
    invoke-static {v2}, Lcom/ss/android/crash/log/l;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    :goto_c
    invoke-static {v6}, Lcom/ss/android/crash/log/l;->a(Ljava/io/Closeable;)V

    throw v2

    .line 172
    :catch_2
    move-exception v2

    goto :goto_8

    .line 177
    :catchall_1
    move-exception v3

    move-object v6, v2

    move-object v2, v3

    goto :goto_c

    .line 175
    :catch_3
    move-exception v3

    move-object v6, v2

    goto :goto_b

    .line 167
    :catch_4
    move-exception v2

    move-object v2, v6

    goto :goto_a

    :catch_5
    move-exception v3

    goto :goto_a

    :cond_b
    move-object v6, v2

    goto :goto_7

    :cond_c
    move v7, v3

    goto/16 :goto_2

    :cond_d
    move-object v2, v9

    goto/16 :goto_5
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/ss/android/crash/log/k;->e:Z

    if-eqz v0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/ss/android/crash/log/k;->b:Lcom/ss/android/crash/log/j$a;

    invoke-interface {v0}, Lcom/ss/android/crash/log/j$a;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/crash/log/k;->b:Lcom/ss/android/crash/log/j$a;

    invoke-interface {v0}, Lcom/ss/android/crash/log/j$a;->a()Ljava/util/Map;

    move-result-object v0

    const-string v1, "device_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/ss/android/crash/log/k;->b:Lcom/ss/android/crash/log/j$a;

    invoke-interface {v0}, Lcom/ss/android/crash/log/j$a;->a()Ljava/util/Map;

    move-result-object v1

    .line 57
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 58
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 60
    :try_start_0
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/ss/android/crash/log/k;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "header"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/crash/log/k;->e:Z

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 181
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 185
    iget-object v0, p0, Lcom/ss/android/crash/log/k;->b:Lcom/ss/android/crash/log/j$a;

    invoke-interface {v0}, Lcom/ss/android/crash/log/j$a;->a()Ljava/util/Map;

    move-result-object v2

    .line 186
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 187
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 200
    :catch_0
    move-exception v0

    goto :goto_0

    .line 189
    :cond_2
    const-string v0, "header"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ss/android/crash/log/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {}, Lcom/ss/android/crash/log/p;->a()Lcom/ss/android/crash/log/p;

    move-result-object v1

    new-instance v2, Lcom/ss/android/crash/log/k$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/ss/android/crash/log/k$3;-><init>(Lcom/ss/android/crash/log/k;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ss/android/crash/log/p;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
