.class Lcom/bytedance/sdk/openadsdk/c/f$1;
.super Landroid/os/AsyncTask;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/c/f;->b(Lcom/bytedance/sdk/openadsdk/c/f$c;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/c/f$c;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Lcom/bytedance/sdk/openadsdk/c/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/c/f;Lcom/bytedance/sdk/openadsdk/c/f$c;Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 1038
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/f$1;->d:Lcom/bytedance/sdk/openadsdk/c/f;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/c/f$1;->a:Lcom/bytedance/sdk/openadsdk/c/f$c;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/c/f$1;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/c/f$1;->c:J

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    .prologue
    .line 1042
    .line 1045
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/f$1;->a:Lcom/bytedance/sdk/openadsdk/c/f$c;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/c/f$c;->a(Lcom/bytedance/sdk/openadsdk/c/f$c;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1046
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 1047
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 1048
    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1049
    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1050
    const-string v1, "User-Agent"

    sget-object v2, Lcom/bytedance/sdk/openadsdk/c/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    const-string v1, "Accept-Encoding"

    const-string v2, "identity"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    const-string v1, "If-None-Match"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/f$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 1054
    const/16 v1, 0x130

    if-ne v0, v1, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/f$1;->d:Lcom/bytedance/sdk/openadsdk/c/f;

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/c/f$1;->c:J

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/f;->a(Lcom/bytedance/sdk/openadsdk/c/f;J)V

    .line 1062
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 1057
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/f$1;->d:Lcom/bytedance/sdk/openadsdk/c/f;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/f$1;->a:Lcom/bytedance/sdk/openadsdk/c/f$c;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/c/f$c;->b(Lcom/bytedance/sdk/openadsdk/c/f$c;)I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/c/f$1;->c:J

    aput-wide v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/c/f;->a(I[J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1059
    :catch_0
    move-exception v0

    .line 1060
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1038
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/c/f$1;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
