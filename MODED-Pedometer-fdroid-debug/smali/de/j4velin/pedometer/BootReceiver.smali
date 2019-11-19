.class public Lde/j4velin/pedometer/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 32
    sget-boolean v3, Lde/j4velin/pedometer/BuildConfig;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "booted"

    invoke-static {v3}, Lde/j4velin/pedometer/util/Logger;->log(Ljava/lang/String;)V

    .line 34
    :cond_0
    const-string/jumbo v3, "pedometer"

    invoke-virtual {p1, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 36
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-static {p1}, Lde/j4velin/pedometer/Database;->getInstance(Landroid/content/Context;)Lde/j4velin/pedometer/Database;

    move-result-object v0

    .line 38
    .local v0, "db":Lde/j4velin/pedometer/Database;
    const-string/jumbo v3, "correctShutdown"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_3

    .line 39
    sget-boolean v3, Lde/j4velin/pedometer/BuildConfig;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "Incorrect shutdown"

    invoke-static {v3}, Lde/j4velin/pedometer/util/Logger;->log(Ljava/lang/String;)V

    .line 41
    :cond_1
    invoke-virtual {v0}, Lde/j4velin/pedometer/Database;->getCurrentSteps()I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 42
    .local v2, "steps":I
    sget-boolean v3, Lde/j4velin/pedometer/BuildConfig;->DEBUG:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Trying to recover "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " steps"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lde/j4velin/pedometer/util/Logger;->log(Ljava/lang/String;)V

    .line 43
    :cond_2
    invoke-virtual {v0, v2}, Lde/j4velin/pedometer/Database;->addToLastEntry(I)V

    .line 47
    .end local v2    # "steps":I
    :cond_3
    invoke-virtual {v0}, Lde/j4velin/pedometer/Database;->removeNegativeEntries()V

    .line 48
    invoke-virtual {v0, v5}, Lde/j4velin/pedometer/Database;->saveCurrentSteps(I)V

    .line 49
    invoke-virtual {v0}, Lde/j4velin/pedometer/Database;->close()V

    .line 50
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "correctShutdown"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 52
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_4

    .line 53
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lde/j4velin/pedometer/SensorListener;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, v3}, Lde/j4velin/pedometer/util/API26Wrapper;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_4
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lde/j4velin/pedometer/SensorListener;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
