.class Lcom/bytedance/sdk/openadsdk/c/b/e$4;
.super Ljava/lang/Object;
.source "PermissionsResultAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/c/b/e;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/c/b/c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/c/b/e;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/c/b/e;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/b/e$4;->b:Lcom/bytedance/sdk/openadsdk/c/b/e;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/c/b/e$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/b/e$4;->b:Lcom/bytedance/sdk/openadsdk/c/b/e;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/b/e$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/c/b/e;->a(Ljava/lang/String;)V

    .line 145
    return-void
.end method
