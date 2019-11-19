.class public Lorg/eazegraph/lib/charts/StackedBarChart;
.super Lorg/eazegraph/lib/charts/BaseBarChart;
.source "StackedBarChart.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eazegraph/lib/models/StackedBarModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 216
    const-class v0, Lorg/eazegraph/lib/charts/BarChart;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eazegraph/lib/charts/StackedBarChart;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lorg/eazegraph/lib/charts/BaseBarChart;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/StackedBarChart;->initializeGraph()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lorg/eazegraph/lib/charts/BaseBarChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/StackedBarChart;->initializeGraph()V

    .line 51
    return-void
.end method


# virtual methods
.method public addBar(Lorg/eazegraph/lib/models/StackedBarModel;)V
    .locals 1
    .param p1, "_Bar"    # Lorg/eazegraph/lib/models/StackedBarModel;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/eazegraph/lib/charts/StackedBarChart;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/StackedBarChart;->onDataChanged()V

    .line 60
    return-void
.end method

.method public addBarList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/eazegraph/lib/models/StackedBarModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "_List":Ljava/util/List;, "Ljava/util/List<Lorg/eazegraph/lib/models/StackedBarModel;>;"
    iput-object p1, p0, Lorg/eazegraph/lib/charts/StackedBarChart;->mData:Ljava/util/List;

    .line 68
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/StackedBarChart;->onDataChanged()V

    .line 69
    return-void
.end method

.method protected calculateBounds(FF)V
    .locals 13
    .param p1, "_Width"    # F
    .param p2, "_Margin"    # F

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    .line 141
    iget v3, p0, Lorg/eazegraph/lib/charts/StackedBarChart;->mLeftPadding:I

    .line 143
    .local v3, "last":I
    iget-object v6, p0, Lorg/eazegraph/lib/charts/StackedBarChart;->mData:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eazegraph/lib/models/StackedBarModel;

    .line 144
    .local v5, "model":Lorg/eazegraph/lib/models/StackedBarModel;
    iget v7, p0, Lorg/eazegraph/lib/charts/StackedBarChart;->mTopPadding:I

    int-to-float v4, v7

    .line 145
    .local v4, "lastHeight":F
    const/4 v1, 0x0

    .line 147
    .local v1, "cumulatedValues":F
    invoke-virtual {v5}, Lorg/eazegraph/lib/models/StackedBarModel;->getBars()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eazegraph/lib/models/BarModel;

    .line 148
    .local v0, "barModel":Lorg/eazegraph/lib/models/BarModel;
    invoke-virtual {v0}, Lorg/eazegraph/lib/models/BarModel;->getValue()F

    move-result v8

    add-float/2addr v1, v8

    .line 149
    goto :goto_1

    .line 151
    .end local v0    # "barModel":Lorg/eazegraph/lib/models/BarModel;
    :cond_0
    int-to-float v7, v3

    div-float v8, p2, v12

    add-float/2addr v7, v8

    float-to-int v3, v7

    .line 153
    invoke-virtual {v5}, Lorg/eazegraph/lib/models/StackedBarModel;->getBars()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eazegraph/lib/models/BarModel;

    .line 155
    .restart local v0    # "barModel":Lorg/eazegraph/lib/models/BarModel;
    invoke-virtual {v0}, Lorg/eazegraph/lib/models/BarModel;->getValue()F

    move-result v8

    iget v9, p0, Lorg/eazegraph/lib/charts/StackedBarChart;->mGraphHeight:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    div-float/2addr v8, v1

    add-float v2, v8, v4

    .line 156
    .local v2, "height":F
    new-instance v8, Landroid/graphics/RectF;

    int-to-float v9, v3

    int-to-float v10, v3

    add-float/2addr v10, p1

    invoke-direct {v8, v9, v4, v10, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v8}, Lorg/eazegraph/lib/models/BarModel;->setBarBounds(Landroid/graphics/RectF;)V

    .line 157
    move v4, v2

    .line 158
    goto :goto_2

    .line 159
    .end local v0    # "barModel":Lorg/eazegraph/lib/models/BarModel;
    .end local v2    # "height":F
    :cond_1
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v8, v3

    const/4 v9, 0x0

    int-to-float v10, v3

    add-float/2addr v10, p1

    iget v11, p0, Lorg/eazegraph/lib/charts/StackedBarChart;->mLegendHeight:F

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v7}, Lorg/eazegraph/lib/models/StackedBarModel;->setLegendBounds(Landroid/graphics/RectF;)V

    .line 161
    int-to-float v7, v3

    div-float v8, p2, v12

    add-float/2addr v8, p1

    add-float/2addr v7, v8

    float-to-int v3, v7

    .line 162
    goto :goto_0

    .line 164
    .end local v1    # "cumulatedValues":F
    .end local v4    # "lastHeight":F
    .end local v5    # "model":Lorg/eazegraph/lib/models/StackedBarModel;
    :cond_2
    iget-object v6, p0, Lorg/eazegraph/lib/charts/StackedBarChart;->mData:Ljava/util/List;

    iget v7, p0, Lorg/eazegraph/lib/charts/StackedBarChart;->mLeftPadding:I

    int-to-float v7, v7

    iget v8, p0, Lorg/eazegraph/lib/charts/StackedBarChart;->mGraphWidth:I

    iget v9, p0, Lorg/eazegraph/lib/charts/StackedBarChart;->mLeftPadding:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget-object v9, p0, Lorg/eazegraph/lib/charts/StackedBarChart;->mLegendPaint:Landroid/graphics/Paint;

    invoke-static {v6, v7, v8, v9}, Lorg/eazegraph/lib/utils/Utils;->calculateLegendInformation(Ljava/util/List;FFLandroid/graphics/Paint;)V

    .line 165
    return-void
.end method

.method public clearChart()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/eazegraph/lib/charts/StackedBarChart;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 86
    return-void
.end method

.method protected drawBars(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "_Canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 172
    iget-object v0, p0, Lorg/eazegraph/lib/charts/StackedBarChart;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/eazegraph/lib/models/StackedBarModel;

    .line 174
    .local v9, "model":Lorg/eazegraph/lib/models/StackedBarModel;
    iget v0, p0, Lorg/eazegraph/lib/charts/StackedBarChart;->mGraphHeight:I

    iget v1, p0, Lorg/eazegraph/lib/charts/StackedBarChart;->mTopPadding:I

    add-int/2addr v0, v1

    int-to-float v4, v0

    .line 176
    .local v4, "lastBottom":F
    invoke-virtual {v9}, Lorg/eazegraph/lib/models/StackedBarModel;->getBars()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eazegraph/lib/models/BarModel;

    .line 177
    .local v6, "barModel":Lorg/eazegraph/lib/models/BarModel;
    invoke-virtual {v6}, Lorg/eazegraph/lib/models/BarModel;->getBarBounds()Landroid/graphics/RectF;

    move-result-object v7

    .line 178
    .local v7, "bounds":Landroid/graphics/RectF;
    iget-object v0, p0, Lorg/eazegraph/lib/charts/StackedBarChart;->mGraphPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Lorg/eazegraph/lib/models/BarModel;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lorg/eazegraph/lib/charts/StackedBarChart;->mRevealValue:F

    mul-float v8, v0, v1

    .line 181
    .local v8, "height":F
    sub-float v2, v4, v8

    .line 183
    .local v2, "lastTop":F
    iget v1, v7, Landroid/graphics/RectF;->left:F

    iget v3, v7, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lorg/eazegraph/lib/charts/StackedBarChart;->mGraphPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 189
    move v4, v2

    .line 190
    goto :goto_0

    .line 192
    .end local v2    # "lastTop":F
    .end local v4    # "lastBottom":F
    .end local v6    # "barModel":Lorg/eazegraph/lib/models/BarModel;
    .end local v7    # "bounds":Landroid/graphics/RectF;
    .end local v8    # "height":F
    .end local v9    # "model":Lorg/eazegraph/lib/models/StackedBarModel;
    :cond_1
    return-void
.end method

.method protected getBarBounds()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v0, "bounds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/RectF;>;"
    iget-object v2, p0, Lorg/eazegraph/lib/charts/StackedBarChart;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eazegraph/lib/models/StackedBarModel;

    .line 207
    .local v1, "model":Lorg/eazegraph/lib/models/StackedBarModel;
    invoke-virtual {v1}, Lorg/eazegraph/lib/models/StackedBarModel;->getBounds()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 209
    .end local v1    # "model":Lorg/eazegraph/lib/models/StackedBarModel;
    :cond_0
    return-object v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/eazegraph/lib/models/StackedBarModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lorg/eazegraph/lib/charts/StackedBarChart;->mData:Ljava/util/List;

    return-object v0
.end method

.method protected getLegendData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lorg/eazegraph/lib/models/BaseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lorg/eazegraph/lib/charts/StackedBarChart;->mData:Ljava/util/List;

    return-object v0
.end method

.method protected initializeGraph()V
    .locals 7

    .prologue
    const v6, -0xe10aaa

    const v5, -0xe45b1a

    const v4, -0xedcbaa

    .line 104
    invoke-super {p0}, Lorg/eazegraph/lib/charts/BaseBarChart;->initializeGraph()V

    .line 105
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/eazegraph/lib/charts/StackedBarChart;->mData:Ljava/util/List;

    .line 107
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/StackedBarChart;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    new-instance v0, Lorg/eazegraph/lib/models/StackedBarModel;

    invoke-direct {v0}, Lorg/eazegraph/lib/models/StackedBarModel;-><init>()V

    .line 110
    .local v0, "s1":Lorg/eazegraph/lib/models/StackedBarModel;
    new-instance v2, Lorg/eazegraph/lib/models/BarModel;

    const v3, 0x40133333    # 2.3f

    invoke-direct {v2, v3, v4}, Lorg/eazegraph/lib/models/BarModel;-><init>(FI)V

    invoke-virtual {v0, v2}, Lorg/eazegraph/lib/models/StackedBarModel;->addBar(Lorg/eazegraph/lib/models/BarModel;)V

    .line 111
    new-instance v2, Lorg/eazegraph/lib/models/BarModel;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3, v6}, Lorg/eazegraph/lib/models/BarModel;-><init>(FI)V

    invoke-virtual {v0, v2}, Lorg/eazegraph/lib/models/StackedBarModel;->addBar(Lorg/eazegraph/lib/models/BarModel;)V

    .line 112
    new-instance v2, Lorg/eazegraph/lib/models/BarModel;

    const v3, 0x40533333    # 3.3f

    invoke-direct {v2, v3, v5}, Lorg/eazegraph/lib/models/BarModel;-><init>(FI)V

    invoke-virtual {v0, v2}, Lorg/eazegraph/lib/models/StackedBarModel;->addBar(Lorg/eazegraph/lib/models/BarModel;)V

    .line 114
    new-instance v1, Lorg/eazegraph/lib/models/StackedBarModel;

    invoke-direct {v1}, Lorg/eazegraph/lib/models/StackedBarModel;-><init>()V

    .line 115
    .local v1, "s2":Lorg/eazegraph/lib/models/StackedBarModel;
    new-instance v2, Lorg/eazegraph/lib/models/BarModel;

    const v3, 0x3f8ccccd    # 1.1f

    invoke-direct {v2, v3, v4}, Lorg/eazegraph/lib/models/BarModel;-><init>(FI)V

    invoke-virtual {v1, v2}, Lorg/eazegraph/lib/models/StackedBarModel;->addBar(Lorg/eazegraph/lib/models/BarModel;)V

    .line 116
    new-instance v2, Lorg/eazegraph/lib/models/BarModel;

    const v3, 0x402ccccd    # 2.7f

    invoke-direct {v2, v3, v6}, Lorg/eazegraph/lib/models/BarModel;-><init>(FI)V

    invoke-virtual {v1, v2}, Lorg/eazegraph/lib/models/StackedBarModel;->addBar(Lorg/eazegraph/lib/models/BarModel;)V

    .line 117
    new-instance v2, Lorg/eazegraph/lib/models/BarModel;

    const v3, 0x3f333333    # 0.7f

    invoke-direct {v2, v3, v5}, Lorg/eazegraph/lib/models/BarModel;-><init>(FI)V

    invoke-virtual {v1, v2}, Lorg/eazegraph/lib/models/StackedBarModel;->addBar(Lorg/eazegraph/lib/models/BarModel;)V

    .line 119
    invoke-virtual {p0, v0}, Lorg/eazegraph/lib/charts/StackedBarChart;->addBar(Lorg/eazegraph/lib/models/StackedBarModel;)V

    .line 120
    invoke-virtual {p0, v1}, Lorg/eazegraph/lib/charts/StackedBarChart;->addBar(Lorg/eazegraph/lib/models/StackedBarModel;)V

    .line 122
    .end local v0    # "s1":Lorg/eazegraph/lib/models/StackedBarModel;
    .end local v1    # "s2":Lorg/eazegraph/lib/models/StackedBarModel;
    :cond_0
    return-void
.end method

.method protected onDataChanged()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/eazegraph/lib/charts/StackedBarChart;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eazegraph/lib/charts/StackedBarChart;->calculateBarPositions(I)V

    .line 131
    invoke-super {p0}, Lorg/eazegraph/lib/charts/BaseBarChart;->onDataChanged()V

    .line 132
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/StackedBarChart;->performClick()Z

    .line 92
    const/4 v0, 0x1

    .line 94
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
