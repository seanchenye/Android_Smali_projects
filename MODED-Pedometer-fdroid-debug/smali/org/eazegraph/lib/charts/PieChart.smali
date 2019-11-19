.class public Lorg/eazegraph/lib/charts/PieChart;
.super Lorg/eazegraph/lib/charts/BaseChart;
.source "PieChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eazegraph/lib/charts/PieChart$GestureListener;,
        Lorg/eazegraph/lib/charts/PieChart$Legend;,
        Lorg/eazegraph/lib/charts/PieChart$InnerValueView;,
        Lorg/eazegraph/lib/charts/PieChart$Graph;
    }
.end annotation


# static fields
.field public static final AUTOCENTER_ANIM_DURATION:I = 0xfa

.field public static final DEF_AUTO_CENTER:Z = true

.field public static final DEF_DRAW_VALUE_IN_PIE:Z = true

.field public static final DEF_HIGHLIGHT_STRENGTH:F = 1.15f

.field public static final DEF_INNER_PADDING:F = 65.0f

.field public static final DEF_INNER_PADDING_COLOR:I = -0xc0c0d

.field public static final DEF_INNER_PADDING_OUTLINE:F = 5.0f

.field public static final DEF_OPEN_CLOCKWISE:Z = true

.field public static final DEF_USE_CUSTOM_INNER_VALUE:Z = false

.field public static final DEF_USE_INNER_PADDING:Z = true

.field public static final DEF_USE_PIE_ROTATION:Z = true

.field public static final DEF_VALUE_TEXT_COLOR:I = -0x767677

.field public static final DEF_VALUE_TEXT_SIZE:F = 14.0f

.field public static final FLING_VELOCITY_DOWNSCALE:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAutoCenterAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

.field private mAutoCenterInSlice:Z

.field private mCalculatedInnerPadding:F

.field private mCalculatedInnerPaddingOutline:F

.field private mCurrentItem:I

.field private mDetector:Landroid/view/GestureDetector;

.field private mDrawValueInPie:Z

.field private mGraph:Lorg/eazegraph/lib/charts/PieChart$Graph;

.field private mGraphBounds:Landroid/graphics/RectF;

.field private mGraphPaint:Landroid/graphics/Paint;

.field private mHighlightStrength:F

.field private mIndicatorAngle:I

.field private mInnerBounds:Landroid/graphics/RectF;

.field private mInnerOutlineBounds:Landroid/graphics/RectF;

.field private mInnerPadding:F

.field private mInnerPaddingColor:I

.field private mInnerPaddingOutline:F

.field private mInnerValueString:Ljava/lang/String;

.field private mLegend:Lorg/eazegraph/lib/charts/PieChart$Legend;

.field private mLegendPaint:Landroid/graphics/Paint;

.field private mListener:Lorg/eazegraph/lib/communication/IOnItemFocusChangedListener;

.field private mOpenClockwise:Z

.field private mPieData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eazegraph/lib/models/PieModel;",
            ">;"
        }
    .end annotation
.end field

.field private mPieDiameter:F

.field private mPieRadius:F

.field private mPieRotation:I

.field private mScrollAnimator:Lcom/nineoldandroids/animation/ValueAnimator;

.field private mScroller:Landroid/widget/Scroller;

.field private mTotalValue:F

.field private mUseCustomInnerValue:Z

.field private mUseInnerPadding:Z

.field private mUsePieRotation:Z

.field private mValuePaint:Landroid/graphics/Paint;

.field private mValueTextColor:I

.field private mValueTextSize:F

.field private mValueView:Lorg/eazegraph/lib/charts/PieChart$InnerValueView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1265
    const-class v0, Lorg/eazegraph/lib/charts/PieChart;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eazegraph/lib/charts/PieChart;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 96
    invoke-direct {p0, p1}, Lorg/eazegraph/lib/charts/BaseChart;-><init>(Landroid/content/Context;)V

    .line 1304
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mInnerValueString:Ljava/lang/String;

    .line 1324
    const/16 v0, 0x5a

    iput v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mIndicatorAngle:I

    .line 1325
    iput v2, p0, Lorg/eazegraph/lib/charts/PieChart;->mCurrentItem:I

    .line 98
    iput-boolean v1, p0, Lorg/eazegraph/lib/charts/PieChart;->mUseInnerPadding:Z

    .line 99
    const/high16 v0, 0x42820000    # 65.0f

    iput v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mInnerPadding:F

    .line 100
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mInnerPaddingOutline:F

    .line 101
    const v0, 0x3f933333    # 1.15f

    iput v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mHighlightStrength:F

    .line 102
    iput-boolean v1, p0, Lorg/eazegraph/lib/charts/PieChart;->mUsePieRotation:Z

    .line 103
    iput-boolean v1, p0, Lorg/eazegraph/lib/charts/PieChart;->mAutoCenterInSlice:Z

    .line 104
    iput-boolean v1, p0, Lorg/eazegraph/lib/charts/PieChart;->mDrawValueInPie:Z

    .line 105
    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {v0}, Lorg/eazegraph/lib/utils/Utils;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mValueTextSize:F

    .line 106
    const v0, -0x767677

    iput v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mValueTextColor:I

    .line 107
    iput-boolean v2, p0, Lorg/eazegraph/lib/charts/PieChart;->mUseCustomInnerValue:Z

    .line 108
    iput-boolean v1, p0, Lorg/eazegraph/lib/charts/PieChart;->mOpenClockwise:Z

    .line 109
    const v0, -0xc0c0d

    iput v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mInnerPaddingColor:I

    .line 111
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/PieChart;->initializeGraph()V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 129
    invoke-direct {p0, p1, p2}, Lorg/eazegraph/lib/charts/BaseChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1304
    const-string/jumbo v1, ""

    iput-object v1, p0, Lorg/eazegraph/lib/charts/PieChart;->mInnerValueString:Ljava/lang/String;

    .line 1324
    const/16 v1, 0x5a

    iput v1, p0, Lorg/eazegraph/lib/charts/PieChart;->mIndicatorAngle:I

    .line 1325
    iput v3, p0, Lorg/eazegraph/lib/charts/PieChart;->mCurrentItem:I

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lorg/eazegraph/lib/R$styleable;->PieChart:[I

    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 139
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v1, Lorg/eazegraph/lib/R$styleable;->PieChart_egUseInnerPadding:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lorg/eazegraph/lib/charts/PieChart;->mUseInnerPadding:Z

    .line 140
    sget v1, Lorg/eazegraph/lib/R$styleable;->PieChart_egInnerPadding:I

    const/high16 v2, 0x42820000    # 65.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lorg/eazegraph/lib/charts/PieChart;->mInnerPadding:F

    .line 141
    sget v1, Lorg/eazegraph/lib/R$styleable;->PieChart_egInnerPaddingOutline:I

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lorg/eazegraph/lib/charts/PieChart;->mInnerPaddingOutline:F

    .line 142
    sget v1, Lorg/eazegraph/lib/R$styleable;->PieChart_egHighlightStrength:I

    const v2, 0x3f933333    # 1.15f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lorg/eazegraph/lib/charts/PieChart;->mHighlightStrength:F

    .line 143
    sget v1, Lorg/eazegraph/lib/R$styleable;->PieChart_egUsePieRotation:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lorg/eazegraph/lib/charts/PieChart;->mUsePieRotation:Z

    .line 144
    sget v1, Lorg/eazegraph/lib/R$styleable;->PieChart_egAutoCenter:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lorg/eazegraph/lib/charts/PieChart;->mAutoCenterInSlice:Z

    .line 145
    sget v1, Lorg/eazegraph/lib/R$styleable;->PieChart_egDrawValueInPie:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lorg/eazegraph/lib/charts/PieChart;->mDrawValueInPie:Z

    .line 146
    sget v1, Lorg/eazegraph/lib/R$styleable;->PieChart_egValueTextSize:I

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/eazegraph/lib/utils/Utils;->dpToPx(F)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lorg/eazegraph/lib/charts/PieChart;->mValueTextSize:F

    .line 147
    sget v1, Lorg/eazegraph/lib/R$styleable;->PieChart_egValueTextColor:I

    const v2, -0x767677

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lorg/eazegraph/lib/charts/PieChart;->mValueTextColor:I

    .line 148
    sget v1, Lorg/eazegraph/lib/R$styleable;->PieChart_egUseCustomInnerValue:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lorg/eazegraph/lib/charts/PieChart;->mUseCustomInnerValue:Z

    .line 149
    sget v1, Lorg/eazegraph/lib/R$styleable;->PieChart_egOpenClockwise:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lorg/eazegraph/lib/charts/PieChart;->mOpenClockwise:Z

    .line 150
    sget v1, Lorg/eazegraph/lib/R$styleable;->PieChart_egInnerPaddingColor:I

    const v2, -0xc0c0d

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lorg/eazegraph/lib/charts/PieChart;->mInnerPaddingColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 157
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/PieChart;->initializeGraph()V

    .line 158
    return-void

    .line 154
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method static synthetic access$1000(Lorg/eazegraph/lib/charts/PieChart;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/PieChart;

    .prologue
    .line 86
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mGraphBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$1002(Lorg/eazegraph/lib/charts/PieChart;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/PieChart;
    .param p1, "x1"    # Landroid/graphics/RectF;

    .prologue
    .line 86
    iput-object p1, p0, Lorg/eazegraph/lib/charts/PieChart;->mGraphBounds:Landroid/graphics/RectF;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/eazegraph/lib/charts/PieChart;)Z
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/PieChart;

    .prologue
    .line 86
    iget-boolean v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mUseInnerPadding:Z

    return v0
.end method

.method static synthetic access$1200(Lorg/eazegraph/lib/charts/PieChart;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/PieChart;

    .prologue
    .line 86
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mInnerBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$1202(Lorg/eazegraph/lib/charts/PieChart;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/PieChart;
    .param p1, "x1"    # Landroid/graphics/RectF;

    .prologue
    .line 86
    iput-object p1, p0, Lorg/eazegraph/lib/charts/PieChart;->mInnerBounds:Landroid/graphics/RectF;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/eazegraph/lib/charts/PieChart;)I
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/PieChart;

    .prologue
    .line 86
    iget v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mInnerPaddingColor:I

    return v0
.end method

.method static synthetic access$1400(Lorg/eazegraph/lib/charts/PieChart;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/PieChart;

    .prologue
    .line 86
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mInnerOutlineBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$1402(Lorg/eazegraph/lib/charts/PieChart;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/PieChart;
    .param p1, "x1"    # Landroid/graphics/RectF;

    .prologue
    .line 86
    iput-object p1, p0, Lorg/eazegraph/lib/charts/PieChart;->mInnerOutlineBounds:Landroid/graphics/RectF;

    return-object p1
.end method

.method static synthetic access$1500(Lorg/eazegraph/lib/charts/PieChart;)F
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/PieChart;

    .prologue
    .line 86
    iget v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mPieDiameter:F

    return v0
.end method

.method static synthetic access$1502(Lorg/eazegraph/lib/charts/PieChart;F)F
    .locals 0
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/PieChart;
    .param p1, "x1"    # F

    .prologue
    .line 86
    iput p1, p0, Lorg/eazegraph/lib/charts/PieChart;->mPieDiameter:F

    return p1
.end method

.method static synthetic access$1600(Lorg/eazegraph/lib/charts/PieChart;)F
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/PieChart;

    .prologue
    .line 86
    iget v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mPieRadius:F

    return v0
.end method

.method static synthetic access$1602(Lorg/eazegraph/lib/charts/PieChart;F)F
    .locals 0
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/PieChart;
    .param p1, "x1"    # F

    .prologue
    .line 86
    iput p1, p0, Lorg/eazegraph/lib/charts/PieChart;->mPieRadius:F

    return p1
.end method

.method static synthetic access$1700(Lorg/eazegraph/lib/charts/PieChart;)F
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/PieChart;

    .prologue
    .line 86
    iget v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mCalculatedInnerPadding:F

    return v0
.end method

.method static synthetic access$1702(Lorg/eazegraph/lib/charts/PieChart;F)F
    .locals 0
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/PieChart;
    .param p1, "x1"    # F

    .prologue
    .line 86
    iput p1, p0, Lorg/eazegraph/lib/charts/PieChart;->mCalculatedInnerPadding:F

    return p1
.end method

.method static synthetic access$1800(Lorg/eazegraph/lib/charts/PieChart;)F
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/PieChart;

    .prologue
    .line 86
    iget v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mInnerPadding:F

    return v0
.end method

.method static synthetic access$1900(Lorg/eazegraph/lib/charts/PieChart;)F
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/PieChart;

    .prologue
    .line 86
    iget v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mCalculatedInnerPaddingOutline:F

    return v0
.end method

.method static synthetic access$1902(Lorg/eazegraph/lib/charts/PieChart;F)F
    .locals 0
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/PieChart;
    .param p1, "x1"    # F

    .prologue
    .line 86
    iput p1, p0, Lorg/eazegraph/lib/charts/PieChart;->mCalculatedInnerPaddingOutline:F

    return p1
.end method

.method static synthetic access$200(Lorg/eazegraph/lib/charts/PieChart;)Lorg/eazegraph/lib/charts/PieChart$Graph;
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/PieChart;

    .prologue
    .line 86
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mGraph:Lorg/eazegraph/lib/charts/PieChart$Graph;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/eazegraph/lib/charts/PieChart;)F
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/PieChart;

    .prologue
    .line 86
    iget v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mInnerPaddingOutline:F

    return v0
.end method

.method static synthetic access$2100(Lorg/eazegraph/lib/charts/PieChart;)Z
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/PieChart;

    .prologue
    .line 86
    iget-boolean v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mDrawValueInPie:Z

    return v0
.end method

.method static synthetic access$2200(Lorg/eazegraph/lib/charts/PieChart;)I
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/PieChart;

    .prologue
    .line 86
    iget v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mCurrentItem:I

    return v0
.end method

.method static synthetic access$2300(Lorg/eazegraph/lib/charts/PieChart;)Z
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/PieChart;

    .prologue
    .line 86
    iget-boolean v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mUseCustomInnerValue:Z

    return v0
.end method

.method static synthetic access$2400(Lorg/eazegraph/lib/charts/PieChart;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/PieChart;

    .prologue
    .line 86
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mInnerValueString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2402(Lorg/eazegraph/lib/charts/PieChart;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/PieChart;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lorg/eazegraph/lib/charts/PieChart;->mInnerValueString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2500(Lorg/eazegraph/lib/charts/PieChart;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/PieChart;

    .prologue
    .line 86
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mValuePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/eazegraph/lib/charts/PieChart;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/PieChart;

    .prologue
    .line 86
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mLegendPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/eazegraph/lib/charts/PieChart;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/PieChart;

    .prologue
    .line 86
    invoke-direct {p0}, Lorg/eazegraph/lib/charts/PieChart;->getGraphBounds()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lorg/eazegraph/lib/charts/PieChart;)I
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/PieChart;

    .prologue
    .line 86
    iget v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mPieRotation:I

    return v0
.end method

.method static synthetic access$2900(Lorg/eazegraph/lib/charts/PieChart;)Landroid/widget/Scroller;
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/PieChart;

    .prologue
    .line 86
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$300(Lorg/eazegraph/lib/charts/PieChart;)V
    .locals 0
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/PieChart;

    .prologue
    .line 86
    invoke-direct {p0}, Lorg/eazegraph/lib/charts/PieChart;->tickScrollAnimation()V

    return-void
.end method

.method static synthetic access$3000(Lorg/eazegraph/lib/charts/PieChart;)Lcom/nineoldandroids/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/PieChart;

    .prologue
    .line 86
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mScrollAnimator:Lcom/nineoldandroids/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$3100(Lorg/eazegraph/lib/charts/PieChart;)Z
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/PieChart;

    .prologue
    .line 86
    invoke-direct {p0}, Lorg/eazegraph/lib/charts/PieChart;->isAnimationRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lorg/eazegraph/lib/charts/PieChart;)V
    .locals 0
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/PieChart;

    .prologue
    .line 86
    invoke-direct {p0}, Lorg/eazegraph/lib/charts/PieChart;->stopScrolling()V

    return-void
.end method

.method static synthetic access$500(Lorg/eazegraph/lib/charts/PieChart;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/PieChart;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lorg/eazegraph/lib/charts/PieChart;->setLayerToHW(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lorg/eazegraph/lib/charts/PieChart;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/PieChart;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lorg/eazegraph/lib/charts/PieChart;->setLayerToSW(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lorg/eazegraph/lib/charts/PieChart;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/PieChart;

    .prologue
    .line 86
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mPieData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lorg/eazegraph/lib/charts/PieChart;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/PieChart;

    .prologue
    .line 86
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mGraphPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$900(Lorg/eazegraph/lib/charts/PieChart;)Z
    .locals 1
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/PieChart;

    .prologue
    .line 86
    iget-boolean v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mOpenClockwise:Z

    return v0
.end method

.method private calcCurrentItem()V
    .locals 5

    .prologue
    .line 767
    iget-boolean v3, p0, Lorg/eazegraph/lib/charts/PieChart;->mOpenClockwise:Z

    if-eqz v3, :cond_1

    .line 768
    iget v3, p0, Lorg/eazegraph/lib/charts/PieChart;->mIndicatorAngle:I

    add-int/lit16 v3, v3, 0x168

    iget v4, p0, Lorg/eazegraph/lib/charts/PieChart;->mPieRotation:I

    sub-int/2addr v3, v4

    rem-int/lit16 v2, v3, 0x168

    .line 774
    .local v2, "pointerAngle":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lorg/eazegraph/lib/charts/PieChart;->mPieData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 775
    iget-object v3, p0, Lorg/eazegraph/lib/charts/PieChart;->mPieData:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eazegraph/lib/models/PieModel;

    .line 776
    .local v1, "model":Lorg/eazegraph/lib/models/PieModel;
    invoke-virtual {v1}, Lorg/eazegraph/lib/models/PieModel;->getStartAngle()I

    move-result v3

    if-gt v3, v2, :cond_2

    invoke-virtual {v1}, Lorg/eazegraph/lib/models/PieModel;->getEndAngle()I

    move-result v3

    if-gt v2, v3, :cond_2

    .line 777
    iget v3, p0, Lorg/eazegraph/lib/charts/PieChart;->mCurrentItem:I

    if-eq v0, v3, :cond_0

    .line 778
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lorg/eazegraph/lib/charts/PieChart;->setCurrentItem(IZ)V

    .line 783
    .end local v1    # "model":Lorg/eazegraph/lib/models/PieModel;
    :cond_0
    return-void

    .line 771
    .end local v0    # "i":I
    .end local v2    # "pointerAngle":I
    :cond_1
    iget v3, p0, Lorg/eazegraph/lib/charts/PieChart;->mIndicatorAngle:I

    add-int/lit16 v3, v3, 0xb4

    iget v4, p0, Lorg/eazegraph/lib/charts/PieChart;->mPieRotation:I

    add-int/2addr v3, v4

    rem-int/lit16 v2, v3, 0x168

    .restart local v2    # "pointerAngle":I
    goto :goto_0

    .line 774
    .restart local v0    # "i":I
    .restart local v1    # "model":Lorg/eazegraph/lib/models/PieModel;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private centerOnCurrentItem()V
    .locals 6

    .prologue
    .line 839
    iget-object v2, p0, Lorg/eazegraph/lib/charts/PieChart;->mPieData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 840
    iget-object v2, p0, Lorg/eazegraph/lib/charts/PieChart;->mPieData:Ljava/util/List;

    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/PieChart;->getCurrentItem()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eazegraph/lib/models/PieModel;

    .line 843
    .local v0, "current":Lorg/eazegraph/lib/models/PieModel;
    iget-boolean v2, p0, Lorg/eazegraph/lib/charts/PieChart;->mOpenClockwise:Z

    if-eqz v2, :cond_2

    .line 844
    iget v2, p0, Lorg/eazegraph/lib/charts/PieChart;->mIndicatorAngle:I

    invoke-virtual {v0}, Lorg/eazegraph/lib/models/PieModel;->getStartAngle()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Lorg/eazegraph/lib/models/PieModel;->getEndAngle()I

    move-result v3

    invoke-virtual {v0}, Lorg/eazegraph/lib/models/PieModel;->getStartAngle()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    .line 845
    .local v1, "targetAngle":I
    if-gez v1, :cond_0

    iget v2, p0, Lorg/eazegraph/lib/charts/PieChart;->mPieRotation:I

    if-lez v2, :cond_0

    add-int/lit16 v1, v1, 0x168

    .line 853
    :cond_0
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_3

    .line 855
    iget-object v2, p0, Lorg/eazegraph/lib/charts/PieChart;->mAutoCenterAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->setIntValues([I)V

    .line 856
    iget-object v2, p0, Lorg/eazegraph/lib/charts/PieChart;->mAutoCenterAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v4, v5}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    .line 862
    .end local v0    # "current":Lorg/eazegraph/lib/models/PieModel;
    .end local v1    # "targetAngle":I
    :cond_1
    :goto_1
    return-void

    .line 848
    .restart local v0    # "current":Lorg/eazegraph/lib/models/PieModel;
    :cond_2
    invoke-virtual {v0}, Lorg/eazegraph/lib/models/PieModel;->getStartAngle()I

    move-result v2

    invoke-virtual {v0}, Lorg/eazegraph/lib/models/PieModel;->getEndAngle()I

    move-result v3

    invoke-virtual {v0}, Lorg/eazegraph/lib/models/PieModel;->getStartAngle()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 849
    .restart local v1    # "targetAngle":I
    iget v2, p0, Lorg/eazegraph/lib/charts/PieChart;->mIndicatorAngle:I

    add-int/2addr v1, v2

    .line 850
    const/16 v2, 0x10e

    if-le v1, v2, :cond_0

    iget v2, p0, Lorg/eazegraph/lib/charts/PieChart;->mPieRotation:I

    const/16 v3, 0x5a

    if-ge v2, v3, :cond_0

    add-int/lit16 v1, v1, -0x168

    goto :goto_0

    .line 859
    :cond_3
    iget-object v2, p0, Lorg/eazegraph/lib/charts/PieChart;->mGraph:Lorg/eazegraph/lib/charts/PieChart$Graph;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Lorg/eazegraph/lib/charts/PieChart$Graph;->rotateTo(F)V

    goto :goto_1
.end method

.method private getGraphBounds()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 869
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mGraphBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method private highlightSlice(Lorg/eazegraph/lib/models/PieModel;)V
    .locals 6
    .param p1, "_Slice"    # Lorg/eazegraph/lib/models/PieModel;

    .prologue
    const/16 v5, 0xff

    .line 750
    invoke-virtual {p1}, Lorg/eazegraph/lib/models/PieModel;->getColor()I

    move-result v0

    .line 751
    .local v0, "color":I
    iget v1, p0, Lorg/eazegraph/lib/charts/PieChart;->mHighlightStrength:F

    .line 753
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lorg/eazegraph/lib/charts/PieChart;->mHighlightStrength:F

    .line 754
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p0, Lorg/eazegraph/lib/charts/PieChart;->mHighlightStrength:F

    .line 755
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 751
    invoke-static {v5, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/eazegraph/lib/models/PieModel;->setHighlightedColor(I)V

    .line 757
    return-void
.end method

.method private isAnimationRunning()Z
    .locals 2

    .prologue
    .line 1257
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mAutoCenterAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onScrollFinished()V
    .locals 1

    .prologue
    .line 827
    iget-boolean v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mAutoCenterInSlice:Z

    if-eqz v0, :cond_0

    .line 828
    invoke-direct {p0}, Lorg/eazegraph/lib/charts/PieChart;->centerOnCurrentItem()V

    .line 832
    :goto_0
    return-void

    .line 830
    :cond_0
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mGraph:Lorg/eazegraph/lib/charts/PieChart$Graph;

    invoke-virtual {v0}, Lorg/eazegraph/lib/charts/PieChart$Graph;->decelerate()V

    goto :goto_0
.end method

.method private setCurrentItem(IZ)V
    .locals 1
    .param p1, "currentItem"    # I
    .param p2, "scrollIntoView"    # Z

    .prologue
    .line 444
    iput p1, p0, Lorg/eazegraph/lib/charts/PieChart;->mCurrentItem:I

    .line 445
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mListener:Lorg/eazegraph/lib/communication/IOnItemFocusChangedListener;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mListener:Lorg/eazegraph/lib/communication/IOnItemFocusChangedListener;

    invoke-interface {v0, p1}, Lorg/eazegraph/lib/communication/IOnItemFocusChangedListener;->onItemFocusChanged(I)V

    .line 448
    :cond_0
    if-eqz p2, :cond_1

    .line 449
    invoke-direct {p0}, Lorg/eazegraph/lib/charts/PieChart;->centerOnCurrentItem()V

    .line 451
    :cond_1
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/PieChart;->invalidate()V

    .line 452
    return-void
.end method

.method private setLayerToHW(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 806
    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 807
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/eazegraph/lib/charts/PieChart;->setLayerType(ILandroid/graphics/Paint;)V

    .line 809
    :cond_0
    return-void
.end method

.method private setLayerToSW(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 799
    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 800
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/eazegraph/lib/charts/PieChart;->setLayerType(ILandroid/graphics/Paint;)V

    .line 802
    :cond_0
    return-void
.end method

.method private stopScrolling()V
    .locals 2

    .prologue
    .line 815
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 816
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 817
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mAutoCenterAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->cancel()V

    .line 820
    :cond_0
    invoke-direct {p0}, Lorg/eazegraph/lib/charts/PieChart;->onScrollFinished()V

    .line 821
    return-void
.end method

.method private tickScrollAnimation()V
    .locals 2

    .prologue
    .line 786
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 787
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 788
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eazegraph/lib/charts/PieChart;->setPieRotation(I)V

    .line 795
    :goto_0
    return-void

    .line 790
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 791
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mScrollAnimator:Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->cancel()V

    .line 793
    :cond_1
    invoke-direct {p0}, Lorg/eazegraph/lib/charts/PieChart;->onScrollFinished()V

    goto :goto_0
.end method


# virtual methods
.method public addPieSlice(Lorg/eazegraph/lib/models/PieModel;)V
    .locals 2
    .param p1, "_Slice"    # Lorg/eazegraph/lib/models/PieModel;

    .prologue
    .line 483
    invoke-direct {p0, p1}, Lorg/eazegraph/lib/charts/PieChart;->highlightSlice(Lorg/eazegraph/lib/models/PieModel;)V

    .line 484
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mPieData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    iget v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mTotalValue:F

    invoke-virtual {p1}, Lorg/eazegraph/lib/models/PieModel;->getValue()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mTotalValue:F

    .line 486
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/PieChart;->onDataChanged()V

    .line 487
    return-void
.end method

.method public clearChart()V
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mPieData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 507
    const/4 v0, 0x0

    iput v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mTotalValue:F

    .line 508
    return-void
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 421
    iget v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mCurrentItem:I

    return v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/eazegraph/lib/models/PieModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 877
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mPieData:Ljava/util/List;

    return-object v0
.end method

.method public getHighlightStrength()F
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mHighlightStrength:F

    return v0
.end method

.method public getInnerPadding()F
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mInnerPadding:F

    return v0
.end method

.method public getInnerPaddingColor()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mInnerPaddingColor:I

    return v0
.end method

.method public getInnerPaddingOutline()F
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mInnerPaddingOutline:F

    return v0
.end method

.method public getInnerValueString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mInnerValueString:Ljava/lang/String;

    return-object v0
.end method

.method public getPieRotation()I
    .locals 1

    .prologue
    .line 460
    iget v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mPieRotation:I

    return v0
.end method

.method public getValueTextColor()I
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mValueTextColor:I

    return v0
.end method

.method public getValueTextSize()F
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mValueTextSize:F

    return v0
.end method

.method protected initializeGraph()V
    .locals 7

    .prologue
    const/high16 v6, 0x41c80000    # 25.0f

    const/16 v5, 0xb

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 594
    invoke-direct {p0, p0}, Lorg/eazegraph/lib/charts/PieChart;->setLayerToSW(Landroid/view/View;)V

    .line 596
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mPieData:Ljava/util/List;

    .line 598
    const/4 v0, 0x0

    iput v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mTotalValue:F

    .line 600
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mGraphPaint:Landroid/graphics/Paint;

    .line 601
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mLegendPaint:Landroid/graphics/Paint;

    .line 602
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mLegendPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/eazegraph/lib/charts/PieChart;->mLegendTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 603
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mLegendPaint:Landroid/graphics/Paint;

    const v1, -0x767677

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 604
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mLegendPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 606
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mValuePaint:Landroid/graphics/Paint;

    .line 607
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mValuePaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/eazegraph/lib/charts/PieChart;->mValueTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 608
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mValuePaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/eazegraph/lib/charts/PieChart;->mValueTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 609
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mValuePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 611
    new-instance v0, Lorg/eazegraph/lib/charts/PieChart$Graph;

    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/PieChart;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lorg/eazegraph/lib/charts/PieChart$Graph;-><init>(Lorg/eazegraph/lib/charts/PieChart;Landroid/content/Context;Lorg/eazegraph/lib/charts/PieChart$1;)V

    iput-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mGraph:Lorg/eazegraph/lib/charts/PieChart$Graph;

    .line 612
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mGraph:Lorg/eazegraph/lib/charts/PieChart$Graph;

    iget v1, p0, Lorg/eazegraph/lib/charts/PieChart;->mPieRotation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/eazegraph/lib/charts/PieChart$Graph;->rotateTo(F)V

    .line 613
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mGraph:Lorg/eazegraph/lib/charts/PieChart$Graph;

    invoke-direct {p0, v0}, Lorg/eazegraph/lib/charts/PieChart;->setLayerToSW(Landroid/view/View;)V

    .line 614
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mGraph:Lorg/eazegraph/lib/charts/PieChart$Graph;

    invoke-virtual {p0, v0}, Lorg/eazegraph/lib/charts/PieChart;->addView(Landroid/view/View;)V

    .line 616
    new-instance v0, Lorg/eazegraph/lib/charts/PieChart$InnerValueView;

    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/PieChart;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/eazegraph/lib/charts/PieChart$InnerValueView;-><init>(Lorg/eazegraph/lib/charts/PieChart;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mValueView:Lorg/eazegraph/lib/charts/PieChart$InnerValueView;

    .line 617
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mValueView:Lorg/eazegraph/lib/charts/PieChart$InnerValueView;

    invoke-virtual {p0, v0}, Lorg/eazegraph/lib/charts/PieChart;->addView(Landroid/view/View;)V

    .line 619
    new-instance v0, Lorg/eazegraph/lib/charts/PieChart$Legend;

    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/PieChart;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lorg/eazegraph/lib/charts/PieChart$Legend;-><init>(Lorg/eazegraph/lib/charts/PieChart;Landroid/content/Context;Lorg/eazegraph/lib/charts/PieChart$1;)V

    iput-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mLegend:Lorg/eazegraph/lib/charts/PieChart$Legend;

    .line 620
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mLegend:Lorg/eazegraph/lib/charts/PieChart$Legend;

    invoke-virtual {p0, v0}, Lorg/eazegraph/lib/charts/PieChart;->addView(Landroid/view/View;)V

    .line 622
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mRevealAnimator:Lcom/nineoldandroids/animation/ValueAnimator;

    .line 623
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mRevealAnimator:Lcom/nineoldandroids/animation/ValueAnimator;

    new-instance v1, Lorg/eazegraph/lib/charts/PieChart$1;

    invoke-direct {v1, p0}, Lorg/eazegraph/lib/charts/PieChart$1;-><init>(Lorg/eazegraph/lib/charts/PieChart;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 630
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mRevealAnimator:Lcom/nineoldandroids/animation/ValueAnimator;

    new-instance v1, Lorg/eazegraph/lib/charts/PieChart$2;

    invoke-direct {v1, p0}, Lorg/eazegraph/lib/charts/PieChart$2;-><init>(Lorg/eazegraph/lib/charts/PieChart;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 652
    iget-boolean v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mUsePieRotation:Z

    if-eqz v0, :cond_2

    .line 655
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_0

    .line 656
    const-string/jumbo v0, "PieRotation"

    new-array v1, v2, [I

    aput v4, v1, v4

    invoke-static {p0, v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mAutoCenterAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

    .line 659
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mAutoCenterAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

    new-instance v1, Lorg/eazegraph/lib/charts/PieChart$3;

    invoke-direct {v1, p0}, Lorg/eazegraph/lib/charts/PieChart$3;-><init>(Lorg/eazegraph/lib/charts/PieChart;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 677
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v5, :cond_4

    .line 678
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/PieChart;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mScroller:Landroid/widget/Scroller;

    .line 687
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_1

    .line 688
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mScrollAnimator:Lcom/nineoldandroids/animation/ValueAnimator;

    .line 689
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mScrollAnimator:Lcom/nineoldandroids/animation/ValueAnimator;

    new-instance v1, Lorg/eazegraph/lib/charts/PieChart$4;

    invoke-direct {v1, p0}, Lorg/eazegraph/lib/charts/PieChart$4;-><init>(Lorg/eazegraph/lib/charts/PieChart;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 697
    :cond_1
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/PieChart;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/eazegraph/lib/charts/PieChart$GestureListener;

    invoke-direct {v2, p0, v3}, Lorg/eazegraph/lib/charts/PieChart$GestureListener;-><init>(Lorg/eazegraph/lib/charts/PieChart;Lorg/eazegraph/lib/charts/PieChart$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mDetector:Landroid/view/GestureDetector;

    .line 702
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v4}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 705
    :cond_2
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/PieChart;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 706
    new-instance v0, Lorg/eazegraph/lib/models/PieModel;

    const-string/jumbo v1, "Breakfast"

    const/high16 v2, 0x41700000    # 15.0f

    const-string/jumbo v3, "#FE6DA8"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/eazegraph/lib/models/PieModel;-><init>(Ljava/lang/String;FI)V

    invoke-virtual {p0, v0}, Lorg/eazegraph/lib/charts/PieChart;->addPieSlice(Lorg/eazegraph/lib/models/PieModel;)V

    .line 707
    new-instance v0, Lorg/eazegraph/lib/models/PieModel;

    const-string/jumbo v1, "Lunch"

    const-string/jumbo v2, "#56B7F1"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v6, v2}, Lorg/eazegraph/lib/models/PieModel;-><init>(Ljava/lang/String;FI)V

    invoke-virtual {p0, v0}, Lorg/eazegraph/lib/charts/PieChart;->addPieSlice(Lorg/eazegraph/lib/models/PieModel;)V

    .line 708
    new-instance v0, Lorg/eazegraph/lib/models/PieModel;

    const-string/jumbo v1, "Dinner"

    const/high16 v2, 0x420c0000    # 35.0f

    const-string/jumbo v3, "#CDA67F"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/eazegraph/lib/models/PieModel;-><init>(Ljava/lang/String;FI)V

    invoke-virtual {p0, v0}, Lorg/eazegraph/lib/charts/PieChart;->addPieSlice(Lorg/eazegraph/lib/models/PieModel;)V

    .line 709
    new-instance v0, Lorg/eazegraph/lib/models/PieModel;

    const-string/jumbo v1, "Snack"

    const-string/jumbo v2, "#FED70E"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v6, v2}, Lorg/eazegraph/lib/models/PieModel;-><init>(Ljava/lang/String;FI)V

    invoke-virtual {p0, v0}, Lorg/eazegraph/lib/charts/PieChart;->addPieSlice(Lorg/eazegraph/lib/models/PieModel;)V

    .line 711
    :cond_3
    return-void

    .line 680
    :cond_4
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/PieChart;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mScroller:Landroid/widget/Scroller;

    goto/16 :goto_0

    .line 622
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 688
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public isAutoCenterInSlice()Z
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mAutoCenterInSlice:Z

    return v0
.end method

.method public isDrawValueInPie()Z
    .locals 1

    .prologue
    .line 308
    iget-boolean v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mDrawValueInPie:Z

    return v0
.end method

.method public isOpenClockwise()Z
    .locals 1

    .prologue
    .line 403
    iget-boolean v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mOpenClockwise:Z

    return v0
.end method

.method public isUseCustomInnerValue()Z
    .locals 1

    .prologue
    .line 384
    iget-boolean v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mUseCustomInnerValue:Z

    return v0
.end method

.method public isUseInnerPadding()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mUseInnerPadding:Z

    return v0
.end method

.method public isUsePieRotation()Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mUsePieRotation:Z

    return v0
.end method

.method protected onDataChanged()V
    .locals 9

    .prologue
    .line 721
    invoke-super {p0}, Lorg/eazegraph/lib/charts/BaseChart;->onDataChanged()V

    .line 723
    const/4 v0, 0x0

    .line 724
    .local v0, "currentAngle":I
    const/4 v2, 0x0

    .line 725
    .local v2, "index":I
    iget-object v5, p0, Lorg/eazegraph/lib/charts/PieChart;->mPieData:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 727
    .local v4, "size":I
    iget-object v5, p0, Lorg/eazegraph/lib/charts/PieChart;->mPieData:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eazegraph/lib/models/PieModel;

    .line 728
    .local v3, "model":Lorg/eazegraph/lib/models/PieModel;
    int-to-float v6, v0

    invoke-virtual {v3}, Lorg/eazegraph/lib/models/PieModel;->getValue()F

    move-result v7

    const/high16 v8, 0x43b40000    # 360.0f

    mul-float/2addr v7, v8

    iget v8, p0, Lorg/eazegraph/lib/charts/PieChart;->mTotalValue:F

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v1, v6

    .line 729
    .local v1, "endAngle":I
    add-int/lit8 v6, v4, -0x1

    if-ne v2, v6, :cond_0

    .line 730
    const/16 v1, 0x168

    .line 733
    :cond_0
    invoke-virtual {v3, v0}, Lorg/eazegraph/lib/models/PieModel;->setStartAngle(I)V

    .line 734
    invoke-virtual {v3, v1}, Lorg/eazegraph/lib/models/PieModel;->setEndAngle(I)V

    .line 735
    invoke-virtual {v3}, Lorg/eazegraph/lib/models/PieModel;->getEndAngle()I

    move-result v0

    .line 736
    add-int/lit8 v2, v2, 0x1

    .line 737
    goto :goto_0

    .line 738
    .end local v1    # "endAngle":I
    .end local v3    # "model":Lorg/eazegraph/lib/models/PieModel;
    :cond_1
    invoke-direct {p0}, Lorg/eazegraph/lib/charts/PieChart;->calcCurrentItem()V

    .line 739
    invoke-direct {p0}, Lorg/eazegraph/lib/charts/PieChart;->onScrollFinished()V

    .line 740
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 544
    invoke-super {p0, p1}, Lorg/eazegraph/lib/charts/BaseChart;->onDraw(Landroid/graphics/Canvas;)V

    .line 548
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 549
    invoke-direct {p0}, Lorg/eazegraph/lib/charts/PieChart;->tickScrollAnimation()V

    .line 550
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 551
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/PieChart;->postInvalidate()V

    .line 554
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "b"    # Z
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I
    .param p5, "i4"    # I

    .prologue
    .line 559
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v4, 0x0

    .line 573
    invoke-super {p0, p1, p2, p3, p4}, Lorg/eazegraph/lib/charts/BaseChart;->onSizeChanged(IIII)V

    .line 575
    iput p1, p0, Lorg/eazegraph/lib/charts/PieChart;->mWidth:I

    .line 576
    iput p2, p0, Lorg/eazegraph/lib/charts/PieChart;->mHeight:I

    .line 578
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mGraph:Lorg/eazegraph/lib/charts/PieChart$Graph;

    iget v1, p0, Lorg/eazegraph/lib/charts/PieChart;->mWidth:I

    iget v2, p0, Lorg/eazegraph/lib/charts/PieChart;->mHeight:I

    int-to-float v2, v2

    iget v3, p0, Lorg/eazegraph/lib/charts/PieChart;->mLegendHeight:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lorg/eazegraph/lib/charts/PieChart$Graph;->layout(IIII)V

    .line 579
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mGraph:Lorg/eazegraph/lib/charts/PieChart$Graph;

    iget-object v1, p0, Lorg/eazegraph/lib/charts/PieChart;->mGraphBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lorg/eazegraph/lib/charts/PieChart;->mGraphBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/eazegraph/lib/charts/PieChart$Graph;->setPivot(FF)V

    .line 581
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mValueView:Lorg/eazegraph/lib/charts/PieChart$InnerValueView;

    iget v1, p0, Lorg/eazegraph/lib/charts/PieChart;->mWidth:I

    iget v2, p0, Lorg/eazegraph/lib/charts/PieChart;->mHeight:I

    int-to-float v2, v2

    iget v3, p0, Lorg/eazegraph/lib/charts/PieChart;->mLegendHeight:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lorg/eazegraph/lib/charts/PieChart$InnerValueView;->layout(IIII)V

    .line 583
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mLegend:Lorg/eazegraph/lib/charts/PieChart$Legend;

    iget v1, p0, Lorg/eazegraph/lib/charts/PieChart;->mHeight:I

    int-to-float v1, v1

    iget v2, p0, Lorg/eazegraph/lib/charts/PieChart;->mLegendHeight:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lorg/eazegraph/lib/charts/PieChart;->mWidth:I

    iget v3, p0, Lorg/eazegraph/lib/charts/PieChart;->mHeight:I

    invoke-virtual {v0, v4, v1, v2, v3}, Lorg/eazegraph/lib/charts/PieChart$Legend;->layout(IIII)V

    .line 585
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/PieChart;->onDataChanged()V

    .line 586
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 513
    const/4 v0, 0x0

    .line 515
    .local v0, "result":Z
    iget-boolean v1, p0, Lorg/eazegraph/lib/charts/PieChart;->mUsePieRotation:Z

    if-eqz v1, :cond_1

    .line 516
    iget-object v1, p0, Lorg/eazegraph/lib/charts/PieChart;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 521
    if-nez v0, :cond_0

    .line 522
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 524
    invoke-direct {p0}, Lorg/eazegraph/lib/charts/PieChart;->stopScrolling()V

    .line 525
    const/4 v0, 0x1

    .line 533
    :cond_0
    :goto_0
    return v0

    .line 528
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 529
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/PieChart;->performClick()Z

    .line 530
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setAutoCenterInSlice(Z)V
    .locals 0
    .param p1, "_autoCenterInSlice"    # Z

    .prologue
    .line 281
    iput-boolean p1, p0, Lorg/eazegraph/lib/charts/PieChart;->mAutoCenterInSlice:Z

    .line 282
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1
    .param p1, "currentItem"    # I

    .prologue
    .line 431
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/eazegraph/lib/charts/PieChart;->setCurrentItem(IZ)V

    .line 432
    return-void
.end method

.method public setDrawValueInPie(Z)V
    .locals 0
    .param p1, "_drawValueInPie"    # Z

    .prologue
    .line 318
    iput-boolean p1, p0, Lorg/eazegraph/lib/charts/PieChart;->mDrawValueInPie:Z

    .line 319
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/PieChart;->invalidate()V

    .line 320
    return-void
.end method

.method public setHighlightStrength(F)V
    .locals 3
    .param p1, "_highlightStrength"    # F

    .prologue
    .line 257
    iput p1, p0, Lorg/eazegraph/lib/charts/PieChart;->mHighlightStrength:F

    .line 258
    iget-object v1, p0, Lorg/eazegraph/lib/charts/PieChart;->mPieData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eazegraph/lib/models/PieModel;

    .line 259
    .local v0, "model":Lorg/eazegraph/lib/models/PieModel;
    invoke-direct {p0, v0}, Lorg/eazegraph/lib/charts/PieChart;->highlightSlice(Lorg/eazegraph/lib/models/PieModel;)V

    goto :goto_0

    .line 261
    .end local v0    # "model":Lorg/eazegraph/lib/models/PieModel;
    :cond_0
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/PieChart;->invalidate()V

    .line 262
    return-void
.end method

.method public setInnerPadding(F)V
    .locals 0
    .param p1, "_innerPadding"    # F

    .prologue
    .line 203
    iput p1, p0, Lorg/eazegraph/lib/charts/PieChart;->mInnerPadding:F

    .line 204
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/PieChart;->onDataChanged()V

    .line 205
    return-void
.end method

.method public setInnerPaddingColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 212
    iput p1, p0, Lorg/eazegraph/lib/charts/PieChart;->mInnerPaddingColor:I

    .line 213
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mGraph:Lorg/eazegraph/lib/charts/PieChart$Graph;

    invoke-virtual {v0}, Lorg/eazegraph/lib/charts/PieChart$Graph;->invalidate()V

    .line 214
    return-void
.end method

.method public setInnerPaddingOutline(F)V
    .locals 0
    .param p1, "_innerPaddingOutline"    # F

    .prologue
    .line 238
    iput p1, p0, Lorg/eazegraph/lib/charts/PieChart;->mInnerPaddingOutline:F

    .line 239
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/PieChart;->onDataChanged()V

    .line 240
    return-void
.end method

.method public setInnerValueString(Ljava/lang/String;)V
    .locals 1
    .param p1, "_innerValueString"    # Ljava/lang/String;

    .prologue
    .line 374
    iput-object p1, p0, Lorg/eazegraph/lib/charts/PieChart;->mInnerValueString:Ljava/lang/String;

    .line 375
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mValueView:Lorg/eazegraph/lib/charts/PieChart$InnerValueView;

    invoke-virtual {v0}, Lorg/eazegraph/lib/charts/PieChart$InnerValueView;->invalidate()V

    .line 376
    return-void
.end method

.method public setOnItemFocusChangedListener(Lorg/eazegraph/lib/communication/IOnItemFocusChangedListener;)V
    .locals 0
    .param p1, "_listener"    # Lorg/eazegraph/lib/communication/IOnItemFocusChangedListener;

    .prologue
    .line 166
    iput-object p1, p0, Lorg/eazegraph/lib/charts/PieChart;->mListener:Lorg/eazegraph/lib/communication/IOnItemFocusChangedListener;

    .line 167
    return-void
.end method

.method public setOpenClockwise(Z)V
    .locals 0
    .param p1, "_openClockwise"    # Z

    .prologue
    .line 412
    iput-boolean p1, p0, Lorg/eazegraph/lib/charts/PieChart;->mOpenClockwise:Z

    .line 413
    return-void
.end method

.method public setPieRotation(I)V
    .locals 2
    .param p1, "rotation"    # I

    .prologue
    .line 470
    rem-int/lit16 v0, p1, 0x168

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mPieRotation:I

    .line 471
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mGraph:Lorg/eazegraph/lib/charts/PieChart$Graph;

    iget v1, p0, Lorg/eazegraph/lib/charts/PieChart;->mPieRotation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/eazegraph/lib/charts/PieChart$Graph;->rotateTo(F)V

    .line 473
    invoke-direct {p0}, Lorg/eazegraph/lib/charts/PieChart;->calcCurrentItem()V

    .line 474
    return-void
.end method

.method public setUseCustomInnerValue(Z)V
    .locals 0
    .param p1, "_useCustomInnerValue"    # Z

    .prologue
    .line 394
    iput-boolean p1, p0, Lorg/eazegraph/lib/charts/PieChart;->mUseCustomInnerValue:Z

    .line 395
    return-void
.end method

.method public setUseInnerPadding(Z)V
    .locals 0
    .param p1, "_useInnerPadding"    # Z

    .prologue
    .line 184
    iput-boolean p1, p0, Lorg/eazegraph/lib/charts/PieChart;->mUseInnerPadding:Z

    .line 185
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/PieChart;->onDataChanged()V

    .line 186
    return-void
.end method

.method public setUsePieRotation(Z)V
    .locals 0
    .param p1, "_usePieRotation"    # Z

    .prologue
    .line 299
    iput-boolean p1, p0, Lorg/eazegraph/lib/charts/PieChart;->mUsePieRotation:Z

    .line 300
    return-void
.end method

.method public setValueTextColor(I)V
    .locals 0
    .param p1, "_valueTextColor"    # I

    .prologue
    .line 356
    iput p1, p0, Lorg/eazegraph/lib/charts/PieChart;->mValueTextColor:I

    .line 357
    return-void
.end method

.method public setValueTextSize(F)V
    .locals 1
    .param p1, "_valueTextSize"    # F

    .prologue
    .line 337
    invoke-static {p1}, Lorg/eazegraph/lib/utils/Utils;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lorg/eazegraph/lib/charts/PieChart;->mValueTextSize:F

    .line 338
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/PieChart;->invalidate()V

    .line 339
    return-void
.end method

.method public update()V
    .locals 4

    .prologue
    .line 494
    const/4 v1, 0x0

    iput v1, p0, Lorg/eazegraph/lib/charts/PieChart;->mTotalValue:F

    .line 495
    iget-object v1, p0, Lorg/eazegraph/lib/charts/PieChart;->mPieData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eazegraph/lib/models/PieModel;

    .line 496
    .local v0, "slice":Lorg/eazegraph/lib/models/PieModel;
    iget v2, p0, Lorg/eazegraph/lib/charts/PieChart;->mTotalValue:F

    invoke-virtual {v0}, Lorg/eazegraph/lib/models/PieModel;->getValue()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lorg/eazegraph/lib/charts/PieChart;->mTotalValue:F

    goto :goto_0

    .line 498
    .end local v0    # "slice":Lorg/eazegraph/lib/models/PieModel;
    :cond_0
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/PieChart;->onDataChanged()V

    .line 499
    return-void
.end method
