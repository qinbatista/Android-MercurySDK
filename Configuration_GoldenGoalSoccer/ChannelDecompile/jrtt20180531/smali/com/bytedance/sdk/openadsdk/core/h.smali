.class public Lcom/bytedance/sdk/openadsdk/core/h;
.super Ljava/lang/Object;
.source "GlobalInfo.java"


# static fields
.field private static m:Lcom/bytedance/sdk/openadsdk/core/h;


# instance fields
.field private a:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private c:Z

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Lcom/bytedance/sdk/openadsdk/TTGlobalAppDownloadListener;

.field private l:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/h;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/h;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/h;->m:Lcom/bytedance/sdk/openadsdk/core/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/h;->e:I

    .line 35
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/h;->h:I

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->i:Z

    .line 39
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/h;->j:Z

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->l:Ljava/util/HashSet;

    .line 46
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->l:Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/core/h;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/h;->m:Lcom/bytedance/sdk/openadsdk/core/h;

    return-object v0
.end method

.method private static e(I)V
    .locals 2

    .prologue
    .line 178
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "\u5e74\u9f84\u4e0d\u80fd\u4e3a\u8d1f\u6570"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/o;->a(ZLjava/lang/String;)V

    .line 179
    return-void

    .line 178
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 170
    const-string v0, "appid\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/h/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method private static f(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 174
    const-string v0, "name\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/h/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method private static g(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 182
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3e8

    if-gt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "keyword\u8d85\u957f, \u6700\u957f\u4e3a1000"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/o;->a(ZLjava/lang/String;)V

    .line 186
    :cond_0
    return-void

    .line 183
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static h(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 189
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3e8

    if-gt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "data\u8d85\u957f, \u6700\u957f\u4e3a1000"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/o;->a(ZLjava/lang/String;)V

    .line 193
    :cond_0
    return-void

    .line 190
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 89
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/h;->e(I)V

    .line 90
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h;->d:I

    .line 91
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTGlobalAppDownloadListener;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h;->k:Lcom/bytedance/sdk/openadsdk/TTGlobalAppDownloadListener;

    .line 151
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 62
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/h;->e(Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h;->a:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/h;->c:Z

    .line 82
    return-void
.end method

.method public varargs a([I)V
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->l:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 159
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h;->l:Ljava/util/HashSet;

    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 98
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h;->e:I

    .line 99
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 72
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/h;->f(Ljava/lang/String;)V

    .line 73
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h;->b:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/h;->i:Z

    .line 131
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 122
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h;->h:I

    .line 123
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 107
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/h;->g(Ljava/lang/String;)V

    .line 108
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h;->f:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/h;->j:Z

    .line 139
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 117
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/h;->h(Ljava/lang/String;)V

    .line 118
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h;->g:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->c:Z

    return v0
.end method

.method public d(I)Z
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->l:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->d:I

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->e:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->f:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->g:Ljava/lang/String;

    return-object v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->h:I

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->i:Z

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->j:Z

    return v0
.end method

.method public l()Lcom/bytedance/sdk/openadsdk/TTGlobalAppDownloadListener;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->k:Lcom/bytedance/sdk/openadsdk/TTGlobalAppDownloadListener;

    return-object v0
.end method

.method public m()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->e(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->f(Ljava/lang/String;)V

    .line 167
    return-void
.end method
