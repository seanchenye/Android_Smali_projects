.class Lde/j4velin/pedometer/ui/Fragment_Settings$1;
.super Ljava/lang/Object;
.source "Fragment_Settings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/j4velin/pedometer/ui/Fragment_Settings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/j4velin/pedometer/ui/Fragment_Settings;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lde/j4velin/pedometer/ui/Fragment_Settings;Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "this$0"    # Lde/j4velin/pedometer/ui/Fragment_Settings;

    .prologue
    .line 81
    iput-object p1, p0, Lde/j4velin/pedometer/ui/Fragment_Settings$1;->this$0:Lde/j4velin/pedometer/ui/Fragment_Settings;

    iput-object p2, p0, Lde/j4velin/pedometer/ui/Fragment_Settings$1;->val$prefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 85
    iget-object v1, p0, Lde/j4velin/pedometer/ui/Fragment_Settings$1;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "notification"

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 87
    iget-object v1, p0, Lde/j4velin/pedometer/ui/Fragment_Settings$1;->this$0:Lde/j4velin/pedometer/ui/Fragment_Settings;

    invoke-virtual {v1}, Lde/j4velin/pedometer/ui/Fragment_Settings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "notification"

    .line 88
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 89
    .local v0, "manager":Landroid/app/NotificationManager;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lde/j4velin/pedometer/ui/Fragment_Settings$1;->this$0:Lde/j4velin/pedometer/ui/Fragment_Settings;

    .line 91
    invoke-virtual {v1}, Lde/j4velin/pedometer/ui/Fragment_Settings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lde/j4velin/pedometer/SensorListener;->getNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v1

    .line 90
    invoke-virtual {v0, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 96
    :goto_0
    return v4

    .line 93
    :cond_0
    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method
