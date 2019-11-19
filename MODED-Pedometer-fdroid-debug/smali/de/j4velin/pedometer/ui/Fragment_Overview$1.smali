.class Lde/j4velin/pedometer/ui/Fragment_Overview$1;
.super Ljava/lang/Object;
.source "Fragment_Overview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/j4velin/pedometer/ui/Fragment_Overview;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 99
    iput-object p1, p0, Lde/j4velin/pedometer/ui/Fragment_Overview$1;->this$0:Lde/j4velin/pedometer/ui/Fragment_Overview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 102
    iget-object v1, p0, Lde/j4velin/pedometer/ui/Fragment_Overview$1;->this$0:Lde/j4velin/pedometer/ui/Fragment_Overview;

    iget-object v0, p0, Lde/j4velin/pedometer/ui/Fragment_Overview$1;->this$0:Lde/j4velin/pedometer/ui/Fragment_Overview;

    invoke-static {v0}, Lde/j4velin/pedometer/ui/Fragment_Overview;->access$000(Lde/j4velin/pedometer/ui/Fragment_Overview;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lde/j4velin/pedometer/ui/Fragment_Overview;->access$002(Lde/j4velin/pedometer/ui/Fragment_Overview;Z)Z

    .line 103
    iget-object v0, p0, Lde/j4velin/pedometer/ui/Fragment_Overview$1;->this$0:Lde/j4velin/pedometer/ui/Fragment_Overview;

    invoke-static {v0}, Lde/j4velin/pedometer/ui/Fragment_Overview;->access$100(Lde/j4velin/pedometer/ui/Fragment_Overview;)V

    .line 104
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
