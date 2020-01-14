.class Lcom/east2west/game/System/InAppBackUp$4$3;
.super Ljava/lang/Object;
.source "InAppBackUp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/east2west/game/System/InAppBackUp$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/east2west/game/System/InAppBackUp$4;

.field private final synthetic val$f1_backup:Ljava/io/File;

.field private final synthetic val$f1_org:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/east2west/game/System/InAppBackUp$4;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/east2west/game/System/InAppBackUp$4$3;->this$1:Lcom/east2west/game/System/InAppBackUp$4;

    iput-object p2, p0, Lcom/east2west/game/System/InAppBackUp$4$3;->val$f1_backup:Ljava/io/File;

    iput-object p3, p0, Lcom/east2west/game/System/InAppBackUp$4$3;->val$f1_org:Ljava/io/File;

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 489
    :try_start_0
    iget-object p1, p0, Lcom/east2west/game/System/InAppBackUp$4$3;->val$f1_backup:Ljava/io/File;

    iget-object p2, p0, Lcom/east2west/game/System/InAppBackUp$4$3;->val$f1_org:Ljava/io/File;

    invoke-static {p1, p2}, Lcom/east2west/game/System/InAppBackUp;->access$0(Ljava/io/File;Ljava/io/File;)V

    .line 490
    invoke-static {}, Lcom/east2west/game/System/InAppBackUp;->RestartApp()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 494
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method
