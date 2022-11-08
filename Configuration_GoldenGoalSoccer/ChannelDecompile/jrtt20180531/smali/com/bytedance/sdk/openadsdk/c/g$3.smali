.class Lcom/bytedance/sdk/openadsdk/c/g$3;
.super Ljava/lang/Object;
.source "DownloadNotifier.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/c/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/c/g;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/c/g;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/c/g;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 747
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/g$3;->b:Lcom/bytedance/sdk/openadsdk/c/g;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/c/g$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    .prologue
    .line 750
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    const-string v0, "DownloadNotifier saveToMiscConfig"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/g$3;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    :cond_0
    const-string v0, "notifs_string"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/g$3;->a:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 754
    return-void
.end method
