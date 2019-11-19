.class public Lorg/eazegraph/lib/charts/BaseBarChart$Graph;
.super Landroid/view/View;
.source "BaseBarChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eazegraph/lib/charts/BaseBarChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Graph"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eazegraph/lib/charts/BaseBarChart;


# direct methods
.method protected constructor <init>(Lorg/eazegraph/lib/charts/BaseBarChart;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lorg/eazegraph/lib/charts/BaseBarChart;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 322
    iput-object p1, p0, Lorg/eazegraph/lib/charts/BaseBarChart$Graph;->this$0:Lorg/eazegraph/lib/charts/BaseBarChart;

    .line 323
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 324
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 333
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 334
    iget-object v0, p0, Lorg/eazegraph/lib/charts/BaseBarChart$Graph;->this$0:Lorg/eazegraph/lib/charts/BaseBarChart;

    invoke-virtual {v0, p1}, Lorg/eazegraph/lib/charts/BaseBarChart;->drawBars(Landroid/graphics/Canvas;)V

    .line 335
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 349
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 350
    iget-object v0, p0, Lorg/eazegraph/lib/charts/BaseBarChart$Graph;->this$0:Lorg/eazegraph/lib/charts/BaseBarChart;

    iget-object v1, p0, Lorg/eazegraph/lib/charts/BaseBarChart$Graph;->this$0:Lorg/eazegraph/lib/charts/BaseBarChart;

    iget v1, v1, Lorg/eazegraph/lib/charts/BaseBarChart;->mTopPadding:I

    sub-int v1, p2, v1

    iput v1, v0, Lorg/eazegraph/lib/charts/BaseBarChart;->mGraphHeight:I

    .line 351
    iget-object v0, p0, Lorg/eazegraph/lib/charts/BaseBarChart$Graph;->this$0:Lorg/eazegraph/lib/charts/BaseBarChart;

    iget-object v1, p0, Lorg/eazegraph/lib/charts/BaseBarChart$Graph;->this$0:Lorg/eazegraph/lib/charts/BaseBarChart;

    iget v1, v1, Lorg/eazegraph/lib/charts/BaseBarChart;->mLeftPadding:I

    sub-int v1, p1, v1

    iget-object v2, p0, Lorg/eazegraph/lib/charts/BaseBarChart$Graph;->this$0:Lorg/eazegraph/lib/charts/BaseBarChart;

    iget v2, v2, Lorg/eazegraph/lib/charts/BaseBarChart;->mRightPadding:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/eazegraph/lib/charts/BaseBarChart;->mGraphWidth:I

    .line 352
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 356
    const/4 v4, 0x0

    .line 358
    .local v4, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_0

    .line 359
    invoke-virtual {p0}, Lorg/eazegraph/lib/charts/BaseBarChart$Graph;->performClick()Z

    .line 360
    const/4 v4, 0x1

    .line 362
    iget-object v5, p0, Lorg/eazegraph/lib/charts/BaseBarChart$Graph;->this$0:Lorg/eazegraph/lib/charts/BaseBarChart;

    iget-object v5, v5, Lorg/eazegraph/lib/charts/BaseBarChart;->mListener:Lorg/eazegraph/lib/communication/IOnBarClickedListener;

    if-nez v5, :cond_1

    .line 364
    iget-object v5, p0, Lorg/eazegraph/lib/charts/BaseBarChart$Graph;->this$0:Lorg/eazegraph/lib/charts/BaseBarChart;

    invoke-virtual {v5, p1}, Lorg/eazegraph/lib/charts/BaseBarChart;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 380
    :cond_0
    :goto_0
    return v4

    .line 366
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 367
    .local v1, "newX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 368
    .local v2, "newY":F
    const/4 v0, 0x0

    .line 370
    .local v0, "counter":I
    iget-object v5, p0, Lorg/eazegraph/lib/charts/BaseBarChart$Graph;->this$0:Lorg/eazegraph/lib/charts/BaseBarChart;

    invoke-virtual {v5}, Lorg/eazegraph/lib/charts/BaseBarChart;->getBarBounds()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    .line 371
    .local v3, "rectF":Landroid/graphics/RectF;
    invoke-static {v3, v1, v2}, Lorg/eazegraph/lib/utils/Utils;->intersectsPointWithRectF(Landroid/graphics/RectF;FF)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 372
    iget-object v5, p0, Lorg/eazegraph/lib/charts/BaseBarChart$Graph;->this$0:Lorg/eazegraph/lib/charts/BaseBarChart;

    iget-object v5, v5, Lorg/eazegraph/lib/charts/BaseBarChart;->mListener:Lorg/eazegraph/lib/communication/IOnBarClickedListener;

    invoke-interface {v5, v0}, Lorg/eazegraph/lib/communication/IOnBarClickedListener;->onBarClicked(I)V

    goto :goto_0

    .line 375
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 376
    goto :goto_1
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 385
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0
.end method
