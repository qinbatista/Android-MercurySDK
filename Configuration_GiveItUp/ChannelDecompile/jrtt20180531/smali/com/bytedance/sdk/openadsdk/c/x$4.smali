.class Lcom/bytedance/sdk/openadsdk/c/x$4;
.super Ljava/lang/Object;
.source "TTAppDownloadHandler.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/c/x$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/c/x;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/c/x;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/c/x;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/x$4;->a:Lcom/bytedance/sdk/openadsdk/c/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/x$4;->a:Lcom/bytedance/sdk/openadsdk/c/x;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/x;->a(Lcom/bytedance/sdk/openadsdk/c/x;)V

    .line 239
    const-string v0, "TT_AD_SDK"

    const-string v1, "dialog onConfirm"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 244
    const-string v0, "TT_AD_SDK"

    const-string v1, "dialog onCancel"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void
.end method
