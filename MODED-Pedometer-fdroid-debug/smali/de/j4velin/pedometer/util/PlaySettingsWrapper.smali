.class public Lde/j4velin/pedometer/util/PlaySettingsWrapper;
.super Ljava/lang/Object;
.source "PlaySettingsWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onSavedInstance(Landroid/os/Bundle;Lde/j4velin/pedometer/ui/Activity_Main;)V
    .locals 0
    .param p0, "outState"    # Landroid/os/Bundle;
    .param p1, "main"    # Lde/j4velin/pedometer/ui/Activity_Main;

    .prologue
    .line 37
    return-void
.end method

.method public static setupAccountSetting(Landroid/preference/Preference;Landroid/os/Bundle;Lde/j4velin/pedometer/ui/Activity_Main;)V
    .locals 1
    .param p0, "account"    # Landroid/preference/Preference;
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "main"    # Lde/j4velin/pedometer/ui/Activity_Main;

    .prologue
    .line 31
    const-string/jumbo v0, "This feature is not available on the F-Droid version of the app"

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 33
    return-void
.end method
