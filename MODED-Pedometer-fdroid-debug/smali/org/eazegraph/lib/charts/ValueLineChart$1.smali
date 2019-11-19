.class Lorg/eazegraph/lib/charts/ValueLineChart$1;
.super Ljava/lang/Object;
.source "ValueLineChart.java"

# interfaces
.implements Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eazegraph/lib/charts/ValueLineChart;->initializeGraph()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eazegraph/lib/charts/ValueLineChart;


# direct methods
.method constructor <init>(Lorg/eazegraph/lib/charts/ValueLineChart;)V
    .locals 0
    .param p1, "this$0"    # Lorg/eazegraph/lib/charts/ValueLineChart;

    .prologue
    .line 475
    iput-object p1, p0, Lorg/eazegraph/lib/charts/ValueLineChart$1;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/nineoldandroids/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Lcom/nineoldandroids/animation/ValueAnimator;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 478
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$1;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-virtual {p1}, Lcom/nineoldandroids/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    iput v1, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mRevealValue:F

    .line 480
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$1;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    iget-object v0, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mScale:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 481
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$1;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    iget-object v0, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mScale:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/eazegraph/lib/charts/ValueLineChart$1;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    iget v1, v1, Lorg/eazegraph/lib/charts/ValueLineChart;->mRevealValue:F

    mul-float/2addr v1, v5

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/eazegraph/lib/charts/ValueLineChart$1;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v3}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$300(Lorg/eazegraph/lib/charts/ValueLineChart;)I

    move-result v3

    iget-object v4, p0, Lorg/eazegraph/lib/charts/ValueLineChart$1;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    iget v4, v4, Lorg/eazegraph/lib/charts/ValueLineChart;->mTopPadding:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lorg/eazegraph/lib/charts/ValueLineChart$1;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v4}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$400(Lorg/eazegraph/lib/charts/ValueLineChart;)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 483
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$1;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-static {v0}, Lorg/eazegraph/lib/charts/ValueLineChart;->access$500(Lorg/eazegraph/lib/charts/ValueLineChart;)Lorg/eazegraph/lib/charts/ValueLineChart$Graph;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eazegraph/lib/charts/ValueLineChart$Graph;->invalidate()V

    .line 484
    return-void
.end method
