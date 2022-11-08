.class Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity$6;
.super Ljava/lang/Object;
.source "TTDelegateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->e()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;IJ)V
    .locals 1

    .prologue
    .line 271
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity$6;->c:Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity$6;->a:I

    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity$6;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 274
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity$6;->c:Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity$6;->a:I

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity$6;->b:J

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;IJ)V

    .line 275
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity$6;->c:Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->finish()V

    .line 276
    return-void
.end method
