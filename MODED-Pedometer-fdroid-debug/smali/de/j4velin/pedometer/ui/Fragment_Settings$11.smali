.class Lde/j4velin/pedometer/ui/Fragment_Settings$11;
.super Ljava/lang/Object;
.source "Fragment_Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/j4velin/pedometer/ui/Fragment_Settings;->importCsv()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/j4velin/pedometer/ui/Fragment_Settings;


# direct methods
.method constructor <init>(Lde/j4velin/pedometer/ui/Fragment_Settings;)V
    .locals 0
    .param p1, "this$0"    # Lde/j4velin/pedometer/ui/Fragment_Settings;

    .prologue
    .line 350
    iput-object p1, p0, Lde/j4velin/pedometer/ui/Fragment_Settings$11;->this$0:Lde/j4velin/pedometer/ui/Fragment_Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 353
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 354
    return-void
.end method
