.class public Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;
.super Lcom/bytedance/sdk/openadsdk/core/video/renderview/c;
.source "SSRenderSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;


# static fields
.field private static c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/video/renderview/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/core/video/renderview/a;

.field private b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/d;

.field private d:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/c;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;->a()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;->a()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;->a()V

    .line 33
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/d;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/d;-><init>(Landroid/view/SurfaceHolder$Callback;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/d;

    .line 37
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 62
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 63
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 64
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/renderview/a;)V
    .locals 4

    .prologue
    .line 42
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;->a:Lcom/bytedance/sdk/openadsdk/core/video/renderview/a;

    .line 44
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 45
    const/4 v0, -0x3

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 47
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 48
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/d;

    .line 50
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/d;->a()Landroid/view/SurfaceHolder$Callback;

    move-result-object v3

    .line 51
    if-nez v3, :cond_0

    .line 52
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 53
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/d;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 57
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 69
    return-object p0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/c;->onWindowVisibilityChanged(I)V

    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;->d:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b$a;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;->d:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b$a;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/b$a;->a(I)V

    .line 101
    :cond_0
    return-void
.end method

.method public setWindowVisibilityChangedListener(Lcom/bytedance/sdk/openadsdk/core/video/renderview/b$a;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;->d:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b$a;

    .line 106
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;->a:Lcom/bytedance/sdk/openadsdk/core/video/renderview/a;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;->a:Lcom/bytedance/sdk/openadsdk/core/video/renderview/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/a;->a(Landroid/view/SurfaceHolder;III)V

    .line 84
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;->a:Lcom/bytedance/sdk/openadsdk/core/video/renderview/a;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;->a:Lcom/bytedance/sdk/openadsdk/core/video/renderview/a;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/a;->a(Landroid/view/SurfaceHolder;)V

    .line 77
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;->a:Lcom/bytedance/sdk/openadsdk/core/video/renderview/a;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderSurfaceView;->a:Lcom/bytedance/sdk/openadsdk/core/video/renderview/a;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/a;->b(Landroid/view/SurfaceHolder;)V

    .line 91
    :cond_0
    return-void
.end method
