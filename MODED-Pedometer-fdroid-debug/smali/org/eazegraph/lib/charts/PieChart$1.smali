.class Lorg/eazegraph/lib/charts/PieChart$1;
.super Ljava/lang/Object;
.source "PieChart.java"

# interfaces
.implements Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eazegraph/lib/charts/PieChart;->initializeGraph()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eazegraph/lib/charts/PieChart;


# direct methods
.method constructor <init>(Lorg/eazegraph/lib/charts/PieChart;)V
    .locals 0
    .param p1, "this$0"    # Lorg/eazegraph/lib/charts/PieChart;

    .prologue
    .line 623
    iput-object p1, p0, Lorg/eazegraph/lib/charts/PieChart$1;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/nineoldandroids/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Lcom/nineoldandroids/animation/ValueAnimator;

    .prologue
    .line 626
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart$1;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-virtual {p1}, Lcom/nineoldandroids/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    iput v1, v0, Lorg/eazegraph/lib/charts/PieChart;->mRevealValue:F

    .line 627
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart$1;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-virtual {v0}, Lorg/eazegraph/lib/charts/PieChart;->invalidate()V

    .line 628
    return-void
.end method
