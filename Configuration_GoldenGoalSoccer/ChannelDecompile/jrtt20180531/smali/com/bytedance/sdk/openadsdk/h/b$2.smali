.class final Lcom/bytedance/sdk/openadsdk/h/b$2;
.super Ljava/lang/Object;
.source "AdLocationUtils.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/h/b;->b(Landroid/content/Context;Landroid/location/LocationManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/location/LocationManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/b$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/h/b$2;->b:Landroid/location/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 143
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/h/b;->a(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b$2;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/h/b;->a(Landroid/content/Context;Landroid/location/Location;)V

    .line 145
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b$2;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 147
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 151
    return-void
.end method
