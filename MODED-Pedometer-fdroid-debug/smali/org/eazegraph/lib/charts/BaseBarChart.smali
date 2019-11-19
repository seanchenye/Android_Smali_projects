.class public abstract Lorg/eazegraph/lib/charts/BaseBarChart;
.super Lorg/eazegraph/lib/charts/BaseChart;
.source "BaseBarChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eazegraph/lib/charts/BaseBarChart$Legend;,
        Lorg/eazegraph/lib/charts/BaseBarChart$Graph;
    }
.end annotation


# static fields
.field public static final DEF_BAR_MARGIN:F = 12.0f

.field public static final DEF_BAR_WIDTH:F = 32.0f

.field public static final DEF_FIXED_BAR_WIDTH:Z

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mBarMargin:F

.field protected mBarWidth:F

.field protected mFixedBarWidth:Z

.field protected mGraph:Lorg/eazegraph/lib/charts/BaseBarChart$Graph;

.field protected mGraphPaint:Landroid/graphics/Paint;

.field protected mLegend:Lorg/eazegraph/lib/charts/BaseBarChart$Legend;

.field protected mLegendPaint:Landroid/graphics/Paint;

.field protected mListener:Lorg/eazegraph/lib/communication/IOnBarClickedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 446
    const-class v0, Lorg/eazegraph/lib/charts/BaseBarChart;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eazegraph/lib/charts/BaseBarChart;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/eazegraph/lib/charts/BaseChart;-><init>(Landroid/content/Context;)V

    .line 453
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mListener:Lorg/eazegraph/lib/communication/IOnBarClickedListener;

    .line 52
    const/high16 v0, 0x42000000    # 32.0f

    invoke-static {v0}, Lorg/eazegraph/lib/utils/Utils;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mBarWidth:F

    .line 53
    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lorg/eazegraph/lib/utils/Utils;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mBarMargin:F

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mFixedBarWidth:Z

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 72
    invoke-direct {p0, p1, p2}, Lorg/eazegraph/lib/charts/BaseChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 453
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mListener:Lorg/eazegraph/lib/communication/IOnBarClickedListener;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lorg/eazegraph/lib/R$styleable;->BaseBarChart:[I

    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 79
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v1, Lorg/eazegraph/lib/R$styleable;->BaseBarChart_egBarWidth:I

    const/high16 v2, 0x42000000    # 32.0f

    .line 80
    invoke-static {v2}, Lorg/eazegraph/lib/utils/Utils;->dpToPx(F)F

    move-result v2

    .line 79
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mBarWidth:F

    .line 81
    sget v1, Lorg/eazegraph/lib/R$styleable;->BaseBarChart_egBarMargin:I

    const/high16 v2, 0x41400000    # 12.0f

    .line 82
    invoke-static {v2}, Lorg/eazegraph/lib/utils/Utils;->dpToPx(F)F

    move-result v2

    .line 81
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mBarMargin:F

    .line 83
    sget v1, Lorg/eazegraph/lib/R$styleable;->BaseBarChart_egFixedBarWidth:I

    const/4 v2, 0x0

    .line 84
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mFixedBarWidth:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    return-void

    .line 88
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method


# virtual methods
.method protected calculateBarPositions(I)V
    .locals 5
    .param p1, "_DataSize"    # I

    .prologue
    .line 267
    if-nez p1, :cond_0

    .line 289
    :goto_0
    return-void

    .line 273
    :cond_0
    iget v0, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mBarWidth:F

    .line 274
    .local v0, "barWidth":F
    iget v2, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mBarMargin:F

    .line 276
    .local v2, "margin":F
    iget-boolean v4, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mFixedBarWidth:Z

    if-nez v4, :cond_1

    .line 278
    iget v4, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mGraphWidth:I

    div-int/2addr v4, p1

    int-to-float v4, v4

    sub-float v0, v4, v2

    .line 286
    :goto_1
    invoke-virtual {p0, v0, v2}, Lorg/eazegraph/lib/charts/BaseBarChart;->calculateBounds(FF)V

    .line 287
    iget-object v4, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mLegend:Lorg/eazegraph/lib/charts/BaseBarChart$Legend;

    invoke-virtual {v4}, Lorg/eazegraph/lib/charts/BaseBarChart$Legend;->invalidate()V

    .line 288
    iget-object v4, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mGraph:Lorg/eazegraph/lib/charts/BaseBarChart$Graph;

    invoke-virtual {v4}, Lorg/eazegraph/lib/charts/BaseBarChart$Graph;->invalidate()V

    goto :goto_0

    .line 281
    :cond_1
    int-to-float v4, p1

    mul-float v1, v0, v4

    .line 282
    .local v1, "cumulatedBarWidths":F
    iget v4, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mGraphWidth:I

    int-to-float v4, v4

    sub-float v3, v4, v1

    .line 283
    .local v3, "remainingWidth":F
    int-to-float v4, p1

    div-float v2, v3, v4

    goto :goto_1
.end method

.method protected abstract calculateBounds(FF)V
.end method

.method protected abstract drawBars(Landroid/graphics/Canvas;)V
.end method

.method protected abstract getBarBounds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end method

.method public getBarMargin()F
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mBarMargin:F

    return v0
.end method

.method public getBarWidth()F
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mBarWidth:F

    return v0
.end method

.method protected abstract getLegendData()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lorg/eazegraph/lib/models/BaseModel;",
            ">;"
        }
    .end annotation
.end method

.method public getOnBarClickedListener()Lorg/eazegraph/lib/communication/IOnBarClickedListener;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mListener:Lorg/eazegraph/lib/communication/IOnBarClickedListener;

    return-object v0
.end method

.method protected initializeGraph()V
    .locals 3

    .prologue
    .line 213
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mGraphPaint:Landroid/graphics/Paint;

    .line 214
    iget-object v0, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mGraphPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 216
    new-instance v0, Landroid/graphics/Paint;

    const/16 v1, 0x41

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mLegendPaint:Landroid/graphics/Paint;

    .line 217
    iget-object v0, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mLegendPaint:Landroid/graphics/Paint;

    const v1, -0x767677

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 218
    iget-object v0, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mLegendPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mLegendTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 219
    iget-object v0, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mLegendPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 220
    iget-object v0, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mLegendPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 222
    iget-object v0, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mLegendPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Lorg/eazegraph/lib/utils/Utils;->calculateMaxTextHeight(Landroid/graphics/Paint;)F

    move-result v0

    iput v0, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mMaxFontHeight:F

    .line 224
    new-instance v0, Lorg/eazegraph/lib/charts/BaseBarChart$Graph;

    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/BaseBarChart;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/eazegraph/lib/charts/BaseBarChart$Graph;-><init>(Lorg/eazegraph/lib/charts/BaseBarChart;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mGraph:Lorg/eazegraph/lib/charts/BaseBarChart$Graph;

    .line 225
    iget-object v0, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mGraph:Lorg/eazegraph/lib/charts/BaseBarChart$Graph;

    invoke-virtual {p0, v0}, Lorg/eazegraph/lib/charts/BaseBarChart;->addView(Landroid/view/View;)V

    .line 227
    new-instance v0, Lorg/eazegraph/lib/charts/BaseBarChart$Legend;

    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/BaseBarChart;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/eazegraph/lib/charts/BaseBarChart$Legend;-><init>(Lorg/eazegraph/lib/charts/BaseBarChart;Landroid/content/Context;Lorg/eazegraph/lib/charts/BaseBarChart$1;)V

    iput-object v0, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mLegend:Lorg/eazegraph/lib/charts/BaseBarChart$Legend;

    .line 228
    iget-object v0, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mLegend:Lorg/eazegraph/lib/charts/BaseBarChart$Legend;

    invoke-virtual {p0, v0}, Lorg/eazegraph/lib/charts/BaseBarChart;->addView(Landroid/view/View;)V

    .line 230
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mRevealAnimator:Lcom/nineoldandroids/animation/ValueAnimator;

    .line 231
    iget-object v0, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mRevealAnimator:Lcom/nineoldandroids/animation/ValueAnimator;

    new-instance v1, Lorg/eazegraph/lib/charts/BaseBarChart$1;

    invoke-direct {v1, p0}, Lorg/eazegraph/lib/charts/BaseBarChart$1;-><init>(Lorg/eazegraph/lib/charts/BaseBarChart;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 238
    iget-object v0, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mRevealAnimator:Lcom/nineoldandroids/animation/ValueAnimator;

    new-instance v1, Lorg/eazegraph/lib/charts/BaseBarChart$2;

    invoke-direct {v1, p0}, Lorg/eazegraph/lib/charts/BaseBarChart$2;-><init>(Lorg/eazegraph/lib/charts/BaseBarChart;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 259
    return-void

    .line 230
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected invalidateGraphs()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mGraph:Lorg/eazegraph/lib/charts/BaseBarChart$Graph;

    invoke-virtual {v0}, Lorg/eazegraph/lib/charts/BaseBarChart$Graph;->invalidate()V

    .line 204
    iget-object v0, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mLegend:Lorg/eazegraph/lib/charts/BaseBarChart$Legend;

    invoke-virtual {v0}, Lorg/eazegraph/lib/charts/BaseBarChart$Legend;->invalidate()V

    .line 205
    return-void
.end method

.method public isFixedBarWidth()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mFixedBarWidth:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 167
    invoke-super {p0, p1}, Lorg/eazegraph/lib/charts/BaseChart;->onDraw(Landroid/graphics/Canvas;)V

    .line 168
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 173
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v3, 0x0

    .line 187
    invoke-super {p0, p1, p2, p3, p4}, Lorg/eazegraph/lib/charts/BaseChart;->onSizeChanged(IIII)V

    .line 188
    iput p1, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mWidth:I

    .line 189
    iput p2, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mHeight:I

    .line 191
    iget-object v0, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mGraph:Lorg/eazegraph/lib/charts/BaseBarChart$Graph;

    int-to-float v1, p2

    iget v2, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mLegendHeight:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v3, v3, p1, v1}, Lorg/eazegraph/lib/charts/BaseBarChart$Graph;->layout(IIII)V

    .line 192
    iget-object v0, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mLegend:Lorg/eazegraph/lib/charts/BaseBarChart$Legend;

    int-to-float v1, p2

    iget v2, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mLegendHeight:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v3, v1, p1, p2}, Lorg/eazegraph/lib/charts/BaseBarChart$Legend;->layout(IIII)V

    .line 194
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/BaseBarChart;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/BaseBarChart;->onDataChanged()V

    .line 197
    :cond_0
    return-void
.end method

.method public setBarMargin(F)V
    .locals 0
    .param p1, "_barMargin"    # F

    .prologue
    .line 156
    iput p1, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mBarMargin:F

    .line 157
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/BaseBarChart;->onDataChanged()V

    .line 158
    return-void
.end method

.method public setBarWidth(F)V
    .locals 0
    .param p1, "_barWidth"    # F

    .prologue
    .line 122
    iput p1, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mBarWidth:F

    .line 123
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/BaseBarChart;->onDataChanged()V

    .line 124
    return-void
.end method

.method public setFixedBarWidth(Z)V
    .locals 0
    .param p1, "_fixedBarWidth"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mFixedBarWidth:Z

    .line 140
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/BaseBarChart;->onDataChanged()V

    .line 141
    return-void
.end method

.method public setOnBarClickedListener(Lorg/eazegraph/lib/communication/IOnBarClickedListener;)V
    .locals 0
    .param p1, "_listener"    # Lorg/eazegraph/lib/communication/IOnBarClickedListener;

    .prologue
    .line 106
    iput-object p1, p0, Lorg/eazegraph/lib/charts/BaseBarChart;->mListener:Lorg/eazegraph/lib/communication/IOnBarClickedListener;

    .line 107
    return-void
.end method
