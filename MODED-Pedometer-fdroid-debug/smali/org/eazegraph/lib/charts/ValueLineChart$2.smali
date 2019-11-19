.class Lorg/eazegraph/lib/charts/ValueLineChart$2;
.super Ljava/lang/Object;
.source "ValueLineChart.java"

# interfaces
.implements Lcom/nineoldandroids/animation/Animator$AnimatorListener;


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
    .line 486
    iput-object p1, p0, Lorg/eazegraph/lib/charts/ValueLineChart$2;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 499
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 493
    iget-object v0, p0, Lorg/eazegraph/lib/charts/ValueLineChart$2;->this$0:Lorg/eazegraph/lib/charts/ValueLineChart;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/eazegraph/lib/charts/ValueLineChart;->mStartedAnimation:Z

    .line 494
    return-void
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 504
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 489
    return-void
.end method
