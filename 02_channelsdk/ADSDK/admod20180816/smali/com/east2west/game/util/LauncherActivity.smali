.class public Lcom/east2west/game/util/LauncherActivity;
.super Landroid/app/Activity;
.source "LauncherActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/east2west/game/E2WApp;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    invoke-virtual {p0, p1}, Lcom/east2west/game/util/LauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 37
    invoke-virtual {p0}, Lcom/east2west/game/util/LauncherActivity;->finish()V

    return-void
.end method
