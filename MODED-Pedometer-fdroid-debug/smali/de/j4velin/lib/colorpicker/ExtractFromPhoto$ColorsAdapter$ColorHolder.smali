.class public Lde/j4velin/lib/colorpicker/ExtractFromPhoto$ColorsAdapter$ColorHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ExtractFromPhoto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/j4velin/lib/colorpicker/ExtractFromPhoto$ColorsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ColorHolder"
.end annotation


# instance fields
.field final synthetic this$1:Lde/j4velin/lib/colorpicker/ExtractFromPhoto$ColorsAdapter;

.field private final v:Landroid/view/View;


# direct methods
.method public constructor <init>(Lde/j4velin/lib/colorpicker/ExtractFromPhoto$ColorsAdapter;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lde/j4velin/lib/colorpicker/ExtractFromPhoto$ColorsAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 110
    iput-object p1, p0, Lde/j4velin/lib/colorpicker/ExtractFromPhoto$ColorsAdapter$ColorHolder;->this$1:Lde/j4velin/lib/colorpicker/ExtractFromPhoto$ColorsAdapter;

    .line 111
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 112
    iput-object p2, p0, Lde/j4velin/lib/colorpicker/ExtractFromPhoto$ColorsAdapter$ColorHolder;->v:Landroid/view/View;

    .line 113
    return-void
.end method

.method static synthetic access$100(Lde/j4velin/lib/colorpicker/ExtractFromPhoto$ColorsAdapter$ColorHolder;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lde/j4velin/lib/colorpicker/ExtractFromPhoto$ColorsAdapter$ColorHolder;

    .prologue
    .line 107
    iget-object v0, p0, Lde/j4velin/lib/colorpicker/ExtractFromPhoto$ColorsAdapter$ColorHolder;->v:Landroid/view/View;

    return-object v0
.end method
