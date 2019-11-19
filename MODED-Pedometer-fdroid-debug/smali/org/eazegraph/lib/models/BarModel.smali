.class public Lorg/eazegraph/lib/models/BarModel;
.super Lorg/eazegraph/lib/models/BaseModel;
.source "BarModel.java"


# instance fields
.field private mBarBounds:Landroid/graphics/RectF;

.field private mColor:I

.field private mValue:F


# direct methods
.method public constructor <init>(F)V
    .locals 2
    .param p1, "_value"    # F

    .prologue
    .line 40
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

    .line 41
    iput p1, p0, Lorg/eazegraph/lib/models/BarModel;->mValue:F

    .line 42
    const/high16 v0, -0x10000

    iput v0, p0, Lorg/eazegraph/lib/models/BarModel;->mColor:I

    .line 43
    return-void
.end method

.method public constructor <init>(FI)V
    .locals 2
    .param p1, "_value"    # F
    .param p2, "_color"    # I

    .prologue
    .line 34
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

    .line 35
    iput p1, p0, Lorg/eazegraph/lib/models/BarModel;->mValue:F

    .line 36
    iput p2, p0, Lorg/eazegraph/lib/models/BarModel;->mColor:I

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FI)V
    .locals 0
    .param p1, "_legendLabel"    # Ljava/lang/String;
    .param p2, "_value"    # F
    .param p3, "_color"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lorg/eazegraph/lib/models/BaseModel;-><init>(Ljava/lang/String;)V

    .line 29
    iput p2, p0, Lorg/eazegraph/lib/models/BarModel;->mValue:F

    .line 30
    iput p3, p0, Lorg/eazegraph/lib/models/BarModel;->mColor:I

    .line 31
    return-void
.end method


# virtual methods
.method public getBarBounds()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/eazegraph/lib/models/BarModel;->mBarBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lorg/eazegraph/lib/models/BarModel;->mColor:I

    return v0
.end method

.method public getValue()F
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lorg/eazegraph/lib/models/BarModel;->mValue:F

    return v0
.end method

.method public setBarBounds(Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "_bounds"    # Landroid/graphics/RectF;

    .prologue
    .line 66
    iput-object p1, p0, Lorg/eazegraph/lib/models/BarModel;->mBarBounds:Landroid/graphics/RectF;

    .line 67
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "_color"    # I

    .prologue
    .line 58
    iput p1, p0, Lorg/eazegraph/lib/models/BarModel;->mColor:I

    .line 59
    return-void
.end method

.method public setValue(F)V
    .locals 0
    .param p1, "_value"    # F

    .prologue
    .line 50
    iput p1, p0, Lorg/eazegraph/lib/models/BarModel;->mValue:F

    .line 51
    return-void
.end method
