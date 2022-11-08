.class public Lcom/bytedance/sdk/openadsdk/d/f;
.super Landroid/os/HandlerThread;
.source "AdEventThread.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/d/f$b;,
        Lcom/bytedance/sdk/openadsdk/d/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/HandlerThread;",
        "Landroid/os/Handler$Callback;"
    }
.end annotation


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/d/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/d/d",
            "<TT;>;"
        }
    .end annotation
.end field

.field private b:Lcom/bytedance/sdk/openadsdk/core/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/core/o",
            "<TT;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private d:J

.field private e:Z

.field private f:I

.field private g:Landroid/os/Handler;

.field private h:Lcom/bytedance/sdk/openadsdk/d/f$a;

.field private i:Lcom/bytedance/sdk/openadsdk/d/f$b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/d/d;Lcom/bytedance/sdk/openadsdk/core/o;Lcom/bytedance/sdk/openadsdk/d/f$b;Lcom/bytedance/sdk/openadsdk/d/f$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/d/d",
            "<TT;>;",
            "Lcom/bytedance/sdk/openadsdk/core/o",
            "<TT;>;",
            "Lcom/bytedance/sdk/openadsdk/d/f$b;",
            "Lcom/bytedance/sdk/openadsdk/d/f$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    const-string v0, "ttad_bk"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 50
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/d/f;->i:Lcom/bytedance/sdk/openadsdk/d/f$b;

    .line 51
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/d/f;->h:Lcom/bytedance/sdk/openadsdk/d/f$a;

    .line 52
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/f;->a:Lcom/bytedance/sdk/openadsdk/d/d;

    .line 53
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/d/f;->b:Lcom/bytedance/sdk/openadsdk/core/o;

    .line 54
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/f;->c:Ljava/util/List;

    .line 55
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 87
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/f;->a:Lcom/bytedance/sdk/openadsdk/d/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/f;->i:Lcom/bytedance/sdk/openadsdk/d/f$b;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/d/f$b;->d:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/d/f;->i:Lcom/bytedance/sdk/openadsdk/d/f$b;

    iget-wide v2, v2, Lcom/bytedance/sdk/openadsdk/d/f$b;->e:J

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/d/d;->a(IJ)V

    .line 89
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/f;->a:Lcom/bytedance/sdk/openadsdk/d/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/d/d;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/d/f;->e:Z

    .line 90
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/f;->a:Lcom/bytedance/sdk/openadsdk/d/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/d/d;->c()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/d/f;->f:I

    .line 91
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/d/f;->e:Z

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHandleInitEvent serverBusy, retryCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/d/f;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/d/f;->a(Ljava/lang/String;)V

    .line 93
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/d/f;->h()V

    .line 100
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/f;->a:Lcom/bytedance/sdk/openadsdk/d/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/d/d;->a()Ljava/util/List;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/f;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHandleInitEvent cacheData count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/f;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/d/f;->a(Ljava/lang/String;)V

    .line 98
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/d/f;->e()V

    goto :goto_0
.end method

.method private a(IJ)V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/f;->g:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 264
    iput p1, v0, Landroid/os/Message;->what:I

    .line 265
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/f;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 266
    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/f;->a:Lcom/bytedance/sdk/openadsdk/d/d;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/d/d;->a(Ljava/lang/Object;)V

    .line 178
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/d/f;->e:Z

    if-eqz v0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    const-string v0, "onHandleReceivedAdEvent"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/d/f;->a(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/f;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/d/f;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const-string v0, "onHandleReceivedAdEvent upload"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/d/f;->a(Ljava/lang/String;)V

    .line 186
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/d/f;->e()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 328
    const-string v0, "AdEventThread"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/h/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    return-void
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/d/g;)Z
    .locals 2

    .prologue
    .line 296
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/d/g;->b:I

    const/16 v1, 0x1fd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 6

    .prologue
    .line 104
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/f;->h:Lcom/bytedance/sdk/openadsdk/d/f$a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/d/f$a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/f;->i:Lcom/bytedance/sdk/openadsdk/d/f$b;

    iget-wide v2, v1, Lcom/bytedance/sdk/openadsdk/d/f$b;->c:J

    invoke-direct {p0, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/d/f;->a(IJ)V

    .line 107
    const-string v0, "onHandleServerBusyRetryEvent, no net"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/d/f;->a(Ljava/lang/String;)V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/f;->a:Lcom/bytedance/sdk/openadsdk/d/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/d/d;->a()Ljava/util/List;

    move-result-object v0

    .line 111
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/k;->a(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    const-string v0, "onHandleServerBusyRetryEvent, empty list start routine"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/d/f;->a(Ljava/lang/String;)V

    .line 115
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/d/f;->n()V

    .line 117
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/d/f;->j()V

    goto :goto_0

    .line 120
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/f;->b:Lcom/bytedance/sdk/openadsdk/core/o;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/o;->a(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/d/g;

    move-result-object v1

    .line 121
    if-eqz v1, :cond_0

    .line 122
    iget-boolean v2, v1, Lcom/bytedance/sdk/openadsdk/d/g;->a:Z

    if-eqz v2, :cond_3

    .line 123
    const-string v0, "onHandleServerBusyRetryEvent, success"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/d/f;->a(Ljava/lang/String;)V

    .line 125
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/d/f;->g()V

    .line 127
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/d/f;->f()V

    goto :goto_0

    .line 129
    :cond_3
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/d/f;->a(Lcom/bytedance/sdk/openadsdk/d/g;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 130
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/d/f;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/d/f;->f:I

    .line 131
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/f;->a:Lcom/bytedance/sdk/openadsdk/d/d;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/d/f;->f:I

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/d/d;->a(I)V

    .line 132
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/f;->a:Lcom/bytedance/sdk/openadsdk/d/d;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/d/f;->i:Lcom/bytedance/sdk/openadsdk/d/f$b;

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/d/f$b;->d:I

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/d/f;->i:Lcom/bytedance/sdk/openadsdk/d/f$b;

    iget-wide v4, v3, Lcom/bytedance/sdk/openadsdk/d/f$b;->e:J

    invoke-interface {v1, v0, v2, v4, v5}, Lcom/bytedance/sdk/openadsdk/d/d;->a(Ljava/util/List;IJ)V

    .line 135
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/d/f;->h()V

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHandleServerBusyRetryEvent, serverbusy, count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/d/f;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/d/f;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_4
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/d/f;->b(Lcom/bytedance/sdk/openadsdk/d/g;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 140
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/d/f;->g()V

    .line 142
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/d/f;->f()V

    goto :goto_0

    .line 145
    :cond_5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/d/f;->i()V

    .line 146
    const-string v0, "onHandleServerBusyRetryEvent, net fail"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/d/f;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static b(Lcom/bytedance/sdk/openadsdk/d/g;)Z
    .locals 1

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/d/g;->d:Z

    return v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/d/f;->e:Z

    if-eqz v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    const-string v0, "onHandleRoutineRetryEvent"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/d/f;->a(Ljava/lang/String;)V

    .line 162
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/d/f;->e()V

    goto :goto_0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/d/f;->e:Z

    if-eqz v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    const-string v0, "onHandleRoutineUploadEvent"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/d/f;->a(Ljava/lang/String;)V

    .line 172
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/d/f;->e()V

    goto :goto_0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/f;->g:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 193
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/f;->g:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 195
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/f;->c:Ljava/util/List;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/k;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/d/f;->d:J

    .line 198
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/d/f;->j()V

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/f;->h:Lcom/bytedance/sdk/openadsdk/d/f$a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/d/f$a;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 202
    const-string v0, "doRoutineUpload no net, wait retry"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/d/f;->a(Ljava/lang/String;)V

    .line 203
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/d/f;->i()V

    goto :goto_0

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/f;->b:Lcom/bytedance/sdk/openadsdk/core/o;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/f;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o;->a(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/d/g;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_0

    .line 208
    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/d/g;->a:Z

    if-eqz v1, :cond_3

    .line 209
    const-string v0, "doRoutineUpload success"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/d/f;->a(Ljava/lang/String;)V

    .line 211
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/d/f;->g()V

    .line 213
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/d/f;->f()V

    goto :goto_0

    .line 216
    :cond_3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/d/f;->a(Lcom/bytedance/sdk/openadsdk/d/g;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 217
    const-string v0, "doRoutineUpload serverbusy"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/d/f;->a(Ljava/lang/String;)V

    .line 218
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/d/f;->k()V

    goto :goto_0

    .line 220
    :cond_4
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/d/f;->b(Lcom/bytedance/sdk/openadsdk/d/g;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 222
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/d/f;->g()V

    .line 224
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/d/f;->f()V

    goto :goto_0

    .line 225
    :cond_5
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/d/f;->e:Z

    if-nez v0, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/d/f;->i()V

    .line 228
    const-string v0, "doRoutineUpload net fail retry"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/d/f;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/d/f;->d:J

    .line 239
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/d/f;->n()V

    .line 241
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/d/f;->j()V

    .line 242
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/f;->a:Lcom/bytedance/sdk/openadsdk/d/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/f;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/d/d;->a(Ljava/util/List;)V

    .line 246
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 247
    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    .line 251
    const/4 v0, 0x4

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/d/f;->l()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/d/f;->a(IJ)V

    .line 252
    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    .line 255
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/f;->i:Lcom/bytedance/sdk/openadsdk/d/f$b;

    iget-wide v2, v1, Lcom/bytedance/sdk/openadsdk/d/f$b;->c:J

    invoke-direct {p0, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/d/f;->a(IJ)V

    .line 256
    return-void
.end method

.method private j()V
    .locals 4

    .prologue
    .line 259
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/f;->i:Lcom/bytedance/sdk/openadsdk/d/f$b;

    iget-wide v2, v1, Lcom/bytedance/sdk/openadsdk/d/f$b;->b:J

    invoke-direct {p0, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/d/f;->a(IJ)V

    .line 260
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 272
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/d/f;->e:Z

    .line 273
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/f;->a:Lcom/bytedance/sdk/openadsdk/d/d;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/d/d;->a(Z)V

    .line 274
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 275
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/f;->g:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 276
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/f;->g:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 277
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/d/f;->h()V

    .line 278
    return-void
.end method

.method private l()J
    .locals 4

    .prologue
    .line 286
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/d/f;->f:I

    rem-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/d/f;->i:Lcom/bytedance/sdk/openadsdk/d/f$b;

    iget-wide v2, v2, Lcom/bytedance/sdk/openadsdk/d/f$b;->f:J

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private m()Z
    .locals 4

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/d/f;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/f;->i:Lcom/bytedance/sdk/openadsdk/d/f$b;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/d/f$b;->a:I

    if-ge v0, v1, :cond_0

    .line 316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/d/f;->d:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/d/f;->i:Lcom/bytedance/sdk/openadsdk/d/f$b;

    iget-wide v2, v2, Lcom/bytedance/sdk/openadsdk/d/f$b;->b:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 315
    :goto_0
    return v0

    .line 316
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 320
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/d/f;->e:Z

    .line 321
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/f;->a:Lcom/bytedance/sdk/openadsdk/d/d;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/d/d;->a(Z)V

    .line 322
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/d/f;->f:I

    .line 323
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/f;->a:Lcom/bytedance/sdk/openadsdk/d/d;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/d/d;->a(I)V

    .line 324
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/f;->g:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 325
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .prologue
    .line 66
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 83
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 68
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/d/f;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 71
    :pswitch_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/d/f;->d()V

    goto :goto_0

    .line 74
    :pswitch_2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/d/f;->c()V

    goto :goto_0

    .line 77
    :pswitch_3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/d/f;->b()V

    goto :goto_0

    .line 80
    :pswitch_4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/d/f;->a()V

    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onLooperPrepared()V
    .locals 2

    .prologue
    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/d/f;->d:J

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/d/f;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/f;->g:Landroid/os/Handler;

    .line 62
    return-void
.end method
