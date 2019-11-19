.class Lorg/eazegraph/lib/charts/PieChart$InnerValueView;
.super Landroid/view/View;
.source "PieChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eazegraph/lib/charts/PieChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerValueView"
.end annotation


# instance fields
.field private mValueTextBounds:Landroid/graphics/Rect;

.field final synthetic this$0:Lorg/eazegraph/lib/charts/PieChart;


# direct methods
.method public constructor <init>(Lorg/eazegraph/lib/charts/PieChart;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1060
    iput-object p1, p0, Lorg/eazegraph/lib/charts/PieChart$InnerValueView;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    .line 1061
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/eazegraph/lib/charts/PieChart$InnerValueView;->mValueTextBounds:Landroid/graphics/Rect;

    .line 1062
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1071
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1073
    iget-object v1, p0, Lorg/eazegraph/lib/charts/PieChart$InnerValueView;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v1}, Lorg/eazegraph/lib/charts/PieChart;->access$700(Lorg/eazegraph/lib/charts/PieChart;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/eazegraph/lib/charts/PieChart$InnerValueView;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v1}, Lorg/eazegraph/lib/charts/PieChart;->access$2100(Lorg/eazegraph/lib/charts/PieChart;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1074
    iget-object v1, p0, Lorg/eazegraph/lib/charts/PieChart$InnerValueView;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v1}, Lorg/eazegraph/lib/charts/PieChart;->access$700(Lorg/eazegraph/lib/charts/PieChart;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/eazegraph/lib/charts/PieChart$InnerValueView;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v2}, Lorg/eazegraph/lib/charts/PieChart;->access$2200(Lorg/eazegraph/lib/charts/PieChart;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eazegraph/lib/models/PieModel;

    .line 1076
    .local v0, "model":Lorg/eazegraph/lib/models/PieModel;
    iget-object v1, p0, Lorg/eazegraph/lib/charts/PieChart$InnerValueView;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v1}, Lorg/eazegraph/lib/charts/PieChart;->access$2300(Lorg/eazegraph/lib/charts/PieChart;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1077
    iget-object v1, p0, Lorg/eazegraph/lib/charts/PieChart$InnerValueView;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-virtual {v0}, Lorg/eazegraph/lib/models/PieModel;->getValue()F

    move-result v2

    iget-object v3, p0, Lorg/eazegraph/lib/charts/PieChart$InnerValueView;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    iget-boolean v3, v3, Lorg/eazegraph/lib/charts/PieChart;->mShowDecimal:Z

    invoke-static {v2, v3}, Lorg/eazegraph/lib/utils/Utils;->getFloatString(FZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eazegraph/lib/charts/PieChart;->access$2402(Lorg/eazegraph/lib/charts/PieChart;Ljava/lang/String;)Ljava/lang/String;

    .line 1080
    :cond_0
    iget-object v1, p0, Lorg/eazegraph/lib/charts/PieChart$InnerValueView;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v1}, Lorg/eazegraph/lib/charts/PieChart;->access$2500(Lorg/eazegraph/lib/charts/PieChart;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, p0, Lorg/eazegraph/lib/charts/PieChart$InnerValueView;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v2}, Lorg/eazegraph/lib/charts/PieChart;->access$2400(Lorg/eazegraph/lib/charts/PieChart;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/eazegraph/lib/charts/PieChart$InnerValueView;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v4}, Lorg/eazegraph/lib/charts/PieChart;->access$2400(Lorg/eazegraph/lib/charts/PieChart;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lorg/eazegraph/lib/charts/PieChart$InnerValueView;->mValueTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1081
    iget-object v1, p0, Lorg/eazegraph/lib/charts/PieChart$InnerValueView;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    .line 1082
    invoke-static {v1}, Lorg/eazegraph/lib/charts/PieChart;->access$2400(Lorg/eazegraph/lib/charts/PieChart;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/eazegraph/lib/charts/PieChart$InnerValueView;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    .line 1083
    invoke-static {v2}, Lorg/eazegraph/lib/charts/PieChart;->access$1200(Lorg/eazegraph/lib/charts/PieChart;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lorg/eazegraph/lib/charts/PieChart$InnerValueView;->mValueTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/eazegraph/lib/charts/PieChart$InnerValueView;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    .line 1084
    invoke-static {v3}, Lorg/eazegraph/lib/charts/PieChart;->access$1200(Lorg/eazegraph/lib/charts/PieChart;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget-object v4, p0, Lorg/eazegraph/lib/charts/PieChart$InnerValueView;->mValueTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/eazegraph/lib/charts/PieChart$InnerValueView;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    .line 1085
    invoke-static {v4}, Lorg/eazegraph/lib/charts/PieChart;->access$2500(Lorg/eazegraph/lib/charts/PieChart;)Landroid/graphics/Paint;

    move-result-object v4

    .line 1081
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1088
    .end local v0    # "model":Lorg/eazegraph/lib/models/PieModel;
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1102
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 1104
    return-void
.end method
