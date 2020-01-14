.class Lcom/bytedance/sdk/openadsdk/core/p$3;
.super Lcom/androidquery/callback/AjaxCallback;
.source "NetApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/p;->a(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidquery/callback/AjaxCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/p;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/p;)V
    .locals 0

    .prologue
    .line 843
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p$3;->a:Lcom/bytedance/sdk/openadsdk/core/p;

    invoke-direct {p0}, Lcom/androidquery/callback/AjaxCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 0

    .prologue
    .line 846
    invoke-super {p0, p1, p2, p3}, Lcom/androidquery/callback/AjaxCallback;->callback(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V

    .line 848
    return-void
.end method

.method public synthetic callback(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 0

    .prologue
    .line 843
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/p$3;->a(Ljava/lang/String;Ljava/lang/String;Lcom/androidquery/callback/AjaxStatus;)V

    return-void
.end method
