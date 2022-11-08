.class public Lcom/bytedance/sdk/openadsdk/core/d/h;
.super Ljava/lang/Object;
.source "MaterialMeta.java"


# instance fields
.field private a:I

.field private b:Lcom/bytedance/sdk/openadsdk/core/d/g;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/d/g;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcom/bytedance/sdk/openadsdk/core/d/b;

.field private l:Lcom/bytedance/sdk/openadsdk/core/d/d;

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/d/f;",
            ">;"
        }
    .end annotation
.end field

.field private q:J

.field private r:I

.field private s:Lcom/bytedance/sdk/openadsdk/core/d/m;

.field private t:Z

.field private u:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->d:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->f:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->g:Ljava/util/List;

    .line 25
    const-string v0, "0"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->j:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->p:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/openadsdk/core/d/m;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->s:Lcom/bytedance/sdk/openadsdk/core/d/m;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->a:I

    .line 69
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 196
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->q:J

    .line 197
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/b;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->k:Lcom/bytedance/sdk/openadsdk/core/d/b;

    .line 149
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/d;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->l:Lcom/bytedance/sdk/openadsdk/core/d/d;

    .line 157
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/f;)V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/g;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/g;

    .line 77
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/m;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->s:Lcom/bytedance/sdk/openadsdk/core/d/m;

    .line 53
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->n:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 261
    if-nez p1, :cond_0

    .line 270
    :goto_0
    return-void

    .line 264
    :cond_0
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->j:Ljava/lang/String;

    .line 265
    const-string v0, "source"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->n:Ljava/lang/String;

    .line 266
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->k:Lcom/bytedance/sdk/openadsdk/core/d/b;

    .line 267
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->k:Lcom/bytedance/sdk/openadsdk/core/d/b;

    const-string v1, "pkg_name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->k:Lcom/bytedance/sdk/openadsdk/core/d/b;

    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->k:Lcom/bytedance/sdk/openadsdk/core/d/b;

    const-string v1, "download_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 212
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->t:Z

    .line 213
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->n:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 172
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->m:I

    .line 173
    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/d/g;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->c:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->u:Z

    .line 221
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->a:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 204
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->r:I

    .line 205
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->e:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public d()Lcom/bytedance/sdk/openadsdk/core/d/g;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/g;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->h:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->i:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 225
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    .line 231
    :cond_0
    :goto_0
    return v0

    .line 226
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 228
    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/d/h;

    .line 230
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->j:Ljava/lang/String;

    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/core/d/h;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->o:Ljava/lang/String;

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/d/h;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/d/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->d:Ljava/util/List;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->j:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->o:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public h()Ljava/util/List;
    .locals 1
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
    .line 104
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->f:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 238
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->o:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 239
    return v0
.end method

.method public i()Ljava/util/List;
    .locals 1
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
    .line 112
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->g:Ljava/util/List;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->h:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->i:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->j:Ljava/lang/String;

    return-object v0
.end method

.method public m()Lcom/bytedance/sdk/openadsdk/core/d/b;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->k:Lcom/bytedance/sdk/openadsdk/core/d/b;

    return-object v0
.end method

.method public n()Lcom/bytedance/sdk/openadsdk/core/d/d;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->l:Lcom/bytedance/sdk/openadsdk/core/d/d;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->o:Ljava/lang/String;

    return-object v0
.end method

.method public p()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->m:I

    return v0
.end method

.method public q()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/d/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->p:Ljava/util/List;

    return-object v0
.end method

.method public r()J
    .locals 2

    .prologue
    .line 192
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->q:J

    return-wide v0
.end method

.method public s()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->r:I

    return v0
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->t:Z

    return v0
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->u:Z

    return v0
.end method

.method public v()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 243
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 254
    :goto_0
    return v0

    .line 246
    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->m:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    move v0, v1

    .line 247
    goto :goto_0

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/h;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/g;

    .line 250
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/g;->d()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 251
    goto :goto_0

    .line 254
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method
