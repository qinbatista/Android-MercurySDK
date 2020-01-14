.class public Lcom/east2west/game/util/SharedUtil;
.super Ljava/lang/Object;
.source "SharedUtil.java"


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "com_duoku_demo_single_shared"

.field private static mInstance:Lcom/east2west/game/util/SharedUtil;


# instance fields
.field private final MODE:I

.field private final sharedpreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 8
    iput v0, p0, Lcom/east2west/game/util/SharedUtil;->MODE:I

    .line 14
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/east2west/game/util/SharedUtil;->sharedpreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/east2west/game/util/SharedUtil;
    .locals 2

    .line 18
    sget-object v0, Lcom/east2west/game/util/SharedUtil;->mInstance:Lcom/east2west/game/util/SharedUtil;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/east2west/game/util/SharedUtil;

    const-string v1, "com_duoku_demo_single_shared"

    invoke-direct {v0, p0, v1}, Lcom/east2west/game/util/SharedUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/east2west/game/util/SharedUtil;->mInstance:Lcom/east2west/game/util/SharedUtil;

    .line 22
    :cond_0
    sget-object p0, Lcom/east2west/game/util/SharedUtil;->mInstance:Lcom/east2west/game/util/SharedUtil;

    return-object p0
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Z
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/east2west/game/util/SharedUtil;->sharedpreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/east2west/game/util/SharedUtil;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/east2west/game/util/SharedUtil;->sharedpreferences:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/east2west/game/util/SharedUtil;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public removeKey(Ljava/lang/String;)Z
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/east2west/game/util/SharedUtil;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 72
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 73
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method

.method public saveBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/east2west/game/util/SharedUtil;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 61
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 62
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method

.method public saveInt(Ljava/lang/String;I)Z
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/east2west/game/util/SharedUtil;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 46
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 48
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method

.method public saveLong(Ljava/lang/String;Ljava/lang/Long;)Z
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/east2west/game/util/SharedUtil;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 39
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 41
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method

.method public saveString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/east2west/game/util/SharedUtil;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 27
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 29
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method
