.class Lcom/east2west/game/util/Util$SSLSocketFactoryEx$1;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/east2west/game/util/Util$SSLSocketFactoryEx;-><init>(Ljava/security/KeyStore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/east2west/game/util/Util$SSLSocketFactoryEx;


# direct methods
.method constructor <init>(Lcom/east2west/game/util/Util$SSLSocketFactoryEx;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/east2west/game/util/Util$SSLSocketFactoryEx$1;->this$1:Lcom/east2west/game/util/Util$SSLSocketFactoryEx;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
