.class Lde/j4velin/pedometer/ui/Fragment_Overview$3;
.super Ljava/lang/Object;
.source "Fragment_Overview.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/j4velin/pedometer/ui/Fragment_Overview;->onResume()V
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
    .line 137
    iput-object p1, p0, Lde/j4velin/pedometer/ui/Fragment_Overview$3;->this$0:Lde/j4velin/pedometer/ui/Fragment_Overview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 140
    iget-object v0, p0, Lde/j4velin/pedometer/ui/Fragment_Overview$3;->this$0:Lde/j4velin/pedometer/ui/Fragment_Overview;

    invoke-virtual {v0}, Lde/j4velin/pedometer/ui/Fragment_Overview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 141
    return-void
.end method
