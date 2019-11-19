.class public Lorg/eazegraph/lib/models/ValueLinePoint;
.super Lorg/eazegraph/lib/models/BaseModel;
.source "ValueLinePoint.java"


# instance fields
.field private mCoordinates:Lorg/eazegraph/lib/models/Point2D;

.field private mValue:F


# direct methods
.method public constructor <init>(F)V
    .locals 2
    .param p1, "_value"    # F

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eazegraph/lib/models/BaseModel;-><init>(Ljava/lang/String;)V

    .line 27
    iput p1, p0, Lorg/eazegraph/lib/models/ValueLinePoint;->mValue:F

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;F)V
    .locals 0
    .param p1, "_legendLabel"    # Ljava/lang/String;
    .param p2, "_value"    # F

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lorg/eazegraph/lib/models/BaseModel;-><init>(Ljava/lang/String;)V

    .line 32
    iput p2, p0, Lorg/eazegraph/lib/models/ValueLinePoint;->mValue:F

    .line 33
    return-void
.end method


# virtual methods
.method public getCoordinates()Lorg/eazegraph/lib/models/Point2D;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/eazegraph/lib/models/ValueLinePoint;->mCoordinates:Lorg/eazegraph/lib/models/Point2D;

    return-object v0
.end method

.method public getValue()F
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lorg/eazegraph/lib/models/ValueLinePoint;->mValue:F

    return v0
.end method

.method public setCoordinates(Lorg/eazegraph/lib/models/Point2D;)V
    .locals 0
    .param p1, "_coordinates"    # Lorg/eazegraph/lib/models/Point2D;

    .prologue
    .line 48
    iput-object p1, p0, Lorg/eazegraph/lib/models/ValueLinePoint;->mCoordinates:Lorg/eazegraph/lib/models/Point2D;

    .line 49
    return-void
.end method

.method public setValue(F)V
    .locals 0
    .param p1, "_value"    # F

    .prologue
    .line 40
    iput p1, p0, Lorg/eazegraph/lib/models/ValueLinePoint;->mValue:F

    .line 41
    return-void
.end method
