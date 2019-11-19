.class Lde/j4velin/pedometer/ui/Fragment_Settings$7;
.super Ljava/lang/Object;
.source "Fragment_Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/j4velin/pedometer/ui/Fragment_Settings;->exportCsv()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/j4velin/pedometer/ui/Fragment_Settings;

.field final synthetic val$f:Ljava/io/File;


# direct methods
.method constructor <init>(Lde/j4velin/pedometer/ui/Fragment_Settings;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lde/j4velin/pedometer/ui/Fragment_Settings;

    .prologue
    .line 264
    iput-object p1, p0, Lde/j4velin/pedometer/ui/Fragment_Settings$7;->this$0:Lde/j4velin/pedometer/ui/Fragment_Settings;

    iput-object p2, p0, Lde/j4velin/pedometer/ui/Fragment_Settings$7;->val$f:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 267
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 268
    iget-object v0, p0, Lde/j4velin/pedometer/ui/Fragment_Settings$7;->this$0:Lde/j4velin/pedometer/ui/Fragment_Settings;

    iget-object v1, p0, Lde/j4velin/pedometer/ui/Fragment_Settings$7;->val$f:Ljava/io/File;

    invoke-static {v0, v1}, Lde/j4velin/pedometer/ui/Fragment_Settings;->access$000(Lde/j4velin/pedometer/ui/Fragment_Settings;Ljava/io/File;)V

    .line 269
    return-void
.end method
