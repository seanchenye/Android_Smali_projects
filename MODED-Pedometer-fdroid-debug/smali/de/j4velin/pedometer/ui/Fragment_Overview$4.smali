.class Lde/j4velin/pedometer/ui/Fragment_Overview$4;
.super Ljava/lang/Object;
.source "Fragment_Overview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/j4velin/pedometer/ui/Fragment_Overview;->updateBars()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/j4velin/pedometer/ui/Fragment_Overview;


# direct methods
.method constructor <init>(Lde/j4velin/pedometer/ui/Fragment_Overview;)V
    .locals 0
    .param p1, "this$0"    # Lde/j4velin/pedometer/ui/Fragment_Overview;

    .prologue
    .line 337
    iput-object p1, p0, Lde/j4velin/pedometer/ui/Fragment_Overview$4;->this$0:Lde/j4velin/pedometer/ui/Fragment_Overview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 340
    iget-object v0, p0, Lde/j4velin/pedometer/ui/Fragment_Overview$4;->this$0:Lde/j4velin/pedometer/ui/Fragment_Overview;

    invoke-virtual {v0}, Lde/j4velin/pedometer/ui/Fragment_Overview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lde/j4velin/pedometer/ui/Fragment_Overview$4;->this$0:Lde/j4velin/pedometer/ui/Fragment_Overview;

    invoke-static {v1}, Lde/j4velin/pedometer/ui/Fragment_Overview;->access$200(Lde/j4velin/pedometer/ui/Fragment_Overview;)I

    move-result v1

    invoke-static {v0, v1}, Lde/j4velin/pedometer/ui/Dialog_Statistics;->getDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 341
    return-void
.end method
