.class public Lcom/amanitadesign/ane/E2WFunctions$GetChannelId;
.super Ljava/lang/Object;
.source "E2WFunctions.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amanitadesign/ane/E2WFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetChannelId"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 3
    .param p1, "ctx"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 274
    const/4 v1, 0x0

    .line 277
    .local v1, "result":Lcom/adobe/fre/FREObject;
    :try_start_0
    sget-object v2, Lcom/amanitadesign/ane/E2WExtension;->e2w:Lcom/east2west/game/E2WApp;

    invoke-virtual {v2}, Lcom/east2west/game/E2WApp;->getChannelId()I

    move-result v2

    invoke-static {v2}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 281
    :goto_0
    return-object v1

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
