.class Lorg/eazegraph/lib/charts/PieChart$4;
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
    .line 689
    iput-object p1, p0, Lorg/eazegraph/lib/charts/PieChart$4;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/nineoldandroids/animation/ValueAnimator;)V
    .locals 1
    .param p1, "valueAnimator"    # Lcom/nineoldandroids/animation/ValueAnimator;

    .prologue
    .line 691
    iget-object v0, p0, Lorg/eazegraph/lib/charts/PieChart$4;->this$0:Lorg/eazegraph/lib/charts/PieChart;

    invoke-static {v0}, Lorg/eazegraph/lib/charts/PieChart;->access$300(Lorg/eazegraph/lib/charts/PieChart;)V

    .line 692
    return-void
.end method
