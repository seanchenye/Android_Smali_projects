.class Lde/j4velin/pedometer/widget/WidgetConfig$1;
.super Ljava/lang/Object;
.source "WidgetConfig.java"

# interfaces
.implements Lde/j4velin/lib/colorpicker/ColorPickerDialog$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/j4velin/pedometer/widget/WidgetConfig;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/j4velin/pedometer/widget/WidgetConfig;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lde/j4velin/pedometer/widget/WidgetConfig;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lde/j4velin/pedometer/widget/WidgetConfig;

    .prologue
    .line 75
    iput-object p1, p0, Lde/j4velin/pedometer/widget/WidgetConfig$1;->this$0:Lde/j4velin/pedometer/widget/WidgetConfig;

    iput-object p2, p0, Lde/j4velin/pedometer/widget/WidgetConfig$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lde/j4velin/pedometer/widget/WidgetConfig$1;->val$v:Landroid/view/View;

    check-cast v0, Lde/j4velin/lib/colorpicker/ColorPreviewButton;

    invoke-virtual {v0, p1}, Lde/j4velin/lib/colorpicker/ColorPreviewButton;->setColor(I)V

    .line 79
    iget-object v0, p0, Lde/j4velin/pedometer/widget/WidgetConfig$1;->val$v:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lde/j4velin/pedometer/widget/WidgetConfig$1;->this$0:Lde/j4velin/pedometer/widget/WidgetConfig;

    const-string/jumbo v1, "Widgets"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lde/j4velin/pedometer/widget/WidgetConfig;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lde/j4velin/pedometer/widget/WidgetConfig$1;->val$v:Landroid/view/View;

    .line 81
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f07002d

    if-ne v0, v3, :cond_0

    const-string/jumbo v0, "background_"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lde/j4velin/pedometer/widget/WidgetConfig;->access$000()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 82
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 83
    return-void

    .line 81
    :cond_0
    const-string/jumbo v0, "color_"

    goto :goto_0
.end method
