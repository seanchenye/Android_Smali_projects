.class Lorg/eazegraph/lib/charts/PieChart$Legend;
.super Landroid/view/View;
.source "PieChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eazegraph/lib/charts/PieChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Legend"
.end annotation


# instance fields
.field private mIndicatorBottomMargin:F

.field private mIndicatorSize:F

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTriangle:Landroid/graphics/Path;

.field final synthetic this$0:Lorg/eazegraph/lib/charts/PieChart;


# direct methods
.method private constructor <init>(Lorg/eazegraph/lib/charts/PieChart;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1120
    iput-object p1, p0, Lorg/eazegraph/lib/charts/PieChart$Legend;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    .line 1121
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1186
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/eazegraph/lib/utils/Utils;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lorg/eazegraph/lib/charts/PieChart$Legend;->mIndicatorSize:F

    .line 1187
    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lorg/eazegraph/lib/utils/Utils;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lorg/eazegraph/lib/charts/PieChart$Legend;->mIndicatorBottomMargin:F

    .line 1189
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/eazegraph/lib/charts/PieChart$Legend;->mTextBounds:Landroid/graphics/Rect;

    .line 1122
    return-void
.end method

.method synthetic constructor <init>(Lorg/eazegraph/lib/charts/PieChart;Landroid/content/Context;Lorg/eazegraph/lib/charts/PieChart$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/eazegraph/lib/charts/PieChart;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lorg/eazegraph/lib/charts/PieChart$1;

    .prologue
    .line 1113
    invoke-direct {p0, p1, p2}, Lorg/eazegraph/lib/charts/PieChart$Legend;-><init>(Lorg/eazegraph/lib/charts/PieChart;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    .line 1131
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1133
    iget-object v3, p0, Lorg/eazegraph/lib/charts/PieChart$Legend;->mTriangle:Landroid/graphics/Path;

    iget-object v4, p0, Lorg/eazegraph/lib/charts/PieChart$Legend;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v4}, Lorg/eazegraph/lib/charts/PieChart;->access$2600(Lorg/eazegraph/lib/charts/PieChart;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1135
    iget-object v3, p0, Lorg/eazegraph/lib/charts/PieChart$Legend;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    iget-object v4, p0, Lorg/eazegraph/lib/charts/PieChart$Legend;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v4}, Lorg/eazegraph/lib/charts/PieChart;->access$2600(Lorg/eazegraph/lib/charts/PieChart;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-static {v4}, Lorg/eazegraph/lib/utils/Utils;->calculateMaxTextHeight(Landroid/graphics/Paint;)F

    move-result v0

    iput v0, v3, Lorg/eazegraph/lib/charts/PieChart;->mMaxFontHeight:F

    .line 1137
    .local v0, "height":F
    iget-object v3, p0, Lorg/eazegraph/lib/charts/PieChart$Legend;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v3}, Lorg/eazegraph/lib/charts/PieChart;->access$700(Lorg/eazegraph/lib/charts/PieChart;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1138
    iget-object v3, p0, Lorg/eazegraph/lib/charts/PieChart$Legend;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v3}, Lorg/eazegraph/lib/charts/PieChart;->access$700(Lorg/eazegraph/lib/charts/PieChart;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lorg/eazegraph/lib/charts/PieChart$Legend;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v4}, Lorg/eazegraph/lib/charts/PieChart;->access$2200(Lorg/eazegraph/lib/charts/PieChart;)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eazegraph/lib/models/PieModel;

    .line 1142
    .local v1, "model":Lorg/eazegraph/lib/models/PieModel;
    iget-object v3, p0, Lorg/eazegraph/lib/charts/PieChart$Legend;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v3}, Lorg/eazegraph/lib/charts/PieChart;->access$2600(Lorg/eazegraph/lib/charts/PieChart;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v1}, Lorg/eazegraph/lib/models/PieModel;->getLegendLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/eazegraph/lib/models/PieModel;->getLegendLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lorg/eazegraph/lib/charts/PieChart$Legend;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v8, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1144
    invoke-virtual {v1}, Lorg/eazegraph/lib/models/PieModel;->getLegendLabel()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/eazegraph/lib/charts/PieChart$Legend;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    iget v4, v4, Lorg/eazegraph/lib/charts/PieChart;->mLegendWidth:F

    div-float/2addr v4, v7

    iget-object v5, p0, Lorg/eazegraph/lib/charts/PieChart$Legend;->mTextBounds:Landroid/graphics/Rect;

    .line 1145
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lorg/eazegraph/lib/charts/PieChart$Legend;->mIndicatorSize:F

    mul-float/2addr v5, v7

    iget v6, p0, Lorg/eazegraph/lib/charts/PieChart$Legend;->mIndicatorBottomMargin:F

    add-float/2addr v5, v6

    add-float/2addr v5, v0

    iget-object v6, p0, Lorg/eazegraph/lib/charts/PieChart$Legend;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    .line 1147
    invoke-static {v6}, Lorg/eazegraph/lib/charts/PieChart;->access$2600(Lorg/eazegraph/lib/charts/PieChart;)Landroid/graphics/Paint;

    move-result-object v6

    .line 1143
    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1160
    .end local v1    # "model":Lorg/eazegraph/lib/models/PieModel;
    :goto_0
    return-void

    .line 1151
    :cond_0
    const-string/jumbo v2, "No Data available"

    .line 1152
    .local v2, "str":Ljava/lang/String;
    iget-object v3, p0, Lorg/eazegraph/lib/charts/PieChart$Legend;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v3}, Lorg/eazegraph/lib/charts/PieChart;->access$2600(Lorg/eazegraph/lib/charts/PieChart;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lorg/eazegraph/lib/charts/PieChart$Legend;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v2, v8, v4, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1153
    iget-object v3, p0, Lorg/eazegraph/lib/charts/PieChart$Legend;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    iget v3, v3, Lorg/eazegraph/lib/charts/PieChart;->mLegendWidth:F

    div-float/2addr v3, v7

    iget-object v4, p0, Lorg/eazegraph/lib/charts/PieChart$Legend;->mTextBounds:Landroid/graphics/Rect;

    .line 1155
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lorg/eazegraph/lib/charts/PieChart$Legend;->mIndicatorSize:F

    mul-float/2addr v4, v7

    iget v5, p0, Lorg/eazegraph/lib/charts/PieChart$Legend;->mIndicatorBottomMargin:F

    add-float/2addr v4, v5

    add-float/2addr v4, v0

    iget-object v5, p0, Lorg/eazegraph/lib/charts/PieChart$Legend;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    .line 1157
    invoke-static {v5}, Lorg/eazegraph/lib/charts/PieChart;->access$2600(Lorg/eazegraph/lib/charts/PieChart;)Landroid/graphics/Paint;

    move-result-object v5

    .line 1153
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 1174
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 1176
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/eazegraph/lib/charts/PieChart$Legend;->mTriangle:Landroid/graphics/Path;

    .line 1177
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart$Legend;->mTriangle:Landroid/graphics/Path;

    div-int/lit8 v1, p1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lorg/eazegraph/lib/charts/PieChart$Legend;->mIndicatorSize:F

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/eazegraph/lib/charts/PieChart$Legend;->mIndicatorSize:F

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1178
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart$Legend;->mTriangle:Landroid/graphics/Path;

    div-int/lit8 v1, p1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lorg/eazegraph/lib/charts/PieChart$Legend;->mIndicatorSize:F

    add-float/2addr v1, v2

    iget v2, p0, Lorg/eazegraph/lib/charts/PieChart$Legend;->mIndicatorSize:F

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1179
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart$Legend;->mTriangle:Landroid/graphics/Path;

    div-int/lit8 v1, p1, 0x2

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1180
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart$Legend;->mTriangle:Landroid/graphics/Path;

    div-int/lit8 v1, p1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lorg/eazegraph/lib/charts/PieChart$Legend;->mIndicatorSize:F

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/eazegraph/lib/charts/PieChart$Legend;->mIndicatorSize:F

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1182
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart$Legend;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    int-to-float v1, p1

    iput v1, v0, Lorg/eazegraph/lib/charts/PieChart;->mLegendWidth:F

    .line 1183
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart$Legend;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    int-to-float v1, p2

    iput v1, v0, Lorg/eazegraph/lib/charts/PieChart;->mLegendHeight:F

    .line 1184
    return-void
.end method
