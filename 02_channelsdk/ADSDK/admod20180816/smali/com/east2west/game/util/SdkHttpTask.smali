.class public Lcom/east2west/game/util/SdkHttpTask;
.super Landroid/os/AsyncTask;
.source "SdkHttpTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONN_TIMEOUT:I = 0x3a98

.field private static final MAX_RETRY_TIME:I = 0x3

.field private static final SO_TIMEOUT:I = 0x4e20

.field private static final TAG:Ljava/lang/String; = "SdkHttpTask"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsHttpPost:Z

.field private mKeyValueArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/east2west/game/util/SdkHttpListener;

.field private mRetryCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/east2west/game/util/SdkHttpTask;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3

    .line 151
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 162
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 156
    :cond_0
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 159
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 162
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 164
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 167
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 162
    :goto_2
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    .line 164
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 166
    :goto_3
    throw v0
.end method

.method private executeHttp(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLHandshakeException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget-boolean v0, p0, Lcom/east2west/game/util/SdkHttpTask;->mIsHttpPost:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/east2west/game/util/SdkHttpTask;->mKeyValueArray:Ljava/util/ArrayList;

    invoke-static {p1, p2, v0}, Lcom/east2west/game/util/SdkHttpTask;->post(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lcom/east2west/game/util/SdkHttpTask;->get(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private static get(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLHandshakeException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, " "

    const-string v0, "%20"

    .line 195
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 196
    new-instance p1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 197
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const/16 v1, 0x3a98

    .line 198
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v1, 0x4e20

    .line 199
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/4 v1, 0x0

    .line 200
    invoke-static {v0, v1}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 202
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const-string p0, "Content-Type"

    const-string v1, "application/x-www-form-urlencoded"

    .line 203
    invoke-virtual {v0, p0, v1}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Charset"

    const-string v1, "UTF-8"

    .line 204
    invoke-virtual {v0, p0, v1}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-interface {p1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method private static post(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Lorg/apache/http/HttpResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLHandshakeException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, " "

    const-string v2, "%20"

    .line 174
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 175
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 176
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const/16 v3, 0x3a98

    .line 177
    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v3, 0x4e20

    .line 178
    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 179
    invoke-static {v2, p0}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 181
    new-instance p0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {p0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string p1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    .line 182
    invoke-virtual {p0, p1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Charset"

    const-string v2, "UTF-8"

    .line 183
    invoke-virtual {p0, p1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 185
    new-instance p1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v0, "UTF-8"

    invoke-direct {p1, p2, v0}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0, p1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 188
    :cond_1
    invoke-interface {v1, p0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public doGet(Lcom/east2west/game/util/SdkHttpListener;Ljava/lang/String;)V
    .locals 1

    .line 69
    iput-object p1, p0, Lcom/east2west/game/util/SdkHttpTask;->mListener:Lcom/east2west/game/util/SdkHttpListener;

    const/4 p1, 0x0

    .line 70
    iput-boolean p1, p0, Lcom/east2west/game/util/SdkHttpTask;->mIsHttpPost:Z

    .line 71
    iput p1, p0, Lcom/east2west/game/util/SdkHttpTask;->mRetryCount:I

    const/4 v0, 0x1

    .line 73
    new-array v0, v0, [Ljava/lang/String;

    aput-object p2, v0, p1

    invoke-virtual {p0, v0}, Lcom/east2west/game/util/SdkHttpTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/east2west/game/util/SdkHttpTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_3

    .line 80
    iget v2, p0, Lcom/east2west/game/util/SdkHttpTask;->mRetryCount:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    goto :goto_2

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/east2west/game/util/SdkHttpTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    const/4 v2, 0x0

    .line 86
    :try_start_0
    aget-object v2, p1, v2

    .line 90
    iget-object v3, p0, Lcom/east2west/game/util/SdkHttpTask;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3, v2}, Lcom/east2west/game/util/SdkHttpTask;->executeHttp(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 91
    invoke-virtual {p0}, Lcom/east2west/game/util/SdkHttpTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 93
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    .line 96
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 98
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 100
    invoke-static {v2}, Lcom/east2west/game/util/SdkHttpTask;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception v2

    .line 112
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v2

    .line 110
    invoke-virtual {v2}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v2

    .line 108
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v2

    .line 106
    invoke-virtual {v2}, Ljavax/net/ssl/SSLHandshakeException;->printStackTrace()V

    .line 117
    :cond_2
    :goto_1
    iget v2, p0, Lcom/east2west/game/util/SdkHttpTask;->mRetryCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/east2west/game/util/SdkHttpTask;->mRetryCount:I

    goto :goto_0

    :cond_3
    :goto_2
    return-object v1
.end method

.method public doPost(Lcom/east2west/game/util/SdkHttpListener;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/east2west/game/util/SdkHttpListener;",
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/east2west/game/util/SdkHttpTask;->mListener:Lcom/east2west/game/util/SdkHttpListener;

    const/4 p1, 0x1

    .line 61
    iput-boolean p1, p0, Lcom/east2west/game/util/SdkHttpTask;->mIsHttpPost:Z

    .line 62
    iput-object p2, p0, Lcom/east2west/game/util/SdkHttpTask;->mKeyValueArray:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 63
    iput p2, p0, Lcom/east2west/game/util/SdkHttpTask;->mRetryCount:I

    .line 65
    new-array p1, p1, [Ljava/lang/String;

    aput-object p3, p1, p2

    invoke-virtual {p0, p1}, Lcom/east2west/game/util/SdkHttpTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onCancelled()V
    .locals 1

    .line 125
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 127
    iget-object v0, p0, Lcom/east2west/game/util/SdkHttpTask;->mListener:Lcom/east2west/game/util/SdkHttpListener;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/east2west/game/util/SdkHttpTask;->mListener:Lcom/east2west/game/util/SdkHttpListener;

    invoke-interface {v0}, Lcom/east2west/game/util/SdkHttpListener;->onCancelled()V

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/east2west/game/util/SdkHttpTask;->mListener:Lcom/east2west/game/util/SdkHttpListener;

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/east2west/game/util/SdkHttpTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 136
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lcom/east2west/game/util/SdkHttpTask;->mListener:Lcom/east2west/game/util/SdkHttpListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/east2west/game/util/SdkHttpTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/east2west/game/util/SdkHttpTask;->mListener:Lcom/east2west/game/util/SdkHttpListener;

    invoke-interface {v0, p1}, Lcom/east2west/game/util/SdkHttpListener;->onResponse(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 141
    iput-object p1, p0, Lcom/east2west/game/util/SdkHttpTask;->mListener:Lcom/east2west/game/util/SdkHttpListener;

    :cond_0
    return-void
.end method
