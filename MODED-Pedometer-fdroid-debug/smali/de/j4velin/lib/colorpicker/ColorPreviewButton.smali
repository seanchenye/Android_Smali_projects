.class public Lde/j4velin/lib/colorpicker/ColorPreviewButton;
.super Landroid/view/View;
.source "ColorPreviewButton.java"


# instance fields
.field private final borderColor:I

.field private color:I

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lde/j4velin/lib/colorpicker/ColorPreviewButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lde/j4velin/lib/colorpicker/ColorPreviewButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lde/j4velin/lib/colorpicker/ColorPreviewButton;->paint:Landroid/graphics/Paint;

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lde/j4velin/lib/colorpicker/R$styleable;->ColorPreviewButton:[I

    .line 28
    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 30
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v1, Lde/j4velin/lib/colorpicker/R$styleable;->ColorPreviewButton_borderColor:I

    const v2, -0x333334

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lde/j4velin/lib/colorpicker/ColorPreviewButton;->borderColor:I

    .line 31
    sget v1, Lde/j4velin/lib/colorpicker/R$styleable;->ColorPreviewButton_initColor:I

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lde/j4velin/lib/colorpicker/ColorPreviewButton;->color:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 35
    return-void

    .line 33
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lde/j4velin/lib/colorpicker/ColorPreviewButton;->color:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 49
    iget-object v1, p0, Lde/j4velin/lib/colorpicker/ColorPreviewButton;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lde/j4velin/lib/colorpicker/ColorPreviewButton;->color:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    iget-object v1, p0, Lde/j4velin/lib/colorpicker/ColorPreviewButton;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    invoke-virtual {p0}, Lde/j4velin/lib/colorpicker/ColorPreviewButton;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lde/j4velin/lib/colorpicker/ColorPreviewButton;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lde/j4velin/lib/colorpicker/ColorPreviewButton;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lde/j4velin/lib/colorpicker/ColorPreviewButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 52
    iget-object v1, p0, Lde/j4velin/lib/colorpicker/ColorPreviewButton;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lde/j4velin/lib/colorpicker/ColorPreviewButton;->borderColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v1, p0, Lde/j4velin/lib/colorpicker/ColorPreviewButton;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    invoke-virtual {p0}, Lde/j4velin/lib/colorpicker/ColorPreviewButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lde/j4velin/lib/colorpicker/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    float-to-int v0, v1

    .line 55
    .local v0, "borderwidth":I
    iget-object v1, p0, Lde/j4velin/lib/colorpicker/ColorPreviewButton;->paint:Landroid/graphics/Paint;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 56
    invoke-virtual {p0}, Lde/j4velin/lib/colorpicker/ColorPreviewButton;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lde/j4velin/lib/colorpicker/ColorPreviewButton;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lde/j4velin/lib/colorpicker/ColorPreviewButton;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    iget-object v4, p0, Lde/j4velin/lib/colorpicker/ColorPreviewButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 57
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lde/j4velin/lib/colorpicker/ColorPreviewButton;->setColor(I)V

    .line 62
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "c"    # I

    .prologue
    .line 38
    iput p1, p0, Lde/j4velin/lib/colorpicker/ColorPreviewButton;->color:I

    .line 39
    invoke-virtual {p0}, Lde/j4velin/lib/colorpicker/ColorPreviewButton;->invalidate()V

    .line 40
    return-void
.end method
