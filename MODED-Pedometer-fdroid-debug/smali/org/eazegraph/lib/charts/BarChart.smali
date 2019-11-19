.class public Lorg/eazegraph/lib/charts/BarChart;
.super Lorg/eazegraph/lib/charts/BaseBarChart;
.source "BarChart.java"


# static fields
.field public static final DEF_SHOW_VALUES:Z = true

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eazegraph/lib/models/BarModel;",
            ">;"
        }
    .end annotation
.end field

.field protected mShowValues:Z

.field private mValueDistance:I

.field private mValuePaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 264
    const-class v0, Lorg/eazegraph/lib/charts/BarChart;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eazegraph/lib/charts/BarChart;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/eazegraph/lib/charts/BaseBarChart;-><init>(Landroid/content/Context;)V

    .line 272
    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Lorg/eazegraph/lib/utils/Utils;->dpToPx(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/eazegraph/lib/charts/BarChart;->mValueDistance:I

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eazegraph/lib/charts/BarChart;->mShowValues:Z

    .line 51
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/BarChart;->initializeGraph()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 69
    invoke-direct {p0, p1, p2}, Lorg/eazegraph/lib/charts/BaseBarChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 272
    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/eazegraph/lib/utils/Utils;->dpToPx(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lorg/eazegraph/lib/charts/BarChart;->mValueDistance:I

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lorg/eazegraph/lib/R$styleable;->BarChart:[I

    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 75
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v1, Lorg/eazegraph/lib/R$styleable;->BarChart_egShowValues:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lorg/eazegraph/lib/charts/BarChart;->mShowValues:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/BarChart;->initializeGraph()V

    .line 83
    return-void

    .line 79
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method


# virtual methods
.method public addBar(Lorg/eazegraph/lib/models/BarModel;)V
    .locals 1
    .param p1, "_Bar"    # Lorg/eazegraph/lib/models/BarModel;

    .prologue
    .line 91
    iget-object v0, p0, Lorg/eazegraph/lib/charts/BarChart;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/BarChart;->onDataChanged()V

    .line 93
    return-void
.end method

.method public addBarList(Ljava/util/List;)V
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
    .line 101
    .local p1, "_List":Ljava/util/List;, "Ljava/util/List<Lorg/eazegraph/lib/models/BarModel;>;"
    iput-object p1, p0, Lorg/eazegraph/lib/charts/BarChart;->mData:Ljava/util/List;

    .line 102
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/BarChart;->onDataChanged()V

    .line 103
    return-void
.end method

.method protected calculateBounds(FF)V
    .locals 13
    .param p1, "_Width"    # F
    .param p2, "_Margin"    # F

    .prologue
    .line 191
    const/4 v3, 0x0

    .line 192
    .local v3, "maxValue":F
    iget v2, p0, Lorg/eazegraph/lib/charts/BarChart;->mLeftPadding:I

    .line 194
    .local v2, "last":I
    iget-object v6, p0, Lorg/eazegraph/lib/charts/BarChart;->mData:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eazegraph/lib/models/BarModel;

    .line 195
    .local v4, "model":Lorg/eazegraph/lib/models/BarModel;
    invoke-virtual {v4}, Lorg/eazegraph/lib/models/BarModel;->getValue()F

    move-result v7

    cmpl-float v7, v7, v3

    if-lez v7, :cond_0

    .line 196
    invoke-virtual {v4}, Lorg/eazegraph/lib/models/BarModel;->getValue()F

    move-result v3

    goto :goto_0

    .line 200
    .end local v4    # "model":Lorg/eazegraph/lib/models/BarModel;
    :cond_1
    iget-boolean v6, p0, Lorg/eazegraph/lib/charts/BarChart;->mShowValues:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/eazegraph/lib/charts/BarChart;->mValuePaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getTextSize()F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, Lorg/eazegraph/lib/charts/BarChart;->mValueDistance:I

    add-int v5, v6, v7

    .line 202
    .local v5, "valuePadding":I
    :goto_1
    iget v6, p0, Lorg/eazegraph/lib/charts/BarChart;->mGraphHeight:I

    sub-int/2addr v6, v5

    int-to-float v6, v6

    div-float v1, v6, v3

    .line 204
    .local v1, "heightMultiplier":F
    iget-object v6, p0, Lorg/eazegraph/lib/charts/BarChart;->mData:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eazegraph/lib/models/BarModel;

    .line 205
    .restart local v4    # "model":Lorg/eazegraph/lib/models/BarModel;
    invoke-virtual {v4}, Lorg/eazegraph/lib/models/BarModel;->getValue()F

    move-result v7

    mul-float v0, v7, v1

    .line 206
    .local v0, "height":F
    int-to-float v7, v2

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, p2, v8

    add-float/2addr v7, v8

    float-to-int v2, v7

    .line 207
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v8, v2

    iget v9, p0, Lorg/eazegraph/lib/charts/BarChart;->mGraphHeight:I

    int-to-float v9, v9

    sub-float/2addr v9, v0

    iget v10, p0, Lorg/eazegraph/lib/charts/BarChart;->mTopPadding:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    int-to-float v10, v2

    add-float/2addr v10, p1

    iget v11, p0, Lorg/eazegraph/lib/charts/BarChart;->mGraphHeight:I

    iget v12, p0, Lorg/eazegraph/lib/charts/BarChart;->mTopPadding:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v4, v7}, Lorg/eazegraph/lib/models/BarModel;->setBarBounds(Landroid/graphics/RectF;)V

    .line 209
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v8, v2

    const/4 v9, 0x0

    int-to-float v10, v2

    add-float/2addr v10, p1

    iget v11, p0, Lorg/eazegraph/lib/charts/BarChart;->mLegendHeight:F

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v4, v7}, Lorg/eazegraph/lib/models/BarModel;->setLegendBounds(Landroid/graphics/RectF;)V

    .line 210
    int-to-float v7, v2

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, p2, v8

    add-float/2addr v8, p1

    add-float/2addr v7, v8

    float-to-int v2, v7

    .line 212
    goto :goto_2

    .line 200
    .end local v0    # "height":F
    .end local v1    # "heightMultiplier":F
    .end local v4    # "model":Lorg/eazegraph/lib/models/BarModel;
    .end local v5    # "valuePadding":I
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 214
    .restart local v1    # "heightMultiplier":F
    .restart local v5    # "valuePadding":I
    :cond_3
    iget-object v6, p0, Lorg/eazegraph/lib/charts/BarChart;->mData:Ljava/util/List;

    iget v7, p0, Lorg/eazegraph/lib/charts/BarChart;->mLeftPadding:I

    int-to-float v7, v7

    iget v8, p0, Lorg/eazegraph/lib/charts/BarChart;->mGraphWidth:I

    iget v9, p0, Lorg/eazegraph/lib/charts/BarChart;->mLeftPadding:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget-object v9, p0, Lorg/eazegraph/lib/charts/BarChart;->mLegendPaint:Landroid/graphics/Paint;

    invoke-static {v6, v7, v8, v9}, Lorg/eazegraph/lib/utils/Utils;->calculateLegendInformation(Ljava/util/List;FFLandroid/graphics/Paint;)V

    .line 216
    return-void
.end method

.method public clearChart()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/eazegraph/lib/charts/BarChart;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 140
    return-void
.end method

.method protected drawBars(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "_Canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 225
    iget-object v0, p0, Lorg/eazegraph/lib/charts/BarChart;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eazegraph/lib/models/BarModel;

    .line 226
    .local v7, "model":Lorg/eazegraph/lib/models/BarModel;
    invoke-virtual {v7}, Lorg/eazegraph/lib/models/BarModel;->getBarBounds()Landroid/graphics/RectF;

    move-result-object v6

    .line 227
    .local v6, "bounds":Landroid/graphics/RectF;
    iget-object v0, p0, Lorg/eazegraph/lib/charts/BarChart;->mGraphPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Lorg/eazegraph/lib/models/BarModel;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 229
    iget v1, v6, Landroid/graphics/RectF;->left:F

    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lorg/eazegraph/lib/charts/BarChart;->mRevealValue:F

    mul-float/2addr v2, v3

    sub-float v2, v0, v2

    iget v3, v6, Landroid/graphics/RectF;->right:F

    iget v4, v6, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lorg/eazegraph/lib/charts/BarChart;->mGraphPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 232
    iget-boolean v0, p0, Lorg/eazegraph/lib/charts/BarChart;->mShowValues:Z

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v7}, Lorg/eazegraph/lib/models/BarModel;->getValue()F

    move-result v0

    iget-boolean v1, p0, Lorg/eazegraph/lib/charts/BarChart;->mShowDecimal:Z

    invoke-static {v0, v1}, Lorg/eazegraph/lib/utils/Utils;->getFloatString(FZ)Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-virtual {v7}, Lorg/eazegraph/lib/models/BarModel;->getLegendBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget v2, v6, Landroid/graphics/RectF;->bottom:F

    .line 235
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lorg/eazegraph/lib/charts/BarChart;->mRevealValue:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lorg/eazegraph/lib/charts/BarChart;->mValueDistance:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/eazegraph/lib/charts/BarChart;->mValuePaint:Landroid/graphics/Paint;

    .line 233
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 239
    .end local v6    # "bounds":Landroid/graphics/RectF;
    .end local v7    # "model":Lorg/eazegraph/lib/models/BarModel;
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
    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v0, "bounds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/RectF;>;"
    iget-object v2, p0, Lorg/eazegraph/lib/charts/BarChart;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eazegraph/lib/models/BarModel;

    .line 255
    .local v1, "model":Lorg/eazegraph/lib/models/BarModel;
    invoke-virtual {v1}, Lorg/eazegraph/lib/models/BarModel;->getBarBounds()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 257
    .end local v1    # "model":Lorg/eazegraph/lib/models/BarModel;
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
            "Lorg/eazegraph/lib/models/BarModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lorg/eazegraph/lib/charts/BarChart;->mData:Ljava/util/List;

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
    .line 248
    iget-object v0, p0, Lorg/eazegraph/lib/charts/BarChart;->mData:Ljava/util/List;

    return-object v0
.end method

.method protected initializeGraph()V
    .locals 2

    .prologue
    .line 158
    invoke-super {p0}, Lorg/eazegraph/lib/charts/BaseBarChart;->initializeGraph()V

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eazegraph/lib/charts/BarChart;->mData:Ljava/util/List;

    .line 162
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/eazegraph/lib/charts/BarChart;->mLegendPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lorg/eazegraph/lib/charts/BarChart;->mValuePaint:Landroid/graphics/Paint;

    .line 163
    iget-object v0, p0, Lorg/eazegraph/lib/charts/BarChart;->mValuePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 165
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/BarChart;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Lorg/eazegraph/lib/models/BarModel;

    const v1, 0x40133333    # 2.3f

    invoke-direct {v0, v1}, Lorg/eazegraph/lib/models/BarModel;-><init>(F)V

    invoke-virtual {p0, v0}, Lorg/eazegraph/lib/charts/BarChart;->addBar(Lorg/eazegraph/lib/models/BarModel;)V

    .line 167
    new-instance v0, Lorg/eazegraph/lib/models/BarModel;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Lorg/eazegraph/lib/models/BarModel;-><init>(F)V

    invoke-virtual {p0, v0}, Lorg/eazegraph/lib/charts/BarChart;->addBar(Lorg/eazegraph/lib/models/BarModel;)V

    .line 168
    new-instance v0, Lorg/eazegraph/lib/models/BarModel;

    const v1, 0x40533333    # 3.3f

    invoke-direct {v0, v1}, Lorg/eazegraph/lib/models/BarModel;-><init>(F)V

    invoke-virtual {p0, v0}, Lorg/eazegraph/lib/charts/BarChart;->addBar(Lorg/eazegraph/lib/models/BarModel;)V

    .line 169
    new-instance v0, Lorg/eazegraph/lib/models/BarModel;

    const v1, 0x3f8ccccd    # 1.1f

    invoke-direct {v0, v1}, Lorg/eazegraph/lib/models/BarModel;-><init>(F)V

    invoke-virtual {p0, v0}, Lorg/eazegraph/lib/charts/BarChart;->addBar(Lorg/eazegraph/lib/models/BarModel;)V

    .line 170
    new-instance v0, Lorg/eazegraph/lib/models/BarModel;

    const v1, 0x402ccccd    # 2.7f

    invoke-direct {v0, v1}, Lorg/eazegraph/lib/models/BarModel;-><init>(F)V

    invoke-virtual {p0, v0}, Lorg/eazegraph/lib/charts/BarChart;->addBar(Lorg/eazegraph/lib/models/BarModel;)V

    .line 172
    :cond_0
    return-void
.end method

.method public isShowValues()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lorg/eazegraph/lib/charts/BarChart;->mShowValues:Z

    return v0
.end method

.method protected onDataChanged()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lorg/eazegraph/lib/charts/BarChart;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eazegraph/lib/charts/BarChart;->calculateBarPositions(I)V

    .line 181
    invoke-super {p0}, Lorg/eazegraph/lib/charts/BaseBarChart;->onDataChanged()V

    .line 182
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/BarChart;->performClick()Z

    .line 146
    const/4 v0, 0x1

    .line 148
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShowValues(Z)V
    .locals 0
    .param p1, "_showValues"    # Z

    .prologue
    .line 121
    iput-boolean p1, p0, Lorg/eazegraph/lib/charts/BarChart;->mShowValues:Z

    .line 122
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/BarChart;->invalidateGraphs()V

    .line 123
    return-void
.end method
