.class public Lorg/eazegraph/lib/models/StackedBarModel;
.super Lorg/eazegraph/lib/models/BaseModel;
.source "StackedBarModel.java"


# instance fields
.field mBars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eazegraph/lib/models/BarModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "Unset"

    invoke-direct {p0, v0}, Lorg/eazegraph/lib/models/BaseModel;-><init>(Ljava/lang/String;)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eazegraph/lib/models/StackedBarModel;->mBars:Ljava/util/List;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "_legendLabel"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lorg/eazegraph/lib/models/BaseModel;-><init>(Ljava/lang/String;)V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eazegraph/lib/models/StackedBarModel;->mBars:Ljava/util/List;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "_legendLabel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/eazegraph/lib/models/BarModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p2, "_bars":Ljava/util/List;, "Ljava/util/List<Lorg/eazegraph/lib/models/BarModel;>;"
    invoke-direct {p0, p1}, Lorg/eazegraph/lib/models/BaseModel;-><init>(Ljava/lang/String;)V

    .line 48
    iput-object p2, p0, Lorg/eazegraph/lib/models/StackedBarModel;->mBars:Ljava/util/List;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/eazegraph/lib/models/BarModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "_bars":Ljava/util/List;, "Ljava/util/List<Lorg/eazegraph/lib/models/BarModel;>;"
    const-string/jumbo v0, "Unset"

    invoke-direct {p0, v0}, Lorg/eazegraph/lib/models/BaseModel;-><init>(Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lorg/eazegraph/lib/models/StackedBarModel;->mBars:Ljava/util/List;

    .line 44
    return-void
.end method


# virtual methods
.method public addBar(Lorg/eazegraph/lib/models/BarModel;)V
    .locals 1
    .param p1, "_bar"    # Lorg/eazegraph/lib/models/BarModel;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/eazegraph/lib/models/StackedBarModel;->mBars:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method public getBars()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/eazegraph/lib/models/BarModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lorg/eazegraph/lib/models/StackedBarModel;->mBars:Ljava/util/List;

    return-object v0
.end method

.method public getBounds()Landroid/graphics/RectF;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 64
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 65
    .local v0, "bounds":Landroid/graphics/RectF;
    iget-object v1, p0, Lorg/eazegraph/lib/models/StackedBarModel;->mBars:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    iget-object v1, p0, Lorg/eazegraph/lib/models/StackedBarModel;->mBars:Ljava/util/List;

    .line 68
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eazegraph/lib/models/BarModel;

    invoke-virtual {v1}, Lorg/eazegraph/lib/models/BarModel;->getBarBounds()Landroid/graphics/RectF;

    move-result-object v1

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lorg/eazegraph/lib/models/StackedBarModel;->mBars:Ljava/util/List;

    .line 69
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eazegraph/lib/models/BarModel;

    invoke-virtual {v1}, Lorg/eazegraph/lib/models/BarModel;->getBarBounds()Landroid/graphics/RectF;

    move-result-object v1

    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lorg/eazegraph/lib/models/StackedBarModel;->mBars:Ljava/util/List;

    iget-object v4, p0, Lorg/eazegraph/lib/models/StackedBarModel;->mBars:Ljava/util/List;

    .line 70
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eazegraph/lib/models/BarModel;

    invoke-virtual {v1}, Lorg/eazegraph/lib/models/BarModel;->getBarBounds()Landroid/graphics/RectF;

    move-result-object v1

    iget v4, v1, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lorg/eazegraph/lib/models/StackedBarModel;->mBars:Ljava/util/List;

    iget-object v5, p0, Lorg/eazegraph/lib/models/StackedBarModel;->mBars:Ljava/util/List;

    .line 71
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eazegraph/lib/models/BarModel;

    invoke-virtual {v1}, Lorg/eazegraph/lib/models/BarModel;->getBarBounds()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 67
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 74
    :cond_0
    return-object v0
.end method

.method public setBars(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/eazegraph/lib/models/BarModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "_bars":Ljava/util/List;, "Ljava/util/List<Lorg/eazegraph/lib/models/BarModel;>;"
    iput-object p1, p0, Lorg/eazegraph/lib/models/StackedBarModel;->mBars:Ljava/util/List;

    .line 57
    return-void
.end method
