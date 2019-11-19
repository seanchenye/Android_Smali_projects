.class Lde/j4velin/pedometer/ui/Fragment_Settings$2;
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

.field final synthetic val$np:Landroid/widget/NumberPicker;

.field final synthetic val$preference:Landroid/preference/Preference;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lde/j4velin/pedometer/ui/Fragment_Settings;Landroid/widget/NumberPicker;Landroid/content/SharedPreferences;Landroid/preference/Preference;)V
    .locals 0
    .param p1, "this$0"    # Lde/j4velin/pedometer/ui/Fragment_Settings;

    .prologue
    .line 166
    iput-object p1, p0, Lde/j4velin/pedometer/ui/Fragment_Settings$2;->this$0:Lde/j4velin/pedometer/ui/Fragment_Settings;

    iput-object p2, p0, Lde/j4velin/pedometer/ui/Fragment_Settings$2;->val$np:Landroid/widget/NumberPicker;

    iput-object p3, p0, Lde/j4velin/pedometer/ui/Fragment_Settings$2;->val$prefs:Landroid/content/SharedPreferences;

    iput-object p4, p0, Lde/j4velin/pedometer/ui/Fragment_Settings$2;->val$preference:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x1

    .line 169
    iget-object v0, p0, Lde/j4velin/pedometer/ui/Fragment_Settings$2;->val$np:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->clearFocus()V

    .line 170
    iget-object v0, p0, Lde/j4velin/pedometer/ui/Fragment_Settings$2;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "goal"

    iget-object v2, p0, Lde/j4velin/pedometer/ui/Fragment_Settings$2;->val$np:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 171
    iget-object v0, p0, Lde/j4velin/pedometer/ui/Fragment_Settings$2;->val$preference:Landroid/preference/Preference;

    iget-object v1, p0, Lde/j4velin/pedometer/ui/Fragment_Settings$2;->this$0:Lde/j4velin/pedometer/ui/Fragment_Settings;

    const v2, 0x7f0c0038

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lde/j4velin/pedometer/ui/Fragment_Settings$2;->val$np:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lde/j4velin/pedometer/ui/Fragment_Settings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 172
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 173
    iget-object v0, p0, Lde/j4velin/pedometer/ui/Fragment_Settings$2;->this$0:Lde/j4velin/pedometer/ui/Fragment_Settings;

    invoke-virtual {v0}, Lde/j4velin/pedometer/ui/Fragment_Settings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lde/j4velin/pedometer/ui/Fragment_Settings$2;->this$0:Lde/j4velin/pedometer/ui/Fragment_Settings;

    invoke-virtual {v2}, Lde/j4velin/pedometer/ui/Fragment_Settings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lde/j4velin/pedometer/SensorListener;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "updateNotificationState"

    .line 174
    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 173
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 175
    return-void
.end method
