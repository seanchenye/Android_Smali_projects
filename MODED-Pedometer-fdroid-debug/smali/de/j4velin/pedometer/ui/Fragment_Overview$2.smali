.class Lde/j4velin/pedometer/ui/Fragment_Overview$2;
.super Ljava/lang/Object;
.source "Fragment_Overview.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 142
    iput-object p1, p0, Lde/j4velin/pedometer/ui/Fragment_Overview$2;->this$0:Lde/j4velin/pedometer/ui/Fragment_Overview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 145
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 146
    return-void
.end method
