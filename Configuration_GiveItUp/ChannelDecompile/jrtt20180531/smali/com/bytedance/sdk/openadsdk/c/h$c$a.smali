.class Lcom/bytedance/sdk/openadsdk/c/h$c$a;
.super Ljava/lang/Object;
.source "DownloadNotifySaver.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/c/h$c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/c/h$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .prologue
    .line 107
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 108
    return-void
.end method
