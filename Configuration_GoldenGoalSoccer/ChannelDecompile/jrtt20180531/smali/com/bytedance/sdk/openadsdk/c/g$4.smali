.class Lcom/bytedance/sdk/openadsdk/c/g$4;
.super Ljava/lang/Object;
.source "DownloadNotifier.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/c/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/c/g;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/c/g;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/c/g;)V
    .locals 0

    .prologue
    .line 764
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/g$4;->a:Lcom/bytedance/sdk/openadsdk/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/SharedPreferences;)V
    .locals 5

    .prologue
    .line 767
    const-string v0, "notifs_string"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 768
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/m;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 769
    const-string v1, "DownloadNotifier loadFromMiscConfig"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/h/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    :cond_0
    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 772
    if-eqz v1, :cond_3

    .line 773
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/g;->c()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 774
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 775
    aget-object v3, v1, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 776
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/c/g$4;->a:Lcom/bytedance/sdk/openadsdk/c/g;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/c/g;->b(Lcom/bytedance/sdk/openadsdk/c/g;)Ljava/util/Set;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 774
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 779
    :cond_2
    monitor-exit v2

    .line 781
    :cond_3
    return-void

    .line 779
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
