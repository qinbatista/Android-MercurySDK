.class final enum Lcom/ss/android/crash/log/l$a;
.super Ljava/lang/Enum;
.source "CrashUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/crash/log/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ss/android/crash/log/l$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ss/android/crash/log/l$a;

.field public static final enum b:Lcom/ss/android/crash/log/l$a;

.field public static final enum c:Lcom/ss/android/crash/log/l$a;

.field private static final synthetic e:[Lcom/ss/android/crash/log/l$a;


# instance fields
.field final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/ss/android/crash/log/l$a;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2, v2}, Lcom/ss/android/crash/log/l$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ss/android/crash/log/l$a;->a:Lcom/ss/android/crash/log/l$a;

    .line 45
    new-instance v0, Lcom/ss/android/crash/log/l$a;

    const-string v1, "GZIP"

    invoke-direct {v0, v1, v3, v3}, Lcom/ss/android/crash/log/l$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ss/android/crash/log/l$a;->b:Lcom/ss/android/crash/log/l$a;

    .line 46
    new-instance v0, Lcom/ss/android/crash/log/l$a;

    const-string v1, "DEFLATER"

    invoke-direct {v0, v1, v4, v4}, Lcom/ss/android/crash/log/l$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ss/android/crash/log/l$a;->c:Lcom/ss/android/crash/log/l$a;

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ss/android/crash/log/l$a;

    sget-object v1, Lcom/ss/android/crash/log/l$a;->a:Lcom/ss/android/crash/log/l$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ss/android/crash/log/l$a;->b:Lcom/ss/android/crash/log/l$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ss/android/crash/log/l$a;->c:Lcom/ss/android/crash/log/l$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ss/android/crash/log/l$a;->e:[Lcom/ss/android/crash/log/l$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput p3, p0, Lcom/ss/android/crash/log/l$a;->d:I

    .line 50
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/crash/log/l$a;
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/ss/android/crash/log/l$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ss/android/crash/log/l$a;

    return-object v0
.end method

.method public static values()[Lcom/ss/android/crash/log/l$a;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/ss/android/crash/log/l$a;->e:[Lcom/ss/android/crash/log/l$a;

    invoke-virtual {v0}, [Lcom/ss/android/crash/log/l$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/crash/log/l$a;

    return-object v0
.end method
