.class public Lcom/amanitadesign/ane/E2WFunctions$GetResourceString;
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
    name = "GetResourceString"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 6
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 259
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "id":Ljava/lang/String;
    invoke-static {v1}, Lcom/amanitadesign/ane/E2WFunctions;->getResourceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "str":Ljava/lang/String;
    const-string v3, "AmanitaNativeExtension"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GetResourceString: \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-static {v2}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 266
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "str":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 266
    const/4 v3, 0x0

    goto :goto_0
.end method
