.class public final Lorg/eazegraph/lib/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eazegraph/lib/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final BarChart:[I

.field public static final BarChart_egShowValues:I = 0x0

.field public static final BaseBarChart:[I

.field public static final BaseBarChart_egBarMargin:I = 0x0

.field public static final BaseBarChart_egBarWidth:I = 0x1

.field public static final BaseBarChart_egFixedBarWidth:I = 0x2

.field public static final BaseChart:[I

.field public static final BaseChart_egAnimationTime:I = 0x0

.field public static final BaseChart_egLegendHeight:I = 0x1

.field public static final BaseChart_egLegendTextSize:I = 0x2

.field public static final BaseChart_egShowDecimal:I = 0x3

.field public static final PieChart:[I

.field public static final PieChart_egAutoCenter:I = 0x0

.field public static final PieChart_egDrawValueInPie:I = 0x1

.field public static final PieChart_egHighlightStrength:I = 0x2

.field public static final PieChart_egInnerPadding:I = 0x3

.field public static final PieChart_egInnerPaddingColor:I = 0x4

.field public static final PieChart_egInnerPaddingOutline:I = 0x5

.field public static final PieChart_egOpenClockwise:I = 0x6

.field public static final PieChart_egUseCustomInnerValue:I = 0x7

.field public static final PieChart_egUseInnerPadding:I = 0x8

.field public static final PieChart_egUsePieRotation:I = 0x9

.field public static final PieChart_egValueTextColor:I = 0xa

.field public static final PieChart_egValueTextSize:I = 0xb

.field public static final ValueLineChart:[I

.field public static final ValueLineChart_egCurveSmoothness:I = 0x0

.field public static final ValueLineChart_egIndicatorColor:I = 0x1

.field public static final ValueLineChart_egIndicatorLeftPadding:I = 0x2

.field public static final ValueLineChart_egIndicatorTextSize:I = 0x3

.field public static final ValueLineChart_egIndicatorTopPadding:I = 0x4

.field public static final ValueLineChart_egIndicatorWidth:I = 0x5

.field public static final ValueLineChart_egLineStroke:I = 0x6

.field public static final ValueLineChart_egShowStandardValue:I = 0x7

.field public static final ValueLineChart_egShowValueIndicator:I = 0x8

.field public static final ValueLineChart_egStandardValueColor:I = 0x9

.field public static final ValueLineChart_egStandardValueIndicatorStroke:I = 0xa

.field public static final ValueLineChart_egUseCubic:I = 0xb

.field public static final ValueLineChart_egUseOverlapFill:I = 0xc

.field public static final ValueLineChart_egXAxisStroke:I = 0xd


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f020087

    aput v2, v0, v1

    sput-object v0, Lorg/eazegraph/lib/R$styleable;->BarChart:[I

    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/eazegraph/lib/R$styleable;->BaseBarChart:[I

    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/eazegraph/lib/R$styleable;->BaseChart:[I

    .line 61
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/eazegraph/lib/R$styleable;->PieChart:[I

    .line 74
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lorg/eazegraph/lib/R$styleable;->ValueLineChart:[I

    return-void

    .line 52
    :array_0
    .array-data 4
        0x7f020072
        0x7f020073
        0x7f020076
    .end array-data

    .line 56
    :array_1
    .array-data 4
        0x7f020070
        0x7f020080
        0x7f020081
        0x7f020084
    .end array-data

    .line 61
    :array_2
    .array-data 4
        0x7f020071
        0x7f020075
        0x7f020077
        0x7f02007d
        0x7f02007e
        0x7f02007f
        0x7f020083
        0x7f02008b
        0x7f02008c
        0x7f02008e
        0x7f02008f
        0x7f020090
    .end array-data

    .line 74
    :array_3
    .array-data 4
        0x7f020074
        0x7f020078
        0x7f020079
        0x7f02007a
        0x7f02007b
        0x7f02007c
        0x7f020082
        0x7f020085
        0x7f020086
        0x7f020088
        0x7f020089
        0x7f02008a
        0x7f02008d
        0x7f020091
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
