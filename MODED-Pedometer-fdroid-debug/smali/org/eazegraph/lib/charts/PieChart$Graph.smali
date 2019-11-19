.class Lorg/eazegraph/lib/charts/PieChart$Graph;
.super Landroid/view/View;
.source "PieChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eazegraph/lib/charts/PieChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Graph"
.end annotation


# instance fields
.field private mPivot:Landroid/graphics/PointF;

.field private mRotation:F

.field private mTransform:Landroid/graphics/Matrix;

.field final synthetic this$0:Lorg/eazegraph/lib/charts/PieChart;


# direct methods
.method private constructor <init>(Lorg/eazegraph/lib/charts/PieChart;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 889
    iput-object p1, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    .line 890
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1047
    const/4 v0, 0x0

    iput v0, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->mRotation:F

    .line 1048
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->mTransform:Landroid/graphics/Matrix;

    .line 1049
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->mPivot:Landroid/graphics/PointF;

    .line 891
    return-void
.end method

.method synthetic constructor <init>(Lorg/eazegraph/lib/charts/PieChart;Landroid/content/Context;Lorg/eazegraph/lib/charts/PieChart$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/eazegraph/lib/charts/PieChart;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lorg/eazegraph/lib/charts/PieChart$1;

    .prologue
    .line 882
    invoke-direct {p0, p1, p2}, Lorg/eazegraph/lib/charts/PieChart$Graph;-><init>(Lorg/eazegraph/lib/charts/PieChart;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public accelerate()V
    .locals 1

    .prologue
    .line 897
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v0, p0}, Lorg/eazegraph/lib/charts/PieChart;->access$500(Lorg/eazegraph/lib/charts/PieChart;Landroid/view/View;)V

    .line 898
    return-void
.end method

.method public decelerate()V
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v0, p0}, Lorg/eazegraph/lib/charts/PieChart;->access$600(Lorg/eazegraph/lib/charts/PieChart;Landroid/view/View;)V

    .line 905
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    const/high16 v8, 0x43b40000    # 360.0f

    const/4 v4, 0x1

    .line 914
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 916
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v0}, Lorg/eazegraph/lib/charts/PieChart;->access$700(Lorg/eazegraph/lib/charts/PieChart;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 918
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 919
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 920
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->mTransform:Landroid/graphics/Matrix;

    iget v1, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->mRotation:F

    iget-object v5, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->mPivot:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->mPivot:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v5, v6}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 921
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 924
    :cond_0
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v0}, Lorg/eazegraph/lib/charts/PieChart;->access$700(Lorg/eazegraph/lib/charts/PieChart;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/eazegraph/lib/models/PieModel;

    .line 925
    .local v11, "model":Lorg/eazegraph/lib/models/PieModel;
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v0}, Lorg/eazegraph/lib/charts/PieChart;->access$800(Lorg/eazegraph/lib/charts/PieChart;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v11}, Lorg/eazegraph/lib/models/PieModel;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 929
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v0}, Lorg/eazegraph/lib/charts/PieChart;->access$900(Lorg/eazegraph/lib/charts/PieChart;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 930
    invoke-virtual {v11}, Lorg/eazegraph/lib/models/PieModel;->getStartAngle()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    iget v1, v1, Lorg/eazegraph/lib/charts/PieChart;->mRevealValue:F

    mul-float v2, v0, v1

    .line 936
    .local v2, "startAngle":F
    :goto_1
    invoke-virtual {v11}, Lorg/eazegraph/lib/models/PieModel;->getEndAngle()I

    move-result v0

    invoke-virtual {v11}, Lorg/eazegraph/lib/models/PieModel;->getStartAngle()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    iget v1, v1, Lorg/eazegraph/lib/charts/PieChart;->mRevealValue:F

    mul-float v3, v0, v1

    .line 937
    .local v3, "sweepAngle":F
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v0}, Lorg/eazegraph/lib/charts/PieChart;->access$1000(Lorg/eazegraph/lib/charts/PieChart;)Landroid/graphics/RectF;

    move-result-object v1

    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    .line 940
    invoke-static {v0}, Lorg/eazegraph/lib/charts/PieChart;->access$800(Lorg/eazegraph/lib/charts/PieChart;)Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    .line 937
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 943
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v0}, Lorg/eazegraph/lib/charts/PieChart;->access$1100(Lorg/eazegraph/lib/charts/PieChart;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 944
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v0}, Lorg/eazegraph/lib/charts/PieChart;->access$800(Lorg/eazegraph/lib/charts/PieChart;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v11}, Lorg/eazegraph/lib/models/PieModel;->getHighlightedColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 946
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v0}, Lorg/eazegraph/lib/charts/PieChart;->access$1200(Lorg/eazegraph/lib/charts/PieChart;)Landroid/graphics/RectF;

    move-result-object v1

    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    .line 949
    invoke-static {v0}, Lorg/eazegraph/lib/charts/PieChart;->access$800(Lorg/eazegraph/lib/charts/PieChart;)Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    .line 946
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 933
    .end local v2    # "startAngle":F
    .end local v3    # "sweepAngle":F
    :cond_2
    invoke-virtual {v11}, Lorg/eazegraph/lib/models/PieModel;->getEndAngle()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    iget v1, v1, Lorg/eazegraph/lib/charts/PieChart;->mRevealValue:F

    mul-float/2addr v0, v1

    sub-float v2, v8, v0

    .restart local v2    # "startAngle":F
    goto :goto_1

    .line 954
    .end local v2    # "startAngle":F
    .end local v11    # "model":Lorg/eazegraph/lib/models/PieModel;
    :cond_3
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v0}, Lorg/eazegraph/lib/charts/PieChart;->access$1100(Lorg/eazegraph/lib/charts/PieChart;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 955
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v0}, Lorg/eazegraph/lib/charts/PieChart;->access$800(Lorg/eazegraph/lib/charts/PieChart;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v1}, Lorg/eazegraph/lib/charts/PieChart;->access$1300(Lorg/eazegraph/lib/charts/PieChart;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 957
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v0}, Lorg/eazegraph/lib/charts/PieChart;->access$900(Lorg/eazegraph/lib/charts/PieChart;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 958
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v0}, Lorg/eazegraph/lib/charts/PieChart;->access$1400(Lorg/eazegraph/lib/charts/PieChart;)Landroid/graphics/RectF;

    move-result-object v6

    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    iget v0, v0, Lorg/eazegraph/lib/charts/PieChart;->mRevealValue:F

    mul-float/2addr v8, v0

    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    .line 962
    invoke-static {v0}, Lorg/eazegraph/lib/charts/PieChart;->access$800(Lorg/eazegraph/lib/charts/PieChart;)Landroid/graphics/Paint;

    move-result-object v10

    move-object v5, p1

    move v9, v4

    .line 958
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 976
    :cond_4
    :goto_2
    return-void

    .line 965
    :cond_5
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v0}, Lorg/eazegraph/lib/charts/PieChart;->access$1400(Lorg/eazegraph/lib/charts/PieChart;)Landroid/graphics/RectF;

    move-result-object v6

    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    iget v0, v0, Lorg/eazegraph/lib/charts/PieChart;->mRevealValue:F

    neg-float v0, v0

    mul-float/2addr v8, v0

    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    .line 969
    invoke-static {v0}, Lorg/eazegraph/lib/charts/PieChart;->access$800(Lorg/eazegraph/lib/charts/PieChart;)Landroid/graphics/Paint;

    move-result-object v10

    move-object v5, p1

    move v9, v4

    .line 965
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 11
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/high16 v9, 0x42c80000    # 100.0f

    const/4 v8, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    .line 990
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 992
    iget-object v4, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    iget v4, v4, Lorg/eazegraph/lib/charts/PieChart;->mLeftPadding:I

    sub-int v4, p1, v4

    iget-object v5, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    iget v5, v5, Lorg/eazegraph/lib/charts/PieChart;->mRightPadding:I

    sub-int/2addr v4, v5

    int-to-float v3, v4

    .line 993
    .local v3, "newWidth":F
    iget-object v4, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    iget v4, v4, Lorg/eazegraph/lib/charts/PieChart;->mTopPadding:I

    sub-int v4, p2, v4

    iget-object v5, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    iget v5, v5, Lorg/eazegraph/lib/charts/PieChart;->mBottomPadding:I

    sub-int/2addr v4, v5

    int-to-float v2, v4

    .line 995
    .local v2, "newHeight":F
    iget-object v4, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Lorg/eazegraph/lib/charts/PieChart;->access$1502(Lorg/eazegraph/lib/charts/PieChart;F)F

    .line 996
    iget-object v4, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    iget-object v5, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v5}, Lorg/eazegraph/lib/charts/PieChart;->access$1500(Lorg/eazegraph/lib/charts/PieChart;)F

    move-result v5

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Lorg/eazegraph/lib/charts/PieChart;->access$1602(Lorg/eazegraph/lib/charts/PieChart;F)F

    .line 998
    int-to-float v4, p1

    iget-object v5, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v5}, Lorg/eazegraph/lib/charts/PieChart;->access$1500(Lorg/eazegraph/lib/charts/PieChart;)F

    move-result v5

    sub-float/2addr v4, v5

    div-float v1, v4, v6

    .line 999
    .local v1, "centeredValueWidth":F
    int-to-float v4, p2

    iget-object v5, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v5}, Lorg/eazegraph/lib/charts/PieChart;->access$1500(Lorg/eazegraph/lib/charts/PieChart;)F

    move-result v5

    sub-float/2addr v4, v5

    div-float v0, v4, v6

    .line 1000
    .local v0, "centeredValueHeight":F
    iget-object v4, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    new-instance v5, Landroid/graphics/RectF;

    iget-object v6, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    .line 1003
    invoke-static {v6}, Lorg/eazegraph/lib/charts/PieChart;->access$1500(Lorg/eazegraph/lib/charts/PieChart;)F

    move-result v6

    iget-object v7, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    .line 1004
    invoke-static {v7}, Lorg/eazegraph/lib/charts/PieChart;->access$1500(Lorg/eazegraph/lib/charts/PieChart;)F

    move-result v7

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1000
    invoke-static {v4, v5}, Lorg/eazegraph/lib/charts/PieChart;->access$1002(Lorg/eazegraph/lib/charts/PieChart;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 1005
    iget-object v4, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v4}, Lorg/eazegraph/lib/charts/PieChart;->access$1000(Lorg/eazegraph/lib/charts/PieChart;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 1007
    iget-object v4, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    iget-object v5, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v5}, Lorg/eazegraph/lib/charts/PieChart;->access$1600(Lorg/eazegraph/lib/charts/PieChart;)F

    move-result v5

    div-float/2addr v5, v9

    iget-object v6, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v6}, Lorg/eazegraph/lib/charts/PieChart;->access$1800(Lorg/eazegraph/lib/charts/PieChart;)F

    move-result v6

    mul-float/2addr v5, v6

    invoke-static {v4, v5}, Lorg/eazegraph/lib/charts/PieChart;->access$1702(Lorg/eazegraph/lib/charts/PieChart;F)F

    .line 1008
    iget-object v4, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    iget-object v5, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v5}, Lorg/eazegraph/lib/charts/PieChart;->access$1600(Lorg/eazegraph/lib/charts/PieChart;)F

    move-result v5

    div-float/2addr v5, v9

    iget-object v6, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v6}, Lorg/eazegraph/lib/charts/PieChart;->access$2000(Lorg/eazegraph/lib/charts/PieChart;)F

    move-result v6

    mul-float/2addr v5, v6

    invoke-static {v4, v5}, Lorg/eazegraph/lib/charts/PieChart;->access$1902(Lorg/eazegraph/lib/charts/PieChart;F)F

    .line 1010
    iget-object v4, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    new-instance v5, Landroid/graphics/RectF;

    iget-object v6, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    .line 1011
    invoke-static {v6}, Lorg/eazegraph/lib/charts/PieChart;->access$1000(Lorg/eazegraph/lib/charts/PieChart;)Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    iget-object v7, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v7}, Lorg/eazegraph/lib/charts/PieChart;->access$1700(Lorg/eazegraph/lib/charts/PieChart;)F

    move-result v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v7}, Lorg/eazegraph/lib/charts/PieChart;->access$1900(Lorg/eazegraph/lib/charts/PieChart;)F

    move-result v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    .line 1012
    invoke-static {v7}, Lorg/eazegraph/lib/charts/PieChart;->access$1000(Lorg/eazegraph/lib/charts/PieChart;)Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    iget-object v8, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v8}, Lorg/eazegraph/lib/charts/PieChart;->access$1700(Lorg/eazegraph/lib/charts/PieChart;)F

    move-result v8

    sub-float/2addr v7, v8

    iget-object v8, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v8}, Lorg/eazegraph/lib/charts/PieChart;->access$1900(Lorg/eazegraph/lib/charts/PieChart;)F

    move-result v8

    sub-float/2addr v7, v8

    iget-object v8, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    .line 1013
    invoke-static {v8}, Lorg/eazegraph/lib/charts/PieChart;->access$1000(Lorg/eazegraph/lib/charts/PieChart;)Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    iget-object v9, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v9}, Lorg/eazegraph/lib/charts/PieChart;->access$1700(Lorg/eazegraph/lib/charts/PieChart;)F

    move-result v9

    add-float/2addr v8, v9

    iget-object v9, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v9}, Lorg/eazegraph/lib/charts/PieChart;->access$1900(Lorg/eazegraph/lib/charts/PieChart;)F

    move-result v9

    add-float/2addr v8, v9

    iget-object v9, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    .line 1014
    invoke-static {v9}, Lorg/eazegraph/lib/charts/PieChart;->access$1000(Lorg/eazegraph/lib/charts/PieChart;)Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    iget-object v10, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v10}, Lorg/eazegraph/lib/charts/PieChart;->access$1700(Lorg/eazegraph/lib/charts/PieChart;)F

    move-result v10

    add-float/2addr v9, v10

    iget-object v10, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v10}, Lorg/eazegraph/lib/charts/PieChart;->access$1900(Lorg/eazegraph/lib/charts/PieChart;)F

    move-result v10

    add-float/2addr v9, v10

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1010
    invoke-static {v4, v5}, Lorg/eazegraph/lib/charts/PieChart;->access$1202(Lorg/eazegraph/lib/charts/PieChart;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 1016
    iget-object v4, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    new-instance v5, Landroid/graphics/RectF;

    iget-object v6, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    .line 1017
    invoke-static {v6}, Lorg/eazegraph/lib/charts/PieChart;->access$1000(Lorg/eazegraph/lib/charts/PieChart;)Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    iget-object v7, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v7}, Lorg/eazegraph/lib/charts/PieChart;->access$1700(Lorg/eazegraph/lib/charts/PieChart;)F

    move-result v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    .line 1018
    invoke-static {v7}, Lorg/eazegraph/lib/charts/PieChart;->access$1000(Lorg/eazegraph/lib/charts/PieChart;)Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    iget-object v8, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v8}, Lorg/eazegraph/lib/charts/PieChart;->access$1700(Lorg/eazegraph/lib/charts/PieChart;)F

    move-result v8

    sub-float/2addr v7, v8

    iget-object v8, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    .line 1019
    invoke-static {v8}, Lorg/eazegraph/lib/charts/PieChart;->access$1000(Lorg/eazegraph/lib/charts/PieChart;)Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    iget-object v9, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v9}, Lorg/eazegraph/lib/charts/PieChart;->access$1700(Lorg/eazegraph/lib/charts/PieChart;)F

    move-result v9

    add-float/2addr v8, v9

    iget-object v9, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    .line 1020
    invoke-static {v9}, Lorg/eazegraph/lib/charts/PieChart;->access$1000(Lorg/eazegraph/lib/charts/PieChart;)Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    iget-object v10, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v10}, Lorg/eazegraph/lib/charts/PieChart;->access$1700(Lorg/eazegraph/lib/charts/PieChart;)F

    move-result v10

    add-float/2addr v9, v10

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1016
    invoke-static {v4, v5}, Lorg/eazegraph/lib/charts/PieChart;->access$1402(Lorg/eazegraph/lib/charts/PieChart;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 1022
    iget-object v4, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    iput p1, v4, Lorg/eazegraph/lib/charts/PieChart;->mGraphWidth:I

    .line 1023
    iget-object v4, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    iput p2, v4, Lorg/eazegraph/lib/charts/PieChart;->mGraphHeight:I

    .line 1025
    return-void
.end method

.method public rotateTo(F)V
    .locals 2
    .param p1, "pieRotation"    # F

    .prologue
    .line 1028
    iput p1, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->mRotation:F

    .line 1029
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 1030
    invoke-virtual {p0, p1}, Lorg/eazegraph/lib/charts/PieChart$Graph;->setRotation(F)V

    .line 1034
    :goto_0
    return-void

    .line 1032
    :cond_0
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/PieChart$Graph;->invalidate()V

    goto :goto_0
.end method

.method public setPivot(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1037
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->mPivot:Landroid/graphics/PointF;

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 1038
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart$Graph;->mPivot:Landroid/graphics/PointF;

    iput p2, v0, Landroid/graphics/PointF;->y:F

    .line 1039
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 1040
    invoke-virtual {p0, p1}, Lorg/eazegraph/lib/charts/PieChart$Graph;->setPivotX(F)V

    .line 1041
    invoke-virtual {p0, p2}, Lorg/eazegraph/lib/charts/PieChart$Graph;->setPivotY(F)V

    .line 1045
    :goto_0
    return-void

    .line 1043
    :cond_0
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/PieChart$Graph;->invalidate()V

    goto :goto_0
.end method
