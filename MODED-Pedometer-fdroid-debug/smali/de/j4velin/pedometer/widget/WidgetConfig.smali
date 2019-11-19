.class public Lde/j4velin/pedometer/widget/WidgetConfig;
.super Landroid/app/Activity;
.source "WidgetConfig.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static widgetId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lde/j4velin/pedometer/widget/WidgetConfig;->widgetId:I

    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 70
    new-instance v0, Lde/j4velin/lib/colorpicker/ColorPickerDialog;

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lde/j4velin/pedometer/widget/WidgetConfig;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lde/j4velin/pedometer/widget/WidgetConfig;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    invoke-direct {v0, p0, v1}, Lde/j4velin/lib/colorpicker/ColorPickerDialog;-><init>(Landroid/content/Context;I)V

    .line 73
    .local v0, "dialog":Lde/j4velin/lib/colorpicker/ColorPickerDialog;
    invoke-virtual {v0, v2}, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->setHexValueEnabled(Z)V

    .line 74
    invoke-virtual {v0, v2}, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->setAlphaSliderVisible(Z)V

    .line 75
    new-instance v1, Lde/j4velin/pedometer/widget/WidgetConfig$1;

    invoke-direct {v1, p0, p1}, Lde/j4velin/pedometer/widget/WidgetConfig$1;-><init>(Lde/j4velin/pedometer/widget/WidgetConfig;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->setOnColorChangedListener(Lde/j4velin/lib/colorpicker/ColorPickerDialog$OnColorChangedListener;)V

    .line 85
    invoke-virtual {v0}, Lde/j4velin/lib/colorpicker/ColorPickerDialog;->show()V

    .line 86
    return-void

    .line 72
    .end local v0    # "dialog":Lde/j4velin/lib/colorpicker/ColorPickerDialog;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lde/j4velin/pedometer/widget/WidgetConfig;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 46
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 47
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 48
    const v5, 0x7f09002d

    invoke-virtual {p0, v5}, Lde/j4velin/pedometer/widget/WidgetConfig;->setContentView(I)V

    .line 50
    const v5, 0x7f0700a1

    invoke-virtual {p0, v5}, Lde/j4velin/pedometer/widget/WidgetConfig;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lde/j4velin/lib/colorpicker/ColorPreviewButton;

    .line 51
    .local v4, "textcolor":Lde/j4velin/lib/colorpicker/ColorPreviewButton;
    invoke-virtual {v4, p0}, Lde/j4velin/lib/colorpicker/ColorPreviewButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    invoke-virtual {v4, v7}, Lde/j4velin/lib/colorpicker/ColorPreviewButton;->setColor(I)V

    .line 53
    const v5, 0x7f07002d

    invoke-virtual {p0, v5}, Lde/j4velin/pedometer/widget/WidgetConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lde/j4velin/lib/colorpicker/ColorPreviewButton;

    .line 54
    .local v0, "bgcolor":Lde/j4velin/lib/colorpicker/ColorPreviewButton;
    invoke-virtual {v0, p0}, Lde/j4velin/lib/colorpicker/ColorPreviewButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-virtual {v0, v6}, Lde/j4velin/lib/colorpicker/ColorPreviewButton;->setColor(I)V

    .line 57
    const-string/jumbo v5, "appWidgetId"

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lde/j4velin/pedometer/widget/WidgetConfig;->widgetId:I

    .line 60
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 61
    .local v3, "resultValue":Landroid/content/Intent;
    const-string/jumbo v5, "appWidgetId"

    sget v6, Lde/j4velin/pedometer/widget/WidgetConfig;->widgetId:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0, v7, v3}, Lde/j4velin/pedometer/widget/WidgetConfig;->setResult(ILandroid/content/Intent;)V

    .line 66
    .end local v0    # "bgcolor":Lde/j4velin/lib/colorpicker/ColorPreviewButton;
    .end local v3    # "resultValue":Landroid/content/Intent;
    .end local v4    # "textcolor":Lde/j4velin/lib/colorpicker/ColorPreviewButton;
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-virtual {p0}, Lde/j4velin/pedometer/widget/WidgetConfig;->finish()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 39
    invoke-static {p0}, Lde/j4velin/pedometer/widget/WidgetUpdateService;->enqueueUpdate(Landroid/content/Context;)V

    .line 40
    return-void
.end method
