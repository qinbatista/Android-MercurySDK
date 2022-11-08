.class public Lcom/bytedance/sdk/openadsdk/AdSlot;
.super Ljava/lang/Object;
.source "AdSlot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    }
.end annotation


# static fields
.field public static final TYPE_BANNER:I = 0x1

.field public static final TYPE_CACHED_SPLASH:I = 0x4

.field public static final TYPE_FEED:I = 0x5

.field public static final TYPE_INTERACTION_AD:I = 0x2

.field public static final TYPE_REWARD_VIDEO:I = 0x7

.field public static final TYPE_SPLASH:I = 0x3


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x2

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->j:I

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/AdSlot$1;)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I
    .locals 0

    .prologue
    .line 6
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->d:I

    return p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 6
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/AdSlot;Z)Z
    .locals 0

    .prologue
    .line 6
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I
    .locals 0

    .prologue
    .line 6
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->b:I

    return p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 6
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I
    .locals 0

    .prologue
    .line 6
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->c:I

    return p1
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 6
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I
    .locals 0

    .prologue
    .line 6
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->g:I

    return p1
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 6
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I
    .locals 0

    .prologue
    .line 6
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->j:I

    return p1
.end method

.method public static getPosition(I)I
    .locals 1

    .prologue
    const/4 v0, 0x3

    .line 46
    packed-switch p0, :pswitch_data_0

    .line 58
    :goto_0
    :pswitch_0
    return v0

    .line 48
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 52
    :pswitch_2
    const/4 v0, 0x5

    goto :goto_0

    .line 56
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getAdCount()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->d:I

    return v0
.end method

.method public getCodeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getImgAcceptedHeight()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->c:I

    return v0
.end method

.method public getImgAcceptedWidth()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->b:I

    return v0
.end method

.method public getMediaExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->j:I

    return v0
.end method

.method public getRewardAmount()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->g:I

    return v0
.end method

.method public getRewardName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->i:Ljava/lang/String;

    return-object v0
.end method

.method public isSupportDeepLink()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->e:Z

    return v0
.end method
