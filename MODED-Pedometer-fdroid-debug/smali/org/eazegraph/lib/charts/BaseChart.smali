.class public abstract Lorg/eazegraph/lib/charts/BaseChart;
.super Landroid/view/ViewGroup;
.source "BaseChart.java"


# static fields
.field public static final DEF_ANIMATION_TIME:I = 0x7d0

.field public static final DEF_LEGEND_COLOR:I = -0x767677

.field public static final DEF_LEGEND_HEIGHT:F = 58.0f

.field public static final DEF_LEGEND_TEXT_SIZE:F = 12.0f

.field public static final DEF_SHOW_DECIMAL:Z

.field protected static final mFormatter:Ljava/text/NumberFormat;


# instance fields
.field protected mAnimationTime:I

.field protected mBottomPadding:I

.field protected mGraphHeight:I

.field protected mGraphWidth:I

.field protected mHeight:I

.field protected mLeftPadding:I

.field protected mLegendHeight:F

.field protected mLegendTextSize:F

.field protected mLegendTopPadding:F

.field protected mLegendWidth:F

.field protected mMaxFontHeight:F

.field protected mRevealAnimator:Lcom/nineoldandroids/animation/ValueAnimator;

.field protected mRevealValue:F

.field protected mRightPadding:I

.field protected mShowDecimal:Z

.field protected mStartedAnimation:Z

.field protected mTopPadding:I

.field protected mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 220
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lorg/eazegraph/lib/charts/BaseChart;->mFormatter:Ljava/text/NumberFormat;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 245
    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lorg/eazegraph/lib/utils/Utils;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lorg/eazegraph/lib/charts/BaseChart;->mLegendTopPadding:F

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eazegraph/lib/charts/BaseChart;->mRevealAnimator:Lcom/nineoldandroids/animation/ValueAnimator;

    .line 250
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/eazegraph/lib/charts/BaseChart;->mRevealValue:F

    .line 251
    const/16 v0, 0x3e8

    iput v0, p0, Lorg/eazegraph/lib/charts/BaseChart;->mAnimationTime:I

    .line 252
    iput-boolean v1, p0, Lorg/eazegraph/lib/charts/BaseChart;->mStartedAnimation:Z

    .line 50
    const/high16 v0, 0x42680000    # 58.0f

    invoke-static {v0}, Lorg/eazegraph/lib/utils/Utils;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lorg/eazegraph/lib/charts/BaseChart;->mLegendHeight:F

    .line 51
    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lorg/eazegraph/lib/utils/Utils;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lorg/eazegraph/lib/charts/BaseChart;->mLegendTextSize:F

    .line 52
    const/16 v0, 0x7d0

    iput v0, p0, Lorg/eazegraph/lib/charts/BaseChart;->mAnimationTime:I

    .line 53
    iput-boolean v1, p0, Lorg/eazegraph/lib/charts/BaseChart;->mShowDecimal:Z

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 245
    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/eazegraph/lib/utils/Utils;->dpToPx(F)F

    move-result v1

    iput v1, p0, Lorg/eazegraph/lib/charts/BaseChart;->mLegendTopPadding:F

    .line 249
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eazegraph/lib/charts/BaseChart;->mRevealAnimator:Lcom/nineoldandroids/animation/ValueAnimator;

    .line 250
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lorg/eazegraph/lib/charts/BaseChart;->mRevealValue:F

    .line 251
    const/16 v1, 0x3e8

    iput v1, p0, Lorg/eazegraph/lib/charts/BaseChart;->mAnimationTime:I

    .line 252
    iput-boolean v3, p0, Lorg/eazegraph/lib/charts/BaseChart;->mStartedAnimation:Z

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lorg/eazegraph/lib/R$styleable;->BaseChart:[I

    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 81
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v1, Lorg/eazegraph/lib/R$styleable;->BaseChart_egLegendHeight:I

    const/high16 v2, 0x42680000    # 58.0f

    invoke-static {v2}, Lorg/eazegraph/lib/utils/Utils;->dpToPx(F)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lorg/eazegraph/lib/charts/BaseChart;->mLegendHeight:F

    .line 82
    sget v1, Lorg/eazegraph/lib/R$styleable;->BaseChart_egLegendTextSize:I

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/eazegraph/lib/utils/Utils;->dpToPx(F)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lorg/eazegraph/lib/charts/BaseChart;->mLegendTextSize:F

    .line 83
    sget v1, Lorg/eazegraph/lib/R$styleable;->BaseChart_egAnimationTime:I

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lorg/eazegraph/lib/charts/BaseChart;->mAnimationTime:I

    .line 84
    sget v1, Lorg/eazegraph/lib/R$styleable;->BaseChart_egShowDecimal:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lorg/eazegraph/lib/charts/BaseChart;->mShowDecimal:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    return-void

    .line 89
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method


# virtual methods
.method public abstract clearChart()V
.end method

.method public getAnimationTime()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lorg/eazegraph/lib/charts/BaseChart;->mAnimationTime:I

    return v0
.end method

.method public abstract getData()Ljava/util/List;
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

.method public getLegendHeight()F
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lorg/eazegraph/lib/charts/BaseChart;->mLegendHeight:F

    return v0
.end method

.method public getLegendTextSize()F
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lorg/eazegraph/lib/charts/BaseChart;->mLegendTextSize:F

    return v0
.end method

.method protected abstract initializeGraph()V
.end method

.method public isShowDecimal()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lorg/eazegraph/lib/charts/BaseChart;->mShowDecimal:Z

    return v0
.end method

.method protected onDataChanged()V
    .locals 0

    .prologue
    .line 194
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/BaseChart;->invalidate()V

    .line 195
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 166
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 167
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/BaseChart;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lorg/eazegraph/lib/charts/BaseChart;->mLeftPadding:I

    .line 168
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/BaseChart;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lorg/eazegraph/lib/charts/BaseChart;->mTopPadding:I

    .line 169
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/BaseChart;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lorg/eazegraph/lib/charts/BaseChart;->mRightPadding:I

    .line 170
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/BaseChart;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lorg/eazegraph/lib/charts/BaseChart;->mBottomPadding:I

    .line 171
    return-void
.end method

.method public setAnimationTime(I)V
    .locals 0
    .param p1, "_animationTime"    # I

    .prologue
    .line 142
    iput p1, p0, Lorg/eazegraph/lib/charts/BaseChart;->mAnimationTime:I

    .line 143
    return-void
.end method

.method public setLegendHeight(F)V
    .locals 1
    .param p1, "_legendHeight"    # F

    .prologue
    .line 107
    invoke-static {p1}, Lorg/eazegraph/lib/utils/Utils;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lorg/eazegraph/lib/charts/BaseChart;->mLegendHeight:F

    .line 109
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/BaseChart;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/BaseChart;->onDataChanged()V

    .line 111
    :cond_0
    return-void
.end method

.method public setLegendTextSize(F)V
    .locals 1
    .param p1, "_legendTextSize"    # F

    .prologue
    .line 126
    invoke-static {p1}, Lorg/eazegraph/lib/utils/Utils;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lorg/eazegraph/lib/charts/BaseChart;->mLegendTextSize:F

    .line 127
    return-void
.end method

.method public setShowDecimal(Z)V
    .locals 0
    .param p1, "_showDecimal"    # Z

    .prologue
    .line 150
    iput-boolean p1, p0, Lorg/eazegraph/lib/charts/BaseChart;->mShowDecimal:Z

    .line 151
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/BaseChart;->invalidate()V

    .line 152
    return-void
.end method

.method public startAnimation()V
    .locals 4

    .prologue
    .line 177
    iget-object v0, p0, Lorg/eazegraph/lib/charts/BaseChart;->mRevealAnimator:Lcom/nineoldandroids/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eazegraph/lib/charts/BaseChart;->mStartedAnimation:Z

    .line 179
    iget-object v0, p0, Lorg/eazegraph/lib/charts/BaseChart;->mRevealAnimator:Lcom/nineoldandroids/animation/ValueAnimator;

    iget v1, p0, Lorg/eazegraph/lib/charts/BaseChart;->mAnimationTime:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->start()V

    .line 181
    :cond_0
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 213
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/BaseChart;->onDataChanged()V

    .line 214
    return-void
.end method
