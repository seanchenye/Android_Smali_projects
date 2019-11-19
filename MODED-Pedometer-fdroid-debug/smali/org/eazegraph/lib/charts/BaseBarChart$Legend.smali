.class public Lorg/eazegraph/lib/charts/BaseBarChart$Legend;
.super Landroid/view/View;
.source "BaseBarChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eazegraph/lib/charts/BaseBarChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Legend"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eazegraph/lib/charts/BaseBarChart;


# direct methods
.method private constructor <init>(Lorg/eazegraph/lib/charts/BaseBarChart;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lorg/eazegraph/lib/charts/BaseBarChart;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 400
    iput-object p1, p0, Lorg/eazegraph/lib/charts/BaseBarChart$Legend;->this$0:Lorg/eazegraph/lib/charts/BaseBarChart;

    .line 401
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 402
    return-void
.end method

.method synthetic constructor <init>(Lorg/eazegraph/lib/charts/BaseBarChart;Landroid/content/Context;Lorg/eazegraph/lib/charts/BaseBarChart$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/eazegraph/lib/charts/BaseBarChart;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lorg/eazegraph/lib/charts/BaseBarChart$1;

    .prologue
    .line 393
    invoke-direct {p0, p1, p2}, Lorg/eazegraph/lib/charts/BaseBarChart$Legend;-><init>(Lorg/eazegraph/lib/charts/BaseBarChart;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 411
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 413
    iget-object v0, p0, Lorg/eazegraph/lib/charts/BaseBarChart$Legend;->this$0:Lorg/eazegraph/lib/charts/BaseBarChart;

    invoke-virtual {v0}, Lorg/eazegraph/lib/charts/BaseBarChart;->getLegendData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eazegraph/lib/models/BaseModel;

    .line 414
    .local v7, "model":Lorg/eazegraph/lib/models/BaseModel;
    invoke-virtual {v7}, Lorg/eazegraph/lib/models/BaseModel;->canShowLabel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {v7}, Lorg/eazegraph/lib/models/BaseModel;->getLegendBounds()Landroid/graphics/RectF;

    move-result-object v6

    .line 416
    .local v6, "bounds":Landroid/graphics/RectF;
    invoke-virtual {v7}, Lorg/eazegraph/lib/models/BaseModel;->getLegendLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lorg/eazegraph/lib/models/BaseModel;->getLegendLabelPosition()I

    move-result v1

    int-to-float v1, v1

    iget v2, v6, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lorg/eazegraph/lib/charts/BaseBarChart$Legend;->this$0:Lorg/eazegraph/lib/charts/BaseBarChart;

    iget v3, v3, Lorg/eazegraph/lib/charts/BaseBarChart;->mMaxFontHeight:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/eazegraph/lib/charts/BaseBarChart$Legend;->this$0:Lorg/eazegraph/lib/charts/BaseBarChart;

    iget-object v3, v3, Lorg/eazegraph/lib/charts/BaseBarChart;->mLegendPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 418
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lorg/eazegraph/lib/charts/BaseBarChart$Legend;->this$0:Lorg/eazegraph/lib/charts/BaseBarChart;

    iget v2, v2, Lorg/eazegraph/lib/charts/BaseBarChart;->mMaxFontHeight:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    iget-object v2, p0, Lorg/eazegraph/lib/charts/BaseBarChart$Legend;->this$0:Lorg/eazegraph/lib/charts/BaseBarChart;

    iget v2, v2, Lorg/eazegraph/lib/charts/BaseBarChart;->mLegendTopPadding:F

    sub-float v2, v0, v2

    .line 420
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v0, p0, Lorg/eazegraph/lib/charts/BaseBarChart$Legend;->this$0:Lorg/eazegraph/lib/charts/BaseBarChart;

    iget v4, v0, Lorg/eazegraph/lib/charts/BaseBarChart;->mLegendTopPadding:F

    iget-object v0, p0, Lorg/eazegraph/lib/charts/BaseBarChart$Legend;->this$0:Lorg/eazegraph/lib/charts/BaseBarChart;

    iget-object v5, v0, Lorg/eazegraph/lib/charts/BaseBarChart;->mLegendPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 418
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 423
    .end local v6    # "bounds":Landroid/graphics/RectF;
    .end local v7    # "model":Lorg/eazegraph/lib/models/BaseModel;
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
    .line 437
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 438
    return-void
.end method
