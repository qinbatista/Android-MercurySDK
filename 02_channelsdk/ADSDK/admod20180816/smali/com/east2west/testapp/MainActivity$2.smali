.class Lcom/east2west/testapp/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/east2west/testapp/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/east2west/testapp/MainActivity;


# direct methods
.method constructor <init>(Lcom/east2west/testapp/MainActivity;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/east2west/testapp/MainActivity$2;->this$0:Lcom/east2west/testapp/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "E2W"

    const-string v0, "7.1->purchaseProduct"

    .line 136
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object p1, p0, Lcom/east2west/testapp/MainActivity$2;->this$0:Lcom/east2west/testapp/MainActivity;

    iget-object p1, p1, Lcom/east2west/testapp/MainActivity;->e2w:Lcom/east2west/game/E2WApp;

    const-string v0, "UnlockGame"

    invoke-virtual {p1, v0}, Lcom/east2west/game/E2WApp;->purchaseProduct(Ljava/lang/String;)V

    return-void
.end method
