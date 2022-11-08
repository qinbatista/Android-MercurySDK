.class Lcom/androidquery/service/MarketService$Handler;
.super Ljava/lang/Object;
.source "MarketService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/Html$TagHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidquery/service/MarketService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidquery/service/MarketService;


# direct methods
.method private constructor <init>(Lcom/androidquery/service/MarketService;)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/androidquery/service/MarketService;Lcom/androidquery/service/MarketService$Handler;)V
    .locals 0

    .prologue
    .line 430
    invoke-direct {p0, p1}, Lcom/androidquery/service/MarketService$Handler;-><init>(Lcom/androidquery/service/MarketService;)V

    return-void
.end method

.method private cb(Ljava/lang/String;Lorg/json/JSONObject;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "jo"    # Lorg/json/JSONObject;
    .param p3, "status"    # Lcom/androidquery/callback/AjaxStatus;

    .prologue
    .line 472
    iget-object v0, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    invoke-static {v0}, Lcom/androidquery/service/MarketService;->access$5(Lcom/androidquery/service/MarketService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/androidquery/service/MarketService;->access$6(Lcom/androidquery/service/MarketService;Z)V

    .line 474
    iget-object v0, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/androidquery/service/MarketService;->access$7(Lcom/androidquery/service/MarketService;I)V

    .line 475
    iget-object v0, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/androidquery/service/MarketService;->callback(Ljava/lang/String;Lorg/json/JSONObject;Lcom/androidquery/callback/AjaxStatus;)V

    .line 477
    :cond_0
    return-void
.end method


# virtual methods
.method public detailCb(Ljava/lang/String;Ljava/lang/String;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "html"    # Ljava/lang/String;
    .param p3, "status"    # Lcom/androidquery/callback/AjaxStatus;

    .prologue
    .line 482
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x3e8

    if-le v2, v3, :cond_0

    .line 484
    iget-object v2, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    invoke-static {v2}, Lcom/androidquery/service/MarketService;->access$8(Lcom/androidquery/service/MarketService;)Ljava/lang/String;

    move-result-object v1

    .line 486
    .local v1, "qurl":Ljava/lang/String;
    new-instance v0, Lcom/androidquery/callback/AjaxCallback;

    invoke-direct {v0}, Lcom/androidquery/callback/AjaxCallback;-><init>()V

    .line 487
    .local v0, "cb":Lcom/androidquery/callback/AjaxCallback;, "Lcom/androidquery/callback/AjaxCallback<Lorg/json/JSONObject;>;"
    invoke-virtual {v0, v1}, Lcom/androidquery/callback/AjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidquery/callback/AjaxCallback;

    const-class v3, Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lcom/androidquery/callback/AjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidquery/callback/AjaxCallback;

    const-string v3, "marketCb"

    invoke-virtual {v2, p0, v3}, Lcom/androidquery/callback/AjaxCallback;->handler(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 488
    const-string v2, "html"

    invoke-virtual {v0, v2, p2}, Lcom/androidquery/callback/AjaxCallback;->param(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    iget-object v2, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    invoke-static {v2}, Lcom/androidquery/service/MarketService;->access$3(Lcom/androidquery/service/MarketService;)Lcom/androidquery/AQuery;

    move-result-object v2

    iget-object v3, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    invoke-static {v3}, Lcom/androidquery/service/MarketService;->access$4(Lcom/androidquery/service/MarketService;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/androidquery/AQuery;->progress(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    invoke-virtual {v2, v0}, Lcom/androidquery/AQuery;->ajax(Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    .line 495
    .end local v0    # "cb":Lcom/androidquery/callback/AjaxCallback;, "Lcom/androidquery/callback/AjaxCallback<Lorg/json/JSONObject;>;"
    .end local v1    # "qurl":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V
    .locals 1
    .param p1, "opening"    # Z
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "output"    # Landroid/text/Editable;
    .param p4, "xmlReader"    # Lorg/xml/sax/XMLReader;

    .prologue
    .line 522
    const-string v0, "li"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    if-eqz p1, :cond_1

    .line 525
    const-string v0, "  "

    invoke-interface {p3, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 526
    const-string v0, "\u2022"

    invoke-interface {p3, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 527
    const-string v0, "  "

    invoke-interface {p3, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    const-string v0, "\n"

    invoke-interface {p3, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0
.end method

.method public marketCb(Ljava/lang/String;Lorg/json/JSONObject;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "jo"    # Lorg/json/JSONObject;
    .param p3, "status"    # Lcom/androidquery/callback/AjaxStatus;

    .prologue
    const/4 v5, 0x1

    .line 435
    iget-object v3, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    invoke-static {v3}, Lcom/androidquery/service/MarketService;->access$0(Lcom/androidquery/service/MarketService;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    if-eqz p2, :cond_5

    .line 439
    const-string v3, "status"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 441
    .local v2, "s":Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 443
    const-string v3, "dialog"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 444
    invoke-direct {p0, p1, p2, p3}, Lcom/androidquery/service/MarketService$Handler;->cb(Ljava/lang/String;Lorg/json/JSONObject;Lcom/androidquery/callback/AjaxStatus;)V

    .line 447
    :cond_2
    iget-object v3, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    invoke-static {v3}, Lcom/androidquery/service/MarketService;->access$1(Lcom/androidquery/service/MarketService;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "fetch"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getSource()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 449
    iget-object v3, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    invoke-static {v3, v5}, Lcom/androidquery/service/MarketService;->access$2(Lcom/androidquery/service/MarketService;Z)V

    .line 451
    const-string v3, "marketUrl"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 453
    .local v1, "marketUrl":Ljava/lang/String;
    new-instance v0, Lcom/androidquery/callback/AjaxCallback;

    invoke-direct {v0}, Lcom/androidquery/callback/AjaxCallback;-><init>()V

    .line 454
    .local v0, "cb":Lcom/androidquery/callback/AjaxCallback;, "Lcom/androidquery/callback/AjaxCallback<Ljava/lang/String;>;"
    invoke-virtual {v0, v1}, Lcom/androidquery/callback/AjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/androidquery/callback/AjaxCallback;

    const-class v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/androidquery/callback/AjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/androidquery/callback/AjaxCallback;

    const-string v4, "detailCb"

    invoke-virtual {v3, p0, v4}, Lcom/androidquery/callback/AjaxCallback;->handler(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 455
    iget-object v3, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    invoke-static {v3}, Lcom/androidquery/service/MarketService;->access$3(Lcom/androidquery/service/MarketService;)Lcom/androidquery/AQuery;

    move-result-object v3

    iget-object v4, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    invoke-static {v4}, Lcom/androidquery/service/MarketService;->access$4(Lcom/androidquery/service/MarketService;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/androidquery/AQuery;->progress(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v3

    check-cast v3, Lcom/androidquery/AQuery;

    invoke-virtual {v3, v0}, Lcom/androidquery/AQuery;->ajax(Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    goto :goto_0

    .line 459
    .end local v0    # "cb":Lcom/androidquery/callback/AjaxCallback;, "Lcom/androidquery/callback/AjaxCallback<Ljava/lang/String;>;"
    .end local v1    # "marketUrl":Ljava/lang/String;
    :cond_3
    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 460
    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->invalidate()Lcom/androidquery/callback/AjaxStatus;

    goto :goto_0

    .line 462
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/androidquery/service/MarketService$Handler;->cb(Ljava/lang/String;Lorg/json/JSONObject;Lcom/androidquery/callback/AjaxStatus;)V

    goto :goto_0

    .line 466
    .end local v2    # "s":Ljava/lang/String;
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/androidquery/service/MarketService$Handler;->cb(Ljava/lang/String;Lorg/json/JSONObject;Lcom/androidquery/callback/AjaxStatus;)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 501
    packed-switch p2, :pswitch_data_0

    .line 515
    :goto_0
    return-void

    .line 503
    :pswitch_0
    iget-object v0, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    invoke-static {v0}, Lcom/androidquery/service/MarketService;->access$0(Lcom/androidquery/service/MarketService;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    invoke-static {v1}, Lcom/androidquery/service/MarketService;->access$9(Lcom/androidquery/service/MarketService;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/androidquery/service/MarketService;->access$10(Landroid/app/Activity;Ljava/lang/String;)Z

    goto :goto_0

    .line 506
    :pswitch_1
    iget-object v0, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    invoke-static {v0}, Lcom/androidquery/service/MarketService;->access$0(Lcom/androidquery/service/MarketService;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    invoke-static {v1}, Lcom/androidquery/service/MarketService;->access$11(Lcom/androidquery/service/MarketService;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/androidquery/service/MarketService;->access$10(Landroid/app/Activity;Ljava/lang/String;)Z

    goto :goto_0

    .line 509
    :pswitch_2
    iget-object v0, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    invoke-static {v0}, Lcom/androidquery/service/MarketService;->access$0(Lcom/androidquery/service/MarketService;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    invoke-static {v1}, Lcom/androidquery/service/MarketService;->access$12(Lcom/androidquery/service/MarketService;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/androidquery/service/MarketService;->access$13(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 501
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
