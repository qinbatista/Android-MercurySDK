.class Lcom/bytedance/sdk/openadsdk/c/j$a;
.super Ljava/lang/Object;
.source "DownloadScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/c/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/c/j$a;->a:J

    .line 41
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/c/j$a;->b:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/c/j$a;->c:Ljava/lang/String;

    .line 43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/c/j$a;->d:J

    .line 44
    return-void
.end method


# virtual methods
.method public a(Landroid/media/MediaScannerConnection;)V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j$a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/j$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method
