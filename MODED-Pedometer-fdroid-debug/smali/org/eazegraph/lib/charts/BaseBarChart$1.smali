.class Lorg/eazegraph/lib/charts/BaseBarChart$1;
.super Ljava/lang/Object;
.source "BaseBarChart.java"

# interfaces
.implements Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eazegraph/lib/charts/BaseBarChart;->initializeGraph()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eazegraph/lib/charts/BaseBarChart;


# direct methods
.method constructor <init>(Lorg/eazegraph/lib/charts/BaseBarChart;)V
    .locals 0
    .param p1, "this$0"    # Lorg/eazegraph/lib/charts/BaseBarChart;

    .prologue
    .line 231
    iput-object p1, p0, Lorg/eazegraph/lib/charts/BaseBarChart$1;->this$0:Lorg/eazegraph/lib/charts/BaseBarChart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/nineoldandroids/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Lcom/nineoldandroids/animation/ValueAnimator;

    .prologue
    .line 234
    iget-object v0, p0, Lorg/eazegraph/lib/charts/BaseBarChart$1;->this$0:Lorg/eazegraph/lib/charts/BaseBarChart;

    invoke-virtual {p1}, Lcom/nineoldandroids/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    iput v1, v0, Lorg/eazegraph/lib/charts/BaseBarChart;->mRevealValue:F

    .line 235
    iget-object v0, p0, Lorg/eazegraph/lib/charts/BaseBarChart$1;->this$0:Lorg/eazegraph/lib/charts/BaseBarChart;

    iget-object v0, v0, Lorg/eazegraph/lib/charts/BaseBarChart;->mGraph:Lorg/eazegraph/lib/charts/BaseBarChart$Graph;

    invoke-virtual {v0}, Lorg/eazegraph/lib/charts/BaseBarChart$Graph;->invalidate()V

    .line 236
    return-void
.end method
