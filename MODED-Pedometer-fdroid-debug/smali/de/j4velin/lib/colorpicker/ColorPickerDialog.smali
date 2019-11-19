.class public Lde/j4velin/lib/colorpicker/ColorPickerDialog;
.super Landroid/app/Dialog;
.source "ColorPickerDialog.java"

# interfaces
.implements Lde/j4velin/lib/colorpicker/ColorPickerView$OnColorChangedListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/j4velin/lib/colorpicker/ColorPickerDialog$OnColorChangedListener;
    }
.end annotation


# static fields
.field public static mListener:Lde/j4velin/lib/colorpicker/ColorPickerDialog$OnColorChangedListener;


# instance fields
.field private final context:Landroid/content/Context;

.field private mColorPicker:Lde/j4velin/lib/colorpicker/ColorPickerView;

.field private mHexDefaultTextColor:Landroid/content/res/ColorStateList;

.field private mHexVal:Landroid/widget/EditText;

.field private mHexValueEnabled:Z

.field private mNewColor:Lde/j4velin/lib/colorpicker/ColorPickerPanelView;

.field private mOldColor:Lde/j4velin/lib/colorpicker/ColorPickerPanelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "initialColor"    # I

    .prologue
    .line 63
    sget v0, Lde/j4velin/lib/colorpicker/R$style;->LibTheme_Dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mHexValueEnabled:Z

    .line 64
    iput-object p1, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->context:Landroid/content/Context;

    .line 65
    invoke-direct {p0, p2}, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->init(I)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lde/j4velin/lib/colorpicker/ColorPickerDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lde/j4velin/lib/colorpicker/ColorPickerDialog;

    .prologue
    .line 43
    iget-object v0, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lde/j4velin/lib/colorpicker/ColorPickerDialog;)Lde/j4velin/lib/colorpicker/ColorPickerView;
    .locals 1
    .param p0, "x0"    # Lde/j4velin/lib/colorpicker/ColorPickerDialog;

    .prologue
    .line 43
    iget-object v0, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mColorPicker:Lde/j4velin/lib/colorpicker/ColorPickerView;

    return-object v0
.end method

.method static synthetic access$200(Lde/j4velin/lib/colorpicker/ColorPickerDialog;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "x0"    # Lde/j4velin/lib/colorpicker/ColorPickerDialog;

    .prologue
    .line 43
    iget-object v0, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mHexDefaultTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method private init(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    const/4 v1, 0x1

    .line 70
    invoke-virtual {p0}, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 71
    invoke-virtual {p0}, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 72
    invoke-direct {p0, p1}, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->setUp(I)V

    .line 73
    return-void
.end method

.method private setUp(I)V
    .locals 6
    .param p1, "color"    # I

    .prologue
    const/4 v5, 0x0

    .line 77
    .line 78
    invoke-virtual {p0}, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 80
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lde/j4velin/lib/colorpicker/R$layout;->dialog_color_picker:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 82
    .local v1, "layout":Landroid/view/View;
    invoke-virtual {p0, v1}, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->setContentView(Landroid/view/View;)V

    .line 84
    sget v2, Lde/j4velin/lib/colorpicker/R$id;->color_picker_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lde/j4velin/lib/colorpicker/ColorPickerView;

    iput-object v2, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mColorPicker:Lde/j4velin/lib/colorpicker/ColorPickerView;

    .line 85
    sget v2, Lde/j4velin/lib/colorpicker/R$id;->old_color_panel:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;

    iput-object v2, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mOldColor:Lde/j4velin/lib/colorpicker/ColorPickerPanelView;

    .line 86
    sget v2, Lde/j4velin/lib/colorpicker/R$id;->new_color_panel:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;

    iput-object v2, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mNewColor:Lde/j4velin/lib/colorpicker/ColorPickerPanelView;

    .line 88
    sget v2, Lde/j4velin/lib/colorpicker/R$id;->hex_val:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    .line 89
    iget-object v2, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 90
    iget-object v2, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mHexDefaultTextColor:Landroid/content/res/ColorStateList;

    .line 92
    iget-object v2, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    new-instance v3, Lde/j4velin/lib/colorpicker/ColorPickerDialog$1;

    invoke-direct {v3, p0}, Lde/j4velin/lib/colorpicker/ColorPickerDialog$1;-><init>(Lde/j4velin/lib/colorpicker/ColorPickerDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 118
    iget-object v2, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mOldColor:Lde/j4velin/lib/colorpicker/ColorPickerPanelView;

    invoke-virtual {v2}, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mColorPicker:Lde/j4velin/lib/colorpicker/ColorPickerView;

    .line 119
    invoke-virtual {v3}, Lde/j4velin/lib/colorpicker/ColorPickerView;->getDrawingOffset()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mColorPicker:Lde/j4velin/lib/colorpicker/ColorPickerView;

    .line 120
    invoke-virtual {v4}, Lde/j4velin/lib/colorpicker/ColorPickerView;->getDrawingOffset()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 119
    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 122
    iget-object v2, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mOldColor:Lde/j4velin/lib/colorpicker/ColorPickerPanelView;

    invoke-virtual {v2, p0}, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v2, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mNewColor:Lde/j4velin/lib/colorpicker/ColorPickerPanelView;

    invoke-virtual {v2, p0}, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v2, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mColorPicker:Lde/j4velin/lib/colorpicker/ColorPickerView;

    invoke-virtual {v2, p0}, Lde/j4velin/lib/colorpicker/ColorPickerView;->setOnColorChangedListener(Lde/j4velin/lib/colorpicker/ColorPickerView$OnColorChangedListener;)V

    .line 125
    iget-object v2, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mOldColor:Lde/j4velin/lib/colorpicker/ColorPickerPanelView;

    invoke-virtual {v2, p1}, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->setColor(I)V

    .line 126
    iget-object v2, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mColorPicker:Lde/j4velin/lib/colorpicker/ColorPickerView;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lde/j4velin/lib/colorpicker/ColorPickerView;->setColor(IZ)V

    .line 128
    iget-object v2, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "android.hardware.camera"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    sget v2, Lde/j4velin/lib/colorpicker/R$id;->fromphoto:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 135
    sget v2, Lde/j4velin/lib/colorpicker/R$id;->copy:I

    invoke-virtual {p0, v2}, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    sget v2, Lde/j4velin/lib/colorpicker/R$id;->paste:I

    invoke-virtual {p0, v2}, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    :cond_0
    return-void

    .line 131
    :cond_1
    sget v2, Lde/j4velin/lib/colorpicker/R$id;->fromphoto:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateHexLengthFilter()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 174
    invoke-virtual {p0}, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->getAlphaSliderVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 177
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method private updateHexValue(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 180
    invoke-virtual {p0}, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->getAlphaSliderVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    invoke-static {p1}, Lde/j4velin/lib/colorpicker/Util;->convertToARGB(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 185
    :goto_0
    iget-object v0, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    iget-object v1, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mHexDefaultTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 186
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    invoke-static {p1}, Lde/j4velin/lib/colorpicker/Util;->convertToRGB(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public getAlphaSliderVisible()Z
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mColorPicker:Lde/j4velin/lib/colorpicker/ColorPickerView;

    invoke-virtual {v0}, Lde/j4velin/lib/colorpicker/ColorPickerView;->getAlphaSliderVisible()Z

    move-result v0

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mColorPicker:Lde/j4velin/lib/colorpicker/ColorPickerView;

    invoke-virtual {v0}, Lde/j4velin/lib/colorpicker/ColorPickerView;->getColor()I

    move-result v0

    return v0
.end method

.method public getHexValueEnabled()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mHexValueEnabled:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lde/j4velin/lib/colorpicker/R$id;->new_color_panel:I

    if-ne v3, v4, :cond_2

    .line 217
    sget-object v3, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mListener:Lde/j4velin/lib/colorpicker/ColorPickerDialog$OnColorChangedListener;

    if-eqz v3, :cond_0

    .line 218
    sget-object v3, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mListener:Lde/j4velin/lib/colorpicker/ColorPickerDialog$OnColorChangedListener;

    iget-object v4, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mNewColor:Lde/j4velin/lib/colorpicker/ColorPickerPanelView;

    invoke-virtual {v4}, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->getColor()I

    move-result v4

    invoke-interface {v3, v4}, Lde/j4velin/lib/colorpicker/ColorPickerDialog$OnColorChangedListener;->onColorChanged(I)V

    .line 220
    :cond_0
    invoke-virtual {p0}, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->dismiss()V

    .line 239
    :cond_1
    :goto_0
    return-void

    .line 221
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lde/j4velin/lib/colorpicker/R$id;->fromphoto:I

    if-ne v3, v4, :cond_3

    .line 222
    iget-object v3, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->context:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->context:Landroid/content/Context;

    const-class v6, Lde/j4velin/lib/colorpicker/ExtractFromPhoto;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 223
    invoke-virtual {p0}, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->dismiss()V

    goto :goto_0

    .line 224
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lde/j4velin/lib/colorpicker/R$id;->copy:I

    if-ne v3, v4, :cond_4

    .line 225
    iget-object v3, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->context:Landroid/content/Context;

    iget-object v4, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lde/j4velin/lib/colorpicker/API11Wrapper;->copy(Landroid/content/Context;Ljava/lang/String;)V

    .line 226
    iget-object v3, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->context:Landroid/content/Context;

    sget v4, Lde/j4velin/lib/colorpicker/R$string;->copied:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 227
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lde/j4velin/lib/colorpicker/R$id;->paste:I

    if-ne v3, v4, :cond_1

    .line 228
    iget-object v3, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->context:Landroid/content/Context;

    invoke-static {v3}, Lde/j4velin/lib/colorpicker/API11Wrapper;->paste(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, "s":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 231
    :try_start_0
    invoke-static {v2}, Lde/j4velin/lib/colorpicker/Util;->convertToColorInt(Ljava/lang/String;)I

    move-result v0

    .line 232
    .local v0, "c":I
    iget-object v3, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mColorPicker:Lde/j4velin/lib/colorpicker/ColorPickerView;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lde/j4velin/lib/colorpicker/ColorPickerView;->setColor(IZ)V

    .line 233
    iget-object v3, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    iget-object v4, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mHexDefaultTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    .end local v0    # "c":I
    :catch_0
    move-exception v1

    .line 235
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    iget-object v3, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    const/high16 v4, -0x10000

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_0
.end method

.method public onColorChanged(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mNewColor:Lde/j4velin/lib/colorpicker/ColorPickerPanelView;

    invoke-virtual {v0, p1}, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->setColor(I)V

    .line 146
    iget-boolean v0, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mHexValueEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->updateHexValue(I)V

    .line 154
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 251
    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 252
    iget-object v0, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mOldColor:Lde/j4velin/lib/colorpicker/ColorPickerPanelView;

    const-string/jumbo v1, "old_color"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->setColor(I)V

    .line 253
    iget-object v0, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mColorPicker:Lde/j4velin/lib/colorpicker/ColorPickerView;

    const-string/jumbo v1, "new_color"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lde/j4velin/lib/colorpicker/ColorPickerView;->setColor(IZ)V

    .line 254
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 243
    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 244
    .local v0, "state":Landroid/os/Bundle;
    const-string/jumbo v1, "old_color"

    iget-object v2, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mOldColor:Lde/j4velin/lib/colorpicker/ColorPickerPanelView;

    invoke-virtual {v2}, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->getColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 245
    const-string/jumbo v1, "new_color"

    iget-object v2, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mNewColor:Lde/j4velin/lib/colorpicker/ColorPickerPanelView;

    invoke-virtual {v2}, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->getColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 246
    return-object v0
.end method

.method public setAlphaSliderVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 189
    iget-object v0, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mColorPicker:Lde/j4velin/lib/colorpicker/ColorPickerView;

    invoke-virtual {v0, p1}, Lde/j4velin/lib/colorpicker/ColorPickerView;->setAlphaSliderVisible(Z)V

    .line 190
    iget-boolean v0, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mHexValueEnabled:Z

    if-eqz v0, :cond_0

    .line 191
    invoke-direct {p0}, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->updateHexLengthFilter()V

    .line 192
    invoke-virtual {p0}, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->getColor()I

    move-result v0

    invoke-direct {p0, v0}, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->updateHexValue(I)V

    .line 194
    :cond_0
    return-void
.end method

.method public setHexValueEnabled(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/16 v5, 0xb

    const/4 v3, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 157
    iput-boolean p1, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mHexValueEnabled:Z

    .line 158
    if-eqz p1, :cond_0

    .line 159
    iget-object v0, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 160
    invoke-direct {p0}, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->updateHexLengthFilter()V

    .line 161
    invoke-virtual {p0}, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->getColor()I

    move-result v0

    invoke-direct {p0, v0}, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->updateHexValue(I)V

    .line 163
    :goto_0
    sget v0, Lde/j4velin/lib/colorpicker/R$id;->copy:I

    invoke-virtual {p0, v0}, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_1

    move v0, v3

    :goto_1
    and-int/2addr v0, p1

    if-eqz v0, :cond_2

    move v0, v1

    .line 164
    :goto_2
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 165
    sget v0, Lde/j4velin/lib/colorpicker/R$id;->paste:I

    invoke-virtual {p0, v0}, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_3

    move v0, v3

    :goto_3
    and-int/2addr v0, p1

    if-eqz v0, :cond_4

    .line 166
    :goto_4
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 167
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 163
    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v1

    .line 165
    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_4
.end method

.method public setOnColorChangedListener(Lde/j4velin/lib/colorpicker/ColorPickerDialog$OnColorChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lde/j4velin/lib/colorpicker/ColorPickerDialog$OnColorChangedListener;

    .prologue
    .line 207
    sput-object p1, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->mListener:Lde/j4velin/lib/colorpicker/ColorPickerDialog$OnColorChangedListener;

    .line 208
    return-void
.end method
