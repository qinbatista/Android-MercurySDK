.class public Lcom/east2west/game/util/LetvUser;
.super Ljava/lang/Object;
.source "LetvUser.java"


# instance fields
.field private access_token:Ljava/lang/String;

.field private avatar:Ljava/lang/String;

.field private letvId:Ljava/lang/String;

.field private nick_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/east2west/game/util/LetvUser;->letvId:Ljava/lang/String;

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/east2west/game/util/LetvUser;->access_token:Ljava/lang/String;

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/east2west/game/util/LetvUser;->nick_name:Ljava/lang/String;

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lcom/east2west/game/util/LetvUser;->avatar:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccess_token()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/east2west/game/util/LetvUser;->access_token:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/east2west/game/util/LetvUser;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getLetvId()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/east2west/game/util/LetvUser;->letvId:Ljava/lang/String;

    return-object v0
.end method

.method public getNick_name()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/east2west/game/util/LetvUser;->nick_name:Ljava/lang/String;

    return-object v0
.end method

.method public setAccess_token(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/east2west/game/util/LetvUser;->access_token:Ljava/lang/String;

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/east2west/game/util/LetvUser;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setLetvId(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/east2west/game/util/LetvUser;->letvId:Ljava/lang/String;

    return-void
.end method

.method public setNick_name(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/east2west/game/util/LetvUser;->nick_name:Ljava/lang/String;

    return-void
.end method
