.class Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;
.super Landroid/view/View;
.source "ValueLineChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eazegraph/lib/charts/ValueLineChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GraphOverlay"
.end annotation


# instance fields
.field private mLastPoint:Lorg/eazegraph/lib/models/ValueLinePoint;

.field private mValueLabelX:I

.field final synthetic this$0:Lorg/eazegraph/lib/charts/ValueLineChart;


# direct methods
.method private constructor <init>(Lorg/eazegraph/lib/charts/ValueLineChart;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 886
    iput-object p1, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    .line 887
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1062
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->mLastPoint:Lorg/eazegraph/lib/models/ValueLinePoint;

    .line 1063
    const/4 v0, 0x0

    iput v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->mValueLabelX:I

    .line 888
    return-void
.end method

.method synthetic constructor <init>(Lorg/eazegraph/lib/charts/ValueLineChart;Landroid/content/Context;Lorg/eazegraph/lib/charts/ValueLineChart$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/eazegraph/lib/charts/ValueLineChart;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lorg/eazegraph/lib/charts/ValueLineChart$1;

    .prologue
    .line 879
    invoke-direct {p0, p1, p2}, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;-><init>(Lorg/eazegraph/lib/charts/ValueLineChart;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$602(Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;I)I
    .locals 0
    .param p0, "x0"    # Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;
    .param p1, "x1"    # I

    .prologue
    .line 879
    iput p1, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->mValueLabelX:I

    return p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 897
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 900
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v0}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$1300(Lorg/eazegraph/lib/charts/ValueLineChart;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v1}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$1200(Lorg/eazegraph/lib/charts/ValueLineChart;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 901
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    iget v0, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mLeftPadding:I

    int-to-float v1, v0

    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    iget v0, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mTopPadding:I

    iget-object v2, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    iget v2, v2, Lorg/eazegraph/lib/charts/ValueLineChart;->mGraphHeight:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v2, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    .line 903
    invoke-static {v2}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$400(Lorg/eazegraph/lib/charts/ValueLineChart;)F

    move-result v2

    sub-float v2, v0, v2

    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    iget v0, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mLeftPadding:I

    iget-object v3, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    iget v3, v3, Lorg/eazegraph/lib/charts/ValueLineChart;->mGraphWidth:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    iget v0, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mTopPadding:I

    iget-object v4, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    iget v4, v4, Lorg/eazegraph/lib/charts/ValueLineChart;->mGraphHeight:I

    add-int/2addr v0, v4

    int-to-float v0, v0

    iget-object v4, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    .line 905
    invoke-static {v4}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$400(Lorg/eazegraph/lib/charts/ValueLineChart;)F

    move-result v4

    sub-float v4, v0, v4

    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    .line 906
    invoke-static {v0}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$1300(Lorg/eazegraph/lib/charts/ValueLineChart;)Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    .line 901
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 910
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v0}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$1400(Lorg/eazegraph/lib/charts/ValueLineChart;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v0}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$900(Lorg/eazegraph/lib/charts/ValueLineChart;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 911
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v0}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$1600(Lorg/eazegraph/lib/charts/ValueLineChart;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v1}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$1500(Lorg/eazegraph/lib/charts/ValueLineChart;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 912
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v0}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$1600(Lorg/eazegraph/lib/charts/ValueLineChart;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v1}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$1700(Lorg/eazegraph/lib/charts/ValueLineChart;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 913
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v0}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$1800(Lorg/eazegraph/lib/charts/ValueLineChart;)Lorg/eazegraph/lib/models/Point2D;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eazegraph/lib/models/Point2D;->getX()F

    move-result v1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v0}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$1800(Lorg/eazegraph/lib/charts/ValueLineChart;)Lorg/eazegraph/lib/models/Point2D;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eazegraph/lib/models/Point2D;->getX()F

    move-result v3

    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    iget v0, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mGraphHeight:I

    int-to-float v4, v0

    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v0}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$1600(Lorg/eazegraph/lib/charts/ValueLineChart;)Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 915
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v0}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$1900(Lorg/eazegraph/lib/charts/ValueLineChart;)Lorg/eazegraph/lib/models/ValueLinePoint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v0}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$1900(Lorg/eazegraph/lib/charts/ValueLineChart;)Lorg/eazegraph/lib/models/ValueLinePoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eazegraph/lib/models/ValueLinePoint;->getValue()F

    move-result v0

    iget-object v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    iget-boolean v1, v1, Lorg/eazegraph/lib/charts/ValueLineChart;->mShowDecimal:Z

    invoke-static {v0, v1}, Lorg/eazegraph/lib/utils/Utils;->getFloatString(FZ)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->mValueLabelX:I

    int-to-float v1, v1

    iget-object v2, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    .line 918
    invoke-static {v2}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$2000(Lorg/eazegraph/lib/charts/ValueLineChart;)F

    move-result v2

    iget-object v3, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v3}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$2100(Lorg/eazegraph/lib/charts/ValueLineChart;)F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    .line 919
    invoke-static {v3}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$1600(Lorg/eazegraph/lib/charts/ValueLineChart;)Landroid/graphics/Paint;

    move-result-object v3

    .line 916
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 924
    :cond_0
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v0}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$2200(Lorg/eazegraph/lib/charts/ValueLineChart;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 925
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v0}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$1600(Lorg/eazegraph/lib/charts/ValueLineChart;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v1}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$2300(Lorg/eazegraph/lib/charts/ValueLineChart;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 926
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v0}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$1600(Lorg/eazegraph/lib/charts/ValueLineChart;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v1}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$2400(Lorg/eazegraph/lib/charts/ValueLineChart;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 927
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    iget v0, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mLeftPadding:I

    int-to-float v1, v0

    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    .line 929
    invoke-static {v0}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$2500(Lorg/eazegraph/lib/charts/ValueLineChart;)F

    move-result v0

    iget-object v2, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v2}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$400(Lorg/eazegraph/lib/charts/ValueLineChart;)F

    move-result v2

    sub-float v2, v0, v2

    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    iget v0, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mLeftPadding:I

    iget-object v3, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    iget v3, v3, Lorg/eazegraph/lib/charts/ValueLineChart;->mGraphWidth:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    .line 931
    invoke-static {v0}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$2500(Lorg/eazegraph/lib/charts/ValueLineChart;)F

    move-result v0

    iget-object v4, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v4}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$400(Lorg/eazegraph/lib/charts/ValueLineChart;)F

    move-result v4

    sub-float v4, v0, v4

    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    .line 932
    invoke-static {v0}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$1600(Lorg/eazegraph/lib/charts/ValueLineChart;)Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    .line 927
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 937
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 951
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 952
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    iput p1, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mGraphWidth:I

    .line 953
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    iput p2, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mGraphHeight:I

    .line 954
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    iget-object v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    iget v1, v1, Lorg/eazegraph/lib/charts/ValueLineChart;->mGraphHeight:I

    iget-object v2, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    iget v2, v2, Lorg/eazegraph/lib/charts/ValueLineChart;->mTopPadding:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$302(Lorg/eazegraph/lib/charts/ValueLineChart;I)I

    .line 955
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 977
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->performClick()Z

    .line 979
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 980
    .local v1, "newX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 982
    .local v2, "newY":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 995
    :pswitch_0
    iget-object v6, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v6}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$1400(Lorg/eazegraph/lib/charts/ValueLineChart;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v6}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$900(Lorg/eazegraph/lib/charts/ValueLineChart;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v10, :cond_2

    .line 996
    iget-object v6, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v6}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$900(Lorg/eazegraph/lib/charts/ValueLineChart;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eazegraph/lib/models/ValueLineSeries;

    invoke-virtual {v6}, Lorg/eazegraph/lib/models/ValueLineSeries;->getSeries()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 998
    .local v4, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 1001
    iget-object v6, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v6}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$900(Lorg/eazegraph/lib/charts/ValueLineChart;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eazegraph/lib/models/ValueLineSeries;

    invoke-virtual {v6}, Lorg/eazegraph/lib/models/ValueLineSeries;->getSeries()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eazegraph/lib/models/ValueLinePoint;

    invoke-virtual {v6}, Lorg/eazegraph/lib/models/ValueLinePoint;->getCoordinates()Lorg/eazegraph/lib/models/Point2D;

    move-result-object v6

    invoke-virtual {v6}, Lorg/eazegraph/lib/models/Point2D;->getX()F

    move-result v6

    cmpl-float v6, v6, v1

    if-nez v6, :cond_3

    .line 1002
    iget-object v7, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    iget-object v6, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v6}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$900(Lorg/eazegraph/lib/charts/ValueLineChart;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eazegraph/lib/models/ValueLineSeries;

    invoke-virtual {v6}, Lorg/eazegraph/lib/models/ValueLineSeries;->getSeries()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eazegraph/lib/models/ValueLinePoint;

    invoke-static {v7, v6}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$1902(Lorg/eazegraph/lib/charts/ValueLineChart;Lorg/eazegraph/lib/models/ValueLinePoint;)Lorg/eazegraph/lib/models/ValueLinePoint;

    .line 1033
    :cond_0
    :goto_1
    iget-object v6, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v6}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$1900(Lorg/eazegraph/lib/charts/ValueLineChart;)Lorg/eazegraph/lib/models/ValueLinePoint;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 1034
    iget-object v6, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    iget-object v7, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v7}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$1900(Lorg/eazegraph/lib/charts/ValueLineChart;)Lorg/eazegraph/lib/models/ValueLinePoint;

    move-result-object v7

    invoke-virtual {v7}, Lorg/eazegraph/lib/models/ValueLinePoint;->getCoordinates()Lorg/eazegraph/lib/models/Point2D;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$1802(Lorg/eazegraph/lib/charts/ValueLineChart;Lorg/eazegraph/lib/models/Point2D;)Lorg/eazegraph/lib/models/Point2D;

    .line 1041
    :goto_2
    iget-object v6, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->mLastPoint:Lorg/eazegraph/lib/models/ValueLinePoint;

    iget-object v7, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v7}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$1900(Lorg/eazegraph/lib/charts/ValueLineChart;)Lorg/eazegraph/lib/models/ValueLinePoint;

    move-result-object v7

    if-eq v6, v7, :cond_1

    .line 1042
    iget-object v6, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v6}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$1900(Lorg/eazegraph/lib/charts/ValueLineChart;)Lorg/eazegraph/lib/models/ValueLinePoint;

    move-result-object v6

    iput-object v6, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->mLastPoint:Lorg/eazegraph/lib/models/ValueLinePoint;

    .line 1044
    iget-object v6, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v6}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$2600(Lorg/eazegraph/lib/charts/ValueLineChart;)V

    .line 1046
    iget-object v6, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v6}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$2700(Lorg/eazegraph/lib/charts/ValueLineChart;)Lorg/eazegraph/lib/communication/IOnPointFocusedListener;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1047
    iget-object v6, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v6}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$2700(Lorg/eazegraph/lib/charts/ValueLineChart;)Lorg/eazegraph/lib/communication/IOnPointFocusedListener;

    move-result-object v7

    iget-object v6, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v6}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$900(Lorg/eazegraph/lib/charts/ValueLineChart;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eazegraph/lib/models/ValueLineSeries;

    invoke-virtual {v6}, Lorg/eazegraph/lib/models/ValueLineSeries;->getSeries()Ljava/util/List;

    move-result-object v6

    iget-object v8, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v8}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$1900(Lorg/eazegraph/lib/charts/ValueLineChart;)Lorg/eazegraph/lib/models/ValueLinePoint;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v7, v6}, Lorg/eazegraph/lib/communication/IOnPointFocusedListener;->onPointFocused(I)V

    .line 1051
    :cond_1
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->invalidate()V

    .line 1052
    iget-object v6, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v6}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$2800(Lorg/eazegraph/lib/charts/ValueLineChart;)Lorg/eazegraph/lib/charts/ValueLineChart$Legend;

    move-result-object v6

    invoke-virtual {v6}, Lorg/eazegraph/lib/charts/ValueLineChart$Legend;->invalidate()V

    .line 1054
    .end local v0    # "i":I
    .end local v4    # "size":I
    :cond_2
    :pswitch_1
    return v10

    .line 1006
    .restart local v0    # "i":I
    .restart local v4    # "size":I
    :cond_3
    add-int/lit8 v6, v4, -0x1

    if-ne v0, v6, :cond_4

    .line 1007
    iget-object v7, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    iget-object v6, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v6}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$900(Lorg/eazegraph/lib/charts/ValueLineChart;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eazegraph/lib/models/ValueLineSeries;

    invoke-virtual {v6}, Lorg/eazegraph/lib/models/ValueLineSeries;->getSeries()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eazegraph/lib/models/ValueLinePoint;

    invoke-static {v7, v6}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$1902(Lorg/eazegraph/lib/charts/ValueLineChart;Lorg/eazegraph/lib/models/ValueLinePoint;)Lorg/eazegraph/lib/models/ValueLinePoint;

    goto/16 :goto_1

    .line 1010
    :cond_4
    iget-object v6, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v6}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$900(Lorg/eazegraph/lib/charts/ValueLineChart;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eazegraph/lib/models/ValueLineSeries;

    invoke-virtual {v6}, Lorg/eazegraph/lib/models/ValueLineSeries;->getSeries()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eazegraph/lib/models/ValueLinePoint;

    invoke-virtual {v6}, Lorg/eazegraph/lib/models/ValueLinePoint;->getCoordinates()Lorg/eazegraph/lib/models/Point2D;

    move-result-object v6

    invoke-virtual {v6}, Lorg/eazegraph/lib/models/Point2D;->getX()F

    move-result v5

    .line 1011
    .local v5, "x":F
    iget-object v6, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v6}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$900(Lorg/eazegraph/lib/charts/ValueLineChart;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eazegraph/lib/models/ValueLineSeries;

    invoke-virtual {v6}, Lorg/eazegraph/lib/models/ValueLineSeries;->getSeries()Ljava/util/List;

    move-result-object v6

    add-int/lit8 v7, v0, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eazegraph/lib/models/ValueLinePoint;

    invoke-virtual {v6}, Lorg/eazegraph/lib/models/ValueLinePoint;->getCoordinates()Lorg/eazegraph/lib/models/Point2D;

    move-result-object v6

    invoke-virtual {v6}, Lorg/eazegraph/lib/models/Point2D;->getX()F

    move-result v3

    .line 1014
    .local v3, "nextX":F
    cmpl-float v6, v1, v5

    if-lez v6, :cond_6

    cmpg-float v6, v1, v3

    if-gez v6, :cond_6

    .line 1016
    sub-float v6, v1, v5

    sub-float v7, v3, v1

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    .line 1017
    iget-object v7, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    iget-object v6, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v6}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$900(Lorg/eazegraph/lib/charts/ValueLineChart;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eazegraph/lib/models/ValueLineSeries;

    invoke-virtual {v6}, Lorg/eazegraph/lib/models/ValueLineSeries;->getSeries()Ljava/util/List;

    move-result-object v6

    add-int/lit8 v8, v0, 0x1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eazegraph/lib/models/ValueLinePoint;

    invoke-static {v7, v6}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$1902(Lorg/eazegraph/lib/charts/ValueLineChart;Lorg/eazegraph/lib/models/ValueLinePoint;)Lorg/eazegraph/lib/models/ValueLinePoint;

    goto/16 :goto_1

    .line 1020
    :cond_5
    iget-object v7, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    iget-object v6, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v6}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$900(Lorg/eazegraph/lib/charts/ValueLineChart;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eazegraph/lib/models/ValueLineSeries;

    invoke-virtual {v6}, Lorg/eazegraph/lib/models/ValueLineSeries;->getSeries()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eazegraph/lib/models/ValueLinePoint;

    invoke-static {v7, v6}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$1902(Lorg/eazegraph/lib/charts/ValueLineChart;Lorg/eazegraph/lib/models/ValueLinePoint;)Lorg/eazegraph/lib/models/ValueLinePoint;

    goto/16 :goto_1

    .line 1025
    :cond_6
    cmpl-float v6, v1, v5

    if-lez v6, :cond_7

    cmpg-float v6, v1, v3

    if-gez v6, :cond_7

    .line 1026
    iget-object v7, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    iget-object v6, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v6}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$900(Lorg/eazegraph/lib/charts/ValueLineChart;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eazegraph/lib/models/ValueLineSeries;

    invoke-virtual {v6}, Lorg/eazegraph/lib/models/ValueLineSeries;->getSeries()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eazegraph/lib/models/ValueLinePoint;

    invoke-static {v7, v6}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$1902(Lorg/eazegraph/lib/charts/ValueLineChart;Lorg/eazegraph/lib/models/ValueLinePoint;)Lorg/eazegraph/lib/models/ValueLinePoint;

    goto/16 :goto_1

    .line 998
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1037
    .end local v3    # "nextX":F
    .end local v5    # "x":F
    :cond_8
    iget-object v6, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v6}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$1800(Lorg/eazegraph/lib/charts/ValueLineChart;)Lorg/eazegraph/lib/models/Point2D;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/eazegraph/lib/models/Point2D;->setX(F)V

    .line 1038
    iget-object v6, p0, Lorg/eazegraph/lib/charts/ValueLineChart$GraphOverlay;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v6}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$1800(Lorg/eazegraph/lib/charts/ValueLineChart;)Lorg/eazegraph/lib/models/Point2D;

    move-result-object v6

    invoke-virtual {v6, v2}, Lorg/eazegraph/lib/models/Point2D;->setY(F)V

    goto/16 :goto_2

    .line 982
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 1059
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0
.end method
