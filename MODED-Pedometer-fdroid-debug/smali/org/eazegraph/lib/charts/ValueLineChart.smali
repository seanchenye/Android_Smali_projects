.class public Lorg/eazegraph/lib/charts/ValueLineChart;
.super Lorg/eazegraph/lib/charts/BaseChart;
.source "ValueLineChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eazegraph/lib/charts/ValueLineChart$Legend;,
        Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;,
        Lorg/eazegraph/lib/charts/ValueLineChart$Graph;
    }
.end annotation


# static fields
.field public static final DEF_FIRST_MULTIPLIER:F = 0.33f

.field public static final DEF_INDICATOR_COLOR:I = -0xffff01

.field public static final DEF_INDICATOR_LEFT_PADDING:F = 4.0f

.field public static final DEF_INDICATOR_TEXT_SIZE:F = 15.0f

.field public static final DEF_INDICATOR_TOP_PADDING:F = 4.0f

.field public static final DEF_INDICATOR_WIDTH:F = 2.0f

.field public static final DEF_LEGEND_STROKE:F = 2.0f

.field public static final DEF_LINE_STROKE:F = 5.0f

.field public static final DEF_SHOW_INDICATOR:Z = true

.field public static final DEF_SHOW_STANDARD_VALUE:Z = false

.field public static final DEF_STANDARD_VALUE_COLOR:I = -0xff0100

.field public static final DEF_STANDARD_VALUE_INDICATOR_STROKE:F = 2.0f

.field public static final DEF_USE_CUBIC:Z = false

.field public static final DEF_USE_OVERLAP_FILL:Z = false

.field public static final DEF_X_AXIS_STROKE:F = 2.0f

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mFirstMultiplier:F

.field private mFocusedPoint:Lorg/eazegraph/lib/models/ValueLinePoint;

.field private mGraph:Lorg/eazegraph/lib/charts/ValueLineChart$Graph;

.field private mGraphOverlay:Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;

.field private mHasNegativeValues:Z

.field private mIndicatorColor:I

.field private mIndicatorLeftPadding:F

.field private mIndicatorPaint:Landroid/graphics/Paint;

.field private mIndicatorTextSize:F

.field private mIndicatorTopPadding:F

.field private mIndicatorWidth:F

.field private mLegend:Lorg/eazegraph/lib/charts/ValueLineChart$Legend;

.field private mLegendList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eazegraph/lib/models/LegendModel;",
            ">;"
        }
    .end annotation
.end field

.field private mLegendPaint:Landroid/graphics/Paint;

.field private mLinePaint:Landroid/graphics/Paint;

.field private mLineStroke:F

.field private mListener:Lorg/eazegraph/lib/communication/IOnPointFocusedListener;

.field private mNegativeOffset:F

.field private mNegativeValue:F

.field protected mScale:Landroid/graphics/Matrix;

.field private mSecondMultiplier:F

.field private mSeries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eazegraph/lib/models/ValueLineSeries;",
            ">;"
        }
    .end annotation
.end field

.field private mShowIndicator:Z

.field private mShowStandardValue:Z

.field private mStandardValue:F

.field private mStandardValueColor:I

.field private mStandardValueIndicatorStroke:F

.field private mStandardValueY:F

.field private mTouchedArea:Lorg/eazegraph/lib/models/Point2D;

.field private mUseCubic:Z

.field private mUseCustomLegend:Z

.field private mUseOverlapFill:Z

.field private mUseableGraphHeight:I

.field private mValueTextHeight:F

.field private mXAxisStroke:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1139
    const-class v0, Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eazegraph/lib/charts/ValueLineChart;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x40800000    # 4.0f

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1}, Lorg/eazegraph/lib/charts/BaseChart;-><init>(Landroid/content/Context;)V

    .line 1170
    iput v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mStandardValue:F

    .line 1174
    iput-boolean v2, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mHasNegativeValues:Z

    .line 1175
    iput v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mNegativeValue:F

    .line 1176
    iput v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mNegativeOffset:F

    .line 1178
    iput-object v5, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mListener:Lorg/eazegraph/lib/communication/IOnPointFocusedListener;

    .line 1183
    iput-boolean v2, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mUseCustomLegend:Z

    .line 1184
    new-instance v0, Lorg/eazegraph/lib/models/Point2D;

    invoke-direct {v0, v1, v1}, Lorg/eazegraph/lib/models/Point2D;-><init>(FF)V

    iput-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mTouchedArea:Lorg/eazegraph/lib/models/Point2D;

    .line 1185
    iput-object v5, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mFocusedPoint:Lorg/eazegraph/lib/models/ValueLinePoint;

    .line 1206
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mScale:Landroid/graphics/Matrix;

    .line 63
    iput-boolean v2, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mUseCubic:Z

    .line 64
    iput-boolean v2, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mUseOverlapFill:Z

    .line 65
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lorg/eazegraph/lib/utils/Utils;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mLineStroke:F

    .line 66
    const v0, 0x3ea8f5c3    # 0.33f

    iput v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mFirstMultiplier:F

    .line 67
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mFirstMultiplier:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mSecondMultiplier:F

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mShowIndicator:Z

    .line 69
    invoke-static {v3}, Lorg/eazegraph/lib/utils/Utils;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mIndicatorWidth:F

    .line 70
    const v0, -0xffff01

    iput v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mIndicatorColor:I

    .line 71
    const/high16 v0, 0x41700000    # 15.0f

    invoke-static {v0}, Lorg/eazegraph/lib/utils/Utils;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mIndicatorTextSize:F

    .line 72
    invoke-static {v4}, Lorg/eazegraph/lib/utils/Utils;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mIndicatorLeftPadding:F

    .line 73
    invoke-static {v4}, Lorg/eazegraph/lib/utils/Utils;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mIndicatorTopPadding:F

    .line 74
    iput-boolean v2, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mShowStandardValue:Z

    .line 75
    invoke-static {v3}, Lorg/eazegraph/lib/utils/Utils;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mStandardValueIndicatorStroke:F

    .line 76
    const v0, -0xff0100

    iput v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mStandardValueColor:I

    .line 77
    invoke-static {v3}, Lorg/eazegraph/lib/utils/Utils;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mXAxisStroke:F

    .line 79
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/ValueLineChart;->initializeGraph()V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 97
    invoke-direct {p0, p1, p2}, Lorg/eazegraph/lib/charts/BaseChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1170
    iput v2, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mStandardValue:F

    .line 1174
    iput-boolean v3, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mHasNegativeValues:Z

    .line 1175
    iput v2, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mNegativeValue:F

    .line 1176
    iput v2, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mNegativeOffset:F

    .line 1178
    iput-object v4, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mListener:Lorg/eazegraph/lib/communication/IOnPointFocusedListener;

    .line 1183
    iput-boolean v3, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mUseCustomLegend:Z

    .line 1184
    new-instance v1, Lorg/eazegraph/lib/models/Point2D;

    invoke-direct {v1, v2, v2}, Lorg/eazegraph/lib/models/Point2D;-><init>(FF)V

    iput-object v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mTouchedArea:Lorg/eazegraph/lib/models/Point2D;

    .line 1185
    iput-object v4, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mFocusedPoint:Lorg/eazegraph/lib/models/ValueLinePoint;

    .line 1206
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mScale:Landroid/graphics/Matrix;

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lorg/eazegraph/lib/R$styleable;->ValueLineChart:[I

    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 107
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v1, Lorg/eazegraph/lib/R$styleable;->ValueLineChart_egUseCubic:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mUseCubic:Z

    .line 108
    sget v1, Lorg/eazegraph/lib/R$styleable;->ValueLineChart_egUseOverlapFill:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mUseOverlapFill:Z

    .line 109
    sget v1, Lorg/eazegraph/lib/R$styleable;->ValueLineChart_egLineStroke:I

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lorg/eazegraph/lib/utils/Utils;->dpToPx(F)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mLineStroke:F

    .line 110
    sget v1, Lorg/eazegraph/lib/R$styleable;->ValueLineChart_egCurveSmoothness:I

    const v2, 0x3ea8f5c3    # 0.33f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mFirstMultiplier:F

    .line 111
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mFirstMultiplier:F

    sub-float/2addr v1, v2

    iput v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mSecondMultiplier:F

    .line 112
    sget v1, Lorg/eazegraph/lib/R$styleable;->ValueLineChart_egShowValueIndicator:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mShowIndicator:Z

    .line 113
    sget v1, Lorg/eazegraph/lib/R$styleable;->ValueLineChart_egIndicatorWidth:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/eazegraph/lib/utils/Utils;->dpToPx(F)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mIndicatorWidth:F

    .line 114
    sget v1, Lorg/eazegraph/lib/R$styleable;->ValueLineChart_egIndicatorColor:I

    const v2, -0xffff01

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mIndicatorColor:I

    .line 115
    sget v1, Lorg/eazegraph/lib/R$styleable;->ValueLineChart_egIndicatorWidth:I

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v2}, Lorg/eazegraph/lib/utils/Utils;->dpToPx(F)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mIndicatorTextSize:F

    .line 116
    sget v1, Lorg/eazegraph/lib/R$styleable;->ValueLineChart_egIndicatorLeftPadding:I

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/eazegraph/lib/utils/Utils;->dpToPx(F)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mIndicatorLeftPadding:F

    .line 117
    sget v1, Lorg/eazegraph/lib/R$styleable;->ValueLineChart_egIndicatorTopPadding:I

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/eazegraph/lib/utils/Utils;->dpToPx(F)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mIndicatorTopPadding:F

    .line 118
    sget v1, Lorg/eazegraph/lib/R$styleable;->ValueLineChart_egShowStandardValue:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mShowStandardValue:Z

    .line 119
    sget v1, Lorg/eazegraph/lib/R$styleable;->ValueLineChart_egStandardValueIndicatorStroke:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/eazegraph/lib/utils/Utils;->dpToPx(F)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mStandardValueIndicatorStroke:F

    .line 120
    sget v1, Lorg/eazegraph/lib/R$styleable;->ValueLineChart_egStandardValueColor:I

    const v2, -0xff0100

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mStandardValueColor:I

    .line 121
    sget v1, Lorg/eazegraph/lib/R$styleable;->ValueLineChart_egXAxisStroke:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/eazegraph/lib/utils/Utils;->dpToPx(F)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mXAxisStroke:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 128
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/ValueLineChart;->initializeGraph()V

    .line 129
    return-void

    .line 125
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method static synthetic access$1000(Lorg/eazegraph/lib/charts/ValueLineChart;)F
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/ValueLineChart;

    .prologue
    .line 52
    iget v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mLineStroke:F

    return v0
.end method

.method static synthetic access$1100(Lorg/eazegraph/lib/charts/ValueLineChart;)Z
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/ValueLineChart;

    .prologue
    .line 52
    iget-boolean v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mHasNegativeValues:Z

    return v0
.end method

.method static synthetic access$1200(Lorg/eazegraph/lib/charts/ValueLineChart;)F
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/ValueLineChart;

    .prologue
    .line 52
    iget v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mXAxisStroke:F

    return v0
.end method

.method static synthetic access$1300(Lorg/eazegraph/lib/charts/ValueLineChart;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/ValueLineChart;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mLegendPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/eazegraph/lib/charts/ValueLineChart;)Z
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/ValueLineChart;

    .prologue
    .line 52
    iget-boolean v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mShowIndicator:Z

    return v0
.end method

.method static synthetic access$1500(Lorg/eazegraph/lib/charts/ValueLineChart;)I
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/ValueLineChart;

    .prologue
    .line 52
    iget v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mIndicatorColor:I

    return v0
.end method

.method static synthetic access$1600(Lorg/eazegraph/lib/charts/ValueLineChart;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/ValueLineChart;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mIndicatorPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/eazegraph/lib/charts/ValueLineChart;)F
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/ValueLineChart;

    .prologue
    .line 52
    iget v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mIndicatorWidth:F

    return v0
.end method

.method static synthetic access$1800(Lorg/eazegraph/lib/charts/ValueLineChart;)Lorg/eazegraph/lib/models/Point2D;
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/ValueLineChart;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mTouchedArea:Lorg/eazegraph/lib/models/Point2D;

    return-object v0
.end method

.method static synthetic access$1802(Lorg/eazegraph/lib/charts/ValueLineChart;Lorg/eazegraph/lib/models/Point2D;)Lorg/eazegraph/lib/models/Point2D;
    .locals 0
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/ValueLineChart;
    .param p1, "x1"    # Lorg/eazegraph/lib/models/Point2D;

    .prologue
    .line 52
    iput-object p1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mTouchedArea:Lorg/eazegraph/lib/models/Point2D;

    return-object p1
.end method

.method static synthetic access$1900(Lorg/eazegraph/lib/charts/ValueLineChart;)Lorg/eazegraph/lib/models/ValueLinePoint;
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/ValueLineChart;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mFocusedPoint:Lorg/eazegraph/lib/models/ValueLinePoint;

    return-object v0
.end method

.method static synthetic access$1902(Lorg/eazegraph/lib/charts/ValueLineChart;Lorg/eazegraph/lib/models/ValueLinePoint;)Lorg/eazegraph/lib/models/ValueLinePoint;
    .locals 0
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/ValueLineChart;
    .param p1, "x1"    # Lorg/eazegraph/lib/models/ValueLinePoint;

    .prologue
    .line 52
    iput-object p1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mFocusedPoint:Lorg/eazegraph/lib/models/ValueLinePoint;

    return-object p1
.end method

.method static synthetic access$2000(Lorg/eazegraph/lib/charts/ValueLineChart;)F
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/ValueLineChart;

    .prologue
    .line 52
    iget v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mValueTextHeight:F

    return v0
.end method

.method static synthetic access$2100(Lorg/eazegraph/lib/charts/ValueLineChart;)F
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/ValueLineChart;

    .prologue
    .line 52
    iget v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mIndicatorTopPadding:F

    return v0
.end method

.method static synthetic access$2200(Lorg/eazegraph/lib/charts/ValueLineChart;)Z
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/ValueLineChart;

    .prologue
    .line 52
    iget-boolean v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mShowStandardValue:Z

    return v0
.end method

.method static synthetic access$2300(Lorg/eazegraph/lib/charts/ValueLineChart;)I
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/ValueLineChart;

    .prologue
    .line 52
    iget v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mStandardValueColor:I

    return v0
.end method

.method static synthetic access$2400(Lorg/eazegraph/lib/charts/ValueLineChart;)F
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/ValueLineChart;

    .prologue
    .line 52
    iget v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mStandardValueIndicatorStroke:F

    return v0
.end method

.method static synthetic access$2500(Lorg/eazegraph/lib/charts/ValueLineChart;)F
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/ValueLineChart;

    .prologue
    .line 52
    iget v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mStandardValueY:F

    return v0
.end method

.method static synthetic access$2600(Lorg/eazegraph/lib/charts/ValueLineChart;)V
    .locals 0
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/ValueLineChart;

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/eazegraph/lib/charts/ValueLineChart;->calculateValueTextHeight()V

    return-void
.end method

.method static synthetic access$2700(Lorg/eazegraph/lib/charts/ValueLineChart;)Lorg/eazegraph/lib/communication/IOnPointFocusedListener;
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/ValueLineChart;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mListener:Lorg/eazegraph/lib/communication/IOnPointFocusedListener;

    return-object v0
.end method

.method static synthetic access$2800(Lorg/eazegraph/lib/charts/ValueLineChart;)Lorg/eazegraph/lib/charts/ValueLineChart$Legend;
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/ValueLineChart;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mLegend:Lorg/eazegraph/lib/charts/ValueLineChart$Legend;

    return-object v0
.end method

.method static synthetic access$2900(Lorg/eazegraph/lib/charts/ValueLineChart;)Z
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/ValueLineChart;

    .prologue
    .line 52
    iget-boolean v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mUseCustomLegend:Z

    return v0
.end method

.method static synthetic access$300(Lorg/eazegraph/lib/charts/ValueLineChart;)I
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/ValueLineChart;

    .prologue
    .line 52
    iget v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mUseableGraphHeight:I

    return v0
.end method

.method static synthetic access$3000(Lorg/eazegraph/lib/charts/ValueLineChart;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/ValueLineChart;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mLegendList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lorg/eazegraph/lib/charts/ValueLineChart;I)I
    .locals 0
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/ValueLineChart;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mUseableGraphHeight:I

    return p1
.end method

.method static synthetic access$400(Lorg/eazegraph/lib/charts/ValueLineChart;)F
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/ValueLineChart;

    .prologue
    .line 52
    iget v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mNegativeOffset:F

    return v0
.end method

.method static synthetic access$500(Lorg/eazegraph/lib/charts/ValueLineChart;)Lorg/eazegraph/lib/charts/ValueLineChart$Graph;
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/ValueLineChart;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mGraph:Lorg/eazegraph/lib/charts/ValueLineChart$Graph;

    return-object v0
.end method

.method static synthetic access$700(Lorg/eazegraph/lib/charts/ValueLineChart;)Z
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/ValueLineChart;

    .prologue
    .line 52
    iget-boolean v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mUseOverlapFill:Z

    return v0
.end method

.method static synthetic access$800(Lorg/eazegraph/lib/charts/ValueLineChart;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/ValueLineChart;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mLinePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$900(Lorg/eazegraph/lib/charts/ValueLineChart;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/ValueLineChart;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mSeries:Ljava/util/List;

    return-object v0
.end method

.method private calculatePointDiff(Lorg/eazegraph/lib/models/Point2D;Lorg/eazegraph/lib/models/Point2D;Lorg/eazegraph/lib/models/Point2D;F)V
    .locals 4
    .param p1, "_P1"    # Lorg/eazegraph/lib/models/Point2D;
    .param p2, "_P2"    # Lorg/eazegraph/lib/models/Point2D;
    .param p3, "_Result"    # Lorg/eazegraph/lib/models/Point2D;
    .param p4, "_Multiplier"    # F

    .prologue
    .line 765
    invoke-virtual {p2}, Lorg/eazegraph/lib/models/Point2D;->getX()F

    move-result v2

    invoke-virtual {p1}, Lorg/eazegraph/lib/models/Point2D;->getX()F

    move-result v3

    sub-float v0, v2, v3

    .line 766
    .local v0, "diffX":F
    invoke-virtual {p2}, Lorg/eazegraph/lib/models/Point2D;->getY()F

    move-result v2

    invoke-virtual {p1}, Lorg/eazegraph/lib/models/Point2D;->getY()F

    move-result v3

    sub-float v1, v2, v3

    .line 767
    .local v1, "diffY":F
    invoke-virtual {p1}, Lorg/eazegraph/lib/models/Point2D;->getX()F

    move-result v2

    mul-float v3, v0, p4

    add-float/2addr v2, v3

    invoke-virtual {p3, v2}, Lorg/eazegraph/lib/models/Point2D;->setX(F)V

    .line 768
    invoke-virtual {p1}, Lorg/eazegraph/lib/models/Point2D;->getY()F

    move-result v2

    mul-float v3, v1, p4

    add-float/2addr v2, v3

    invoke-virtual {p3, v2}, Lorg/eazegraph/lib/models/Point2D;->setY(F)V

    .line 769
    return-void
.end method

.method private calculateValueTextHeight()V
    .locals 6

    .prologue
    .line 775
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 776
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v2, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mFocusedPoint:Lorg/eazegraph/lib/models/ValueLinePoint;

    invoke-virtual {v2}, Lorg/eazegraph/lib/models/ValueLinePoint;->getValue()F

    move-result v2

    iget-boolean v3, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mShowDecimal:Z

    invoke-static {v2, v3}, Lorg/eazegraph/lib/utils/Utils;->getFloatString(FZ)Ljava/lang/String;

    move-result-object v1

    .line 777
    .local v1, "str":Ljava/lang/String;
    iget-object v2, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mIndicatorPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 778
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mValueTextHeight:F

    .line 780
    iget-object v2, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mFocusedPoint:Lorg/eazegraph/lib/models/ValueLinePoint;

    invoke-virtual {v2}, Lorg/eazegraph/lib/models/ValueLinePoint;->getCoordinates()Lorg/eazegraph/lib/models/Point2D;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eazegraph/lib/models/Point2D;->getX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mIndicatorLeftPadding:F

    add-float/2addr v2, v3

    iget v3, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mGraphWidth:I

    iget v4, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mLeftPadding:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 781
    iget-object v2, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mGraphOverlay:Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;

    iget-object v3, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mFocusedPoint:Lorg/eazegraph/lib/models/ValueLinePoint;

    invoke-virtual {v3}, Lorg/eazegraph/lib/models/ValueLinePoint;->getCoordinates()Lorg/eazegraph/lib/models/Point2D;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eazegraph/lib/models/Point2D;->getX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mIndicatorLeftPadding:F

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->access$602(Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;I)I

    .line 786
    :goto_0
    return-void

    .line 784
    :cond_0
    iget-object v2, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mGraphOverlay:Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;

    iget-object v3, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mFocusedPoint:Lorg/eazegraph/lib/models/ValueLinePoint;

    invoke-virtual {v3}, Lorg/eazegraph/lib/models/ValueLinePoint;->getCoordinates()Lorg/eazegraph/lib/models/Point2D;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eazegraph/lib/models/Point2D;->getX()F

    move-result v3

    iget v4, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mIndicatorLeftPadding:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->access$602(Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;I)I

    goto :goto_0
.end method


# virtual methods
.method public addLegend(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/eazegraph/lib/models/LegendModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "_Legend":Ljava/util/List;, "Ljava/util/List<Lorg/eazegraph/lib/models/LegendModel;>;"
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mLegendList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mUseCustomLegend:Z

    .line 155
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/ValueLineChart;->onLegendDataChanged()V

    .line 156
    return-void
.end method

.method public addSeries(Lorg/eazegraph/lib/models/ValueLineSeries;)V
    .locals 1
    .param p1, "_Series"    # Lorg/eazegraph/lib/models/ValueLineSeries;

    .prologue
    .line 136
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mSeries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/ValueLineChart;->onDataChanged()V

    .line 138
    return-void
.end method

.method public addStandardValue(F)V
    .locals 0
    .param p1, "_standardValue"    # F

    .prologue
    .line 165
    iput p1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mStandardValue:F

    .line 166
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/ValueLineChart;->onDataChanged()V

    .line 167
    return-void
.end method

.method public clearChart()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mSeries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 146
    return-void
.end method

.method public getData()Ljava/util/List;
    .locals 2
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
    .line 793
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mSeries:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eazegraph/lib/models/ValueLineSeries;

    invoke-virtual {v0}, Lorg/eazegraph/lib/models/ValueLineSeries;->getSeries()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDataSeries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/eazegraph/lib/models/ValueLineSeries;",
            ">;"
        }
    .end annotation

    .prologue
    .line 799
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mSeries:Ljava/util/List;

    return-object v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mIndicatorColor:I

    return v0
.end method

.method public getIndicatorLeftPadding()F
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mIndicatorLeftPadding:F

    return v0
.end method

.method public getIndicatorTextSize()F
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mIndicatorTextSize:F

    return v0
.end method

.method public getIndicatorTopPadding()F
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mIndicatorTopPadding:F

    return v0
.end method

.method public getIndicatorWidth()F
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mIndicatorWidth:F

    return v0
.end method

.method public getLineStroke()F
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mLineStroke:F

    return v0
.end method

.method public getStandardValueColor()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mStandardValueColor:I

    return v0
.end method

.method public getStandardValueIndicatorStroke()F
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mStandardValueIndicatorStroke:F

    return v0
.end method

.method public getXAxisStroke()F
    .locals 1

    .prologue
    .line 387
    iget v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mXAxisStroke:F

    return v0
.end method

.method protected initializeGraph()V
    .locals 8

    .prologue
    const v7, 0x3fb33333    # 1.4f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v4, 0x1

    const v3, 0x4019999a    # 2.4f

    .line 445
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mSeries:Ljava/util/List;

    .line 446
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mLegendList:Ljava/util/List;

    .line 448
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mLinePaint:Landroid/graphics/Paint;

    .line 449
    iget-object v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mLinePaint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mLineStroke:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 451
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mLegendPaint:Landroid/graphics/Paint;

    .line 452
    iget-object v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mLegendPaint:Landroid/graphics/Paint;

    const v2, -0x767677

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 453
    iget-object v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mLegendPaint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mLegendTextSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 454
    iget-object v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mLegendPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 455
    iget-object v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mLegendPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 457
    iget-object v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mLegendPaint:Landroid/graphics/Paint;

    invoke-static {v1}, Lorg/eazegraph/lib/utils/Utils;->calculateMaxTextHeight(Landroid/graphics/Paint;)F

    move-result v1

    iput v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mMaxFontHeight:F

    .line 459
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mIndicatorPaint:Landroid/graphics/Paint;

    .line 460
    iget-object v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mIndicatorPaint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mIndicatorColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 461
    iget-object v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mIndicatorPaint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mIndicatorTextSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 462
    iget-object v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mIndicatorPaint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mIndicatorWidth:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 463
    iget-object v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mIndicatorPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 465
    new-instance v1, Lorg/eazegraph/lib/charts/ValueLineChart$Graph;

    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/ValueLineChart;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, v5}, Lorg/eazegraph/lib/charts/ValueLineChart$Graph;-><init>(Lorg/eazegraph/lib/charts/ValueLineChart;Landroid/content/Context;Lorg/eazegraph/lib/charts/ValueLineChart$1;)V

    iput-object v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mGraph:Lorg/eazegraph/lib/charts/ValueLineChart$Graph;

    .line 466
    iget-object v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mGraph:Lorg/eazegraph/lib/charts/ValueLineChart$Graph;

    invoke-virtual {p0, v1}, Lorg/eazegraph/lib/charts/ValueLineChart;->addView(Landroid/view/View;)V

    .line 468
    new-instance v1, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;

    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/ValueLineChart;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, v5}, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;-><init>(Lorg/eazegraph/lib/charts/ValueLineChart;Landroid/content/Context;Lorg/eazegraph/lib/charts/ValueLineChart$1;)V

    iput-object v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mGraphOverlay:Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;

    .line 469
    iget-object v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mGraphOverlay:Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;

    invoke-virtual {p0, v1}, Lorg/eazegraph/lib/charts/ValueLineChart;->addView(Landroid/view/View;)V

    .line 471
    new-instance v1, Lorg/eazegraph/lib/charts/ValueLineChart$Legend;

    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/ValueLineChart;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, v5}, Lorg/eazegraph/lib/charts/ValueLineChart$Legend;-><init>(Lorg/eazegraph/lib/charts/ValueLineChart;Landroid/content/Context;Lorg/eazegraph/lib/charts/ValueLineChart$1;)V

    iput-object v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mLegend:Lorg/eazegraph/lib/charts/ValueLineChart$Legend;

    .line 472
    iget-object v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mLegend:Lorg/eazegraph/lib/charts/ValueLineChart$Legend;

    invoke-virtual {p0, v1}, Lorg/eazegraph/lib/charts/ValueLineChart;->addView(Landroid/view/View;)V

    .line 474
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mRevealAnimator:Lcom/nineoldandroids/animation/ValueAnimator;

    .line 475
    iget-object v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mRevealAnimator:Lcom/nineoldandroids/animation/ValueAnimator;

    new-instance v2, Lorg/eazegraph/lib/charts/ValueLineChart$1;

    invoke-direct {v2, p0}, Lorg/eazegraph/lib/charts/ValueLineChart$1;-><init>(Lorg/eazegraph/lib/charts/ValueLineChart;)V

    invoke-virtual {v1, v2}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 486
    iget-object v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mRevealAnimator:Lcom/nineoldandroids/animation/ValueAnimator;

    new-instance v2, Lorg/eazegraph/lib/charts/ValueLineChart$2;

    invoke-direct {v2, p0}, Lorg/eazegraph/lib/charts/ValueLineChart$2;-><init>(Lorg/eazegraph/lib/charts/ValueLineChart;)V

    invoke-virtual {v1, v2}, Lcom/nineoldandroids/animation/ValueAnimator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 507
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/ValueLineChart;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 508
    new-instance v0, Lorg/eazegraph/lib/models/ValueLineSeries;

    invoke-direct {v0}, Lorg/eazegraph/lib/models/ValueLineSeries;-><init>()V

    .line 509
    .local v0, "series1":Lorg/eazegraph/lib/models/ValueLineSeries;
    const v1, -0x9c3450

    invoke-virtual {v0, v1}, Lorg/eazegraph/lib/models/ValueLineSeries;->setColor(I)V

    .line 511
    new-instance v1, Lorg/eazegraph/lib/models/ValueLinePoint;

    invoke-direct {v1, v7}, Lorg/eazegraph/lib/models/ValueLinePoint;-><init>(F)V

    invoke-virtual {v0, v1}, Lorg/eazegraph/lib/models/ValueLineSeries;->addPoint(Lorg/eazegraph/lib/models/ValueLinePoint;)V

    .line 512
    new-instance v1, Lorg/eazegraph/lib/models/ValueLinePoint;

    const v2, 0x408ccccd    # 4.4f

    invoke-direct {v1, v2}, Lorg/eazegraph/lib/models/ValueLinePoint;-><init>(F)V

    invoke-virtual {v0, v1}, Lorg/eazegraph/lib/models/ValueLineSeries;->addPoint(Lorg/eazegraph/lib/models/ValueLinePoint;)V

    .line 513
    new-instance v1, Lorg/eazegraph/lib/models/ValueLinePoint;

    invoke-direct {v1, v3}, Lorg/eazegraph/lib/models/ValueLinePoint;-><init>(F)V

    invoke-virtual {v0, v1}, Lorg/eazegraph/lib/models/ValueLineSeries;->addPoint(Lorg/eazegraph/lib/models/ValueLinePoint;)V

    .line 514
    new-instance v1, Lorg/eazegraph/lib/models/ValueLinePoint;

    const v2, 0x404ccccd    # 3.2f

    invoke-direct {v1, v2}, Lorg/eazegraph/lib/models/ValueLinePoint;-><init>(F)V

    invoke-virtual {v0, v1}, Lorg/eazegraph/lib/models/ValueLineSeries;->addPoint(Lorg/eazegraph/lib/models/ValueLinePoint;)V

    .line 515
    new-instance v1, Lorg/eazegraph/lib/models/ValueLinePoint;

    const v2, 0x40266666    # 2.6f

    invoke-direct {v1, v2}, Lorg/eazegraph/lib/models/ValueLinePoint;-><init>(F)V

    invoke-virtual {v0, v1}, Lorg/eazegraph/lib/models/ValueLineSeries;->addPoint(Lorg/eazegraph/lib/models/ValueLinePoint;)V

    .line 516
    new-instance v1, Lorg/eazegraph/lib/models/ValueLinePoint;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-direct {v1, v2}, Lorg/eazegraph/lib/models/ValueLinePoint;-><init>(F)V

    invoke-virtual {v0, v1}, Lorg/eazegraph/lib/models/ValueLineSeries;->addPoint(Lorg/eazegraph/lib/models/ValueLinePoint;)V

    .line 517
    new-instance v1, Lorg/eazegraph/lib/models/ValueLinePoint;

    const/high16 v2, 0x40600000    # 3.5f

    invoke-direct {v1, v2}, Lorg/eazegraph/lib/models/ValueLinePoint;-><init>(F)V

    invoke-virtual {v0, v1}, Lorg/eazegraph/lib/models/ValueLineSeries;->addPoint(Lorg/eazegraph/lib/models/ValueLinePoint;)V

    .line 518
    new-instance v1, Lorg/eazegraph/lib/models/ValueLinePoint;

    invoke-direct {v1, v3}, Lorg/eazegraph/lib/models/ValueLinePoint;-><init>(F)V

    invoke-virtual {v0, v1}, Lorg/eazegraph/lib/models/ValueLineSeries;->addPoint(Lorg/eazegraph/lib/models/ValueLinePoint;)V

    .line 519
    new-instance v1, Lorg/eazegraph/lib/models/ValueLinePoint;

    const v2, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v2}, Lorg/eazegraph/lib/models/ValueLinePoint;-><init>(F)V

    invoke-virtual {v0, v1}, Lorg/eazegraph/lib/models/ValueLineSeries;->addPoint(Lorg/eazegraph/lib/models/ValueLinePoint;)V

    .line 520
    new-instance v1, Lorg/eazegraph/lib/models/ValueLinePoint;

    const v2, 0x4059999a    # 3.4f

    invoke-direct {v1, v2}, Lorg/eazegraph/lib/models/ValueLinePoint;-><init>(F)V

    invoke-virtual {v0, v1}, Lorg/eazegraph/lib/models/ValueLineSeries;->addPoint(Lorg/eazegraph/lib/models/ValueLinePoint;)V

    .line 521
    new-instance v1, Lorg/eazegraph/lib/models/ValueLinePoint;

    const/high16 v2, 0x40200000    # 2.5f

    invoke-direct {v1, v2}, Lorg/eazegraph/lib/models/ValueLinePoint;-><init>(F)V

    invoke-virtual {v0, v1}, Lorg/eazegraph/lib/models/ValueLineSeries;->addPoint(Lorg/eazegraph/lib/models/ValueLinePoint;)V

    .line 522
    new-instance v1, Lorg/eazegraph/lib/models/ValueLinePoint;

    invoke-direct {v1, v6}, Lorg/eazegraph/lib/models/ValueLinePoint;-><init>(F)V

    invoke-virtual {v0, v1}, Lorg/eazegraph/lib/models/ValueLineSeries;->addPoint(Lorg/eazegraph/lib/models/ValueLinePoint;)V

    .line 523
    new-instance v1, Lorg/eazegraph/lib/models/ValueLinePoint;

    const v2, 0x40866666    # 4.2f

    invoke-direct {v1, v2}, Lorg/eazegraph/lib/models/ValueLinePoint;-><init>(F)V

    invoke-virtual {v0, v1}, Lorg/eazegraph/lib/models/ValueLineSeries;->addPoint(Lorg/eazegraph/lib/models/ValueLinePoint;)V

    .line 524
    new-instance v1, Lorg/eazegraph/lib/models/ValueLinePoint;

    invoke-direct {v1, v3}, Lorg/eazegraph/lib/models/ValueLinePoint;-><init>(F)V

    invoke-virtual {v0, v1}, Lorg/eazegraph/lib/models/ValueLineSeries;->addPoint(Lorg/eazegraph/lib/models/ValueLinePoint;)V

    .line 525
    new-instance v1, Lorg/eazegraph/lib/models/ValueLinePoint;

    const v2, 0x40666666    # 3.6f

    invoke-direct {v1, v2}, Lorg/eazegraph/lib/models/ValueLinePoint;-><init>(F)V

    invoke-virtual {v0, v1}, Lorg/eazegraph/lib/models/ValueLineSeries;->addPoint(Lorg/eazegraph/lib/models/ValueLinePoint;)V

    .line 526
    new-instance v1, Lorg/eazegraph/lib/models/ValueLinePoint;

    invoke-direct {v1, v6}, Lorg/eazegraph/lib/models/ValueLinePoint;-><init>(F)V

    invoke-virtual {v0, v1}, Lorg/eazegraph/lib/models/ValueLineSeries;->addPoint(Lorg/eazegraph/lib/models/ValueLinePoint;)V

    .line 527
    new-instance v1, Lorg/eazegraph/lib/models/ValueLinePoint;

    const/high16 v2, 0x40200000    # 2.5f

    invoke-direct {v1, v2}, Lorg/eazegraph/lib/models/ValueLinePoint;-><init>(F)V

    invoke-virtual {v0, v1}, Lorg/eazegraph/lib/models/ValueLineSeries;->addPoint(Lorg/eazegraph/lib/models/ValueLinePoint;)V

    .line 528
    new-instance v1, Lorg/eazegraph/lib/models/ValueLinePoint;

    invoke-direct {v1, v7}, Lorg/eazegraph/lib/models/ValueLinePoint;-><init>(F)V

    invoke-virtual {v0, v1}, Lorg/eazegraph/lib/models/ValueLineSeries;->addPoint(Lorg/eazegraph/lib/models/ValueLinePoint;)V

    .line 529
    invoke-virtual {p0, v0}, Lorg/eazegraph/lib/charts/ValueLineChart;->addSeries(Lorg/eazegraph/lib/models/ValueLineSeries;)V

    .line 531
    .end local v0    # "series1":Lorg/eazegraph/lib/models/ValueLineSeries;
    :cond_0
    return-void

    .line 474
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public isShowIndicator()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mShowIndicator:Z

    return v0
.end method

.method public isShowStandardValue()Z
    .locals 1

    .prologue
    .line 336
    iget-boolean v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mShowStandardValue:Z

    return v0
.end method

.method public isUseCubic()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mUseCubic:Z

    return v0
.end method

.method public isUseOverlapFill()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mUseOverlapFill:Z

    return v0
.end method

.method protected onDataChanged()V
    .locals 29

    .prologue
    .line 543
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mSeries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_14

    .line 544
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mSeries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v23

    .line 545
    .local v23, "seriesCount":I
    const/16 v20, 0x0

    .line 546
    .local v20, "maxValue":F
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mNegativeValue:F

    .line 547
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mNegativeOffset:F

    .line 548
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mHasNegativeValues:Z

    .line 551
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mSeries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/eazegraph/lib/models/ValueLineSeries;

    .line 552
    .local v22, "series":Lorg/eazegraph/lib/models/ValueLineSeries;
    invoke-virtual/range {v22 .. v22}, Lorg/eazegraph/lib/models/ValueLineSeries;->getSeries()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/eazegraph/lib/models/ValueLinePoint;

    .line 553
    .local v21, "point":Lorg/eazegraph/lib/models/ValueLinePoint;
    invoke-virtual/range {v21 .. v21}, Lorg/eazegraph/lib/models/ValueLinePoint;->getValue()F

    move-result v5

    cmpl-float v5, v5, v20

    if-lez v5, :cond_2

    .line 554
    invoke-virtual/range {v21 .. v21}, Lorg/eazegraph/lib/models/ValueLinePoint;->getValue()F

    move-result v20

    .line 555
    :cond_2
    invoke-virtual/range {v21 .. v21}, Lorg/eazegraph/lib/models/ValueLinePoint;->getValue()F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mNegativeValue:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 556
    invoke-virtual/range {v21 .. v21}, Lorg/eazegraph/lib/models/ValueLinePoint;->getValue()F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mNegativeValue:F

    goto :goto_0

    .line 561
    .end local v21    # "point":Lorg/eazegraph/lib/models/ValueLinePoint;
    .end local v22    # "series":Lorg/eazegraph/lib/models/ValueLineSeries;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mShowStandardValue:Z

    if-eqz v3, :cond_4

    .line 562
    move-object/from16 v0, p0

    iget v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mStandardValue:F

    cmpl-float v3, v3, v20

    if-lez v3, :cond_4

    .line 563
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mStandardValue:F

    move/from16 v20, v0

    .line 568
    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mNegativeValue:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    .line 569
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mHasNegativeValues:Z

    .line 570
    move-object/from16 v0, p0

    iget v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mNegativeValue:F

    const/high16 v4, -0x40800000    # -1.0f

    mul-float/2addr v3, v4

    add-float v20, v20, v3

    .line 573
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mUseableGraphHeight:I

    int-to-float v3, v3

    div-float v17, v3, v20

    .line 576
    .local v17, "heightMultiplier":F
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mHasNegativeValues:Z

    if-eqz v3, :cond_6

    .line 577
    move-object/from16 v0, p0

    iget v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mNegativeValue:F

    const/high16 v4, -0x40800000    # -1.0f

    mul-float/2addr v3, v4

    mul-float v3, v3, v17

    move-object/from16 v0, p0

    iput v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mNegativeOffset:F

    .line 581
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mShowStandardValue:Z

    if-eqz v3, :cond_7

    .line 582
    move-object/from16 v0, p0

    iget v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mUseableGraphHeight:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mTopPadding:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mStandardValue:F

    mul-float v4, v4, v17

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mStandardValueY:F

    .line 585
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mSeries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_1
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/eazegraph/lib/models/ValueLineSeries;

    .line 587
    .restart local v22    # "series":Lorg/eazegraph/lib/models/ValueLineSeries;
    invoke-virtual/range {v22 .. v22}, Lorg/eazegraph/lib/models/ValueLineSeries;->getSeries()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v24

    .line 590
    .local v24, "seriesPointCount":I
    const/4 v3, 0x1

    move/from16 v0, v24

    if-gt v0, v3, :cond_8

    .line 591
    sget-object v3, Lorg/eazegraph/lib/charts/ValueLineChart;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "More than one point should be available!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 595
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mGraphWidth:I

    int-to-float v3, v3

    move/from16 v0, v24

    int-to-float v4, v0

    div-float v27, v3, v4

    .line 596
    .local v27, "widthOffset":F
    move/from16 v0, v24

    int-to-float v3, v0

    div-float v3, v27, v3

    add-float v27, v27, v3

    .line 597
    const/4 v13, 0x0

    .line 598
    .local v13, "currentOffset":F
    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/eazegraph/lib/models/ValueLineSeries;->setWidthOffset(F)V

    .line 601
    move v15, v13

    .line 602
    .local v15, "firstX":F
    move-object/from16 v0, p0

    iget v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mUseableGraphHeight:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mTopPadding:I

    add-int/2addr v3, v4

    int-to-float v4, v3

    invoke-virtual/range {v22 .. v22}, Lorg/eazegraph/lib/models/ValueLineSeries;->getSeries()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eazegraph/lib/models/ValueLinePoint;

    invoke-virtual {v3}, Lorg/eazegraph/lib/models/ValueLinePoint;->getValue()F

    move-result v3

    mul-float v3, v3, v17

    sub-float v16, v4, v3

    .line 604
    .local v16, "firstY":F
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 605
    .local v2, "path":Landroid/graphics/Path;
    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 606
    invoke-virtual/range {v22 .. v22}, Lorg/eazegraph/lib/models/ValueLineSeries;->getSeries()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eazegraph/lib/models/ValueLinePoint;

    new-instance v4, Lorg/eazegraph/lib/models/Point2D;

    move/from16 v0, v16

    invoke-direct {v4, v15, v0}, Lorg/eazegraph/lib/models/Point2D;-><init>(FF)V

    invoke-virtual {v3, v4}, Lorg/eazegraph/lib/models/ValueLinePoint;->setCoordinates(Lorg/eazegraph/lib/models/Point2D;)V

    .line 610
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mUseCubic:Z

    if-eqz v3, :cond_d

    .line 611
    new-instance v9, Lorg/eazegraph/lib/models/Point2D;

    invoke-direct {v9}, Lorg/eazegraph/lib/models/Point2D;-><init>()V

    .line 612
    .local v9, "P1":Lorg/eazegraph/lib/models/Point2D;
    new-instance v10, Lorg/eazegraph/lib/models/Point2D;

    invoke-direct {v10}, Lorg/eazegraph/lib/models/Point2D;-><init>()V

    .line 613
    .local v10, "P2":Lorg/eazegraph/lib/models/Point2D;
    new-instance v11, Lorg/eazegraph/lib/models/Point2D;

    invoke-direct {v11}, Lorg/eazegraph/lib/models/Point2D;-><init>()V

    .line 615
    .local v11, "P3":Lorg/eazegraph/lib/models/Point2D;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v24

    if-ge v0, v1, :cond_9

    .line 618
    sub-int v3, v24, v18

    const/4 v4, 0x3

    if-ge v3, v4, :cond_c

    .line 619
    invoke-virtual {v9, v13}, Lorg/eazegraph/lib/models/Point2D;->setX(F)V

    .line 620
    move-object/from16 v0, p0

    iget v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mUseableGraphHeight:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mTopPadding:I

    add-int/2addr v3, v4

    int-to-float v4, v3

    invoke-virtual/range {v22 .. v22}, Lorg/eazegraph/lib/models/ValueLineSeries;->getSeries()Ljava/util/List;

    move-result-object v3

    move/from16 v0, v18

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eazegraph/lib/models/ValueLinePoint;

    invoke-virtual {v3}, Lorg/eazegraph/lib/models/ValueLinePoint;->getValue()F

    move-result v3

    mul-float v3, v3, v17

    sub-float v3, v4, v3

    invoke-virtual {v9, v3}, Lorg/eazegraph/lib/models/Point2D;->setY(F)V

    .line 622
    move-object/from16 v0, p0

    iget v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mGraphWidth:I

    int-to-float v3, v3

    invoke-virtual {v10, v3}, Lorg/eazegraph/lib/models/Point2D;->setX(F)V

    .line 623
    move-object/from16 v0, p0

    iget v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mUseableGraphHeight:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mTopPadding:I

    add-int/2addr v3, v4

    int-to-float v4, v3

    invoke-virtual/range {v22 .. v22}, Lorg/eazegraph/lib/models/ValueLineSeries;->getSeries()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v5, v18, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eazegraph/lib/models/ValueLinePoint;

    invoke-virtual {v3}, Lorg/eazegraph/lib/models/ValueLinePoint;->getValue()F

    move-result v3

    mul-float v3, v3, v17

    sub-float v3, v4, v3

    invoke-virtual {v10, v3}, Lorg/eazegraph/lib/models/Point2D;->setY(F)V

    .line 624
    move-object/from16 v0, p0

    iget v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mSecondMultiplier:F

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10, v9, v3}, Lorg/eazegraph/lib/charts/ValueLineChart;->calculatePointDiff(Lorg/eazegraph/lib/models/Point2D;Lorg/eazegraph/lib/models/Point2D;Lorg/eazegraph/lib/models/Point2D;F)V

    .line 626
    move-object/from16 v0, p0

    iget v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mGraphWidth:I

    int-to-float v3, v3

    invoke-virtual {v11, v3}, Lorg/eazegraph/lib/models/Point2D;->setX(F)V

    .line 627
    move-object/from16 v0, p0

    iget v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mUseableGraphHeight:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mTopPadding:I

    add-int/2addr v3, v4

    int-to-float v4, v3

    invoke-virtual/range {v22 .. v22}, Lorg/eazegraph/lib/models/ValueLineSeries;->getSeries()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v5, v18, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eazegraph/lib/models/ValueLinePoint;

    invoke-virtual {v3}, Lorg/eazegraph/lib/models/ValueLinePoint;->getValue()F

    move-result v3

    mul-float v3, v3, v17

    sub-float v3, v4, v3

    invoke-virtual {v11, v3}, Lorg/eazegraph/lib/models/Point2D;->setY(F)V

    .line 628
    move-object/from16 v0, p0

    iget v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mFirstMultiplier:F

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v11, v3}, Lorg/eazegraph/lib/charts/ValueLineChart;->calculatePointDiff(Lorg/eazegraph/lib/models/Point2D;Lorg/eazegraph/lib/models/Point2D;Lorg/eazegraph/lib/models/Point2D;F)V

    .line 630
    invoke-virtual {v9}, Lorg/eazegraph/lib/models/Point2D;->getX()F

    move-result v3

    invoke-virtual {v9}, Lorg/eazegraph/lib/models/Point2D;->getY()F

    move-result v4

    invoke-virtual {v10}, Lorg/eazegraph/lib/models/Point2D;->getX()F

    move-result v5

    invoke-virtual {v10}, Lorg/eazegraph/lib/models/Point2D;->getY()F

    move-result v6

    invoke-virtual {v11}, Lorg/eazegraph/lib/models/Point2D;->getX()F

    move-result v7

    invoke-virtual {v11}, Lorg/eazegraph/lib/models/Point2D;->getY()F

    move-result v8

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 631
    invoke-virtual/range {v22 .. v22}, Lorg/eazegraph/lib/models/ValueLineSeries;->getSeries()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, v18, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eazegraph/lib/models/ValueLinePoint;

    new-instance v4, Lorg/eazegraph/lib/models/Point2D;

    invoke-virtual {v10}, Lorg/eazegraph/lib/models/Point2D;->getX()F

    move-result v5

    invoke-virtual {v10}, Lorg/eazegraph/lib/models/Point2D;->getY()F

    move-result v6

    invoke-direct {v4, v5, v6}, Lorg/eazegraph/lib/models/Point2D;-><init>(FF)V

    invoke-virtual {v3, v4}, Lorg/eazegraph/lib/models/ValueLinePoint;->setCoordinates(Lorg/eazegraph/lib/models/Point2D;)V

    .line 674
    .end local v9    # "P1":Lorg/eazegraph/lib/models/Point2D;
    .end local v10    # "P2":Lorg/eazegraph/lib/models/Point2D;
    .end local v11    # "P3":Lorg/eazegraph/lib/models/Point2D;
    .end local v18    # "i":I
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mUseOverlapFill:Z

    if-nez v3, :cond_a

    const/4 v3, 0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_b

    .line 675
    :cond_a
    move-object/from16 v0, p0

    iget v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mGraphWidth:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mGraphHeight:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 676
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mGraphHeight:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 677
    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 680
    :cond_b
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/eazegraph/lib/models/ValueLineSeries;->setPath(Landroid/graphics/Path;)V

    goto/16 :goto_1

    .line 634
    .restart local v9    # "P1":Lorg/eazegraph/lib/models/Point2D;
    .restart local v10    # "P2":Lorg/eazegraph/lib/models/Point2D;
    .restart local v11    # "P3":Lorg/eazegraph/lib/models/Point2D;
    .restart local v18    # "i":I
    :cond_c
    invoke-virtual {v9, v13}, Lorg/eazegraph/lib/models/Point2D;->setX(F)V

    .line 635
    move-object/from16 v0, p0

    iget v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mUseableGraphHeight:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mTopPadding:I

    add-int/2addr v3, v4

    int-to-float v4, v3

    invoke-virtual/range {v22 .. v22}, Lorg/eazegraph/lib/models/ValueLineSeries;->getSeries()Ljava/util/List;

    move-result-object v3

    move/from16 v0, v18

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eazegraph/lib/models/ValueLinePoint;

    invoke-virtual {v3}, Lorg/eazegraph/lib/models/ValueLinePoint;->getValue()F

    move-result v3

    mul-float v3, v3, v17

    sub-float v3, v4, v3

    invoke-virtual {v9, v3}, Lorg/eazegraph/lib/models/Point2D;->setY(F)V

    .line 637
    add-float v3, v13, v27

    invoke-virtual {v10, v3}, Lorg/eazegraph/lib/models/Point2D;->setX(F)V

    .line 638
    move-object/from16 v0, p0

    iget v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mUseableGraphHeight:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mTopPadding:I

    add-int/2addr v3, v4

    int-to-float v4, v3

    invoke-virtual/range {v22 .. v22}, Lorg/eazegraph/lib/models/ValueLineSeries;->getSeries()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v5, v18, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eazegraph/lib/models/ValueLinePoint;

    invoke-virtual {v3}, Lorg/eazegraph/lib/models/ValueLinePoint;->getValue()F

    move-result v3

    mul-float v3, v3, v17

    sub-float v3, v4, v3

    invoke-virtual {v10, v3}, Lorg/eazegraph/lib/models/Point2D;->setY(F)V

    .line 639
    move-object/from16 v0, p0

    iget v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mSecondMultiplier:F

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10, v9, v3}, Lorg/eazegraph/lib/charts/ValueLineChart;->calculatePointDiff(Lorg/eazegraph/lib/models/Point2D;Lorg/eazegraph/lib/models/Point2D;Lorg/eazegraph/lib/models/Point2D;F)V

    .line 641
    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v27

    add-float/2addr v3, v13

    invoke-virtual {v11, v3}, Lorg/eazegraph/lib/models/Point2D;->setX(F)V

    .line 642
    move-object/from16 v0, p0

    iget v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mUseableGraphHeight:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mTopPadding:I

    add-int/2addr v3, v4

    int-to-float v4, v3

    invoke-virtual/range {v22 .. v22}, Lorg/eazegraph/lib/models/ValueLineSeries;->getSeries()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v5, v18, 0x2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eazegraph/lib/models/ValueLinePoint;

    invoke-virtual {v3}, Lorg/eazegraph/lib/models/ValueLinePoint;->getValue()F

    move-result v3

    mul-float v3, v3, v17

    sub-float v3, v4, v3

    invoke-virtual {v11, v3}, Lorg/eazegraph/lib/models/Point2D;->setY(F)V

    .line 643
    move-object/from16 v0, p0

    iget v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mFirstMultiplier:F

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v11, v3}, Lorg/eazegraph/lib/charts/ValueLineChart;->calculatePointDiff(Lorg/eazegraph/lib/models/Point2D;Lorg/eazegraph/lib/models/Point2D;Lorg/eazegraph/lib/models/Point2D;F)V

    .line 645
    invoke-virtual/range {v22 .. v22}, Lorg/eazegraph/lib/models/ValueLineSeries;->getSeries()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, v18, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eazegraph/lib/models/ValueLinePoint;

    new-instance v4, Lorg/eazegraph/lib/models/Point2D;

    invoke-virtual {v10}, Lorg/eazegraph/lib/models/Point2D;->getX()F

    move-result v5

    invoke-virtual {v10}, Lorg/eazegraph/lib/models/Point2D;->getY()F

    move-result v6

    invoke-direct {v4, v5, v6}, Lorg/eazegraph/lib/models/Point2D;-><init>(FF)V

    invoke-virtual {v3, v4}, Lorg/eazegraph/lib/models/ValueLinePoint;->setCoordinates(Lorg/eazegraph/lib/models/Point2D;)V

    .line 648
    add-float v13, v13, v27

    .line 650
    invoke-virtual {v9}, Lorg/eazegraph/lib/models/Point2D;->getX()F

    move-result v3

    invoke-virtual {v9}, Lorg/eazegraph/lib/models/Point2D;->getY()F

    move-result v4

    invoke-virtual {v10}, Lorg/eazegraph/lib/models/Point2D;->getX()F

    move-result v5

    invoke-virtual {v10}, Lorg/eazegraph/lib/models/Point2D;->getY()F

    move-result v6

    invoke-virtual {v11}, Lorg/eazegraph/lib/models/Point2D;->getX()F

    move-result v7

    invoke-virtual {v11}, Lorg/eazegraph/lib/models/Point2D;->getY()F

    move-result v8

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 615
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2

    .line 653
    .end local v9    # "P1":Lorg/eazegraph/lib/models/Point2D;
    .end local v10    # "P2":Lorg/eazegraph/lib/models/Point2D;
    .end local v11    # "P3":Lorg/eazegraph/lib/models/Point2D;
    .end local v18    # "i":I
    :cond_d
    const/4 v14, 0x1

    .line 654
    .local v14, "first":Z
    const/4 v12, 0x1

    .line 655
    .local v12, "count":I
    invoke-virtual/range {v22 .. v22}, Lorg/eazegraph/lib/models/ValueLineSeries;->getSeries()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/eazegraph/lib/models/ValueLinePoint;

    .line 656
    .restart local v21    # "point":Lorg/eazegraph/lib/models/ValueLinePoint;
    if-eqz v14, :cond_e

    .line 657
    const/4 v14, 0x0

    .line 658
    goto :goto_3

    .line 660
    :cond_e
    add-float v13, v13, v27

    .line 661
    add-int/lit8 v4, v24, -0x1

    if-ne v12, v4, :cond_f

    .line 664
    move-object/from16 v0, p0

    iget v4, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mGraphWidth:I

    int-to-float v4, v4

    cmpg-float v4, v13, v4

    if-gez v4, :cond_f

    .line 665
    move-object/from16 v0, p0

    iget v4, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mGraphWidth:I

    int-to-float v13, v4

    .line 668
    :cond_f
    new-instance v4, Lorg/eazegraph/lib/models/Point2D;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mUseableGraphHeight:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mTopPadding:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual/range {v21 .. v21}, Lorg/eazegraph/lib/models/ValueLinePoint;->getValue()F

    move-result v6

    mul-float v6, v6, v17

    sub-float/2addr v5, v6

    invoke-direct {v4, v13, v5}, Lorg/eazegraph/lib/models/Point2D;-><init>(FF)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lorg/eazegraph/lib/models/ValueLinePoint;->setCoordinates(Lorg/eazegraph/lib/models/Point2D;)V

    .line 669
    invoke-virtual/range {v21 .. v21}, Lorg/eazegraph/lib/models/ValueLinePoint;->getCoordinates()Lorg/eazegraph/lib/models/Point2D;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eazegraph/lib/models/Point2D;->getX()F

    move-result v4

    invoke-virtual/range {v21 .. v21}, Lorg/eazegraph/lib/models/ValueLinePoint;->getCoordinates()Lorg/eazegraph/lib/models/Point2D;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eazegraph/lib/models/Point2D;->getY()F

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 670
    add-int/lit8 v12, v12, 0x1

    .line 671
    goto :goto_3

    .line 684
    .end local v2    # "path":Landroid/graphics/Path;
    .end local v12    # "count":I
    .end local v13    # "currentOffset":F
    .end local v14    # "first":Z
    .end local v15    # "firstX":F
    .end local v16    # "firstY":F
    .end local v21    # "point":Lorg/eazegraph/lib/models/ValueLinePoint;
    .end local v22    # "series":Lorg/eazegraph/lib/models/ValueLineSeries;
    .end local v24    # "seriesPointCount":I
    .end local v27    # "widthOffset":F
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mUseCustomLegend:Z

    if-nez v3, :cond_13

    .line 685
    const/16 v19, 0x0

    .line 686
    .local v19, "index":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mSeries:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eazegraph/lib/models/ValueLineSeries;

    invoke-virtual {v3}, Lorg/eazegraph/lib/models/ValueLineSeries;->getSeries()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v25

    .line 689
    .local v25, "size":I
    const/4 v3, 0x1

    move/from16 v0, v25

    if-le v0, v3, :cond_13

    .line 691
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mSeries:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eazegraph/lib/models/ValueLineSeries;

    invoke-virtual {v3}, Lorg/eazegraph/lib/models/ValueLineSeries;->getSeries()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/eazegraph/lib/models/ValueLinePoint;

    .line 692
    .local v26, "valueLinePoint":Lorg/eazegraph/lib/models/ValueLinePoint;
    if-eqz v19, :cond_11

    add-int/lit8 v3, v25, -0x1

    move/from16 v0, v19

    if-eq v0, v3, :cond_11

    .line 693
    new-instance v5, Landroid/graphics/RectF;

    .line 694
    invoke-virtual/range {v26 .. v26}, Lorg/eazegraph/lib/models/ValueLinePoint;->getCoordinates()Lorg/eazegraph/lib/models/Point2D;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eazegraph/lib/models/Point2D;->getX()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mSeries:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eazegraph/lib/models/ValueLineSeries;

    invoke-virtual {v3}, Lorg/eazegraph/lib/models/ValueLineSeries;->getWidthOffset()F

    move-result v3

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v3, v7

    sub-float/2addr v6, v3

    const/4 v7, 0x0

    .line 696
    invoke-virtual/range {v26 .. v26}, Lorg/eazegraph/lib/models/ValueLinePoint;->getCoordinates()Lorg/eazegraph/lib/models/Point2D;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eazegraph/lib/models/Point2D;->getX()F

    move-result v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mSeries:Ljava/util/List;

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eazegraph/lib/models/ValueLineSeries;

    invoke-virtual {v3}, Lorg/eazegraph/lib/models/ValueLineSeries;->getWidthOffset()F

    move-result v3

    const/high16 v28, 0x40000000    # 2.0f

    div-float v3, v3, v28

    add-float/2addr v3, v8

    move-object/from16 v0, p0

    iget v8, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mLegendHeight:F

    invoke-direct {v5, v6, v7, v3, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 693
    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Lorg/eazegraph/lib/models/ValueLinePoint;->setLegendBounds(Landroid/graphics/RectF;)V

    .line 702
    :goto_5
    add-int/lit8 v19, v19, 0x1

    .line 703
    goto :goto_4

    .line 699
    :cond_11
    const/4 v3, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lorg/eazegraph/lib/models/ValueLinePoint;->setIgnore(Z)V

    goto :goto_5

    .line 704
    .end local v26    # "valueLinePoint":Lorg/eazegraph/lib/models/ValueLinePoint;
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mSeries:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eazegraph/lib/models/ValueLineSeries;

    invoke-virtual {v3}, Lorg/eazegraph/lib/models/ValueLineSeries;->getSeries()Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mLeftPadding:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mGraphWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mLeftPadding:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mLegendPaint:Landroid/graphics/Paint;

    invoke-static {v3, v4, v5, v6}, Lorg/eazegraph/lib/utils/Utils;->calculateLegendInformation(Ljava/util/List;FFLandroid/graphics/Paint;)V

    .line 709
    .end local v19    # "index":I
    .end local v25    # "size":I
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mShowIndicator:Z

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mSeries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_14

    .line 710
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mSeries:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eazegraph/lib/models/ValueLineSeries;

    invoke-virtual {v3}, Lorg/eazegraph/lib/models/ValueLineSeries;->getSeries()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v25

    .line 714
    .restart local v25    # "size":I
    const/4 v3, 0x1

    move/from16 v0, v25

    if-le v0, v3, :cond_14

    .line 716
    const/4 v3, 0x3

    move/from16 v0, v25

    if-ne v0, v3, :cond_15

    .line 717
    div-int/lit8 v19, v25, 0x2

    .line 722
    .restart local v19    # "index":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mSeries:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eazegraph/lib/models/ValueLineSeries;

    invoke-virtual {v3}, Lorg/eazegraph/lib/models/ValueLineSeries;->getSeries()Ljava/util/List;

    move-result-object v3

    move/from16 v0, v19

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eazegraph/lib/models/ValueLinePoint;

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mFocusedPoint:Lorg/eazegraph/lib/models/ValueLinePoint;

    .line 723
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mTouchedArea:Lorg/eazegraph/lib/models/Point2D;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mFocusedPoint:Lorg/eazegraph/lib/models/ValueLinePoint;

    invoke-virtual {v4}, Lorg/eazegraph/lib/models/ValueLinePoint;->getCoordinates()Lorg/eazegraph/lib/models/Point2D;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eazegraph/lib/models/Point2D;->getX()F

    move-result v4

    invoke-virtual {v3, v4}, Lorg/eazegraph/lib/models/Point2D;->setX(F)V

    .line 724
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mTouchedArea:Lorg/eazegraph/lib/models/Point2D;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mFocusedPoint:Lorg/eazegraph/lib/models/ValueLinePoint;

    invoke-virtual {v4}, Lorg/eazegraph/lib/models/ValueLinePoint;->getCoordinates()Lorg/eazegraph/lib/models/Point2D;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eazegraph/lib/models/Point2D;->getY()F

    move-result v4

    invoke-virtual {v3, v4}, Lorg/eazegraph/lib/models/Point2D;->setY(F)V

    .line 726
    invoke-direct/range {p0 .. p0}, Lorg/eazegraph/lib/charts/ValueLineChart;->calculateValueTextHeight()V

    .line 731
    .end local v17    # "heightMultiplier":F
    .end local v19    # "index":I
    .end local v20    # "maxValue":F
    .end local v23    # "seriesCount":I
    .end local v25    # "size":I
    :cond_14
    invoke-super/range {p0 .. p0}, Lorg/eazegraph/lib/charts/BaseChart;->onDataChanged()V

    .line 732
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mLegend:Lorg/eazegraph/lib/charts/ValueLineChart$Legend;

    invoke-virtual {v3}, Lorg/eazegraph/lib/charts/ValueLineChart$Legend;->invalidate()V

    .line 733
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mGraphOverlay:Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;

    invoke-virtual {v3}, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->invalidate()V

    .line 734
    return-void

    .line 719
    .restart local v17    # "heightMultiplier":F
    .restart local v20    # "maxValue":F
    .restart local v23    # "seriesCount":I
    .restart local v25    # "size":I
    :cond_15
    div-int/lit8 v3, v25, 0x2

    add-int/lit8 v19, v3, -0x1

    .restart local v19    # "index":I
    goto :goto_6
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 406
    invoke-super {p0, p1}, Lorg/eazegraph/lib/charts/BaseChart;->onDraw(Landroid/graphics/Canvas;)V

    .line 407
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
    .line 412
    return-void
.end method

.method protected onLegendDataChanged()V
    .locals 10

    .prologue
    .line 741
    iget-object v5, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mLegendList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .line 742
    .local v1, "legendCount":I
    iget v5, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mLegendWidth:F

    int-to-float v6, v1

    div-float v2, v5, v6

    .line 743
    .local v2, "margin":F
    const/4 v0, 0x0

    .line 745
    .local v0, "currentOffset":F
    iget-object v5, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mLegendList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eazegraph/lib/models/LegendModel;

    .line 746
    .local v3, "model":Lorg/eazegraph/lib/models/LegendModel;
    new-instance v6, Landroid/graphics/RectF;

    const/4 v7, 0x0

    add-float v8, v0, v2

    iget v9, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mLegendHeight:F

    invoke-direct {v6, v0, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v6}, Lorg/eazegraph/lib/models/LegendModel;->setLegendBounds(Landroid/graphics/RectF;)V

    .line 747
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 748
    .local v4, "textBounds":Landroid/graphics/Rect;
    iget-object v6, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mLegendPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Lorg/eazegraph/lib/models/LegendModel;->getLegendLabel()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3}, Lorg/eazegraph/lib/models/LegendModel;->getLegendLabel()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 749
    invoke-virtual {v3, v4}, Lorg/eazegraph/lib/models/LegendModel;->setTextBounds(Landroid/graphics/Rect;)V

    .line 750
    add-float/2addr v0, v2

    .line 751
    goto :goto_0

    .line 753
    .end local v3    # "model":Lorg/eazegraph/lib/models/LegendModel;
    .end local v4    # "textBounds":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/ValueLineChart;->invalidate()V

    .line 754
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

    .line 426
    invoke-super {p0, p1, p2, p3, p4}, Lorg/eazegraph/lib/charts/BaseChart;->onSizeChanged(IIII)V

    .line 427
    iput p1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mWidth:I

    .line 428
    iput p2, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mHeight:I

    .line 430
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mGraph:Lorg/eazegraph/lib/charts/ValueLineChart$Graph;

    int-to-float v1, p2

    iget v2, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mLegendHeight:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v3, v3, p1, v1}, Lorg/eazegraph/lib/charts/ValueLineChart$Graph;->layout(IIII)V

    .line 431
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mGraphOverlay:Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;

    int-to-float v1, p2

    iget v2, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mLegendHeight:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v3, v3, p1, v1}, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->layout(IIII)V

    .line 432
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mLegend:Lorg/eazegraph/lib/charts/ValueLineChart$Legend;

    int-to-float v1, p2

    iget v2, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mLegendHeight:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v3, v1, p1, p2}, Lorg/eazegraph/lib/charts/ValueLineChart$Legend;->layout(IIII)V

    .line 433
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/ValueLineChart;->onDataChanged()V

    .line 434
    iget-boolean v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mUseCustomLegend:Z

    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/ValueLineChart;->onLegendDataChanged()V

    .line 437
    :cond_0
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0
    .param p1, "_indicatorColor"    # I

    .prologue
    .line 276
    iput p1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mIndicatorColor:I

    .line 277
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/ValueLineChart;->invalidate()V

    .line 278
    return-void
.end method

.method public setIndicatorLeftPadding(F)V
    .locals 1
    .param p1, "_indicatorLeftPadding"    # F

    .prologue
    .line 310
    invoke-static {p1}, Lorg/eazegraph/lib/utils/Utils;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mIndicatorLeftPadding:F

    .line 311
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/ValueLineChart;->invalidate()V

    .line 312
    return-void
.end method

.method public setIndicatorTextSize(F)V
    .locals 1
    .param p1, "_indicatorTextSize"    # F

    .prologue
    .line 293
    invoke-static {p1}, Lorg/eazegraph/lib/utils/Utils;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mIndicatorTextSize:F

    .line 294
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/ValueLineChart;->invalidate()V

    .line 295
    return-void
.end method

.method public setIndicatorTopPadding(F)V
    .locals 1
    .param p1, "_indicatorTopPadding"    # F

    .prologue
    .line 327
    invoke-static {p1}, Lorg/eazegraph/lib/utils/Utils;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mIndicatorTopPadding:F

    .line 328
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/ValueLineChart;->invalidate()V

    .line 329
    return-void
.end method

.method public setIndicatorWidth(F)V
    .locals 1
    .param p1, "_indicatorWidth"    # F

    .prologue
    .line 259
    invoke-static {p1}, Lorg/eazegraph/lib/utils/Utils;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mIndicatorWidth:F

    .line 260
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/ValueLineChart;->invalidate()V

    .line 261
    return-void
.end method

.method public setLineStroke(F)V
    .locals 1
    .param p1, "_lineStroke"    # F

    .prologue
    .line 225
    invoke-static {p1}, Lorg/eazegraph/lib/utils/Utils;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mLineStroke:F

    .line 226
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/ValueLineChart;->invalidate()V

    .line 227
    return-void
.end method

.method public setOnPointFocusedListener(Lorg/eazegraph/lib/communication/IOnPointFocusedListener;)V
    .locals 0
    .param p1, "_listener"    # Lorg/eazegraph/lib/communication/IOnPointFocusedListener;

    .prologue
    .line 174
    iput-object p1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mListener:Lorg/eazegraph/lib/communication/IOnPointFocusedListener;

    .line 175
    return-void
.end method

.method public setShowIndicator(Z)V
    .locals 0
    .param p1, "_showIndicator"    # Z

    .prologue
    .line 242
    iput-boolean p1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mShowIndicator:Z

    .line 243
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/ValueLineChart;->invalidate()V

    .line 244
    return-void
.end method

.method public setShowStandardValue(Z)V
    .locals 0
    .param p1, "_showStandardValue"    # Z

    .prologue
    .line 344
    iput-boolean p1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mShowStandardValue:Z

    .line 345
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/ValueLineChart;->onDataChanged()V

    .line 346
    return-void
.end method

.method public setStandardValueColor(I)V
    .locals 0
    .param p1, "_standardValueColor"    # I

    .prologue
    .line 378
    iput p1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mStandardValueColor:I

    .line 379
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/ValueLineChart;->invalidate()V

    .line 380
    return-void
.end method

.method public setStandardValueIndicatorStroke(F)V
    .locals 1
    .param p1, "_standardValueIndicatorStroke"    # F

    .prologue
    .line 361
    invoke-static {p1}, Lorg/eazegraph/lib/utils/Utils;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mStandardValueIndicatorStroke:F

    .line 362
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/ValueLineChart;->invalidate()V

    .line 363
    return-void
.end method

.method public setUseCubic(Z)V
    .locals 0
    .param p1, "_useCubic"    # Z

    .prologue
    .line 190
    iput-boolean p1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mUseCubic:Z

    .line 191
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/ValueLineChart;->onDataChanged()V

    .line 192
    return-void
.end method

.method public setUseOverlapFill(Z)V
    .locals 0
    .param p1, "_useOverlapFill"    # Z

    .prologue
    .line 208
    iput-boolean p1, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mUseOverlapFill:Z

    .line 209
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/ValueLineChart;->onDataChanged()V

    .line 210
    return-void
.end method

.method public setXAxisStroke(F)V
    .locals 1
    .param p1, "_XAxisStroke"    # F

    .prologue
    .line 395
    invoke-static {p1}, Lorg/eazegraph/lib/utils/Utils;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart;->mXAxisStroke:F

    .line 396
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/ValueLineChart;->invalidate()V

    .line 397
    return-void
.end method
