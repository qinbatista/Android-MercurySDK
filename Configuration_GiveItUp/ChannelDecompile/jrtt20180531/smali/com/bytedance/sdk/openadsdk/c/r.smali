.class Lcom/bytedance/sdk/openadsdk/c/r;
.super Ljava/lang/Object;
.source "NotificationCompatBuilder.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/c/o;


# instance fields
.field private a:Landroid/support/v4/app/NotificationCompat$Builder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/r;->a:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 25
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v1, "tt_chuanshanjia_sdk_id"

    invoke-direct {v0, p1, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/r;->a:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 31
    :goto_0
    return-void

    .line 27
    :cond_0
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/r;->a:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/r;->a:Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/r;->a:Landroid/support/v4/app/NotificationCompat$Builder;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/r;->a:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 126
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)Lcom/bytedance/sdk/openadsdk/c/o;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/r;->a:Landroid/support/v4/app/NotificationCompat$Builder;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/r;->a:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 78
    :cond_0
    return-object p0
.end method

.method public a(J)Lcom/bytedance/sdk/openadsdk/c/o;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/r;->a:Landroid/support/v4/app/NotificationCompat$Builder;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/r;->a:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 70
    :cond_0
    return-object p0
.end method

.method public a(Landroid/app/PendingIntent;)Lcom/bytedance/sdk/openadsdk/c/o;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/r;->a:Landroid/support/v4/app/NotificationCompat$Builder;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/r;->a:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 38
    :cond_0
    return-object p0
.end method

.method public a(Z)Lcom/bytedance/sdk/openadsdk/c/o;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/r;->a:Landroid/support/v4/app/NotificationCompat$Builder;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/r;->a:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 46
    :cond_0
    return-object p0
.end method

.method public b(Landroid/app/PendingIntent;)Lcom/bytedance/sdk/openadsdk/c/o;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/r;->a:Landroid/support/v4/app/NotificationCompat$Builder;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/r;->a:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 62
    :cond_0
    return-object p0
.end method

.method public b(Z)Lcom/bytedance/sdk/openadsdk/c/o;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/r;->a:Landroid/support/v4/app/NotificationCompat$Builder;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/r;->a:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 54
    :cond_0
    return-object p0
.end method
