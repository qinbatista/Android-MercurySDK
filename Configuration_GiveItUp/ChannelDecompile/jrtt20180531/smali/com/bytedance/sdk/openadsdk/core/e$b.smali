.class public Lcom/bytedance/sdk/openadsdk/core/e$b;
.super Landroid/database/AbstractCursor;
.source "DBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/e;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/e;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e$b;->a:Lcom/bytedance/sdk/openadsdk/core/e;

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    return-void
.end method


# virtual methods
.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x0

    return v0
.end method

.method public getDouble(I)D
    .locals 2

    .prologue
    .line 399
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1

    .prologue
    .line 394
    const/4 v0, 0x0

    return v0
.end method

.method public getInt(I)I
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x0

    return v0
.end method

.method public getLong(I)J
    .locals 2

    .prologue
    .line 389
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 1

    .prologue
    .line 379
    const/4 v0, 0x0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x0

    return-object v0
.end method

.method public isNull(I)Z
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x1

    return v0
.end method
