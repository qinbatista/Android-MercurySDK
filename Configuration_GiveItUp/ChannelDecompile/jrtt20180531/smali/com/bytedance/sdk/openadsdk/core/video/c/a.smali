.class public abstract Lcom/bytedance/sdk/openadsdk/core/video/c/a;
.super Ljava/lang/Object;
.source "AbstractMediaPlayer.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/video/c/c;


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/core/video/c/c$e;

.field private b:Lcom/bytedance/sdk/openadsdk/core/video/c/c$b;

.field private c:Lcom/bytedance/sdk/openadsdk/core/video/c/c$a;

.field private d:Lcom/bytedance/sdk/openadsdk/core/video/c/c$f;

.field private e:Lcom/bytedance/sdk/openadsdk/core/video/c/c$g;

.field private f:Lcom/bytedance/sdk/openadsdk/core/video/c/c$c;

.field private g:Lcom/bytedance/sdk/openadsdk/core/video/c/c$d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c$e;

    .line 58
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bytedance/sdk/openadsdk/core/video/c/c$a;

    .line 59
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/video/c/c$b;

    .line 60
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/c/c$f;

    .line 61
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/video/c/c$g;

    .line 62
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->f:Lcom/bytedance/sdk/openadsdk/core/video/c/c$c;

    .line 63
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/c$d;

    .line 64
    return-void
.end method

.method protected final a(I)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bytedance/sdk/openadsdk/core/video/c/c$a;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bytedance/sdk/openadsdk/core/video/c/c$a;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/c$a;->a(Lcom/bytedance/sdk/openadsdk/core/video/c/c;I)V

    .line 79
    :cond_0
    return-void
.end method

.method protected final a(IIII)V
    .locals 6

    .prologue
    .line 88
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/video/c/c$g;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:Lcom/bytedance/sdk/openadsdk/core/video/c/c$g;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/video/c/c$g;->a(Lcom/bytedance/sdk/openadsdk/core/video/c/c;IIII)V

    .line 91
    :cond_0
    return-void
.end method

.method public final a(Lcom/bytedance/sdk/openadsdk/core/video/c/c$a;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:Lcom/bytedance/sdk/openadsdk/core/video/c/c$a;

    .line 41
    return-void
.end method

.method public final a(Lcom/bytedance/sdk/openadsdk/core/video/c/c$b;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/video/c/c$b;

    .line 36
    return-void
.end method

.method public final a(Lcom/bytedance/sdk/openadsdk/core/video/c/c$c;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->f:Lcom/bytedance/sdk/openadsdk/core/video/c/c$c;

    .line 49
    return-void
.end method

.method public final a(Lcom/bytedance/sdk/openadsdk/core/video/c/c$d;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/c$d;

    .line 53
    return-void
.end method

.method public final a(Lcom/bytedance/sdk/openadsdk/core/video/c/c$e;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c$e;

    .line 32
    return-void
.end method

.method public final a(Lcom/bytedance/sdk/openadsdk/core/video/c/c$f;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/c/c$f;

    .line 45
    return-void
.end method

.method protected final a(II)Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->f:Lcom/bytedance/sdk/openadsdk/core/video/c/c$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->f:Lcom/bytedance/sdk/openadsdk/core/video/c/c$c;

    invoke-interface {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/c/c$c;->a(Lcom/bytedance/sdk/openadsdk/core/video/c/c;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final b()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c$e;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c$e;

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/c$e;->b(Lcom/bytedance/sdk/openadsdk/core/video/c/c;)V

    .line 69
    :cond_0
    return-void
.end method

.method protected final b(II)Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/c$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/c$d;

    invoke-interface {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/c/c$d;->b(Lcom/bytedance/sdk/openadsdk/core/video/c/c;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final c()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/video/c/c$b;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/video/c/c$b;

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/c$b;->a(Lcom/bytedance/sdk/openadsdk/core/video/c/c;)V

    .line 74
    :cond_0
    return-void
.end method

.method protected final d()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/c/c$f;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/c/c$f;

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/c$f;->c(Lcom/bytedance/sdk/openadsdk/core/video/c/c;)V

    .line 84
    :cond_0
    return-void
.end method
