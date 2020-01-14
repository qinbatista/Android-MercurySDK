.class public Lcom/bytedance/sdk/openadsdk/core/v;
.super Ljava/lang/Object;
.source "TTAndroidObject.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/e/b;
.implements Lcom/bytedance/sdk/openadsdk/h/t$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/v$a;
    }
.end annotation


# static fields
.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/bytedance/sdk/openadsdk/h/t;

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/bytedance/sdk/openadsdk/e/c;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/v;->c:Ljava/util/Map;

    .line 58
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/v;->c:Ljava/util/Map;

    const-string v1, "log_event"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/v;->c:Ljava/util/Map;

    const-string v1, "private"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/v;->c:Ljava/util/Map;

    const-string v1, "dispatch_message"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/v;->i:Z

    .line 64
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/v;->d:Ljava/lang/ref/WeakReference;

    .line 65
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/t;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/h/t;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/openadsdk/h/t$a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/v;->b:Lcom/bytedance/sdk/openadsdk/h/t;

    .line 66
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/v$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 127
    const-string v0, "call"

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/v$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 134
    const-string v1, "appInfo"

    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/core/v$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/v$a;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    iget v1, p1, Lcom/bytedance/sdk/openadsdk/core/v$a;->e:I

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/v;->a(Lorg/json/JSONObject;I)V

    .line 137
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/v$a;->b:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/v;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 142
    :cond_2
    const-string v1, "adInfo"

    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/core/v$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 143
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/v$a;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/v;->a(Lorg/json/JSONObject;)V

    .line 145
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/v$a;->b:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/v;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 151
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/v;->a(Lcom/bytedance/sdk/openadsdk/core/v$a;Lorg/json/JSONObject;)Z

    move-result v1

    .line 152
    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/core/v$a;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 155
    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/v$a;->b:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/v;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/v;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    const-string v0, "cid"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/v;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/v;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    const-string v0, "log_extra"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/v;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    :cond_1
    return-void
.end method

.method private a(Lorg/json/JSONObject;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 101
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 102
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/v;->e()Ljava/util/List;

    move-result-object v0

    .line 103
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 104
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 106
    :cond_0
    const-string v0, "appName"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    const-string v0, "innerAppName"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/a/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string v0, "aid"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    const-string v0, "sdkEdition"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/a/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    const-string v0, "appVersion"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/a/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    const-string v0, "netType"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/a/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string v0, "supportList"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    const-string v0, "deviceId"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/v$a;Lorg/json/JSONObject;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 171
    const-string v0, "subscribe_app_ad"

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/v$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/v;->f()V

    .line 174
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/v;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/v;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/v;->e:Lcom/bytedance/sdk/openadsdk/e/c;

    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/core/v$a;->d:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/v;->g:Ljava/lang/String;

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/v;->h:I

    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/core/v;->i:Z

    invoke-interface/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/e/c;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;IZ)V

    .line 197
    :cond_0
    :goto_0
    return v6

    .line 178
    :cond_1
    const-string v0, "download_app_ad"

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/v$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/v;->e:Lcom/bytedance/sdk/openadsdk/e/c;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/v;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/v;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 184
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/v;->e:Lcom/bytedance/sdk/openadsdk/e/c;

    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/core/v$a;->d:Lorg/json/JSONObject;

    invoke-interface {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/e/c;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 186
    :cond_2
    const-string v0, "cancel_download_app_ad"

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/v$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 187
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/v;->e:Lcom/bytedance/sdk/openadsdk/e/c;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/v;->e:Lcom/bytedance/sdk/openadsdk/e/c;

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/v$a;->d:Lorg/json/JSONObject;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/e/c;->b(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 191
    :cond_3
    const-string v0, "unsubscribe_app_ad"

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/v$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/v;->e:Lcom/bytedance/sdk/openadsdk/e/c;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/v;->e:Lcom/bytedance/sdk/openadsdk/e/c;

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/v$a;->d:Lorg/json/JSONObject;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/e/c;->a(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 214
    if-nez p1, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/v;->a()Landroid/webkit/WebView;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_0

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:ToutiaoJSBridge._handleMessageFromToutiao("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/l;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 221
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const-string v0, "TTAndroidObject"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "js_msg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 245
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 246
    const-string v1, "TTAndroidObject"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/h/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 250
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    .line 251
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 252
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/v$a;

    invoke-direct {v4}, Lcom/bytedance/sdk/openadsdk/core/v$a;-><init>()V

    .line 253
    const-string v5, "__msg_type"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/bytedance/sdk/openadsdk/core/v$a;->a:Ljava/lang/String;

    .line 254
    const-string v5, "__callback_id"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/bytedance/sdk/openadsdk/core/v$a;->b:Ljava/lang/String;

    .line 255
    const-string v5, "func"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/bytedance/sdk/openadsdk/core/v$a;->c:Ljava/lang/String;

    .line 256
    const-string v5, "params"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    iput-object v5, v4, Lcom/bytedance/sdk/openadsdk/core/v$a;->d:Lorg/json/JSONObject;

    .line 257
    const-string v5, "JSSDK"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v4, Lcom/bytedance/sdk/openadsdk/core/v$a;->e:I

    .line 258
    iget-object v3, v4, Lcom/bytedance/sdk/openadsdk/core/v$a;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v4, Lcom/bytedance/sdk/openadsdk/core/v$a;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 250
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    :cond_1
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/v;->b:Lcom/bytedance/sdk/openadsdk/h/t;

    const/16 v5, 0xb

    invoke-virtual {v3, v5}, Lcom/bytedance/sdk/openadsdk/h/t;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 262
    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 263
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/v;->b:Lcom/bytedance/sdk/openadsdk/h/t;

    invoke-virtual {v4, v3}, Lcom/bytedance/sdk/openadsdk/h/t;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 265
    :catch_0
    move-exception v0

    .line 266
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/m;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 267
    const-string v0, "TTAndroidObject"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to parse jsbridge msg queue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_2
    :goto_2
    return-void

    .line 269
    :cond_3
    const-string v0, "TTAndroidObject"

    const-string v1, "failed to parse jsbridge msg queue"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private c(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 202
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 203
    const-string v1, "__msg_type"

    const-string v2, "callback"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    const-string v1, "__callback_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    if-eqz p2, :cond_0

    .line 206
    const-string v1, "__params"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    :cond_0
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/v;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 328
    if-nez p1, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    const-string v0, "bytedance://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    const-string v0, "bytedance://dispatch_message/"

    .line 335
    const-string v1, "bytedance://private/setresult/"

    .line 337
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 338
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/v;->a()Landroid/webkit/WebView;

    move-result-object v0

    .line 340
    if-eqz v0, :cond_0

    .line 341
    const-string v1, "javascript:ToutiaoJSBridge._fetchQueue()"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/l;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0

    .line 355
    :catch_0
    move-exception v0

    goto :goto_0

    .line 343
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 345
    const/16 v1, 0x26

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 346
    if-lez v1, :cond_0

    .line 349
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 350
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 351
    const-string v2, "SCENE_FETCHQUEUE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 352
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/v;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private e()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "appInfo"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "adInfo"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/v;->e:Lcom/bytedance/sdk/openadsdk/e/c;

    if-nez v0, :cond_0

    .line 397
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/e/a;->a(Lcom/bytedance/sdk/openadsdk/e/b;)Lcom/bytedance/sdk/openadsdk/e/c;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/v;->e:Lcom/bytedance/sdk/openadsdk/e/c;

    .line 399
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/v;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/v;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)Lcom/bytedance/sdk/openadsdk/core/v;
    .locals 0

    .prologue
    .line 88
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/v;->h:I

    .line 89
    return-object p0
.end method

.method public a(Landroid/webkit/WebView;)Lcom/bytedance/sdk/openadsdk/core/v;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/v;->a:Ljava/lang/ref/WeakReference;

    .line 74
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/v;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/v;->f:Ljava/lang/String;

    .line 79
    return-object p0
.end method

.method public a(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 379
    if-nez p1, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 384
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/core/v$a;

    if-eqz v0, :cond_0

    .line 386
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/v$a;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/v;->a(Lcom/bytedance/sdk/openadsdk/core/v$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 387
    :catch_0
    move-exception v0

    goto :goto_0

    .line 382
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 229
    :try_start_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    :goto_0
    return-void

    .line 232
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 233
    const-string v1, "__msg_type"

    const-string v2, "event"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    const-string v1, "__event_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    if-eqz p2, :cond_1

    .line 236
    const-string v1, "__params"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    :cond_1
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/v;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/v;->i:Z

    .line 168
    return-void
.end method

.method public a(Landroid/net/Uri;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 275
    if-nez p1, :cond_1

    .line 288
    :cond_0
    :goto_0
    return v0

    .line 279
    :cond_1
    :try_start_0
    const-string v1, "bytedance"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 283
    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/v;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    const/4 v0, 0x1

    goto :goto_0

    .line 286
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/v;
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/v;->g:Ljava/lang/String;

    .line 84
    return-object p0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/v;->e:Lcom/bytedance/sdk/openadsdk/e/c;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/v;->e:Lcom/bytedance/sdk/openadsdk/e/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/e/c;->b()V

    .line 363
    :cond_0
    return-void
.end method

.method public b(Landroid/net/Uri;)V
    .locals 10
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const-wide/16 v6, 0x0

    .line 293
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 294
    const-string v1, "log_event"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    const-string v0, "category"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 296
    const-string v0, "tag"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 297
    const-string v0, "label"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 300
    :try_start_1
    const-string v0, "value"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v4

    .line 305
    :goto_0
    :try_start_2
    const-string v0, "ext_value"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-wide v6

    .line 308
    :goto_1
    const/4 v0, 0x0

    .line 309
    :try_start_3
    const-string v8, "extra"

    invoke-virtual {p1, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 310
    invoke-static {v9}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v8

    if-nez v8, :cond_3

    .line 312
    :try_start_4
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 316
    :goto_2
    :try_start_5
    invoke-static/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V

    .line 325
    :goto_3
    return-void

    .line 301
    :catch_0
    move-exception v0

    move-wide v4, v6

    goto :goto_0

    .line 313
    :catch_1
    move-exception v8

    move-object v8, v0

    goto :goto_2

    .line 317
    :cond_0
    const-string v1, "private"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "dispatch_message"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 318
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/v;->d(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    .line 322
    :catch_2
    move-exception v0

    .line 323
    const-string v1, "TTAndroidObject"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUri exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 320
    :cond_2
    :try_start_6
    const-string v0, "TTAndroidObject"

    const-string v1, "handlrUir: not match schema host"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 306
    :catch_3
    move-exception v0

    goto :goto_1

    :cond_3
    move-object v8, v0

    goto :goto_2
.end method

.method public b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 403
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/v;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 404
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/v;->e:Lcom/bytedance/sdk/openadsdk/e/c;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/v;->e:Lcom/bytedance/sdk/openadsdk/e/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/e/c;->c()V

    .line 369
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/v;->e:Lcom/bytedance/sdk/openadsdk/e/c;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/v;->e:Lcom/bytedance/sdk/openadsdk/e/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/e/c;->d()V

    .line 375
    :cond_0
    return-void
.end method
