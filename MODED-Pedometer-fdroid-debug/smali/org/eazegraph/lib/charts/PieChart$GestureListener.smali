.class Lorg/eazegraph/lib/charts/PieChart$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PieChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eazegraph/lib/charts/PieChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eazegraph/lib/charts/PieChart;


# direct methods
.method private constructor <init>(Lorg/eazegraph/lib/charts/PieChart;)V
    .locals 0

    .prologue
    .line 1196
    iput-object p1, p0, Lorg/eazegraph/lib/charts/PieChart$GestureListener;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eazegraph/lib/charts/PieChart;Lorg/eazegraph/lib/charts/PieChart$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/eazegraph/lib/charts/PieChart;
    .param p2, "x1"    # Lorg/eazegraph/lib/charts/PieChart$1;

    .prologue
    .line 1196
    invoke-direct {p0, p1}, Lorg/eazegraph/lib/charts/PieChart$GestureListener;-><init>(Lorg/eazegraph/lib/charts/PieChart;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1239
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart$GestureListener;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v0}, Lorg/eazegraph/lib/charts/PieChart;->access$3100(Lorg/eazegraph/lib/charts/PieChart;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1240
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart$GestureListener;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v0}, Lorg/eazegraph/lib/charts/PieChart;->access$3200(Lorg/eazegraph/lib/charts/PieChart;)V

    .line 1242
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v1, 0x0

    .line 1212
    .line 1215
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lorg/eazegraph/lib/charts/PieChart$GestureListener;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v2}, Lorg/eazegraph/lib/charts/PieChart;->access$2700(Lorg/eazegraph/lib/charts/PieChart;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    sub-float/2addr v0, v2

    .line 1216
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lorg/eazegraph/lib/charts/PieChart$GestureListener;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v3}, Lorg/eazegraph/lib/charts/PieChart;->access$2700(Lorg/eazegraph/lib/charts/PieChart;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float/2addr v2, v3

    .line 1212
    invoke-static {p3, p4, v0, v2}, Lorg/eazegraph/lib/utils/Utils;->vectorToScalarScroll(FFFF)F

    move-result v9

    .line 1217
    .local v9, "scrollTheta":F
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart$GestureListener;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v0}, Lorg/eazegraph/lib/charts/PieChart;->access$2900(Lorg/eazegraph/lib/charts/PieChart;)Landroid/widget/Scroller;

    move-result-object v0

    iget-object v2, p0, Lorg/eazegraph/lib/charts/PieChart$GestureListener;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    .line 1219
    invoke-static {v2}, Lorg/eazegraph/lib/charts/PieChart;->access$2800(Lorg/eazegraph/lib/charts/PieChart;)I

    move-result v2

    float-to-int v3, v9

    div-int/lit8 v4, v3, 0x4

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    move v3, v1

    move v5, v1

    move v6, v1

    .line 1217
    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1228
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 1229
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart$GestureListener;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v0}, Lorg/eazegraph/lib/charts/PieChart;->access$3000(Lorg/eazegraph/lib/charts/PieChart;)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lorg/eazegraph/lib/charts/PieChart$GestureListener;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v1}, Lorg/eazegraph/lib/charts/PieChart;->access$2900(Lorg/eazegraph/lib/charts/PieChart;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->getDuration()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ValueAnimator;

    .line 1230
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart$GestureListener;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v0}, Lorg/eazegraph/lib/charts/PieChart;->access$3000(Lorg/eazegraph/lib/charts/PieChart;)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->start()V

    .line 1232
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 1200
    .line 1203
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lorg/eazegraph/lib/charts/PieChart$GestureListener;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v2}, Lorg/eazegraph/lib/charts/PieChart;->access$2700(Lorg/eazegraph/lib/charts/PieChart;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    sub-float/2addr v1, v2

    .line 1204
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lorg/eazegraph/lib/charts/PieChart$GestureListener;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v3}, Lorg/eazegraph/lib/charts/PieChart;->access$2700(Lorg/eazegraph/lib/charts/PieChart;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float/2addr v2, v3

    .line 1200
    invoke-static {p3, p4, v1, v2}, Lorg/eazegraph/lib/utils/Utils;->vectorToScalarScroll(FFFF)F

    move-result v0

    .line 1205
    .local v0, "scrollTheta":F
    iget-object v1, p0, Lorg/eazegraph/lib/charts/PieChart$GestureListener;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    iget-object v2, p0, Lorg/eazegraph/lib/charts/PieChart$GestureListener;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v2}, Lorg/eazegraph/lib/charts/PieChart;->access$2800(Lorg/eazegraph/lib/charts/PieChart;)I

    move-result v2

    float-to-int v3, v0

    div-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/eazegraph/lib/charts/PieChart;->setPieRotation(I)V

    .line 1206
    const/4 v1, 0x1

    return v1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1247
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart$GestureListener;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-virtual {v0}, Lorg/eazegraph/lib/charts/PieChart;->performClick()Z

    .line 1248
    const/4 v0, 0x1

    return v0
.end method
