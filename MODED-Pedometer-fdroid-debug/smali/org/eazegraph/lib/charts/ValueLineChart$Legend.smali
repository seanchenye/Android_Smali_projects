.class Lorg/eazegraph/lib/charts/ValueLineChart$Legend;
.super Landroid/view/View;
.source "ValueLineChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eazegraph/lib/charts/ValueLineChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Legend"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eazegraph/lib/charts/ValueLineChart;


# direct methods
.method private constructor <init>(Lorg/eazegraph/lib/charts/ValueLineChart;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1076
    iput-object p1, p0, Lorg/eazegraph/lib/charts/ValueLineChart$Legend;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    .line 1077
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1078
    return-void
.end method

.method synthetic constructor <init>(Lorg/eazegraph/lib/charts/ValueLineChart;Landroid/content/Context;Lorg/eazegraph/lib/charts/ValueLineChart$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/eazegraph/lib/charts/ValueLineChart;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lorg/eazegraph/lib/charts/ValueLineChart$1;

    .prologue
    .line 1069
    invoke-direct {p0, p1, p2}, Lorg/eazegraph/lib/charts/ValueLineChart$Legend;-><init>(Lorg/eazegraph/lib/charts/ValueLineChart;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    .line 1087
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1089
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$Legend;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v0}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$1300(Lorg/eazegraph/lib/charts/ValueLineChart;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1091
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$Legend;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v0}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$900(Lorg/eazegraph/lib/charts/ValueLineChart;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1092
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$Legend;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v0}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$2900(Lorg/eazegraph/lib/charts/ValueLineChart;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1093
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$Legend;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v0}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$3000(Lorg/eazegraph/lib/charts/ValueLineChart;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/eazegraph/lib/models/LegendModel;

    .line 1094
    .local v8, "model":Lorg/eazegraph/lib/models/LegendModel;
    invoke-virtual {v8}, Lorg/eazegraph/lib/models/LegendModel;->getTextBounds()Landroid/graphics/Rect;

    move-result-object v9

    .line 1095
    .local v9, "textBounds":Landroid/graphics/Rect;
    invoke-virtual {v8}, Lorg/eazegraph/lib/models/LegendModel;->getLegendBounds()Landroid/graphics/RectF;

    move-result-object v6

    .line 1096
    .local v6, "bounds":Landroid/graphics/RectF;
    invoke-virtual {v8}, Lorg/eazegraph/lib/models/LegendModel;->getLegendLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, p0, Lorg/eazegraph/lib/charts/ValueLineChart$Legend;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v3}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$1300(Lorg/eazegraph/lib/charts/ValueLineChart;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1097
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lorg/eazegraph/lib/charts/ValueLineChart$Legend;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    iget v2, v2, Lorg/eazegraph/lib/charts/ValueLineChart;->mLegendTopPadding:F

    sub-float v2, v0, v2

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$Legend;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    iget v4, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mLegendTopPadding:F

    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$Legend;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v0}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$1300(Lorg/eazegraph/lib/charts/ValueLineChart;)Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1100
    .end local v6    # "bounds":Landroid/graphics/RectF;
    .end local v8    # "model":Lorg/eazegraph/lib/models/LegendModel;
    .end local v9    # "textBounds":Landroid/graphics/Rect;
    :cond_0
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$Legend;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v0}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$900(Lorg/eazegraph/lib/charts/ValueLineChart;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eazegraph/lib/models/ValueLineSeries;

    invoke-virtual {v0}, Lorg/eazegraph/lib/models/ValueLineSeries;->getSeries()Ljava/util/List;

    move-result-object v7

    .line 1101
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<+Lorg/eazegraph/lib/models/BaseModel;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/eazegraph/lib/models/BaseModel;

    .line 1102
    .local v8, "model":Lorg/eazegraph/lib/models/BaseModel;
    invoke-virtual {v8}, Lorg/eazegraph/lib/models/BaseModel;->canShowLabel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1103
    invoke-virtual {v8}, Lorg/eazegraph/lib/models/BaseModel;->getLegendBounds()Landroid/graphics/RectF;

    move-result-object v6

    .line 1104
    .restart local v6    # "bounds":Landroid/graphics/RectF;
    invoke-virtual {v8}, Lorg/eazegraph/lib/models/BaseModel;->getLegendLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Lorg/eazegraph/lib/models/BaseModel;->getLegendLabelPosition()I

    move-result v1

    int-to-float v1, v1

    iget v2, v6, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lorg/eazegraph/lib/charts/ValueLineChart$Legend;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    iget v3, v3, Lorg/eazegraph/lib/charts/ValueLineChart;->mMaxFontHeight:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/eazegraph/lib/charts/ValueLineChart$Legend;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v3}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$1300(Lorg/eazegraph/lib/charts/ValueLineChart;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1106
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lorg/eazegraph/lib/charts/ValueLineChart$Legend;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    iget v2, v2, Lorg/eazegraph/lib/charts/ValueLineChart;->mMaxFontHeight:F

    mul-float/2addr v2, v11

    sub-float/2addr v0, v2

    iget-object v2, p0, Lorg/eazegraph/lib/charts/ValueLineChart$Legend;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    iget v2, v2, Lorg/eazegraph/lib/charts/ValueLineChart;->mLegendTopPadding:F

    sub-float v2, v0, v2

    .line 1108
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$Legend;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    iget v4, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mLegendTopPadding:F

    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$Legend;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    .line 1109
    invoke-static {v0}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$1300(Lorg/eazegraph/lib/charts/ValueLineChart;)Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    .line 1105
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 1115
    .end local v6    # "bounds":Landroid/graphics/RectF;
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<+Lorg/eazegraph/lib/models/BaseModel;>;"
    .end local v8    # "model":Lorg/eazegraph/lib/models/BaseModel;
    :cond_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1129
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 1130
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$Legend;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    int-to-float v1, p1

    iput v1, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mLegendWidth:F

    .line 1131
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$Legend;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    int-to-float v1, p2

    iput v1, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mLegendHeight:F

    .line 1132
    return-void
.end method
