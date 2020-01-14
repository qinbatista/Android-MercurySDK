.class Lcom/east2west/game/System/InAppBackUp$4;
.super Ljava/lang/Object;
.source "InAppBackUp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/east2west/game/System/InAppBackUp;->CheckBackUp(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$Location:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/east2west/game/System/InAppBackUp$4;->val$Location:Ljava/lang/String;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 254
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 256
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/east2west/game/System/InAppBackUp$4;->val$Location:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 257
    array-length v1, v0

    if-lez v1, :cond_16

    .line 259
    sget-object v1, Lcom/east2west/game/System/InAppBackUp;->DataFileName:Ljava/lang/String;

    const-string v2, ""

    if-ne v1, v2, :cond_0

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/east2west/game/System/InAppBackUp;->LogName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[CheckBackUp] your DataFileName is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/System/InAppBackUp;->LogLocalServer(Ljava/lang/String;)V

    return-void

    .line 263
    :cond_0
    sget-object v1, Lcom/east2west/game/System/InAppBackUp;->DataFileName:Ljava/lang/String;

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 264
    array-length v2, v1

    const/4 v3, 0x0

    if-lez v2, :cond_1

    aget-object v2, v1, v3

    if-eqz v2, :cond_1

    sget-object v2, Lcom/east2west/game/System/InAppBackUp;->DatFile:Ljava/lang/String;

    const-string v4, ""

    if-ne v2, v4, :cond_1

    .line 265
    aget-object v2, v1, v3

    sput-object v2, Lcom/east2west/game/System/InAppBackUp;->DatFile:Ljava/lang/String;

    .line 267
    :cond_1
    array-length v2, v1

    const/4 v4, 0x1

    if-le v2, v4, :cond_2

    aget-object v2, v1, v4

    if-eqz v2, :cond_2

    sget-object v2, Lcom/east2west/game/System/InAppBackUp;->DatFormat:Ljava/lang/String;

    const-string v5, ""

    if-ne v2, v5, :cond_2

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/east2west/game/System/InAppBackUp;->DatFormat:Ljava/lang/String;

    .line 270
    :cond_2
    sget-object v1, Lcom/east2west/game/System/InAppBackUp;->DatFile:Ljava/lang/String;

    const-string v2, ""

    if-ne v1, v2, :cond_3

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/east2west/game/System/InAppBackUp;->LogName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[CheckBackUp] Can\'t get file name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/east2west/game/System/InAppBackUp;->LogLocalServer(Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/east2west/game/System/InAppBackUp;->LogName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[CheckBackUp] DatFile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/east2west/game/System/InAppBackUp;->DatFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",DatFormat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    sget-object v2, Lcom/east2west/game/System/InAppBackUp;->DatFormat:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/east2west/game/System/InAppBackUp;->LogLocalServer(Ljava/lang/String;)V

    .line 279
    :goto_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v1, :cond_4

    goto/16 :goto_3

    :cond_4
    aget-object v5, v0, v2

    .line 281
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 289
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/d"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 297
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/proc"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 304
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/system"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 305
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/sys"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 306
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/east2west/game/System/InAppBackUp;->CheckBackUp(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 308
    :cond_5
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/east2west/game/System/InAppBackUp;->DataLocation:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/east2west/game/System/InAppBackUp;->DatFile:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/east2west/game/System/InAppBackUp;->DatFormat:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 309
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/east2west/game/System/InAppBackUp;->DataLocation:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/east2west/game/System/InAppBackUp;->DatFile:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_backup"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/east2west/game/System/InAppBackUp;->DatFormat:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 310
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    sget-object v10, Lcom/east2west/game/System/InAppBackUp;->DataLocation:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Lcom/east2west/game/System/InAppBackUp;->DatFile:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_backup_old"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/east2west/game/System/InAppBackUp;->DatFormat:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    sget-object v11, Lcom/east2west/game/System/InAppBackUp;->DatFile:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/east2west/game/System/InAppBackUp;->DatFormat:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 312
    sget-object v10, Lcom/east2west/game/System/InAppBackUp;->DatFile:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v9

    sget-object v11, Lcom/east2west/game/System/InAppBackUp;->DatFormat:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/16 v13, 0x8

    if-eq v9, v4, :cond_10

    .line 313
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v9, v10, :cond_10

    .line 316
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    sget-object v14, Lcom/east2west/game/E2WApp;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "/"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    sget-object v14, Lcom/east2west/game/System/InAppBackUp;->DatFile:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "_backup"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Lcom/east2west/game/System/InAppBackUp;->DatFormat:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 316
    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 319
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 324
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "["

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/east2west/game/System/InAppBackUp;->LogName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "[CheckBackUp]regular backup data,f1_org->f1_backup"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 323
    invoke-static {v5}, Lcom/east2west/game/System/InAppBackUp;->LogLocalServer(Ljava/lang/String;)V

    .line 326
    :try_start_0
    invoke-static {v6, v7}, Lcom/east2west/game/System/InAppBackUp;->access$0(Ljava/io/File;Ljava/io/File;)V

    .line 327
    invoke-static {}, Lcom/east2west/game/System/InAppBackUp;->UploadData()I

    move-result v5

    if-ne v5, v4, :cond_6

    .line 329
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/east2west/game/System/InAppBackUp;->LogName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "][CheckBackUp] Upload Successfully"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/east2west/game/System/InAppBackUp;->LogLocalServer(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    if-ne v5, v12, :cond_7

    .line 331
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/east2west/game/System/InAppBackUp;->LogName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "][CheckBackUp] Server refuse"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/east2west/game/System/InAppBackUp;->LogLocalServer(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    if-ne v5, v11, :cond_8

    .line 333
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/east2west/game/System/InAppBackUp;->LogName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "][CheckBackUp] Can\'t access server"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/east2west/game/System/InAppBackUp;->LogLocalServer(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 335
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/east2west/game/System/InAppBackUp;->LogName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "][CheckBackUp] Unknow reason"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/east2west/game/System/InAppBackUp;->LogLocalServer(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v5

    .line 340
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/east2west/game/System/InAppBackUp;->LogName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "][CheckBackUp]Write backup failed:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 339
    invoke-static {v5}, Lcom/east2west/game/System/InAppBackUp;->LogLocalServer(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 342
    :cond_9
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_15

    .line 347
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Lcom/east2west/game/System/InAppBackUp;->LogName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "][CheckBackUp]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "missing backup"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/east2west/game/System/InAppBackUp;->LogLocalServer(Ljava/lang/String;)V

    .line 348
    invoke-static {}, Lcom/east2west/game/System/InAppBackUp;->DownloadData()I

    move-result v9

    const-string v10, "BackUpData"

    const-string v14, ""

    .line 350
    invoke-static {v10, v14}, Lcom/east2west/game/System/InAppBackUp;->writeFileData(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v9, v4, :cond_b

    .line 352
    invoke-virtual {v6, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 354
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 356
    :cond_a
    new-instance v5, Landroid/app/AlertDialog$Builder;

    sget-object v9, Lcom/east2west/game/E2WApp;->mContext:Landroid/content/Context;

    invoke-direct {v5, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 357
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u53d1\u73b0\u60a8\u5728["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Lcom/east2west/game/System/InAppBackUp;->BackupTime:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "]\u4fdd\u5b58\u8fc7\u5907\u4efd"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v9, "\u63d0\u793a\uff01\u3010\u8986\u76d6\u672c\u5730\u3011\u672c\u5730\u8fdb\u5ea6\u5c06\u4f1a\u4e22\u5931\u4e14\u4f1a\u5173\u95ed\u6e38\u620f"

    .line 358
    invoke-virtual {v5, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v9, "\u8986\u76d6\u672c\u5730"

    .line 359
    new-instance v10, Lcom/east2west/game/System/InAppBackUp$4$1;

    invoke-direct {v10, p0, v6, v7, v8}, Lcom/east2west/game/System/InAppBackUp$4$1;-><init>(Lcom/east2west/game/System/InAppBackUp$4;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v5, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v9, "\u7ee7\u7eed\u6e38\u620f"

    .line 402
    new-instance v10, Lcom/east2west/game/System/InAppBackUp$4$2;

    invoke-direct {v10, p0, v8, v6, v7}, Lcom/east2west/game/System/InAppBackUp$4$2;-><init>(Lcom/east2west/game/System/InAppBackUp$4;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v5, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 419
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 420
    invoke-virtual {v5, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 421
    invoke-virtual {v5, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 422
    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v13, v13}, Landroid/view/Window;->setFlags(II)V

    .line 424
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 426
    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    .line 427
    sget-object v7, Lcom/east2west/game/E2WApp;->mContext:Landroid/content/Context;

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 428
    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v7

    .line 427
    invoke-virtual {v6, v7}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 429
    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 430
    invoke-virtual {v5, v13}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_2

    :cond_b
    if-ne v9, v12, :cond_f

    .line 432
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/east2west/game/System/InAppBackUp;->LogName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "][CheckBackUp]Don\'t have backup on server"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/east2west/game/System/InAppBackUp;->LogLocalServer(Ljava/lang/String;)V

    .line 433
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/east2west/game/E2WApp;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    sget-object v8, Lcom/east2west/game/System/InAppBackUp;->DatFile:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_backup"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/east2west/game/System/InAppBackUp;->DatFormat:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 433
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 436
    :try_start_1
    invoke-static {v5, v6}, Lcom/east2west/game/System/InAppBackUp;->access$0(Ljava/io/File;Ljava/io/File;)V

    .line 437
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "["

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/east2west/game/System/InAppBackUp;->LogName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "][CheckBackUp]Current data has been backuped at local"

    .line 438
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/east2west/game/System/InAppBackUp;->LogLocalServer(Ljava/lang/String;)V

    .line 439
    invoke-static {}, Lcom/east2west/game/System/InAppBackUp;->UploadData()I

    move-result v5

    if-ne v5, v4, :cond_c

    .line 441
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "["

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/east2west/game/System/InAppBackUp;->LogName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "][CheckBackUp] Upload Successfully"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/east2west/game/System/InAppBackUp;->LogLocalServer(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    if-ne v5, v12, :cond_d

    .line 443
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "["

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/east2west/game/System/InAppBackUp;->LogName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "][CheckBackUp] Server refuse"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/east2west/game/System/InAppBackUp;->LogLocalServer(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_d
    if-ne v5, v11, :cond_e

    .line 445
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "["

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/east2west/game/System/InAppBackUp;->LogName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "][CheckBackUp] Can\'t access server"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/east2west/game/System/InAppBackUp;->LogLocalServer(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 447
    :cond_e
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "["

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/east2west/game/System/InAppBackUp;->LogName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "][CheckBackUp] Unknow reason"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/east2west/game/System/InAppBackUp;->LogLocalServer(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v5

    .line 451
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/east2west/game/System/InAppBackUp;->LogName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "][CheckBackUp]Current data has error when try to backup, error is:"

    .line 452
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/east2west/game/System/InAppBackUp;->LogLocalServer(Ljava/lang/String;)V

    .line 454
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 455
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "["

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/east2west/game/System/InAppBackUp;->LogName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "][CheckBackUp]Delete broken backup"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/east2west/game/System/InAppBackUp;->LogLocalServer(Ljava/lang/String;)V

    .line 456
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto/16 :goto_2

    :cond_f
    if-ne v9, v11, :cond_15

    .line 460
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/east2west/game/System/InAppBackUp;->LogName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "][CheckBackUp]Server is unreadble"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/east2west/game/System/InAppBackUp;->LogLocalServer(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 470
    :cond_10
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 471
    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/east2west/game/System/InAppBackUp;->DatFile:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "_backup"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/east2west/game/System/InAppBackUp;->DatFormat:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v8, -0x1

    if-eq v5, v8, :cond_11

    .line 472
    new-instance v5, Ljava/io/File;

    .line 473
    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/east2west/game/E2WApp;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/east2west/game/System/InAppBackUp;->DatFile:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/east2west/game/System/InAppBackUp;->DatFormat:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 472
    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 474
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_15

    .line 478
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "["

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/east2west/game/System/InAppBackUp;->LogName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "][CheckBackUp]"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "Local data is missing, restart to use backup"

    .line 479
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/east2west/game/System/InAppBackUp;->LogLocalServer(Ljava/lang/String;)V

    .line 482
    new-instance v5, Landroid/app/AlertDialog$Builder;

    sget-object v8, Lcom/east2west/game/E2WApp;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v8, "\u6570\u636e\u5f02\u5e38"

    .line 483
    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v8, "\u63d0\u793a\uff01\u3010\u5173\u95ed\u6e38\u620f\u3011\u5c06\u4f1a\u6062\u590d\u60a8\u7684\u6570\u636e"

    .line 484
    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v8, "\u5173\u95ed\u6e38\u620f"

    .line 485
    new-instance v9, Lcom/east2west/game/System/InAppBackUp$4$3;

    invoke-direct {v9, p0, v7, v6}, Lcom/east2west/game/System/InAppBackUp$4$3;-><init>(Lcom/east2west/game/System/InAppBackUp$4;Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v5, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 500
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 501
    invoke-virtual {v5, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 502
    invoke-virtual {v5, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 503
    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v13, v13}, Landroid/view/Window;->setFlags(II)V

    .line 505
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 506
    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    .line 507
    sget-object v7, Lcom/east2west/game/E2WApp;->mContext:Landroid/content/Context;

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 508
    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v7

    .line 507
    invoke-virtual {v6, v7}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 509
    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v13}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_2

    .line 511
    :cond_11
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_15

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_15

    sget-boolean v5, Lcom/east2west/game/System/InAppBackUp;->isenter:Z

    if-nez v5, :cond_15

    .line 512
    sput-boolean v4, Lcom/east2west/game/System/InAppBackUp;->isenter:Z

    .line 514
    invoke-static {}, Lcom/east2west/game/System/InAppBackUp;->DownloadData()I

    move-result v5

    if-ne v5, v4, :cond_12

    .line 517
    new-instance v5, Landroid/app/AlertDialog$Builder;

    sget-object v8, Lcom/east2west/game/E2WApp;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 518
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u53d1\u73b0\u60a8\u5728["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/east2west/game/System/InAppBackUp;->BackupTime:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "]\u4fdd\u5b58\u8fc7\u5907\u4efd"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v8, "\u63d0\u793a\uff01\u3010\u8986\u76d6\u672c\u5730\u3011\u672c\u5730\u8fdb\u5ea6\u5c06\u4f1a\u4e22\u5931\u4e14\u4f1a\u5173\u95ed\u6e38\u620f"

    .line 519
    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v8, "\u8986\u76d6\u672c\u5730"

    .line 521
    new-instance v9, Lcom/east2west/game/System/InAppBackUp$4$4;

    invoke-direct {v9, p0, v6, v7}, Lcom/east2west/game/System/InAppBackUp$4$4;-><init>(Lcom/east2west/game/System/InAppBackUp$4;Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v5, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v6, "\u7ee7\u7eed\u6e38\u620f"

    .line 553
    new-instance v7, Lcom/east2west/game/System/InAppBackUp$4$5;

    invoke-direct {v7, p0}, Lcom/east2west/game/System/InAppBackUp$4$5;-><init>(Lcom/east2west/game/System/InAppBackUp$4;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 560
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 561
    invoke-virtual {v5, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 562
    invoke-virtual {v5, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 563
    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v13, v13}, Landroid/view/Window;->setFlags(II)V

    .line 565
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 567
    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    .line 568
    sget-object v7, Lcom/east2west/game/E2WApp;->mContext:Landroid/content/Context;

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 569
    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v7

    .line 568
    invoke-virtual {v6, v7}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 570
    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v13}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_2

    :cond_12
    if-ne v5, v12, :cond_14

    .line 572
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 573
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 575
    :cond_13
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/east2west/game/System/InAppBackUp;->LogName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "][CheckBackUp]Don\'t have backup on server, do nothing"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 574
    invoke-static {v5}, Lcom/east2west/game/System/InAppBackUp;->LogLocalServer(Ljava/lang/String;)V

    goto :goto_2

    :cond_14
    if-ne v5, v11, :cond_15

    .line 578
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/east2west/game/System/InAppBackUp;->LogName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "][CheckBackUp]Server is unreadble, do nothing"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/east2west/game/System/InAppBackUp;->LogLocalServer(Ljava/lang/String;)V

    :cond_15
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 595
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/east2west/game/System/InAppBackUp;->LogName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] Location:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/east2west/game/System/InAppBackUp$4;->val$Location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/east2west/game/System/InAppBackUp;->LogLocalServer(Ljava/lang/String;)V

    .line 597
    :goto_3
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
