.class Lorg/eazegraph/lib/charts/ValueLineChart$Graph;
.super Landroid/view/View;
.source "ValueLineChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eazegraph/lib/charts/ValueLineChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Graph"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eazegraph/lib/charts/ValueLineChart;


# direct methods
.method private constructor <init>(Lorg/eazegraph/lib/charts/ValueLineChart;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 811
    iput-object p1, p0, Lorg/eazegraph/lib/charts/ValueLineChart$Graph;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    .line 812
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 813
    return-void
.end method

.method synthetic constructor <init>(Lorg/eazegraph/lib/charts/ValueLineChart;Landroid/content/Context;Lorg/eazegraph/lib/charts/ValueLineChart$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/eazegraph/lib/charts/ValueLineChart;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lorg/eazegraph/lib/charts/ValueLineChart$1;

    .prologue
    .line 804
    invoke-direct {p0, p1, p2}, Lorg/eazegraph/lib/charts/ValueLineChart$Graph;-><init>(Lorg/eazegraph/lib/charts/ValueLineChart;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 822
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 824
    iget-object v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart$Graph;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v1}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$700(Lorg/eazegraph/lib/charts/ValueLineChart;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 825
    iget-object v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart$Graph;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v1}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$800(Lorg/eazegraph/lib/charts/ValueLineChart;)Landroid/graphics/Paint;

    move-result-object v1

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 837
    :goto_0
    iget-object v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart$Graph;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    iget-object v1, v1, Lorg/eazegraph/lib/charts/ValueLineChart;->mScale:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 838
    iget-object v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart$Graph;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v1}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$1100(Lorg/eazegraph/lib/charts/ValueLineChart;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 839
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/eazegraph/lib/charts/ValueLineChart$Graph;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v2}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$400(Lorg/eazegraph/lib/charts/ValueLineChart;)F

    move-result v2

    neg-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 842
    :cond_0
    iget-object v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart$Graph;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v1}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$900(Lorg/eazegraph/lib/charts/ValueLineChart;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eazegraph/lib/models/ValueLineSeries;

    .line 843
    .local v0, "series":Lorg/eazegraph/lib/models/ValueLineSeries;
    iget-object v2, p0, Lorg/eazegraph/lib/charts/ValueLineChart$Graph;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v2}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$800(Lorg/eazegraph/lib/charts/ValueLineChart;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v0}, Lorg/eazegraph/lib/models/ValueLineSeries;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 844
    invoke-virtual {v0}, Lorg/eazegraph/lib/models/ValueLineSeries;->getPath()Landroid/graphics/Path;

    move-result-object v2

    iget-object v3, p0, Lorg/eazegraph/lib/charts/ValueLineChart$Graph;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v3}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$800(Lorg/eazegraph/lib/charts/ValueLineChart;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 828
    .end local v0    # "series":Lorg/eazegraph/lib/models/ValueLineSeries;
    :cond_1
    iget-object v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart$Graph;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v1}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$900(Lorg/eazegraph/lib/charts/ValueLineChart;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 829
    iget-object v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart$Graph;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v1}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$800(Lorg/eazegraph/lib/charts/ValueLineChart;)Landroid/graphics/Paint;

    move-result-object v1

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 832
    :cond_2
    iget-object v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart$Graph;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v1}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$800(Lorg/eazegraph/lib/charts/ValueLineChart;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, p0, Lorg/eazegraph/lib/charts/ValueLineChart$Graph;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v2}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$1000(Lorg/eazegraph/lib/charts/ValueLineChart;)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 833
    iget-object v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart$Graph;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v1}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$800(Lorg/eazegraph/lib/charts/ValueLineChart;)Landroid/graphics/Paint;

    move-result-object v1

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 847
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 849
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 863
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 864
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$Graph;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    iput p1, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mGraphWidth:I

    .line 865
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$Graph;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    iput p2, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mGraphHeight:I

    .line 866
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$Graph;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    iget-object v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart$Graph;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    iget v1, v1, Lorg/eazegraph/lib/charts/ValueLineChart;->mGraphHeight:I

    iget-object v2, p0, Lorg/eazegraph/lib/charts/ValueLineChart$Graph;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    iget v2, v2, Lorg/eazegraph/lib/charts/ValueLineChart;->mTopPadding:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$302(Lorg/eazegraph/lib/charts/ValueLineChart;I)I

    .line 867
    return-void
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 871
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0
.end method
