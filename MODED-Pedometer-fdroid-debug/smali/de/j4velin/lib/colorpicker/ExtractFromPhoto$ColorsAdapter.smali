.class Lde/j4velin/lib/colorpicker/ExtractFromPhoto$ColorsAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ExtractFromPhoto.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/j4velin/lib/colorpicker/ExtractFromPhoto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/j4velin/lib/colorpicker/ExtractFromPhoto$ColorsAdapter$ColorHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lde/j4velin/lib/colorpicker/ExtractFromPhoto$ColorsAdapter$ColorHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lde/j4velin/lib/colorpicker/ExtractFromPhoto;


# direct methods
.method private constructor <init>(Lde/j4velin/lib/colorpicker/ExtractFromPhoto;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lde/j4velin/lib/colorpicker/ExtractFromPhoto$ColorsAdapter;->this$0:Lde/j4velin/lib/colorpicker/ExtractFromPhoto;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 107
    return-void
.end method

.method synthetic constructor <init>(Lde/j4velin/lib/colorpicker/ExtractFromPhoto;Lde/j4velin/lib/colorpicker/ExtractFromPhoto$1;)V
    .locals 0
    .param p1, "x0"    # Lde/j4velin/lib/colorpicker/ExtractFromPhoto;
    .param p2, "x1"    # Lde/j4velin/lib/colorpicker/ExtractFromPhoto$1;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lde/j4velin/lib/colorpicker/ExtractFromPhoto$ColorsAdapter;-><init>(Lde/j4velin/lib/colorpicker/ExtractFromPhoto;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lde/j4velin/lib/colorpicker/ExtractFromPhoto$ColorsAdapter;->this$0:Lde/j4velin/lib/colorpicker/ExtractFromPhoto;

    invoke-static {v0}, Lde/j4velin/lib/colorpicker/ExtractFromPhoto;->access$200(Lde/j4velin/lib/colorpicker/ExtractFromPhoto;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lde/j4velin/lib/colorpicker/ExtractFromPhoto$ColorsAdapter;->this$0:Lde/j4velin/lib/colorpicker/ExtractFromPhoto;

    invoke-static {v0}, Lde/j4velin/lib/colorpicker/ExtractFromPhoto;->access$200(Lde/j4velin/lib/colorpicker/ExtractFromPhoto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 76
    check-cast p1, Lde/j4velin/lib/colorpicker/ExtractFromPhoto$ColorsAdapter$ColorHolder;

    invoke-virtual {p0, p1, p2}, Lde/j4velin/lib/colorpicker/ExtractFromPhoto$ColorsAdapter;->onBindViewHolder(Lde/j4velin/lib/colorpicker/ExtractFromPhoto$ColorsAdapter$ColorHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lde/j4velin/lib/colorpicker/ExtractFromPhoto$ColorsAdapter$ColorHolder;I)V
    .locals 3
    .param p1, "holder"    # Lde/j4velin/lib/colorpicker/ExtractFromPhoto$ColorsAdapter$ColorHolder;
    .param p2, "position"    # I

    .prologue
    .line 91
    iget-object v1, p0, Lde/j4velin/lib/colorpicker/ExtractFromPhoto$ColorsAdapter;->this$0:Lde/j4velin/lib/colorpicker/ExtractFromPhoto;

    invoke-static {v1}, Lde/j4velin/lib/colorpicker/ExtractFromPhoto;->access$200(Lde/j4velin/lib/colorpicker/ExtractFromPhoto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/graphics/Palette$Swatch;

    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v0

    .line 92
    .local v0, "color":I
    invoke-static {p1}, Lde/j4velin/lib/colorpicker/ExtractFromPhoto$ColorsAdapter$ColorHolder;->access$100(Lde/j4velin/lib/colorpicker/ExtractFromPhoto$ColorsAdapter$ColorHolder;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 93
    invoke-static {p1}, Lde/j4velin/lib/colorpicker/ExtractFromPhoto$ColorsAdapter$ColorHolder;->access$100(Lde/j4velin/lib/colorpicker/ExtractFromPhoto$ColorsAdapter$ColorHolder;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    sget-object v1, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mListener:Lde/j4velin/lib/colorpicker/ColorPickerDialog$OnColorChangedListener;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lde/j4velin/lib/colorpicker/ColorPickerDialog$OnColorChangedListener;->onColorChanged(I)V

    .line 104
    iget-object v0, p0, Lde/j4velin/lib/colorpicker/ExtractFromPhoto$ColorsAdapter;->this$0:Lde/j4velin/lib/colorpicker/ExtractFromPhoto;

    invoke-virtual {v0}, Lde/j4velin/lib/colorpicker/ExtractFromPhoto;->finish()V

    .line 105
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0, p1, p2}, Lde/j4velin/lib/colorpicker/ExtractFromPhoto$ColorsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lde/j4velin/lib/colorpicker/ExtractFromPhoto$ColorsAdapter$ColorHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lde/j4velin/lib/colorpicker/ExtractFromPhoto$ColorsAdapter$ColorHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 81
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lde/j4velin/lib/colorpicker/ExtractFromPhoto$ColorsAdapter;->this$0:Lde/j4velin/lib/colorpicker/ExtractFromPhoto;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 82
    .local v2, "v":Landroid/view/View;
    iget-object v3, p0, Lde/j4velin/lib/colorpicker/ExtractFromPhoto$ColorsAdapter;->this$0:Lde/j4velin/lib/colorpicker/ExtractFromPhoto;

    const/high16 v4, 0x42480000    # 50.0f

    invoke-static {v3, v4}, Lde/j4velin/lib/colorpicker/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v3

    float-to-int v1, v3

    .line 83
    .local v1, "size":I
    new-instance v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    new-instance v0, Lde/j4velin/lib/colorpicker/ExtractFromPhoto$ColorsAdapter$ColorHolder;

    invoke-direct {v0, p0, v2}, Lde/j4velin/lib/colorpicker/ExtractFromPhoto$ColorsAdapter$ColorHolder;-><init>(Lde/j4velin/lib/colorpicker/ExtractFromPhoto$ColorsAdapter;Landroid/view/View;)V

    .line 85
    .local v0, "h":Lde/j4velin/lib/colorpicker/ExtractFromPhoto$ColorsAdapter$ColorHolder;
    invoke-static {v0}, Lde/j4velin/lib/colorpicker/ExtractFromPhoto$ColorsAdapter$ColorHolder;->access$100(Lde/j4velin/lib/colorpicker/ExtractFromPhoto$ColorsAdapter$ColorHolder;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-object v0
.end method
