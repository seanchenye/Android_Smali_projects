.class Lorg/eazegraph/lib/charts/BaseBarChart$2;
.super Ljava/lang/Object;
.source "BaseBarChart.java"

# interfaces
.implements Lcom/nineoldandroids/animation/Animator$AnimatorListener;


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
    .line 238
    iput-object p1, p0, Lorg/eazegraph/lib/charts/BaseBarChart$2;->this$0:Lorg/eazegraph/lib/charts/BaseBarChart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 251
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 245
    iget-object v0, p0, Lorg/eazegraph/lib/charts/BaseBarChart$2;->this$0:Lorg/eazegraph/lib/charts/BaseBarChart;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/eazegraph/lib/charts/BaseBarChart;->mStartedAnimation:Z

    .line 246
    return-void
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 256
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 241
    return-void
.end method
