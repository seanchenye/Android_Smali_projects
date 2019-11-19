.class public Lde/j4velin/pedometer/ShutdownRecevier;
.super Landroid/content/BroadcastReceiver;
.source "ShutdownRecevier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 30
    sget-boolean v2, Lde/j4velin/pedometer/BuildConfig;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "shutting down"

    invoke-static {v2}, Lde/j4velin/pedometer/util/Logger;->log(Ljava/lang/String;)V

    .line 32
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lde/j4velin/pedometer/SensorListener;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 38
    const-string/jumbo v2, "pedometer"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "correctShutdown"

    const/4 v4, 0x1

    .line 39
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 41
    invoke-static {p1}, Lde/j4velin/pedometer/Database;->getInstance(Landroid/content/Context;)Lde/j4velin/pedometer/Database;

    move-result-object v0

    .line 43
    .local v0, "db":Lde/j4velin/pedometer/Database;
    invoke-static {}, Lde/j4velin/pedometer/util/Util;->getToday()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lde/j4velin/pedometer/Database;->getSteps(J)I

    move-result v2

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_1

    .line 44
    invoke-virtual {v0}, Lde/j4velin/pedometer/Database;->getCurrentSteps()I

    move-result v1

    .line 45
    .local v1, "steps":I
    invoke-static {}, Lde/j4velin/pedometer/util/Util;->getToday()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v1}, Lde/j4velin/pedometer/Database;->insertNewDay(JI)V

    .line 50
    .end local v1    # "steps":I
    :goto_0
    invoke-virtual {v0}, Lde/j4velin/pedometer/Database;->close()V

    .line 51
    return-void

    .line 47
    :cond_1
    invoke-virtual {v0}, Lde/j4velin/pedometer/Database;->getCurrentSteps()I

    move-result v2

    invoke-virtual {v0, v2}, Lde/j4velin/pedometer/Database;->addToLastEntry(I)V

    goto :goto_0
.end method
