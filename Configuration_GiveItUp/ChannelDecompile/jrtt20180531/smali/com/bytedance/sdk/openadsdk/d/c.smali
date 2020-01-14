.class public Lcom/bytedance/sdk/openadsdk/d/c;
.super Ljava/lang/Object;
.source "AdEventManager.java"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/d/h;",
            "Lcom/bytedance/sdk/openadsdk/d/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/d/c;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 54
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v2

    .line 55
    sget-object v0, Lcom/bytedance/sdk/openadsdk/d/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/d/h;

    .line 57
    if-eqz v0, :cond_2

    .line 58
    :goto_0
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/d/h;->a(Z)V

    .line 59
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/d/h;->a(J)V

    .line 60
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 62
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 63
    const-string v0, "device"

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/h/d;->d(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string v5, "is_cache"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->u()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 65
    const-string v0, "ad_extra_data"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v0, "log_extra"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_2
    const-string v0, "show"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->l()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, p2, v0, v4, v3}, Lcom/bytedance/sdk/openadsdk/d/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/d/a;

    move-result-object v0

    .line 70
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->b()Lcom/bytedance/sdk/openadsdk/d/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/d/b;->a(Ljava/lang/Object;)V

    .line 72
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->h()Ljava/util/List;

    move-result-object v2

    .line 75
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->d()Lcom/bytedance/sdk/openadsdk/g/a;

    move-result-object v3

    invoke-interface {v3, v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/g/a;->a(Ljava/lang/String;Ljava/util/List;Z)V

    .line 77
    :cond_0
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/m;->a:Z

    if-eqz v0, :cond_1

    .line 78
    const-string v0, "AdEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_1
    return-void

    .line 57
    :cond_2
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/d/h;->b()Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_0

    .line 64
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 67
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/d/c;->i(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 2

    .prologue
    .line 202
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 204
    :try_start_0
    const-string v0, "duration"

    invoke-virtual {v1, v0, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 205
    const-string v0, "percent"

    invoke-virtual {v1, v0, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    invoke-static {p0, p1, p2, p3, v1}, Lcom/bytedance/sdk/openadsdk/d/c;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 210
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 257
    if-eqz p4, :cond_0

    .line 258
    :try_start_0
    const-string v0, "log_extra"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p2, p3, v0, p4}, Lcom/bytedance/sdk/openadsdk/d/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/d/a;

    move-result-object v0

    .line 263
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->b()Lcom/bytedance/sdk/openadsdk/d/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/d/b;->a(Ljava/lang/Object;)V

    .line 264
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/m;->a:Z

    if-eqz v0, :cond_1

    .line 265
    const-string v0, "AdEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "label: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_1
    return-void

    .line 260
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 270
    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/c/b;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 271
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/h;Lcom/bytedance/sdk/openadsdk/core/d/c;Ljava/lang/String;Z)V
    .locals 8

    .prologue
    .line 107
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v2

    .line 108
    sget-object v0, Lcom/bytedance/sdk/openadsdk/d/c;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/d/h;

    .line 109
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/d/h;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 112
    if-eqz p3, :cond_0

    .line 113
    :try_start_0
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/d/c;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 114
    const-string v4, "device"

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/h/d;->d(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    const-string v4, "is_valid"

    invoke-virtual {v1, v4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 116
    const-string v4, "ad_extra_data"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    :cond_0
    const-string v1, "log_extra"

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/h;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/d/h;->a()J

    move-result-wide v0

    .line 120
    const-string v4, "showtime"

    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-lez v5, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v0, v6, v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_1
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/h;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, p4, p1, v0, v3}, Lcom/bytedance/sdk/openadsdk/d/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/d/a;

    move-result-object v0

    .line 124
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->b()Lcom/bytedance/sdk/openadsdk/d/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/d/b;->a(Ljava/lang/Object;)V

    .line 126
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "click"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/h;->i()Ljava/util/List;

    move-result-object v1

    .line 129
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->d()Lcom/bytedance/sdk/openadsdk/g/a;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/g/a;->a(Ljava/lang/String;Ljava/util/List;Z)V

    .line 131
    :cond_1
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/m;->a:Z

    if-eqz v0, :cond_2

    .line 132
    const-string v0, "AdEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/h;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_2
    return-void

    .line 120
    :cond_3
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/d/h;)V
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lcom/bytedance/sdk/openadsdk/d/c;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    :goto_0
    return-void

    .line 40
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/d/c;->a:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/d/h;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/d/h;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5

    .prologue
    .line 84
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 86
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 87
    const-string v2, "device"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/h/d;->d(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string v2, "download_creative_duration"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    const-string v2, "download_creative_duration"

    invoke-virtual {v1, v2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 93
    :cond_0
    :goto_0
    const-string v2, "ad_extra_data"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    const-string v1, "log_extra"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, p2, v2, v0}, Lcom/bytedance/sdk/openadsdk/d/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/d/a;

    move-result-object v0

    .line 98
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->b()Lcom/bytedance/sdk/openadsdk/d/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/d/b;->a(Ljava/lang/Object;)V

    .line 99
    return-void

    .line 90
    :cond_1
    :try_start_1
    const-string v2, "load_ad_duration"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    const-string v2, "load_ad_duration"

    invoke-virtual {v1, v2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 275
    if-eqz p7, :cond_0

    .line 276
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 278
    :try_start_0
    const-string v1, "device"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/h/d;->d(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    const-string v1, "ad_extra_data"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p7, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :cond_0
    :goto_0
    invoke-static/range {p0 .. p7}, Lcom/bytedance/sdk/openadsdk/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/d/a;

    move-result-object v0

    .line 284
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->b()Lcom/bytedance/sdk/openadsdk/d/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/d/b;->a(Ljava/lang/Object;)V

    .line 285
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/m;->a:Z

    if-eqz v0, :cond_1

    .line 286
    const-string v0, "AdEvent"

    const-string v1, "sendJsAdEvent"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_1
    return-void

    .line 280
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 142
    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/d/c;->i(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public static b(Lcom/bytedance/sdk/openadsdk/core/d/h;)Z
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/bytedance/sdk/openadsdk/d/c;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/d/h;

    .line 45
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/d/h;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 149
    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/d/c;->i(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public static c(Lcom/bytedance/sdk/openadsdk/core/d/h;)V
    .locals 3
    .param p0    # Lcom/bytedance/sdk/openadsdk/core/d/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 172
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/b/a;->a()Lcom/bytedance/sdk/openadsdk/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/b/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/h;)V

    .line 173
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/m;->a:Z

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "AdEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tt_dislike_icon "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_0
    return-void
.end method

.method public static d(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 158
    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/d/c;->i(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public static e(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 165
    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/d/c;->i(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public static f(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 187
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p2, p3, v0, v1}, Lcom/bytedance/sdk/openadsdk/d/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/d/a;

    move-result-object v0

    .line 188
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->b()Lcom/bytedance/sdk/openadsdk/d/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/d/b;->a(Ljava/lang/Object;)V

    .line 189
    return-void
.end method

.method public static g(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 220
    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/d/c;->i(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public static h(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 231
    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/d/c;->i(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method private static i(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 235
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 237
    :try_start_0
    const-string v1, "log_extra"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p2, p3, v1, v0}, Lcom/bytedance/sdk/openadsdk/d/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/d/a;

    move-result-object v0

    .line 241
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->b()Lcom/bytedance/sdk/openadsdk/d/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/d/b;->a(Ljava/lang/Object;)V

    .line 242
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/m;->a:Z

    if-eqz v0, :cond_0

    .line 243
    const-string v0, "AdEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "label: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_0
    return-void

    .line 238
    :catch_0
    move-exception v1

    goto :goto_0
.end method
