.class final enum Lcom/bytedance/sdk/openadsdk/c/b/c;
.super Ljava/lang/Enum;
.source "Permissions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bytedance/sdk/openadsdk/c/b/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bytedance/sdk/openadsdk/c/b/c;

.field public static final enum b:Lcom/bytedance/sdk/openadsdk/c/b/c;

.field public static final enum c:Lcom/bytedance/sdk/openadsdk/c/b/c;

.field private static final synthetic d:[Lcom/bytedance/sdk/openadsdk/c/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/b/c;

    const-string v1, "GRANTED"

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/c/b/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/c/b/c;->a:Lcom/bytedance/sdk/openadsdk/c/b/c;

    .line 5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/b/c;

    const-string v1, "DENIED"

    invoke-direct {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/c/b/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/c/b/c;->b:Lcom/bytedance/sdk/openadsdk/c/b/c;

    .line 6
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/b/c;

    const-string v1, "NOT_FOUND"

    invoke-direct {v0, v1, v4}, Lcom/bytedance/sdk/openadsdk/c/b/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/c/b/c;->c:Lcom/bytedance/sdk/openadsdk/c/b/c;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/bytedance/sdk/openadsdk/c/b/c;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/c/b/c;->a:Lcom/bytedance/sdk/openadsdk/c/b/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bytedance/sdk/openadsdk/c/b/c;->b:Lcom/bytedance/sdk/openadsdk/c/b/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bytedance/sdk/openadsdk/c/b/c;->c:Lcom/bytedance/sdk/openadsdk/c/b/c;

    aput-object v1, v0, v4

    sput-object v0, Lcom/bytedance/sdk/openadsdk/c/b/c;->d:[Lcom/bytedance/sdk/openadsdk/c/b/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/c/b/c;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/bytedance/sdk/openadsdk/c/b/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/c/b/c;

    return-object v0
.end method

.method public static values()[Lcom/bytedance/sdk/openadsdk/c/b/c;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/b/c;->d:[Lcom/bytedance/sdk/openadsdk/c/b/c;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/openadsdk/c/b/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/openadsdk/c/b/c;

    return-object v0
.end method
