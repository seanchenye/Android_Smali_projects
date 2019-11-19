.class public Lorg/eazegraph/lib/models/PieModel;
.super Lorg/eazegraph/lib/models/BaseModel;
.source "PieModel.java"


# instance fields
.field private mColor:I

.field private mEndAngle:I

.field private mHighlightedColor:I

.field private mStartAngle:I

.field private mValue:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/eazegraph/lib/models/BaseModel;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(FI)V
    .locals 1
    .param p1, "_value"    # F
    .param p2, "_color"    # I

    .prologue
    .line 32
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Lorg/eazegraph/lib/models/BaseModel;-><init>(Ljava/lang/String;)V

    .line 33
    iput p1, p0, Lorg/eazegraph/lib/models/PieModel;->mValue:F

    .line 34
    iput p2, p0, Lorg/eazegraph/lib/models/PieModel;->mColor:I

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FI)V
    .locals 0
    .param p1, "_legendLabel"    # Ljava/lang/String;
    .param p2, "_value"    # F
    .param p3, "_color"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lorg/eazegraph/lib/models/BaseModel;-><init>(Ljava/lang/String;)V

    .line 27
    iput p2, p0, Lorg/eazegraph/lib/models/PieModel;->mValue:F

    .line 28
    iput p3, p0, Lorg/eazegraph/lib/models/PieModel;->mColor:I

    .line 29
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lorg/eazegraph/lib/models/PieModel;->mColor:I

    return v0
.end method

.method public getEndAngle()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lorg/eazegraph/lib/models/PieModel;->mEndAngle:I

    return v0
.end method

.method public getHighlightedColor()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lorg/eazegraph/lib/models/PieModel;->mHighlightedColor:I

    return v0
.end method

.method public getStartAngle()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lorg/eazegraph/lib/models/PieModel;->mStartAngle:I

    return v0
.end method

.method public getValue()F
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lorg/eazegraph/lib/models/PieModel;->mValue:F

    return v0
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "_Color"    # I

    .prologue
    .line 53
    iput p1, p0, Lorg/eazegraph/lib/models/PieModel;->mColor:I

    .line 54
    return-void
.end method

.method public setEndAngle(I)V
    .locals 0
    .param p1, "_EndAngle"    # I

    .prologue
    .line 77
    iput p1, p0, Lorg/eazegraph/lib/models/PieModel;->mEndAngle:I

    .line 78
    return-void
.end method

.method public setHighlightedColor(I)V
    .locals 0
    .param p1, "_HighlightedColor"    # I

    .prologue
    .line 61
    iput p1, p0, Lorg/eazegraph/lib/models/PieModel;->mHighlightedColor:I

    .line 62
    return-void
.end method

.method public setStartAngle(I)V
    .locals 0
    .param p1, "_StartAngle"    # I

    .prologue
    .line 69
    iput p1, p0, Lorg/eazegraph/lib/models/PieModel;->mStartAngle:I

    .line 70
    return-void
.end method

.method public setValue(F)V
    .locals 0
    .param p1, "_Value"    # F

    .prologue
    .line 45
    iput p1, p0, Lorg/eazegraph/lib/models/PieModel;->mValue:F

    .line 46
    return-void
.end method
