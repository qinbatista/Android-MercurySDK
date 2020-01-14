.class public Lcom/ss/android/crash/log/c;
.super Ljava/lang/Object;
.source "ANRManager.java"


# instance fields
.field private a:Lcom/ss/android/crash/log/a;

.field private b:Landroid/os/HandlerThread;

.field private c:Lcom/ss/android/crash/log/b;

.field private d:Lcom/ss/android/crash/log/d;

.field private final e:Landroid/content/Context;

.field private volatile f:J

.field private volatile g:Z

.field private final h:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/crash/log/c;->b:Landroid/os/HandlerThread;

    .line 38
    iput-boolean v2, p0, Lcom/ss/android/crash/log/c;->g:Z

    .line 42
    if-nez p1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/crash/log/c;->e:Landroid/content/Context;

    .line 45
    iget-object v0, p0, Lcom/ss/android/crash/log/c;->e:Landroid/content/Context;

    const-string v1, "anr_monitor_table"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/crash/log/c;->h:Landroid/content/SharedPreferences;

    .line 46
    iget-object v0, p0, Lcom/ss/android/crash/log/c;->h:Landroid/content/SharedPreferences;

    const-string v1, "trace_anr_happen_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/crash/log/c;->f:J

    .line 47
    return-void
.end method

.method private a(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    if-nez p1, :cond_0

    .line 197
    const/4 v0, 0x0

    .line 203
    :goto_0
    return-object v0

    .line 198
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    :goto_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 203
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private varargs a(Ljava/io/BufferedReader;[Ljava/util/regex/Pattern;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 182
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v1, p2

    if-gtz v1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-object v0

    .line 185
    :cond_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 186
    array-length v4, p2

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v5, p2, v1

    .line 187
    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 188
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, v2

    const/4 v1, 0x1

    aput-object v3, v0, v1

    goto :goto_0

    .line 186
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private b()Ljava/lang/String;
    .locals 7

    .prologue
    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 209
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 210
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 211
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    .line 212
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 213
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 16

    .prologue
    .line 102
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    const/4 v2, 0x0

    .line 178
    :goto_0
    return-object v2

    .line 104
    :cond_0
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v3

    if-nez v3, :cond_2

    .line 106
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 108
    :cond_2
    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 109
    const-string v2, "-{5}\\spid\\s\\d+\\sat\\s\\d+-\\d+-\\d+\\s\\d{2}:\\d{2}:\\d{2}\\s-{5}"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 110
    const-string v3, "-{5}\\send\\s\\d+\\s-{5}"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 111
    const-string v3, "Cmd\\sline:\\s(\\S+)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 112
    const-string v4, "\".+\"\\s(daemon\\s){0,1}prio=\\d+\\stid=\\d+\\s.*"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 113
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 115
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/regex/Pattern;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v5}, Lcom/ss/android/crash/log/c;->a(Ljava/io/BufferedReader;[Ljava/util/regex/Pattern;)[Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 116
    const/4 v2, 0x0

    goto :goto_0

    .line 117
    :cond_3
    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\s"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 118
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v12, "\\s"

    invoke-virtual {v6, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x4

    aget-object v6, v6, v12

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v2, v2, v6

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "\\s"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x5

    aget-object v2, v2, v6

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 121
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/regex/Pattern;

    const/4 v6, 0x0

    aput-object v3, v2, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v2}, Lcom/ss/android/crash/log/c;->a(Ljava/io/BufferedReader;[Ljava/util/regex/Pattern;)[Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    .line 122
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 123
    :cond_4
    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\s"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    .line 125
    move/from16 v0, p2

    int-to-long v12, v0

    cmp-long v3, v10, v12

    if-nez v3, :cond_5

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 126
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 127
    :cond_6
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/ss/android/crash/log/c;->f:J

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/ss/android/crash/log/c;->f:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v10, 0x4e20

    cmp-long v2, v2, v10

    if-gez v2, :cond_7

    .line 128
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 129
    :cond_7
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/ss/android/crash/log/c;->f:J

    .line 130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ss/android/crash/log/c;->h:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_8

    .line 131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ss/android/crash/log/c;->h:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "trace_anr_happen_time"

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/ss/android/crash/log/c;->f:J

    invoke-interface {v2, v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 133
    :cond_8
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 134
    const-string v3, "anrTime"

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 135
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 137
    const/4 v4, 0x0

    .line 138
    const/4 v3, 0x0

    move v6, v3

    move v3, v4

    .line 139
    :cond_9
    :goto_1
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/util/regex/Pattern;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const/4 v5, 0x1

    aput-object v9, v4, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v4}, Lcom/ss/android/crash/log/c;->a(Ljava/io/BufferedReader;[Ljava/util/regex/Pattern;)[Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_d

    const/4 v4, 0x0

    aget-object v4, v11, v4

    if-ne v4, v9, :cond_d

    .line 141
    const/4 v4, -0x1

    .line 142
    const-string v5, ""

    .line 143
    const-string v12, "\".+\""

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v13, v11, v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 144
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 145
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x1

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v5, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 147
    :cond_a
    const-string v12, "tid=\\d+"

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v11, v11, v13

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 148
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 149
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    .line 150
    const-string v11, "="

    invoke-virtual {v4, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v4, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 152
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/ss/android/crash/log/c;->a(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v11

    .line 153
    const/4 v12, -0x1

    if-eq v4, v12, :cond_9

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_9

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 155
    const-string v12, "main"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 156
    const-string v3, "mainStackFromTrace"

    invoke-virtual {v2, v3, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    const/4 v3, 0x1

    .line 159
    :cond_c
    add-int/lit8 v6, v6, 0x1

    .line 160
    int-to-long v12, v6

    const-wide/16 v14, 0x5

    cmp-long v12, v12, v14

    if-gtz v12, :cond_9

    .line 162
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 163
    const-string v13, "id"

    invoke-virtual {v12, v13, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 164
    const-string v4, "name"

    invoke-virtual {v12, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    const-string v4, "stack"

    invoke-virtual {v12, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    invoke-virtual {v10, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 175
    :catch_0
    move-exception v2

    .line 176
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 178
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 168
    :cond_d
    :try_start_1
    const-string v4, "allThreadStack"

    invoke-virtual {v2, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    if-nez v3, :cond_e

    .line 170
    const-string v3, "main"

    invoke-direct/range {p0 .. p0}, Lcom/ss/android/crash/log/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    :cond_e
    const-string v3, "thread_number"

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public a()V
    .locals 4

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/ss/android/crash/log/c;->g:Z

    if-eqz v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 52
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "anr_monitor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ss/android/crash/log/c;->b:Landroid/os/HandlerThread;

    .line 53
    iget-object v0, p0, Lcom/ss/android/crash/log/c;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 54
    new-instance v0, Lcom/ss/android/crash/log/b;

    iget-object v1, p0, Lcom/ss/android/crash/log/c;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ss/android/crash/log/b;-><init>(Lcom/ss/android/crash/log/c;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/crash/log/c;->c:Lcom/ss/android/crash/log/b;

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 56
    new-instance v0, Lcom/ss/android/crash/log/a;

    const-string v1, "/data/anr/"

    const/16 v2, 0x8

    invoke-direct {v0, p0, v1, v2}, Lcom/ss/android/crash/log/a;-><init>(Lcom/ss/android/crash/log/c;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/ss/android/crash/log/c;->a:Lcom/ss/android/crash/log/a;

    .line 57
    iget-object v0, p0, Lcom/ss/android/crash/log/c;->a:Lcom/ss/android/crash/log/a;

    invoke-virtual {v0}, Lcom/ss/android/crash/log/a;->startWatching()V

    .line 62
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/crash/log/c;->g:Z

    goto :goto_0

    .line 59
    :cond_1
    new-instance v0, Lcom/ss/android/crash/log/d;

    const-wide/16 v2, 0x1388

    invoke-direct {v0, p0, v2, v3}, Lcom/ss/android/crash/log/d;-><init>(Lcom/ss/android/crash/log/c;J)V

    iput-object v0, p0, Lcom/ss/android/crash/log/c;->d:Lcom/ss/android/crash/log/d;

    .line 60
    iget-object v0, p0, Lcom/ss/android/crash/log/c;->d:Lcom/ss/android/crash/log/d;

    invoke-virtual {v0}, Lcom/ss/android/crash/log/d;->start()V

    goto :goto_1
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ss/android/crash/log/c;->c:Lcom/ss/android/crash/log/b;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/ss/android/crash/log/c;->c:Lcom/ss/android/crash/log/b;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/crash/log/b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 68
    :cond_0
    return-void
.end method

.method public b(ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/crash/log/c;->e:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 74
    iget-object v1, p0, Lcom/ss/android/crash/log/c;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 75
    iget-object v2, p0, Lcom/ss/android/crash/log/c;->e:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/ss/android/crash/log/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 78
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-lez v2, :cond_0

    .line 80
    const/16 v3, 0xc8

    if-ne p1, v3, :cond_3

    .line 81
    invoke-virtual {p0, p2, v2, v1}, Lcom/ss/android/crash/log/c;->a(Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 85
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 86
    const-string v3, "pid"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 87
    const-string v2, "package"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string v1, "is_remote_process"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 89
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 90
    const-string v2, "data"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string v0, "is_anr"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 92
    const-string v0, "anr_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 93
    invoke-static {}, Lcom/ss/android/crash/log/i;->b()Lcom/ss/android/crash/log/i;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ss/android/crash/log/i;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 82
    :cond_3
    const/16 v3, 0x64

    if-ne p1, v3, :cond_2

    .line 83
    :try_start_1
    invoke-static {}, Lcom/ss/android/crash/log/e;->a()Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method
