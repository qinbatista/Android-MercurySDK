.class public Lcom/bytedance/sdk/openadsdk/d/f$b;
.super Ljava/lang/Object;
.source "AdEventThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/d/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field final a:I

.field final b:J

.field final c:J

.field final d:I

.field final e:J

.field final f:J


# direct methods
.method constructor <init>(IJJIJJ)V
    .locals 0

    .prologue
    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/d/f$b;->a:I

    .line 356
    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/d/f$b;->b:J

    .line 357
    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/d/f$b;->c:J

    .line 358
    iput p6, p0, Lcom/bytedance/sdk/openadsdk/d/f$b;->d:I

    .line 359
    iput-wide p7, p0, Lcom/bytedance/sdk/openadsdk/d/f$b;->e:J

    .line 360
    iput-wide p9, p0, Lcom/bytedance/sdk/openadsdk/d/f$b;->f:J

    .line 361
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/d/f$b;
    .locals 11

    .prologue
    .line 364
    new-instance v0, Lcom/bytedance/sdk/openadsdk/d/f$b;

    const/4 v1, 0x1

    const-wide/32 v2, 0x1d4c0

    const-wide/16 v4, 0x3a98

    const/4 v6, 0x5

    const-wide/32 v7, 0x5265c00

    const-wide/32 v9, 0x927c0

    invoke-direct/range {v0 .. v10}, Lcom/bytedance/sdk/openadsdk/d/f$b;-><init>(IJJIJJ)V

    return-object v0
.end method
