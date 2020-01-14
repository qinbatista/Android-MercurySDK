.class public Lcom/bytedance/sdk/openadsdk/core/p;
.super Ljava/lang/Object;
.source "NetApiImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/p$b;,
        Lcom/bytedance/sdk/openadsdk/core/p$c;,
        Lcom/bytedance/sdk/openadsdk/core/p$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/openadsdk/core/o",
        "<",
        "Lcom/bytedance/sdk/openadsdk/d/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Z

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p;->c:Ljava/util/concurrent/ExecutorService;

    .line 105
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p;->a:Landroid/content/Context;

    .line 106
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/p;->b:Z

    .line 107
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/p;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p;->d:Ljava/lang/String;

    .line 108
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/p;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p;->a:Landroid/content/Context;

    return-object v0
.end method

.method static a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 629
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/r;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 630
    const-string v1, "MIUI-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    :cond_0
    :goto_0
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 631
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/r;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 632
    const-string v1, "FLYME-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 643
    :catch_0
    move-exception v1

    goto :goto_1

    .line 634
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/r;->b()Ljava/lang/String;

    move-result-object v1

    .line 635
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/r;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 636
    const-string v2, "EMUI-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 639
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 650
    sparse-switch p0, :sswitch_data_0

    .line 670
    const-string v0, "mdpi"

    .line 673
    :goto_0
    return-object v0

    .line 652
    :sswitch_0
    const-string v0, "ldpi"

    goto :goto_0

    .line 655
    :sswitch_1
    const-string v0, "hdpi"

    goto :goto_0

    .line 658
    :sswitch_2
    const-string v0, "mdpi"

    goto :goto_0

    .line 661
    :sswitch_3
    const-string v0, "xhdpi"

    goto :goto_0

    .line 664
    :sswitch_4
    const-string v0, "xxhdpi"

    goto :goto_0

    .line 667
    :sswitch_5
    const-string v0, "xxxhdpi"

    goto :goto_0

    .line 650
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_2
        0xf0 -> :sswitch_1
        0x140 -> :sswitch_3
        0x1e0 -> :sswitch_4
        0x280 -> :sswitch_5
    .end sparse-switch
.end method

.method static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 616
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 617
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 619
    :goto_0
    return-object v0

    .line 618
    :catch_0
    move-exception v0

    .line 619
    const-string v0, ""

    goto :goto_0
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/AdSlot;I)Lorg/json/JSONObject;
    .locals 6

    .prologue
    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 526
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 528
    :try_start_0
    const-string v2, "id"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 529
    const-string v2, "adtype"

    invoke-virtual {v3, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 530
    const-string v2, "pos"

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getPosition(I)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 531
    const-string v2, "accepted_size"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getImgAcceptedWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getImgAcceptedHeight()I

    move-result v5

    invoke-direct {p0, v3, v2, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lorg/json/JSONObject;Ljava/lang/String;II)V

    .line 532
    const-string v2, "is_support_dpl"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->isSupportDeepLink()Z

    move-result v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 533
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getAdCount()I

    move-result v2

    .line 534
    if-ge v2, v1, :cond_1

    .line 537
    :goto_0
    if-le v1, v0, :cond_0

    .line 540
    :goto_1
    const-string v1, "ad_count"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    :goto_2
    return-object v3

    .line 541
    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/i;I)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 111
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 113
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 115
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/bytedance/sdk/openadsdk/core/d/i;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/r;->f()Ljava/lang/String;

    move-result-object v0

    .line 117
    :goto_0
    const-string v3, "request_id"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    const-string v0, "ad_sdk_version"

    const-string v3, "1.9.2"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    const-string v0, "source_type"

    const-string v3, "app"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    const-string v0, "app"

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/p;->d()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/d;->d(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_1

    .line 124
    const-string v3, "orientation"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getOrientation()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 126
    :cond_1
    const-string v3, "device"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    const-string v0, "user"

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/p;->f()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    const-string v0, "ua"

    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/r;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    const-string v0, "ip"

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 131
    invoke-direct {p0, p1, p3}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 132
    const-string v3, "adslots"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "b0458c2b262949b8"

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/p;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 135
    const-string v2, "message"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    const-string v0, "cipher"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 141
    :goto_1
    const-string v0, "ad_sdk_version"

    const-string v2, "1.9.2"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    :goto_2
    return-object v1

    .line 115
    :cond_2
    iget-object v0, p2, Lcom/bytedance/sdk/openadsdk/core/d/i;->a:Ljava/lang/String;

    goto/16 :goto_0

    .line 138
    :cond_3
    const-string v0, "message"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    const-string v0, "cipher"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 142
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 882
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 884
    :try_start_0
    const-string v1, "b0458c2b262949b8"

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 885
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    .line 886
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 887
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&timestamp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 888
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&ext="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 889
    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 890
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/h/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 891
    const-string v4, "id"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 892
    const-string v1, "timestamp"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 893
    const-string v1, "sign"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 894
    const-string v1, "ext"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 897
    :goto_0
    return-object v0

    .line 895
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(IILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 331
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 332
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 333
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 335
    :try_start_0
    const-string v3, "http_code"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "client_code"

    .line 336
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "request_data"

    .line 337
    invoke-virtual {v3, v4, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "response_data"

    .line 338
    invoke-virtual {v3, v4, p4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 339
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 340
    const-string v0, "logs"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 341
    new-instance v0, Lcom/androidquery/callback/AjaxCallback;

    invoke-direct {v0}, Lcom/androidquery/callback/AjaxCallback;-><init>()V

    .line 342
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/AjaxCallback;->timeout(I)Ljava/lang/Object;

    .line 343
    new-instance v1, Lcom/androidquery/AQuery;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/p;->a:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    .line 344
    const-string v3, "https://is.snssdk.com/api/ad/union/sdk/upload/log/"

    const-class v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v2, v4, v0}, Lcom/androidquery/AQuery;->post(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_0
    return-void

    .line 345
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/o$a;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 391
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/o$a;->a(ILjava/lang/String;)V

    .line 392
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/o$b;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 395
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/o$b;->a(ILjava/lang/String;)V

    .line 396
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/p;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/p;->a(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/core/o$a;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/core/o$a;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/core/o$b;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/core/o$b;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;II)V
    .locals 3

    .prologue
    .line 547
    if-lez p3, :cond_0

    if-lez p4, :cond_0

    .line 548
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 549
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 551
    :try_start_0
    const-string v2, "width"

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 552
    const-string v2, "height"

    invoke-virtual {v0, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 553
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 554
    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 555
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 441
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 442
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 444
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 153
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a()Lcom/bytedance/sdk/openadsdk/core/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/c/a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    :goto_0
    return v0

    .line 157
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a()Lcom/bytedance/sdk/openadsdk/core/c/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a()Lcom/bytedance/sdk/openadsdk/core/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/c/a;->c()Ljava/lang/String;

    move-result-object v1

    .line 159
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v1, v4, v5}, Lcom/bytedance/sdk/openadsdk/d/c;->a(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    .line 162
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b()I
    .locals 4

    .prologue
    const/16 v0, 0xc

    const/16 v1, -0xc

    .line 677
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    .line 678
    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    const v3, 0x36ee80

    div-int/2addr v2, v3

    .line 679
    if-ge v2, v1, :cond_1

    .line 681
    :goto_0
    if-le v1, v0, :cond_0

    .line 683
    :goto_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private b(I)I
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x7d0

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0x2710

    goto :goto_0
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/core/d/h;)Lorg/json/JSONObject;
    .locals 6
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/d/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 308
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 309
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/b;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/a;

    move-result-object v1

    .line 311
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 312
    const-string v3, "action"

    const-string v4, "dislike"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    const-string v3, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 314
    const-string v3, "ad_sdk_version"

    const-string v4, "1.9.2"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    if-eqz v1, :cond_0

    .line 316
    const-string v3, "latitude"

    iget v4, v1, Lcom/bytedance/sdk/openadsdk/h/a;->a:F

    float-to-double v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 317
    const-string v3, "longitude"

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/h/a;->b:F

    float-to-double v4, v1

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 319
    :cond_0
    const-string v1, "extra"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 320
    const-string v1, "filter_words"

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/p;->c(Lcom/bytedance/sdk/openadsdk/core/d/h;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 322
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 323
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 324
    const-string v2, "actions"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :goto_0
    return-object v0

    .line 325
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 495
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 496
    const-string v1, "package_name"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 497
    const-string v1, "version"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/p;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 501
    :goto_0
    return-void

    .line 498
    :catch_0
    move-exception v0

    .line 499
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 498
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 239
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/h/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 370
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 371
    const-string v1, "Content-Type"

    const-string v2, "application/json; charset=utf-8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/p;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    const-string v1, "Content-Encoding"

    const-string v2, "union_sdk_encode"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    :cond_0
    return-object v0
.end method

.method private c(Lcom/bytedance/sdk/openadsdk/core/d/h;)Lorg/json/JSONArray;
    .locals 5

    .prologue
    .line 350
    if-nez p1, :cond_0

    .line 351
    const/4 v0, 0x0

    .line 364
    :goto_0
    return-object v0

    .line 353
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/h;->q()Ljava/util/List;

    move-result-object v3

    .line 354
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 355
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 357
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 358
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/f;

    .line 359
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/f;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 360
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 357
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 364
    goto :goto_0
.end method

.method private c(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 509
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/b;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/a;

    move-result-object v0

    .line 510
    if-eqz v0, :cond_0

    .line 512
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 513
    const-string v2, "latitude"

    iget v3, v0, Lcom/bytedance/sdk/openadsdk/h/a;->a:F

    float-to-double v4, v3

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 514
    const-string v2, "longitude"

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/h/a;->b:F

    float-to-double v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 515
    const-string v0, "geo"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 516
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private d()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 404
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 406
    :try_start_0
    const-string v1, "appid"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->a()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/h;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 407
    const-string v1, "name"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->a()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 408
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/p;->b(Lorg/json/JSONObject;)V

    .line 409
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/p;->c(Lorg/json/JSONObject;)V

    .line 410
    const-string v1, "is_paid_app"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->a()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/h;->d()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :goto_0
    return-object v0

    .line 411
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private d(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 780
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 782
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "b0458c2b262949b8"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 783
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/p;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 784
    const-string v2, "cipher"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 785
    const-string v2, "message"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 792
    :goto_0
    return-object v0

    .line 787
    :cond_0
    const-string v1, "cipher"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 788
    const-string v1, "message"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 790
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 379
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 382
    const-string v1, "message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 386
    :goto_0
    return v0

    .line 383
    :catch_0
    move-exception v0

    .line 386
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/d;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 421
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 423
    :try_start_0
    const-string v1, "gender"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->a()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/h;->f()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 424
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->a()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/h;->e()I

    move-result v1

    if-lez v1, :cond_0

    .line 425
    const-string v1, "age"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->a()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/h;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 427
    :cond_0
    const-string v1, "phone_nub"

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/p;->g()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string v1, "keywords"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->a()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/h;->g()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p;->c:Ljava/util/concurrent/ExecutorService;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/h/i;->a(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)Lorg/json/JSONArray;

    move-result-object v1

    .line 430
    if-eqz v1, :cond_1

    .line 431
    const-string v2, "app_list"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 433
    :cond_1
    const-string v1, "data"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->a()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/h;->h()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    :goto_0
    return-object v0

    .line 434
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 448
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p;->a:Landroid/content/Context;

    const-string v1, "phone"

    .line 449
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 450
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 452
    :goto_0
    return-object v0

    .line 451
    :catch_0
    move-exception v0

    .line 452
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 522
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i()Lorg/json/JSONObject;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 561
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 563
    :try_start_0
    const-string v2, "ua"

    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/r;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 564
    const-string v2, "udid"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/p;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/i;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 565
    const-string v2, "openudid"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/p;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/i;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 566
    const-string v2, "ad_sdk_version"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 567
    const-string v2, "sim_op"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/p;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 568
    const-string v2, "root"

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/p;->b:Z

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 569
    const-string v0, "timezone"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->b()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 570
    const-string v0, "access"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/h/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 571
    const-string v0, "os"

    const-string v2, "Android"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 572
    const-string v0, "os_version"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 573
    const-string v0, "os_api"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 574
    const-string v0, "device_type"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 575
    const-string v0, "device_model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 576
    const-string v0, "device_brand"

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 577
    const-string v0, "device_manufacturer"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 578
    const-string v0, "language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 579
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 580
    const-string v2, "resolution"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 581
    const-string v2, "display_density"

    iget v3, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/p;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 582
    const-string v2, "density_dpi"

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 583
    const-string v0, "mc"

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/p;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 584
    const-string v0, "device_id"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 585
    const-string v0, "aid"

    const/16 v2, 0x49d

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 586
    const-string v0, "rom"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 587
    const-string v0, "cpu_abi"

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 588
    const-string v0, "build_serial"

    sget-object v2, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    :goto_1
    return-object v1

    .line 568
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 589
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static j()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 602
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/bin/su"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    const-string v2, "/system/xbin/su"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 610
    :goto_0
    return v0

    .line 605
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 607
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/d/g;
    .locals 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/d/a;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/d/g;"
        }
    .end annotation

    .prologue
    const/16 v8, 0xc8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 245
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 247
    :try_start_0
    const-string v0, "header"

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/p;->i()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 249
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/d/a;

    .line 250
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/d/a;->b:Lorg/json/JSONObject;

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 257
    :goto_1
    new-instance v0, Lcom/androidquery/callback/AjaxCallback;

    invoke-direct {v0}, Lcom/androidquery/callback/AjaxCallback;-><init>()V

    .line 258
    const-string v4, "https://extlog.snssdk.com/service/2/app_log/"

    invoke-virtual {v0, v4}, Lcom/androidquery/callback/AjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    .line 259
    const-class v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/androidquery/callback/AjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    .line 260
    const/16 v4, 0x2710

    invoke-virtual {v0, v4}, Lcom/androidquery/callback/AjaxCallback;->timeout(I)Ljava/lang/Object;

    .line 261
    sget-object v4, Lcom/bytedance/sdk/openadsdk/core/r;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/androidquery/callback/AjaxCallback;->setAgent(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0, v1}, Lcom/androidquery/callback/AjaxCallback;->method(I)Ljava/lang/Object;

    .line 263
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "a0497c2b26294048"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 264
    const-string v5, "adevent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adevent is :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/h/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :try_start_1
    invoke-direct {p0, v4}, Lcom/bytedance/sdk/openadsdk/core/p;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 267
    const-string v5, "%entity"

    new-instance v6, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "UTF-8"

    invoke-direct {v6, v3, v7}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Lcom/androidquery/callback/AjaxCallback;->param(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 274
    :goto_2
    invoke-direct {p0, v4}, Lcom/bytedance/sdk/openadsdk/core/p;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 275
    invoke-virtual {v0, v3}, Lcom/androidquery/callback/AjaxCallback;->headers(Ljava/util/Map;)Ljava/lang/Object;

    .line 276
    new-instance v3, Lcom/androidquery/AQuery;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/p;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    .line 277
    invoke-virtual {v3, v0}, Lcom/androidquery/AQuery;->sync(Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    .line 278
    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxCallback;->getStatus()Lcom/androidquery/callback/AjaxStatus;

    move-result-object v4

    .line 279
    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxCallback;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/p;->d(Ljava/lang/String;)Z

    move-result v5

    .line 282
    invoke-virtual {v4}, Lcom/androidquery/callback/AjaxStatus;->getCode()I

    move-result v0

    if-ne v0, v8, :cond_2

    if-nez v5, :cond_2

    .line 283
    const-string v0, "server say not success"

    move-object v3, v0

    move v0, v1

    .line 288
    :goto_3
    new-instance v6, Lcom/bytedance/sdk/openadsdk/d/g;

    invoke-virtual {v4}, Lcom/androidquery/callback/AjaxStatus;->getCode()I

    move-result v7

    if-ne v7, v8, :cond_3

    if-eqz v5, :cond_3

    .line 289
    :goto_4
    invoke-virtual {v4}, Lcom/androidquery/callback/AjaxStatus;->getCode()I

    move-result v2

    invoke-direct {v6, v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/d/g;-><init>(ZILjava/lang/String;Z)V

    .line 288
    return-object v6

    .line 252
    :cond_0
    :try_start_2
    const-string v0, "event"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    const-string v0, "_gen_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 269
    :cond_1
    :try_start_3
    const-string v3, "%entity"

    new-instance v5, Lorg/apache/http/entity/StringEntity;

    const-string v6, "UTF-8"

    invoke-direct {v5, v4, v6}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v5}, Lcom/androidquery/callback/AjaxCallback;->param(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 271
    :catch_1
    move-exception v3

    goto :goto_2

    .line 286
    :cond_2
    invoke-virtual {v4}, Lcom/androidquery/callback/AjaxStatus;->getMessage()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move v0, v2

    goto :goto_3

    :cond_3
    move v1, v2

    .line 288
    goto :goto_4
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 830
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 831
    const-string v1, "rit"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    const-string v1, "req_id"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 834
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x32

    invoke-virtual {p4, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 835
    const-string v2, "image"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    :try_start_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    :goto_0
    const-string v1, "ad_id"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    const-string v1, "sign"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/h/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/p$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/p$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/p;)V

    .line 850
    const-string v2, "https://i.snssdk.com/union/service/sdk/upload/"

    invoke-virtual {v1, v2}, Lcom/androidquery/callback/AjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    .line 851
    const-class v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/androidquery/callback/AjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    .line 852
    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Lcom/androidquery/callback/AjaxCallback;->timeout(I)Ljava/lang/Object;

    .line 853
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/androidquery/callback/AjaxCallback;->method(I)Ljava/lang/Object;

    .line 854
    invoke-virtual {v1, v0}, Lcom/androidquery/callback/AjaxCallback;->params(Ljava/util/Map;)Ljava/lang/Object;

    .line 855
    new-instance v0, Lcom/androidquery/AQuery;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    .line 856
    invoke-virtual {v0, v1}, Lcom/androidquery/AQuery;->ajax(Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    .line 857
    return-void

    .line 838
    :catch_0
    move-exception v1

    .line 839
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/i;ILcom/bytedance/sdk/openadsdk/core/o$a;)V
    .locals 5

    .prologue
    const/4 v2, -0x8

    const/16 v1, -0x9

    .line 167
    if-nez p4, :cond_0

    .line 232
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/o$a;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/i;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 178
    if-nez v0, :cond_2

    .line 179
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/o$a;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_2
    new-instance v1, Lcom/androidquery/AQuery;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    .line 184
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/p$1;

    invoke-direct {v2, p0, p4, v0}, Lcom/bytedance/sdk/openadsdk/core/p$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/core/o$a;Lorg/json/JSONObject;)V

    .line 229
    invoke-direct {p0, p3}, Lcom/bytedance/sdk/openadsdk/core/p;->b(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/androidquery/callback/AjaxCallback;->timeout(I)Ljava/lang/Object;

    .line 230
    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/r;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/androidquery/callback/AjaxCallback;->setAgent(Ljava/lang/String;)V

    .line 231
    const-string v3, "https://i.snssdk.com/api/ad/union/sdk/get_ads/"

    const-class v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v0, v4, v2}, Lcom/androidquery/AQuery;->post(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    goto :goto_0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/h;)V
    .locals 5
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/d/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/p;->b(Lcom/bytedance/sdk/openadsdk/core/d/h;)Lorg/json/JSONObject;

    move-result-object v0

    .line 297
    if-nez v0, :cond_0

    .line 304
    :goto_0
    return-void

    .line 300
    :cond_0
    new-instance v1, Lcom/androidquery/callback/AjaxCallback;

    invoke-direct {v1}, Lcom/androidquery/callback/AjaxCallback;-><init>()V

    .line 301
    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Lcom/androidquery/callback/AjaxCallback;->timeout(I)Ljava/lang/Object;

    .line 302
    new-instance v2, Lcom/androidquery/AQuery;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/p;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    .line 303
    const-string v3, "https://i.snssdk.com/api/ad/union/dislike_event/"

    const-class v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v4, v1}, Lcom/androidquery/AQuery;->post(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/b$a;)V
    .locals 5

    .prologue
    .line 902
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 930
    :cond_0
    :goto_0
    return-void

    .line 905
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 906
    new-instance v1, Lcom/androidquery/AQuery;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    .line 907
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/p$4;

    invoke-direct {v2, p0, p3}, Lcom/bytedance/sdk/openadsdk/core/p$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/core/f/b$a;)V

    .line 928
    const/16 v3, 0x320

    invoke-virtual {v2, v3}, Lcom/androidquery/callback/AjaxCallback;->timeout(I)Ljava/lang/Object;

    .line 929
    const-string v3, "https://is.snssdk.com/api/ad/union/sdk/material/check/"

    const-class v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v0, v4, v2}, Lcom/androidquery/AQuery;->post(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 934
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 945
    :cond_0
    :goto_0
    return-void

    .line 938
    :cond_1
    new-instance v0, Lcom/androidquery/AQuery;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    .line 939
    const-string v1, "https://i.snssdk.com/api/ad/union/sdk/stats/"

    const-class v2, Ljava/lang/String;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/p$5;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/p$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/p;)V

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/androidquery/AQuery;->post(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/o$b;)V
    .locals 5

    .prologue
    .line 730
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 777
    :cond_0
    :goto_0
    return-void

    .line 733
    :cond_1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/p;->d(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 734
    new-instance v1, Lcom/androidquery/AQuery;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    .line 735
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/p$2;

    invoke-direct {v2, p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/p$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/core/o$b;Lorg/json/JSONObject;)V

    .line 775
    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Lcom/androidquery/callback/AjaxCallback;->timeout(I)Ljava/lang/Object;

    .line 776
    const-string v3, "https://is.snssdk.com/api/ad/union/sdk/reward_video/reward/"

    const-class v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v0, v4, v2}, Lcom/androidquery/AQuery;->post(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/d;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    const-string v0, "tv"

    .line 692
    :goto_0
    return-object v0

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 690
    const-string v0, "android_pad"

    goto :goto_0

    .line 692
    :cond_1
    const-string v0, "android"

    goto :goto_0
.end method
