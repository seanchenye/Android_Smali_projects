.class public Lorg/eazegraph/lib/models/Point2D;
.super Ljava/lang/Object;
.source "Point2D.java"


# instance fields
.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .param p1, "_x"    # F
    .param p2, "_y"    # F

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lorg/eazegraph/lib/models/Point2D;->mX:F

    .line 27
    iput p2, p0, Lorg/eazegraph/lib/models/Point2D;->mY:F

    .line 28
    return-void
.end method


# virtual methods
.method public getFloatArray()[F
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lorg/eazegraph/lib/models/Point2D;->mX:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lorg/eazegraph/lib/models/Point2D;->mY:F

    aput v2, v0, v1

    return-object v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lorg/eazegraph/lib/models/Point2D;->mX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lorg/eazegraph/lib/models/Point2D;->mY:F

    return v0
.end method

.method public setX(F)V
    .locals 0
    .param p1, "_x"    # F

    .prologue
    .line 38
    iput p1, p0, Lorg/eazegraph/lib/models/Point2D;->mX:F

    .line 39
    return-void
.end method

.method public setY(F)V
    .locals 0
    .param p1, "_y"    # F

    .prologue
    .line 46
    iput p1, p0, Lorg/eazegraph/lib/models/Point2D;->mY:F

    .line 47
    return-void
.end method
