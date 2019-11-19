.class Lde/j4velin/pedometer/ui/Fragment_Settings$4;
.super Ljava/lang/Object;
.source "Fragment_Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/j4velin/pedometer/ui/Fragment_Settings;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/j4velin/pedometer/ui/Fragment_Settings;

.field final synthetic val$preference:Landroid/preference/Preference;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;

.field final synthetic val$unit:Landroid/widget/RadioGroup;

.field final synthetic val$value:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lde/j4velin/pedometer/ui/Fragment_Settings;Landroid/content/SharedPreferences;Landroid/widget/EditText;Landroid/widget/RadioGroup;Landroid/preference/Preference;)V
    .locals 0
    .param p1, "this$0"    # Lde/j4velin/pedometer/ui/Fragment_Settings;

    .prologue
    .line 199
    iput-object p1, p0, Lde/j4velin/pedometer/ui/Fragment_Settings$4;->this$0:Lde/j4velin/pedometer/ui/Fragment_Settings;

    iput-object p2, p0, Lde/j4velin/pedometer/ui/Fragment_Settings$4;->val$prefs:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lde/j4velin/pedometer/ui/Fragment_Settings$4;->val$value:Landroid/widget/EditText;

    iput-object p4, p0, Lde/j4velin/pedometer/ui/Fragment_Settings$4;->val$unit:Landroid/widget/RadioGroup;

    iput-object p5, p0, Lde/j4velin/pedometer/ui/Fragment_Settings$4;->val$preference:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const v7, 0x7f07003a

    .line 203
    :try_start_0
    iget-object v1, p0, Lde/j4velin/pedometer/ui/Fragment_Settings$4;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "stepsize_value"

    iget-object v3, p0, Lde/j4velin/pedometer/ui/Fragment_Settings$4;->val$value:Landroid/widget/EditText;

    .line 204
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 203
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "stepsize_unit"

    iget-object v1, p0, Lde/j4velin/pedometer/ui/Fragment_Settings$4;->val$unit:Landroid/widget/RadioGroup;

    .line 206
    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    if-ne v1, v7, :cond_0

    const-string/jumbo v1, "cm"

    .line 205
    :goto_0
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 207
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 208
    iget-object v2, p0, Lde/j4velin/pedometer/ui/Fragment_Settings$4;->val$preference:Landroid/preference/Preference;

    iget-object v3, p0, Lde/j4velin/pedometer/ui/Fragment_Settings$4;->this$0:Lde/j4velin/pedometer/ui/Fragment_Settings;

    const v4, 0x7f0c0059

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v6, p0, Lde/j4velin/pedometer/ui/Fragment_Settings$4;->val$value:Landroid/widget/EditText;

    .line 209
    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x1

    iget-object v1, p0, Lde/j4velin/pedometer/ui/Fragment_Settings$4;->val$unit:Landroid/widget/RadioGroup;

    .line 210
    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    if-ne v1, v7, :cond_1

    const-string/jumbo v1, "cm"

    :goto_1
    aput-object v1, v5, v6

    .line 208
    invoke-virtual {v3, v4, v5}, Lde/j4velin/pedometer/ui/Fragment_Settings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 215
    return-void

    .line 206
    :cond_0
    :try_start_1
    const-string/jumbo v1, "ft"

    goto :goto_0

    .line 210
    :cond_1
    const-string/jumbo v1, "ft"
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2
.end method
