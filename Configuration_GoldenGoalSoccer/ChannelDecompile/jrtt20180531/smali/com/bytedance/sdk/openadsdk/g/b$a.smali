.class Lcom/bytedance/sdk/openadsdk/g/b$a;
.super Landroid/os/AsyncTask;
.source "TrackAdUrlImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/g/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/g/b;

.field private b:Lcom/bytedance/sdk/openadsdk/g/c;

.field private final c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/g/b;Lcom/bytedance/sdk/openadsdk/g/c;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/b$a;->a:Lcom/bytedance/sdk/openadsdk/g/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 88
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/g/b$a;->b:Lcom/bytedance/sdk/openadsdk/g/c;

    .line 89
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/g/b$a;->c:Ljava/lang/String;

    .line 91
    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/g/b;Lcom/bytedance/sdk/openadsdk/g/c;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/b$1;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/g/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/g/b;Lcom/bytedance/sdk/openadsdk/g/c;Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 94
    .line 95
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 96
    const-string v0, "{TS}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "__TS__"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 98
    const-string v2, "{TS}"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 99
    const-string v3, "__TS__"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 101
    :cond_1
    const-string v0, "{UID}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "__UID__"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/b$a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 102
    const-string v0, "{UID}"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/b$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 103
    const-string v1, "__UID__"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/g/b$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 106
    :cond_3
    return-object p1
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 129
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/b$a;->b:Lcom/bytedance/sdk/openadsdk/g/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/g/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/g/b$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-object v3

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/b$a;->b:Lcom/bytedance/sdk/openadsdk/g/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/g/c;->d()I

    move-result v0

    if-nez v0, :cond_3

    .line 133
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/b$a;->a:Lcom/bytedance/sdk/openadsdk/g/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/g/b;->a(Lcom/bytedance/sdk/openadsdk/g/b;)Lcom/bytedance/sdk/openadsdk/g/d;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/b$a;->b:Lcom/bytedance/sdk/openadsdk/g/c;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/g/d;->c(Lcom/bytedance/sdk/openadsdk/g/c;)V

    goto :goto_0

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/b$a;->a:Lcom/bytedance/sdk/openadsdk/g/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/g/b;->a(Lcom/bytedance/sdk/openadsdk/g/b;)Lcom/bytedance/sdk/openadsdk/g/d;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/b$a;->b:Lcom/bytedance/sdk/openadsdk/g/c;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/g/d;->b(Lcom/bytedance/sdk/openadsdk/g/c;)V

    .line 136
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/b$a;->b:Lcom/bytedance/sdk/openadsdk/g/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/g/c;->d()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/g/b$a;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/b$a;->b:Lcom/bytedance/sdk/openadsdk/g/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/g/c;->d()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 138
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/b$a;->a:Lcom/bytedance/sdk/openadsdk/g/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/g/b;->a(Lcom/bytedance/sdk/openadsdk/g/b;)Lcom/bytedance/sdk/openadsdk/g/d;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/b$a;->b:Lcom/bytedance/sdk/openadsdk/g/c;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/g/d;->a(Lcom/bytedance/sdk/openadsdk/g/c;)V

    .line 140
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/b$a;->a:Lcom/bytedance/sdk/openadsdk/g/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/g/b;->b(Lcom/bytedance/sdk/openadsdk/g/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/n;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/b$a;->b:Lcom/bytedance/sdk/openadsdk/g/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/g/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/g/b$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/b$a;->b:Lcom/bytedance/sdk/openadsdk/g/c;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/g/c;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 146
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/g/b$a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    :cond_5
    new-instance v1, Lcom/androidquery/callback/AjaxCallback;

    invoke-direct {v1}, Lcom/androidquery/callback/AjaxCallback;-><init>()V

    .line 149
    invoke-virtual {v1, v0}, Lcom/androidquery/callback/AjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    .line 150
    const-class v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/androidquery/callback/AjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    .line 151
    const/16 v0, 0x2710

    invoke-virtual {v1, v0}, Lcom/androidquery/callback/AjaxCallback;->timeout(I)Ljava/lang/Object;

    .line 152
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/androidquery/callback/AjaxCallback;->method(I)Ljava/lang/Object;

    .line 154
    new-instance v0, Lcom/androidquery/AQuery;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/g/b$a;->a:Lcom/bytedance/sdk/openadsdk/g/b;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/g/b;->b(Lcom/bytedance/sdk/openadsdk/g/b;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    .line 155
    invoke-virtual {v0, v1}, Lcom/androidquery/AQuery;->sync(Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    .line 156
    invoke-virtual {v1}, Lcom/androidquery/callback/AjaxCallback;->getStatus()Lcom/androidquery/callback/AjaxStatus;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxStatus;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_6

    .line 159
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/b$a;->a:Lcom/bytedance/sdk/openadsdk/g/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/g/b;->a(Lcom/bytedance/sdk/openadsdk/g/b;)Lcom/bytedance/sdk/openadsdk/g/d;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/b$a;->b:Lcom/bytedance/sdk/openadsdk/g/c;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/g/d;->c(Lcom/bytedance/sdk/openadsdk/g/c;)V

    .line 160
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/m;->a:Z

    if-eqz v0, :cond_0

    .line 161
    const-string v0, "trackurl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "track success : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/g/b$a;->b:Lcom/bytedance/sdk/openadsdk/g/c;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/g/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 165
    :cond_6
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/m;->a:Z

    if-eqz v0, :cond_7

    .line 166
    const-string v0, "trackurl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "track fail : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/g/b$a;->b:Lcom/bytedance/sdk/openadsdk/g/c;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/g/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/b$a;->b:Lcom/bytedance/sdk/openadsdk/g/c;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/b$a;->b:Lcom/bytedance/sdk/openadsdk/g/c;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/g/c;->d()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/g/c;->a(I)V

    .line 170
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/b$a;->b:Lcom/bytedance/sdk/openadsdk/g/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/g/c;->d()I

    move-result v0

    if-nez v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/b$a;->a:Lcom/bytedance/sdk/openadsdk/g/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/g/b;->a(Lcom/bytedance/sdk/openadsdk/g/b;)Lcom/bytedance/sdk/openadsdk/g/d;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/b$a;->b:Lcom/bytedance/sdk/openadsdk/g/c;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/g/d;->c(Lcom/bytedance/sdk/openadsdk/g/c;)V

    .line 172
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/m;->a:Z

    if-eqz v0, :cond_0

    .line 173
    const-string v0, "trackurl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "track fail and delete : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/g/b$a;->b:Lcom/bytedance/sdk/openadsdk/g/c;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/g/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 114
    .line 115
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    :try_start_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 118
    const-string v1, "[ss_random]"

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 119
    const-string v0, "[ss_timestamp]"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 124
    :cond_0
    :goto_0
    return-object p1

    .line 120
    :catch_0
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/g/b$a;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
