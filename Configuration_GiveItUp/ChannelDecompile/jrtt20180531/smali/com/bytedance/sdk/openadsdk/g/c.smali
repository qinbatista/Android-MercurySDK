.class Lcom/bytedance/sdk/openadsdk/g/c;
.super Ljava/lang/Object;
.source "TrackInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/c;->a:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/g/c;->b:Ljava/lang/String;

    .line 17
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/g/c;->c:Z

    .line 18
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/g/c;->d:I

    .line 19
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/g/c;->d:I

    .line 39
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/g/c;->c:Z

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/g/c;->d:I

    return v0
.end method
