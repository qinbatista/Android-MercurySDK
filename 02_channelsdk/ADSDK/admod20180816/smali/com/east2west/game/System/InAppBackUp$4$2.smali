.class Lcom/east2west/game/System/InAppBackUp$4$2;
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

.field private final synthetic val$f1_old:Ljava/io/File;

.field private final synthetic val$f1_org:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/east2west/game/System/InAppBackUp$4;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/east2west/game/System/InAppBackUp$4$2;->this$1:Lcom/east2west/game/System/InAppBackUp$4;

    iput-object p2, p0, Lcom/east2west/game/System/InAppBackUp$4$2;->val$f1_old:Ljava/io/File;

    iput-object p3, p0, Lcom/east2west/game/System/InAppBackUp$4$2;->val$f1_org:Ljava/io/File;

    iput-object p4, p0, Lcom/east2west/game/System/InAppBackUp$4$2;->val$f1_backup:Ljava/io/File;

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 406
    :try_start_0
    iget-object p1, p0, Lcom/east2west/game/System/InAppBackUp$4$2;->val$f1_old:Ljava/io/File;

    iget-object p2, p0, Lcom/east2west/game/System/InAppBackUp$4$2;->val$f1_org:Ljava/io/File;

    invoke-static {p1, p2}, Lcom/east2west/game/System/InAppBackUp;->access$0(Ljava/io/File;Ljava/io/File;)V

    .line 407
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "["

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p2, Lcom/east2west/game/System/InAppBackUp;->LogName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "][CheckBackUp]Backup orignal data"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/east2west/game/System/InAppBackUp;->LogLocalServer(Ljava/lang/String;)V

    .line 408
    iget-object p1, p0, Lcom/east2west/game/System/InAppBackUp$4$2;->val$f1_org:Ljava/io/File;

    iget-object p2, p0, Lcom/east2west/game/System/InAppBackUp$4$2;->val$f1_backup:Ljava/io/File;

    invoke-static {p1, p2}, Lcom/east2west/game/System/InAppBackUp;->access$0(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 413
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/east2west/game/System/InAppBackUp;->LogName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "][CheckBackUp]Backup orignal data failed:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 412
    invoke-static {p1}, Lcom/east2west/game/System/InAppBackUp;->LogLocalServer(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
