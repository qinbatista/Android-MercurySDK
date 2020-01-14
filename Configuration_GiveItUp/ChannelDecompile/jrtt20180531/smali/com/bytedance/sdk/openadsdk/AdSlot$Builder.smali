.class public Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
.super Ljava/lang/Object;
.source "AdSlot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/AdSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Z

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->e:I

    return-void
.end method


# virtual methods
.method public build()Lcom/bytedance/sdk/openadsdk/AdSlot;
    .locals 2

    .prologue
    .line 164
    new-instance v0, Lcom/bytedance/sdk/openadsdk/AdSlot;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;-><init>(Lcom/bytedance/sdk/openadsdk/AdSlot$1;)V

    .line 165
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->e:I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I

    .line 167
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->d:Z

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Z)Z

    .line 168
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->b:I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->b(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I

    .line 169
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->c:I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->c(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I

    .line 170
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->b(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->g:I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->d(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I

    .line 172
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->c(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 173
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->d(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->j:I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->e(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I

    .line 175
    return-object v0
.end method

.method public setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .prologue
    .line 134
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->e:I

    .line 135
    return-object p0
.end method

.method public setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->a:Ljava/lang/String;

    .line 114
    return-object p0
.end method

.method public setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .prologue
    .line 118
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->b:I

    .line 119
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->c:I

    .line 120
    return-object p0
.end method

.method public setMediaExtra(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->h:Ljava/lang/String;

    .line 150
    return-object p0
.end method

.method public setOrientation(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .prologue
    .line 159
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->j:I

    .line 160
    return-object p0
.end method

.method public setRewardAmount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .prologue
    .line 144
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->g:I

    .line 145
    return-object p0
.end method

.method public setRewardName(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->f:Ljava/lang/String;

    .line 140
    return-object p0
.end method

.method public setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->d:Z

    .line 125
    return-object p0
.end method

.method public setUserID(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->i:Ljava/lang/String;

    .line 155
    return-object p0
.end method
