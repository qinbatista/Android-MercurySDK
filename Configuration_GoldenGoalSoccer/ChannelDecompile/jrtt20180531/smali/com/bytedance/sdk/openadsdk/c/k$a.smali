.class Lcom/bytedance/sdk/openadsdk/c/k$a;
.super Ljava/lang/Object;
.source "DownloadThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/c/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:J

.field public g:J

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:J

.field public k:J

.field public l:I

.field public m:J

.field public n:J

.field public o:J

.field public p:J

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:I

.field public t:Ljava/net/URL;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/c/d;)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/c/k$a;->c:I

    .line 89
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/c/k$a;->d:Z

    .line 91
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/c/k$a;->f:J

    .line 92
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/c/k$a;->g:J

    .line 94
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/c/k$a;->i:Z

    .line 95
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/c/k$a;->j:J

    .line 96
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/c/k$a;->k:J

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/c/k$a;->l:I

    .line 106
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/c/k$a;->p:J

    .line 114
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/c/d;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/k$a;->b:Ljava/lang/String;

    .line 115
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/c/d;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/k$a;->e:Ljava/lang/String;

    .line 116
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/c/d;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/k$a;->a:Ljava/lang/String;

    .line 117
    iget-wide v0, p1, Lcom/bytedance/sdk/openadsdk/c/d;->s:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/c/k$a;->f:J

    .line 118
    iget-wide v0, p1, Lcom/bytedance/sdk/openadsdk/c/d;->t:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/c/k$a;->g:J

    .line 119
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 123
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/c/k$a;->p:J

    .line 124
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/k$a;->q:Ljava/lang/String;

    .line 125
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/k$a;->r:Ljava/lang/String;

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/c/k$a;->s:I

    .line 127
    return-void
.end method
