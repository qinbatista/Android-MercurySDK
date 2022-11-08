.class Lcom/bytedance/sdk/openadsdk/b/b$a;
.super Landroid/widget/BaseAdapter;
.source "TTAdDislikeImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/b/b$a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/d/f;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Landroid/view/LayoutInflater;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/d/f;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 136
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/b/b$a;->a:Ljava/util/List;

    .line 137
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/b$a;->b:Landroid/view/LayoutInflater;

    .line 138
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/b$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 181
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/f;)V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/b$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/b$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/b$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 152
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 158
    if-nez p2, :cond_0

    .line 159
    new-instance v1, Lcom/bytedance/sdk/openadsdk/b/b$a$a;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/b/b$a$a;-><init>(Lcom/bytedance/sdk/openadsdk/b/b$1;)V

    .line 160
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/b$a;->b:Landroid/view/LayoutInflater;

    sget v2, Lcom/bytedance/sdk/openadsdk/R$layout;->tt_dialog_listview_item:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 161
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->item_tv:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/b/b$a$a;->a:Landroid/widget/TextView;

    .line 162
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 166
    :goto_0
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/b/b$a$a;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/b$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/b$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_1

    .line 168
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/b/b$a$a;->a:Landroid/widget/TextView;

    sget v1, Lcom/bytedance/sdk/openadsdk/R$drawable;->tt_dislike_middle_seletor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 172
    :goto_1
    return-object p2

    .line 164
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/b/b$a$a;

    move-object v1, v0

    goto :goto_0

    .line 170
    :cond_1
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/b/b$a$a;->a:Landroid/widget/TextView;

    sget v1, Lcom/bytedance/sdk/openadsdk/R$drawable;->tt_dislike_bottom_seletor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1
.end method
