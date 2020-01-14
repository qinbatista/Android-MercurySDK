.class public Lcom/bytedance/sdk/openadsdk/b/b;
.super Ljava/lang/Object;
.source "TTAdDislikeImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdDislike;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/b/b$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/bytedance/sdk/openadsdk/core/d/h;

.field private c:Landroid/app/Dialog;

.field private d:Lcom/bytedance/sdk/openadsdk/b/b$a;

.field private e:Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/h;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "Dislike \u521d\u59cb\u5316\u5fc5\u987b\u4f7f\u7528activity,\u8bf7\u5728TTAdManager.createAdNative(activity)\u4e2d\u4f20\u5165"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/h/o;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/b;->a:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/b/b;->b:Lcom/bytedance/sdk/openadsdk/core/d/h;

    .line 46
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/b/b;->a()V

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/b/b;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/b;->c:Landroid/app/Dialog;

    return-object v0
.end method

.method private a()V
    .locals 5

    .prologue
    .line 50
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/b;->a:Landroid/content/Context;

    sget v2, Lcom/bytedance/sdk/openadsdk/R$style;->dislikeDialog:I

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/b;->c:Landroid/app/Dialog;

    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/b;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 52
    sget v1, Lcom/bytedance/sdk/openadsdk/R$layout;->tt_dislike_dialog_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 53
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->dislike_unlike_tv:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/b/b$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/b/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/b/b;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->dislike_cancle_tv:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/b/b$2;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/b/b$2;-><init>(Lcom/bytedance/sdk/openadsdk/b/b;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->filer_words_lv:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 74
    new-instance v2, Lcom/bytedance/sdk/openadsdk/b/b$3;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/b/b$3;-><init>(Lcom/bytedance/sdk/openadsdk/b/b;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 88
    new-instance v2, Lcom/bytedance/sdk/openadsdk/b/b$a;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/b/b;->c:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/b/b;->b:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/d/h;->q()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/b/b$a;-><init>(Landroid/view/LayoutInflater;Ljava/util/List;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/b/b;->d:Lcom/bytedance/sdk/openadsdk/b/b$a;

    .line 89
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/b/b;->d:Lcom/bytedance/sdk/openadsdk/b/b$a;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/s;->a(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, -0x78

    .line 93
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/b/b;->c:Landroid/app/Dialog;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/b;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 95
    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 96
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/b;->c:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 97
    const/16 v2, 0x32

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 98
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 99
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/b/b;)Lcom/bytedance/sdk/openadsdk/core/d/h;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/b;->b:Lcom/bytedance/sdk/openadsdk/core/d/h;

    return-object v0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/b/b;)Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/b;->e:Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;

    return-object v0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/b/b;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/b;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/core/d/h;)V
    .locals 4

    .prologue
    .line 110
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/b;->d:Lcom/bytedance/sdk/openadsdk/b/b$a;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/b;->b:Lcom/bytedance/sdk/openadsdk/core/d/h;

    .line 115
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/b;->d:Lcom/bytedance/sdk/openadsdk/b/b$a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/b$a;->a()V

    .line 116
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/b;->b:Lcom/bytedance/sdk/openadsdk/core/d/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->q()Ljava/util/List;

    move-result-object v2

    .line 117
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/h/k;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 118
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 119
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/b/b;->d:Lcom/bytedance/sdk/openadsdk/b/b$a;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/f;

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/b/b$a;->a(Lcom/bytedance/sdk/openadsdk/core/d/f;)V

    .line 118
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/b;->d:Lcom/bytedance/sdk/openadsdk/b/b$a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/b$a;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setDislikeInteractionCallback(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/b;->e:Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;

    .line 128
    return-void
.end method

.method public showDislikeDialog()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/b;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/b;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 104
    :goto_0
    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/b;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 107
    :cond_0
    return-void

    .line 103
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
