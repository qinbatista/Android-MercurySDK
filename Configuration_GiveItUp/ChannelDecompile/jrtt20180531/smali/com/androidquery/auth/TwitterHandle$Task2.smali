.class Lcom/androidquery/auth/TwitterHandle$Task2;
.super Landroid/os/AsyncTask;
.source "TwitterHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidquery/auth/TwitterHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Task2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidquery/auth/TwitterHandle;


# direct methods
.method private constructor <init>(Lcom/androidquery/auth/TwitterHandle;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/androidquery/auth/TwitterHandle$Task2;->this$0:Lcom/androidquery/auth/TwitterHandle;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/androidquery/auth/TwitterHandle;Lcom/androidquery/auth/TwitterHandle$Task2;)V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/androidquery/auth/TwitterHandle$Task2;-><init>(Lcom/androidquery/auth/TwitterHandle;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/androidquery/auth/TwitterHandle$Task2;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/androidquery/auth/TwitterHandle$Task2;->this$0:Lcom/androidquery/auth/TwitterHandle;

    invoke-static {v1}, Lcom/androidquery/auth/TwitterHandle;->access$0(Lcom/androidquery/auth/TwitterHandle;)Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/androidquery/auth/TwitterHandle$Task2;->this$0:Lcom/androidquery/auth/TwitterHandle;

    invoke-static {v2}, Lcom/androidquery/auth/TwitterHandle;->access$1(Lcom/androidquery/auth/TwitterHandle;)Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v1, v2, v3}, Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;->retrieveAccessToken(Loauth/signpost/OAuthConsumer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    const-string v1, ""

    :goto_0
    return-object v1

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    .line 190
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/androidquery/auth/TwitterHandle$Task2;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 199
    if-eqz p1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/androidquery/auth/TwitterHandle$Task2;->this$0:Lcom/androidquery/auth/TwitterHandle;

    iget-object v1, p0, Lcom/androidquery/auth/TwitterHandle$Task2;->this$0:Lcom/androidquery/auth/TwitterHandle;

    invoke-static {v1}, Lcom/androidquery/auth/TwitterHandle;->access$1(Lcom/androidquery/auth/TwitterHandle;)Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    move-result-object v1

    invoke-virtual {v1}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/androidquery/auth/TwitterHandle;->access$7(Lcom/androidquery/auth/TwitterHandle;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/androidquery/auth/TwitterHandle$Task2;->this$0:Lcom/androidquery/auth/TwitterHandle;

    iget-object v1, p0, Lcom/androidquery/auth/TwitterHandle$Task2;->this$0:Lcom/androidquery/auth/TwitterHandle;

    invoke-static {v1}, Lcom/androidquery/auth/TwitterHandle;->access$1(Lcom/androidquery/auth/TwitterHandle;)Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    move-result-object v1

    invoke-virtual {v1}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;->getTokenSecret()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/androidquery/auth/TwitterHandle;->access$8(Lcom/androidquery/auth/TwitterHandle;Ljava/lang/String;)V

    .line 204
    const-string v0, "token"

    iget-object v1, p0, Lcom/androidquery/auth/TwitterHandle$Task2;->this$0:Lcom/androidquery/auth/TwitterHandle;

    invoke-static {v1}, Lcom/androidquery/auth/TwitterHandle;->access$9(Lcom/androidquery/auth/TwitterHandle;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 205
    const-string v0, "secret"

    iget-object v1, p0, Lcom/androidquery/auth/TwitterHandle$Task2;->this$0:Lcom/androidquery/auth/TwitterHandle;

    invoke-static {v1}, Lcom/androidquery/auth/TwitterHandle;->access$10(Lcom/androidquery/auth/TwitterHandle;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 207
    iget-object v0, p0, Lcom/androidquery/auth/TwitterHandle$Task2;->this$0:Lcom/androidquery/auth/TwitterHandle;

    const-string v1, "aq.tw.token"

    iget-object v2, p0, Lcom/androidquery/auth/TwitterHandle$Task2;->this$0:Lcom/androidquery/auth/TwitterHandle;

    invoke-static {v2}, Lcom/androidquery/auth/TwitterHandle;->access$9(Lcom/androidquery/auth/TwitterHandle;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "aq.tw.secret"

    iget-object v4, p0, Lcom/androidquery/auth/TwitterHandle$Task2;->this$0:Lcom/androidquery/auth/TwitterHandle;

    invoke-static {v4}, Lcom/androidquery/auth/TwitterHandle;->access$10(Lcom/androidquery/auth/TwitterHandle;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/androidquery/auth/TwitterHandle;->access$11(Lcom/androidquery/auth/TwitterHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/androidquery/auth/TwitterHandle$Task2;->this$0:Lcom/androidquery/auth/TwitterHandle;

    invoke-static {v0}, Lcom/androidquery/auth/TwitterHandle;->access$12(Lcom/androidquery/auth/TwitterHandle;)V

    .line 210
    iget-object v0, p0, Lcom/androidquery/auth/TwitterHandle$Task2;->this$0:Lcom/androidquery/auth/TwitterHandle;

    iget-object v1, p0, Lcom/androidquery/auth/TwitterHandle$Task2;->this$0:Lcom/androidquery/auth/TwitterHandle;

    invoke-static {v1}, Lcom/androidquery/auth/TwitterHandle;->access$2(Lcom/androidquery/auth/TwitterHandle;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androidquery/auth/TwitterHandle;->success(Landroid/content/Context;)V

    .line 212
    iget-object v0, p0, Lcom/androidquery/auth/TwitterHandle$Task2;->this$0:Lcom/androidquery/auth/TwitterHandle;

    iget-object v1, p0, Lcom/androidquery/auth/TwitterHandle$Task2;->this$0:Lcom/androidquery/auth/TwitterHandle;

    invoke-static {v1}, Lcom/androidquery/auth/TwitterHandle;->access$10(Lcom/androidquery/auth/TwitterHandle;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/androidquery/auth/TwitterHandle$Task2;->this$0:Lcom/androidquery/auth/TwitterHandle;

    invoke-static {v2}, Lcom/androidquery/auth/TwitterHandle;->access$9(Lcom/androidquery/auth/TwitterHandle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/androidquery/auth/TwitterHandle;->authenticated(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/androidquery/auth/TwitterHandle$Task2;->this$0:Lcom/androidquery/auth/TwitterHandle;

    invoke-static {v0}, Lcom/androidquery/auth/TwitterHandle;->access$6(Lcom/androidquery/auth/TwitterHandle;)V

    .line 216
    iget-object v0, p0, Lcom/androidquery/auth/TwitterHandle$Task2;->this$0:Lcom/androidquery/auth/TwitterHandle;

    invoke-virtual {v0, v1, v1}, Lcom/androidquery/auth/TwitterHandle;->authenticated(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
