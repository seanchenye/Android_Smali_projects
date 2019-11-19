.class Lorg/eazegraph/lib/charts/PieChart$3;
.super Ljava/lang/Object;
.source "PieChart.java"

# interfaces
.implements Lcom/nineoldandroids/animation/Animator$AnimatorListener;


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
    .line 659
    iput-object p1, p0, Lorg/eazegraph/lib/charts/PieChart$3;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 668
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 664
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart$3;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v0}, Lorg/eazegraph/lib/charts/PieChart;->access$200(Lorg/eazegraph/lib/charts/PieChart;)Lorg/eazegraph/lib/charts/PieChart$Graph;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eazegraph/lib/charts/PieChart$Graph;->decelerate()V

    .line 665
    return-void
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 671
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 661
    return-void
.end method
