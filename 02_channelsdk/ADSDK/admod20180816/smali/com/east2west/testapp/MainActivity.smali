.class public Lcom/east2west/testapp/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field public static appcall:Lcom/east2west/game/inApp/APPBaseInterface;

.field public static context:Landroid/content/Context;


# instance fields
.field public e2w:Lcom/east2west/game/E2WApp;

.field public qin:Lcom/east2west/game/QinConst;

.field public qin1:Lcom/east2west/game/QinConst;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    sput-object p0, Lcom/east2west/testapp/MainActivity;->context:Landroid/content/Context;

    const-string p1, "E2W"

    const-string v0, "2->e2w"

    .line 27
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    new-instance p1, Lcom/east2west/game/E2WApp;

    invoke-direct {p1}, Lcom/east2west/game/E2WApp;-><init>()V

    iput-object p1, p0, Lcom/east2west/testapp/MainActivity;->e2w:Lcom/east2west/game/E2WApp;

    .line 29
    new-instance p1, Lcom/east2west/game/QinConst;

    invoke-direct {p1}, Lcom/east2west/game/QinConst;-><init>()V

    iput-object p1, p0, Lcom/east2west/testapp/MainActivity;->qin:Lcom/east2west/game/QinConst;

    .line 30
    new-instance p1, Lcom/east2west/testapp/MainActivity$1;

    invoke-direct {p1, p0}, Lcom/east2west/testapp/MainActivity$1;-><init>(Lcom/east2west/testapp/MainActivity;)V

    sput-object p1, Lcom/east2west/testapp/MainActivity;->appcall:Lcom/east2west/game/inApp/APPBaseInterface;

    const-string p1, "E2W"

    const-string v0, "4->InitE2WSDK"

    .line 124
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object p1, p0, Lcom/east2west/testapp/MainActivity;->e2w:Lcom/east2west/game/E2WApp;

    sget-object v0, Lcom/east2west/testapp/MainActivity;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/east2west/game/E2WApp;->InitE2WSDK(Landroid/content/Context;)V

    const-string p1, "E2W"

    const-string v0, "5->InitCarriers"

    .line 126
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object p1, p0, Lcom/east2west/testapp/MainActivity;->e2w:Lcom/east2west/game/E2WApp;

    sget-object v0, Lcom/east2west/testapp/MainActivity;->appcall:Lcom/east2west/game/inApp/APPBaseInterface;

    invoke-virtual {p1, v0}, Lcom/east2west/game/E2WApp;->InitCarriers(Lcom/east2west/game/inApp/APPBaseInterface;)V

    const-string p1, "E2W"

    const-string v0, "6->InitChannel"

    .line 128
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object p1, p0, Lcom/east2west/testapp/MainActivity;->e2w:Lcom/east2west/game/E2WApp;

    sget-object v0, Lcom/east2west/testapp/MainActivity;->appcall:Lcom/east2west/game/inApp/APPBaseInterface;

    invoke-virtual {p1, v0}, Lcom/east2west/game/E2WApp;->InitChannel(Lcom/east2west/game/inApp/APPBaseInterface;)V

    const/high16 p1, 0x7f080000

    .line 130
    invoke-virtual {p0, p1}, Lcom/east2west/testapp/MainActivity;->setContentView(I)V

    const p1, 0x7f06001b

    .line 131
    invoke-virtual {p0, p1}, Lcom/east2west/testapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 133
    new-instance v0, Lcom/east2west/testapp/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/east2west/testapp/MainActivity$2;-><init>(Lcom/east2west/testapp/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f06000e

    .line 142
    invoke-virtual {p0, p1}, Lcom/east2west/testapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 143
    new-instance v0, Lcom/east2west/testapp/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/east2west/testapp/MainActivity$3;-><init>(Lcom/east2west/testapp/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f060008

    .line 152
    invoke-virtual {p0, p1}, Lcom/east2west/testapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 153
    new-instance v0, Lcom/east2west/testapp/MainActivity$4;

    invoke-direct {v0, p0}, Lcom/east2west/testapp/MainActivity$4;-><init>(Lcom/east2west/testapp/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f060009

    .line 160
    invoke-virtual {p0, p1}, Lcom/east2west/testapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 161
    new-instance v0, Lcom/east2west/testapp/MainActivity$5;

    invoke-direct {v0, p0}, Lcom/east2west/testapp/MainActivity$5;-><init>(Lcom/east2west/testapp/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f06000a

    .line 168
    invoke-virtual {p0, p1}, Lcom/east2west/testapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 169
    new-instance v0, Lcom/east2west/testapp/MainActivity$6;

    invoke-direct {v0, p0}, Lcom/east2west/testapp/MainActivity$6;-><init>(Lcom/east2west/testapp/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 231
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 232
    iget-object v0, p0, Lcom/east2west/testapp/MainActivity;->e2w:Lcom/east2west/game/E2WApp;

    invoke-virtual {v0}, Lcom/east2west/game/E2WApp;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 205
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 206
    iget-object v0, p0, Lcom/east2west/testapp/MainActivity;->e2w:Lcom/east2west/game/E2WApp;

    invoke-virtual {v0}, Lcom/east2west/game/E2WApp;->onPause()V

    return-void
.end method

.method public onRestart()V
    .locals 1

    .line 219
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 220
    iget-object v0, p0, Lcom/east2west/testapp/MainActivity;->e2w:Lcom/east2west/game/E2WApp;

    invoke-virtual {v0}, Lcom/east2west/game/E2WApp;->onRestart()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 225
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 226
    iget-object v0, p0, Lcom/east2west/testapp/MainActivity;->e2w:Lcom/east2west/game/E2WApp;

    invoke-virtual {v0}, Lcom/east2west/game/E2WApp;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 212
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 213
    iget-object v0, p0, Lcom/east2west/testapp/MainActivity;->e2w:Lcom/east2west/game/E2WApp;

    invoke-virtual {v0}, Lcom/east2west/game/E2WApp;->onStop()V

    return-void
.end method
