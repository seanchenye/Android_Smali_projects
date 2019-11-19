.class Lde/j4velin/lib/colorpicker/ColorPickerDialog$1;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/j4velin/lib/colorpicker/ColorPickerDialog;->setUp(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/j4velin/lib/colorpicker/ColorPickerDialog;


# direct methods
.method constructor <init>(Lde/j4velin/lib/colorpicker/ColorPickerDialog;)V
    .locals 0
    .param p1, "this$0"    # Lde/j4velin/lib/colorpicker/ColorPickerDialog;

    .prologue
    .line 92
    iput-object p1, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog$1;->this$0:Lde/j4velin/lib/colorpicker/ColorPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v8, -0x10000

    .line 96
    const/4 v6, 0x6

    if-ne p2, v6, :cond_2

    .line 97
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "input_method"

    .line 98
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 99
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 100
    iget-object v5, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog$1;->this$0:Lde/j4velin/lib/colorpicker/ColorPickerDialog;

    invoke-static {v5}, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->access$000(Lde/j4velin/lib/colorpicker/ColorPickerDialog;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x5

    if-gt v5, v6, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xa

    if-ge v5, v6, :cond_1

    .line 103
    :cond_0
    :try_start_0
    invoke-static {v3}, Lde/j4velin/lib/colorpicker/Util;->convertToColorInt(Ljava/lang/String;)I

    move-result v0

    .line 104
    .local v0, "c":I
    iget-object v5, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog$1;->this$0:Lde/j4velin/lib/colorpicker/ColorPickerDialog;

    invoke-static {v5}, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->access$100(Lde/j4velin/lib/colorpicker/ColorPickerDialog;)Lde/j4velin/lib/colorpicker/ColorPickerView;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v0, v6}, Lde/j4velin/lib/colorpicker/ColorPickerView;->setColor(IZ)V

    .line 105
    iget-object v5, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog$1;->this$0:Lde/j4velin/lib/colorpicker/ColorPickerDialog;

    invoke-static {v5}, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->access$000(Lde/j4velin/lib/colorpicker/ColorPickerDialog;)Landroid/widget/EditText;

    move-result-object v5

    iget-object v6, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog$1;->this$0:Lde/j4velin/lib/colorpicker/ColorPickerDialog;

    invoke-static {v6}, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->access$200(Lde/j4velin/lib/colorpicker/ColorPickerDialog;)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v0    # "c":I
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v3    # "s":Ljava/lang/String;
    :goto_0
    return v4

    .line 106
    .restart local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .restart local v3    # "s":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 107
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    iget-object v5, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog$1;->this$0:Lde/j4velin/lib/colorpicker/ColorPickerDialog;

    invoke-static {v5}, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->access$000(Lde/j4velin/lib/colorpicker/ColorPickerDialog;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_0

    .line 110
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    iget-object v5, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog$1;->this$0:Lde/j4velin/lib/colorpicker/ColorPickerDialog;

    invoke-static {v5}, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->access$000(Lde/j4velin/lib/colorpicker/ColorPickerDialog;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_0

    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v3    # "s":Ljava/lang/String;
    :cond_2
    move v4, v5

    .line 114
    goto :goto_0
.end method
