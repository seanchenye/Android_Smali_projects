.class public Lde/j4velin/pedometer/AppUpdatedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppUpdatedReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 31
    sget-boolean v0, Lde/j4velin/pedometer/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "app updated"

    invoke-static {v0}, Lde/j4velin/pedometer/util/Logger;->log(Ljava/lang/String;)V

    .line 32
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 33
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lde/j4velin/pedometer/SensorListener;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, v0}, Lde/j4velin/pedometer/util/API26Wrapper;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lde/j4velin/pedometer/SensorListener;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
