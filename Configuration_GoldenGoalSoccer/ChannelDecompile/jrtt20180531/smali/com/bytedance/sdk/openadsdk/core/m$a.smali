.class Lcom/bytedance/sdk/openadsdk/core/m$a;
.super Ljava/lang/Object;
.source "InteractionManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/m;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/core/m;)V
    .locals 1

    .prologue
    .line 165
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/m$a;->a:Lcom/bytedance/sdk/openadsdk/core/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m$a;->b:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/core/m;Lcom/bytedance/sdk/openadsdk/core/m$1;)V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/m$a;-><init>(Lcom/bytedance/sdk/openadsdk/core/m;)V

    return-void
.end method


# virtual methods
.method a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m$a;->b:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    return-void
.end method

.method public onDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 189
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 190
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 192
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    .line 193
    if-nez v1, :cond_0

    .line 194
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    .line 196
    invoke-interface/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_1
    return-void
.end method

.method public onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 217
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 218
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 220
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    .line 221
    if-nez v1, :cond_0

    .line 222
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    .line 224
    invoke-interface/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :cond_1
    return-void
.end method

.method public onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 244
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 245
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 247
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    .line 248
    if-nez v0, :cond_0

    .line 249
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 251
    :cond_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 254
    :cond_1
    return-void
.end method

.method public onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 203
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 204
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 206
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    .line 207
    if-nez v1, :cond_0

    .line 208
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    .line 210
    invoke-interface/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_1
    return-void
.end method

.method public onIdle()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 176
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 178
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    .line 179
    if-nez v0, :cond_0

    .line 180
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 182
    :cond_0
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onIdle()V

    goto :goto_0

    .line 185
    :cond_1
    return-void
.end method

.method public onInstalled(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 231
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 232
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 234
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 235
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onInstalled(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :cond_1
    return-void
.end method
