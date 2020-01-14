.class public Lcom/bytedance/sdk/openadsdk/h/p;
.super Ljava/lang/Object;
.source "RomUtils.java"


# static fields
.field private static final a:Ljava/lang/CharSequence;

.field private static final b:Ljava/lang/CharSequence;

.field private static final c:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "sony"

    sput-object v0, Lcom/bytedance/sdk/openadsdk/h/p;->a:Ljava/lang/CharSequence;

    .line 33
    const-string v0, "amigo"

    sput-object v0, Lcom/bytedance/sdk/openadsdk/h/p;->b:Ljava/lang/CharSequence;

    .line 34
    const-string v0, "funtouch"

    sput-object v0, Lcom/bytedance/sdk/openadsdk/h/p;->c:Ljava/lang/CharSequence;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/r;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/p;->j()Ljava/lang/String;

    move-result-object v0

    .line 78
    :cond_0
    :goto_0
    return-object v0

    .line 46
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/r;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/p;->l()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 50
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/p;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 51
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/p;->n()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 54
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/p;->k()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/p;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 60
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/p;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 64
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/p;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 65
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/p;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 68
    :cond_5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/p;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 69
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/p;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 73
    :cond_6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/p;->h()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 176
    const-string v3, ""

    .line 177
    const/4 v1, 0x0

    .line 179
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getprop "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 180
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    .line 181
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v5, 0x400

    invoke-direct {v2, v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 183
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 188
    if-eqz v2, :cond_0

    .line 190
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 196
    :cond_0
    :goto_0
    return-object v0

    .line 191
    :catch_0
    move-exception v1

    .line 192
    const-string v2, "ToolUtils"

    const-string v3, "Exception while closing InputStream"

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 184
    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v3

    .line 185
    :goto_1
    :try_start_4
    const-string v3, "ToolUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to read sysprop "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 188
    if-eqz v2, :cond_0

    .line 190
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 191
    :catch_2
    move-exception v1

    .line 192
    const-string v2, "ToolUtils"

    const-string v3, "Exception while closing InputStream"

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_1

    .line 190
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 193
    :cond_1
    :goto_3
    throw v0

    .line 191
    :catch_3
    move-exception v1

    .line 192
    const-string v2, "ToolUtils"

    const-string v3, "Exception while closing InputStream"

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 188
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 184
    :catch_4
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ro.build.uiversion"

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v0

    .line 89
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 90
    const-string v2, "360"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "qiku"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ro.vivo.os.build.display.id"

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.vivo.product.version"

    .line 95
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    return-object v0
.end method

.method public static e()Z
    .locals 2

    .prologue
    .line 99
    const-string v0, "ro.vivo.os.build.display.id"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/h/p;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 100
    :goto_0
    return v0

    .line 101
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f()Z
    .locals 2

    .prologue
    .line 105
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 106
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/h/p;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 105
    :goto_0
    return v0

    .line 106
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.gn.sv.version"

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/p;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eui_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.letv.release.version"

    .line 118
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static i()Z
    .locals 1

    .prologue
    .line 124
    const-string v0, "ro.letv.release.version"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static j()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/r;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "miui_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.miui.ui.version.name"

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static k()Ljava/lang/String;
    .locals 3

    .prologue
    .line 144
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/r;->b()Ljava/lang/String;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "emotionui"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static l()Ljava/lang/String;
    .locals 3

    .prologue
    .line 152
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 153
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "flyme"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static m()Z
    .locals 2

    .prologue
    .line 160
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 161
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oppo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 164
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static n()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/p;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "coloros_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.build.version.opporom"

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
