.class Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity$3;
.super Ljava/lang/Object;
.source "TTDelegateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity$3;->b:Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity$3;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/c/x;->a(Ljava/lang/String;I)V

    .line 131
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity$3;->b:Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->finish()V

    .line 132
    return-void
.end method
