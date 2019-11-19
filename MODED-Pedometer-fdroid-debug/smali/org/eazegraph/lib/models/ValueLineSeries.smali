.class public Lorg/eazegraph/lib/models/ValueLineSeries;
.super Ljava/lang/Object;
.source "ValueLineSeries.java"


# instance fields
.field private mColor:I

.field private mPath:Landroid/graphics/Path;

.field private mSeries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eazegraph/lib/models/ValueLinePoint;",
            ">;"
        }
    .end annotation
.end field

.field private mWidthOffset:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eazegraph/lib/models/ValueLineSeries;->mSeries:Ljava/util/List;

    .line 37
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/eazegraph/lib/models/ValueLineSeries;->mPath:Landroid/graphics/Path;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/eazegraph/lib/models/ValueLinePoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "_series":Ljava/util/List;, "Ljava/util/List<Lorg/eazegraph/lib/models/ValueLinePoint;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/eazegraph/lib/models/ValueLineSeries;->mSeries:Ljava/util/List;

    .line 32
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/eazegraph/lib/models/ValueLineSeries;->mPath:Landroid/graphics/Path;

    .line 33
    return-void
.end method


# virtual methods
.method public addPoint(Lorg/eazegraph/lib/models/ValueLinePoint;)V
    .locals 1
    .param p1, "_valueLinePoint"    # Lorg/eazegraph/lib/models/ValueLinePoint;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/eazegraph/lib/models/ValueLineSeries;->mSeries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lorg/eazegraph/lib/models/ValueLineSeries;->mColor:I

    return v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/eazegraph/lib/models/ValueLineSeries;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public getSeries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/eazegraph/lib/models/ValueLinePoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lorg/eazegraph/lib/models/ValueLineSeries;->mSeries:Ljava/util/List;

    return-object v0
.end method

.method public getWidthOffset()F
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lorg/eazegraph/lib/models/ValueLineSeries;->mWidthOffset:F

    return v0
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "_color"    # I

    .prologue
    .line 57
    iput p1, p0, Lorg/eazegraph/lib/models/ValueLineSeries;->mColor:I

    .line 58
    return-void
.end method

.method public setPath(Landroid/graphics/Path;)V
    .locals 0
    .param p1, "_path"    # Landroid/graphics/Path;

    .prologue
    .line 65
    iput-object p1, p0, Lorg/eazegraph/lib/models/ValueLineSeries;->mPath:Landroid/graphics/Path;

    .line 66
    return-void
.end method

.method public setSeries(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/eazegraph/lib/models/ValueLinePoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "_series":Ljava/util/List;, "Ljava/util/List<Lorg/eazegraph/lib/models/ValueLinePoint;>;"
    iput-object p1, p0, Lorg/eazegraph/lib/models/ValueLineSeries;->mSeries:Ljava/util/List;

    .line 50
    return-void
.end method

.method public setWidthOffset(F)V
    .locals 0
    .param p1, "_widthOffset"    # F

    .prologue
    .line 73
    iput p1, p0, Lorg/eazegraph/lib/models/ValueLineSeries;->mWidthOffset:F

    .line 74
    return-void
.end method
