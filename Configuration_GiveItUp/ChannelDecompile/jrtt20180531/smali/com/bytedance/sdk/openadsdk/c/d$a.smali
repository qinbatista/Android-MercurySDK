.class public final enum Lcom/bytedance/sdk/openadsdk/c/d$a;
.super Ljava/lang/Enum;
.source "DownloadInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bytedance/sdk/openadsdk/c/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bytedance/sdk/openadsdk/c/d$a;

.field public static final enum b:Lcom/bytedance/sdk/openadsdk/c/d$a;

.field public static final enum c:Lcom/bytedance/sdk/openadsdk/c/d$a;

.field public static final enum d:Lcom/bytedance/sdk/openadsdk/c/d$a;

.field public static final enum e:Lcom/bytedance/sdk/openadsdk/c/d$a;

.field public static final enum f:Lcom/bytedance/sdk/openadsdk/c/d$a;

.field private static final synthetic g:[Lcom/bytedance/sdk/openadsdk/c/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 153
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/d$a;

    const-string v1, "OK"

    invoke-direct {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/c/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/c/d$a;->a:Lcom/bytedance/sdk/openadsdk/c/d$a;

    .line 158
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/d$a;

    const-string v1, "NO_CONNECTION"

    invoke-direct {v0, v1, v4}, Lcom/bytedance/sdk/openadsdk/c/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/c/d$a;->b:Lcom/bytedance/sdk/openadsdk/c/d$a;

    .line 163
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/d$a;

    const-string v1, "UNUSABLE_DUE_TO_SIZE"

    invoke-direct {v0, v1, v5}, Lcom/bytedance/sdk/openadsdk/c/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/c/d$a;->c:Lcom/bytedance/sdk/openadsdk/c/d$a;

    .line 169
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/d$a;

    const-string v1, "RECOMMENDED_UNUSABLE_DUE_TO_SIZE"

    invoke-direct {v0, v1, v6}, Lcom/bytedance/sdk/openadsdk/c/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/c/d$a;->d:Lcom/bytedance/sdk/openadsdk/c/d$a;

    .line 175
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/d$a;

    const-string v1, "CANNOT_USE_ROAMING"

    invoke-direct {v0, v1, v7}, Lcom/bytedance/sdk/openadsdk/c/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/c/d$a;->e:Lcom/bytedance/sdk/openadsdk/c/d$a;

    .line 181
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/d$a;

    const-string v1, "TYPE_DISALLOWED_BY_REQUESTOR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/c/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/c/d$a;->f:Lcom/bytedance/sdk/openadsdk/c/d$a;

    .line 149
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/bytedance/sdk/openadsdk/c/d$a;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/c/d$a;->a:Lcom/bytedance/sdk/openadsdk/c/d$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bytedance/sdk/openadsdk/c/d$a;->b:Lcom/bytedance/sdk/openadsdk/c/d$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bytedance/sdk/openadsdk/c/d$a;->c:Lcom/bytedance/sdk/openadsdk/c/d$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bytedance/sdk/openadsdk/c/d$a;->d:Lcom/bytedance/sdk/openadsdk/c/d$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/bytedance/sdk/openadsdk/c/d$a;->e:Lcom/bytedance/sdk/openadsdk/c/d$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/bytedance/sdk/openadsdk/c/d$a;->f:Lcom/bytedance/sdk/openadsdk/c/d$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/bytedance/sdk/openadsdk/c/d$a;->g:[Lcom/bytedance/sdk/openadsdk/c/d$a;

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
    .line 149
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/c/d$a;
    .locals 1

    .prologue
    .line 149
    const-class v0, Lcom/bytedance/sdk/openadsdk/c/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/c/d$a;

    return-object v0
.end method

.method public static values()[Lcom/bytedance/sdk/openadsdk/c/d$a;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/d$a;->g:[Lcom/bytedance/sdk/openadsdk/c/d$a;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/openadsdk/c/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/openadsdk/c/d$a;

    return-object v0
.end method
