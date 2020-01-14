.class Lcom/east2west/testapp/MainActivity$6;
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

    .line 169
    iput-object p1, p0, Lcom/east2west/testapp/MainActivity$6;->this$0:Lcom/east2west/testapp/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "E2W"

    const-string v0, "8.2->Function3"

    .line 173
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
