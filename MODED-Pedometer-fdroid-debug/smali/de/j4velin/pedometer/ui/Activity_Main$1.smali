.class Lde/j4velin/pedometer/ui/Activity_Main$1;
.super Ljava/lang/Object;
.source "Activity_Main.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/j4velin/pedometer/ui/Activity_Main;->optionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/j4velin/pedometer/ui/Activity_Main;


# direct methods
.method constructor <init>(Lde/j4velin/pedometer/ui/Activity_Main;)V
    .locals 0
    .param p1, "this$0"    # Lde/j4velin/pedometer/ui/Activity_Main;

    .prologue
    .line 92
    iput-object p1, p0, Lde/j4velin/pedometer/ui/Activity_Main$1;->this$0:Lde/j4velin/pedometer/ui/Activity_Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 95
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 96
    return-void
.end method
