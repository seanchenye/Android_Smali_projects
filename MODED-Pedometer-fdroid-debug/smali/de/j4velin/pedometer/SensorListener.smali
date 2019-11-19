.class public Lde/j4velin/pedometer/SensorListener;
.super Landroid/app/Service;
.source "SensorListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final MICROSECONDS_IN_ONE_MINUTE:J = 0x3938700L

.field public static final NOTIFICATION_ID:I = 0x1

.field private static final SAVE_OFFSET_STEPS:I = 0x1f4

.field private static final SAVE_OFFSET_TIME:J = 0x36ee80L

.field private static lastSaveSteps:I

.field private static lastSaveTime:J

.field private static steps:I


# instance fields
.field private final shutdownReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 65
    new-instance v0, Lde/j4velin/pedometer/ShutdownRecevier;

    invoke-direct {v0}, Lde/j4velin/pedometer/ShutdownRecevier;-><init>()V

    iput-object v0, p0, Lde/j4velin/pedometer/SensorListener;->shutdownReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static getNotification(Landroid/content/Context;)Landroid/app/Notification;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 189
    sget-boolean v6, Lde/j4velin/pedometer/BuildConfig;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "getNotification"

    invoke-static {v6}, Lde/j4velin/pedometer/util/Logger;->log(Ljava/lang/String;)V

    .line 190
    :cond_0
    const-string/jumbo v6, "pedometer"

    invoke-virtual {p0, v6, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 191
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v6, "goal"

    const/16 v7, 0x2710

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 192
    .local v2, "goal":I
    invoke-static {p0}, Lde/j4velin/pedometer/Database;->getInstance(Landroid/content/Context;)Lde/j4velin/pedometer/Database;

    move-result-object v0

    .line 193
    .local v0, "db":Lde/j4velin/pedometer/Database;
    invoke-static {}, Lde/j4velin/pedometer/util/Util;->getToday()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lde/j4velin/pedometer/Database;->getSteps(J)I

    move-result v5

    .line 194
    .local v5, "today_offset":I
    sget v6, Lde/j4velin/pedometer/SensorListener;->steps:I

    if-nez v6, :cond_1

    .line 195
    invoke-virtual {v0}, Lde/j4velin/pedometer/Database;->getCurrentSteps()I

    move-result v6

    sput v6, Lde/j4velin/pedometer/SensorListener;->steps:I

    .line 196
    :cond_1
    invoke-virtual {v0}, Lde/j4velin/pedometer/Database;->close()V

    .line 197
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-lt v6, v7, :cond_3

    .line 198
    invoke-static {p0}, Lde/j4velin/pedometer/util/API26Wrapper;->getNotificationBuilder(Landroid/content/Context;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 200
    .local v3, "notificationBuilder":Landroid/app/Notification$Builder;
    :goto_0
    sget v6, Lde/j4velin/pedometer/SensorListener;->steps:I

    if-lez v6, :cond_5

    .line 201
    const/high16 v6, -0x80000000

    if-ne v5, v6, :cond_2

    sget v6, Lde/j4velin/pedometer/SensorListener;->steps:I

    neg-int v5, v6

    .line 202
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    .line 203
    .local v1, "format":Ljava/text/NumberFormat;
    sget v6, Lde/j4velin/pedometer/SensorListener;->steps:I

    add-int/2addr v6, v5

    invoke-virtual {v3, v2, v6, v12}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v7

    sget v6, Lde/j4velin/pedometer/SensorListener;->steps:I

    add-int/2addr v6, v5

    if-lt v6, v2, :cond_4

    const v6, 0x7f0c0037

    new-array v8, v13, [Ljava/lang/Object;

    sget v9, Lde/j4velin/pedometer/SensorListener;->steps:I

    add-int/2addr v9, v5

    int-to-long v10, v9

    .line 206
    invoke-virtual {v1, v10, v11}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    .line 205
    invoke-virtual {p0, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 203
    :goto_1
    invoke-virtual {v7, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget v8, Lde/j4velin/pedometer/SensorListener;->steps:I

    add-int/2addr v8, v5

    int-to-long v8, v8

    .line 209
    invoke-virtual {v1, v8, v9}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0c005a

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 208
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 215
    .end local v1    # "format":Ljava/text/NumberFormat;
    :goto_2
    const/4 v6, -0x2

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const-class v8, Lde/j4velin/pedometer/ui/Activity_Main;

    invoke-direct {v7, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v8, 0x8000000

    .line 217
    invoke-static {p0, v12, v7, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 216
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    const v7, 0x7f060056

    .line 219
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v13}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 220
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    return-object v6

    .line 198
    .end local v3    # "notificationBuilder":Landroid/app/Notification$Builder;
    :cond_3
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 205
    .restart local v1    # "format":Ljava/text/NumberFormat;
    .restart local v3    # "notificationBuilder":Landroid/app/Notification$Builder;
    :cond_4
    const v6, 0x7f0c0042

    new-array v8, v13, [Ljava/lang/Object;

    sub-int v9, v2, v5

    sget v10, Lde/j4velin/pedometer/SensorListener;->steps:I

    sub-int/2addr v9, v10

    int-to-long v10, v9

    .line 208
    invoke-virtual {v1, v10, v11}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    .line 207
    invoke-virtual {p0, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 211
    .end local v1    # "format":Ljava/text/NumberFormat;
    :cond_5
    const v6, 0x7f0c0060

    .line 212
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 211
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    const v7, 0x7f0c0043

    .line 213
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_2
.end method

.method private reRegisterSensor()V
    .locals 5

    .prologue
    const/16 v4, 0x13

    .line 231
    sget-boolean v2, Lde/j4velin/pedometer/BuildConfig;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "re-register sensor listener"

    invoke-static {v2}, Lde/j4velin/pedometer/util/Logger;->log(Ljava/lang/String;)V

    .line 232
    :cond_0
    const-string/jumbo v2, "sensor"

    invoke-virtual {p0, v2}, Lde/j4velin/pedometer/SensorListener;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 234
    .local v1, "sm":Landroid/hardware/SensorManager;
    :try_start_0
    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    sget-boolean v2, Lde/j4velin/pedometer/BuildConfig;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "step sensors: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lde/j4velin/pedometer/util/Logger;->log(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v1, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_2

    .line 249
    :goto_1
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v2, Lde/j4velin/pedometer/BuildConfig;->DEBUG:Z

    if-eqz v2, :cond_1

    invoke-static {v0}, Lde/j4velin/pedometer/util/Logger;->log(Ljava/lang/Throwable;)V

    .line 237
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 243
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "default: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lde/j4velin/pedometer/util/Logger;->log(Ljava/lang/String;)V

    .line 247
    :cond_3
    invoke-virtual {v1, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x3

    const v4, 0x11e1a300

    invoke-virtual {v1, p0, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;II)Z

    goto :goto_1
.end method

.method private registerBroadcastReceiver()V
    .locals 2

    .prologue
    .line 224
    sget-boolean v1, Lde/j4velin/pedometer/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "register broadcastreceiver"

    invoke-static {v1}, Lde/j4velin/pedometer/util/Logger;->log(Ljava/lang/String;)V

    .line 225
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 226
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lde/j4velin/pedometer/SensorListener;->shutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lde/j4velin/pedometer/SensorListener;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 228
    return-void
.end method

.method private showNotification()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 119
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 120
    invoke-static {p0}, Lde/j4velin/pedometer/SensorListener;->getNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lde/j4velin/pedometer/SensorListener;->startForeground(ILandroid/app/Notification;)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    const-string/jumbo v0, "pedometer"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lde/j4velin/pedometer/SensorListener;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "notification"

    .line 122
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Lde/j4velin/pedometer/SensorListener;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 124
    invoke-static {p0}, Lde/j4velin/pedometer/SensorListener;->getNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private updateIfNecessary()Z
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 89
    sget v3, Lde/j4velin/pedometer/SensorListener;->steps:I

    sget v4, Lde/j4velin/pedometer/SensorListener;->lastSaveSteps:I

    add-int/lit16 v4, v4, 0x1f4

    if-gt v3, v4, :cond_0

    sget v3, Lde/j4velin/pedometer/SensorListener;->steps:I

    if-lez v3, :cond_3

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lde/j4velin/pedometer/SensorListener;->lastSaveTime:J

    const-wide/32 v8, 0x36ee80

    add-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    .line 91
    :cond_0
    sget-boolean v3, Lde/j4velin/pedometer/BuildConfig;->DEBUG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "saving steps: steps="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lde/j4velin/pedometer/SensorListener;->steps:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " lastSave="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lde/j4velin/pedometer/SensorListener;->lastSaveSteps:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " lastSaveTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    sget-wide v6, Lde/j4velin/pedometer/SensorListener;->lastSaveTime:J

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lde/j4velin/pedometer/util/Logger;->log(Ljava/lang/String;)V

    .line 94
    :cond_1
    invoke-static {p0}, Lde/j4velin/pedometer/Database;->getInstance(Landroid/content/Context;)Lde/j4velin/pedometer/Database;

    move-result-object v0

    .line 95
    .local v0, "db":Lde/j4velin/pedometer/Database;
    invoke-static {}, Lde/j4velin/pedometer/util/Util;->getToday()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lde/j4velin/pedometer/Database;->getSteps(J)I

    move-result v3

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_2

    .line 96
    sget v3, Lde/j4velin/pedometer/SensorListener;->steps:I

    const-string/jumbo v4, "pedometer"

    .line 97
    invoke-virtual {p0, v4, v2}, Lde/j4velin/pedometer/SensorListener;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string/jumbo v5, "pauseCount"

    sget v6, Lde/j4velin/pedometer/SensorListener;->steps:I

    .line 98
    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    sub-int v1, v3, v4

    .line 99
    .local v1, "pauseDifference":I
    invoke-static {}, Lde/j4velin/pedometer/util/Util;->getToday()J

    move-result-wide v4

    sget v3, Lde/j4velin/pedometer/SensorListener;->steps:I

    sub-int/2addr v3, v1

    invoke-virtual {v0, v4, v5, v3}, Lde/j4velin/pedometer/Database;->insertNewDay(JI)V

    .line 100
    if-lez v1, :cond_2

    .line 102
    const-string/jumbo v3, "pedometer"

    invoke-virtual {p0, v3, v2}, Lde/j4velin/pedometer/SensorListener;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "pauseCount"

    sget v4, Lde/j4velin/pedometer/SensorListener;->steps:I

    .line 103
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 106
    .end local v1    # "pauseDifference":I
    :cond_2
    sget v2, Lde/j4velin/pedometer/SensorListener;->steps:I

    invoke-virtual {v0, v2}, Lde/j4velin/pedometer/Database;->saveCurrentSteps(I)V

    .line 107
    invoke-virtual {v0}, Lde/j4velin/pedometer/Database;->close()V

    .line 108
    sget v2, Lde/j4velin/pedometer/SensorListener;->steps:I

    sput v2, Lde/j4velin/pedometer/SensorListener;->lastSaveSteps:I

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lde/j4velin/pedometer/SensorListener;->lastSaveTime:J

    .line 110
    invoke-direct {p0}, Lde/j4velin/pedometer/SensorListener;->showNotification()V

    .line 111
    invoke-static {p0}, Lde/j4velin/pedometer/widget/WidgetUpdateService;->enqueueUpdate(Landroid/content/Context;)V

    .line 112
    const/4 v2, 0x1

    .line 114
    .end local v0    # "db":Lde/j4velin/pedometer/Database;
    :cond_3
    return v2
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 71
    sget-boolean v0, Lde/j4velin/pedometer/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " accuracy changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/j4velin/pedometer/util/Logger;->log(Ljava/lang/String;)V

    .line 72
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 130
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 162
    sget-boolean v0, Lde/j4velin/pedometer/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SensorListener onCreate"

    invoke-static {v0}, Lde/j4velin/pedometer/util/Logger;->log(Ljava/lang/String;)V

    .line 163
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 177
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 178
    sget-boolean v2, Lde/j4velin/pedometer/BuildConfig;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "SensorListener onDestroy"

    invoke-static {v2}, Lde/j4velin/pedometer/util/Logger;->log(Ljava/lang/String;)V

    .line 180
    :cond_0
    :try_start_0
    const-string/jumbo v2, "sensor"

    invoke-virtual {p0, v2}, Lde/j4velin/pedometer/SensorListener;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 181
    .local v1, "sm":Landroid/hardware/SensorManager;
    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .end local v1    # "sm":Landroid/hardware/SensorManager;
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v2, Lde/j4velin/pedometer/BuildConfig;->DEBUG:Z

    if-eqz v2, :cond_1

    invoke-static {v0}, Lde/j4velin/pedometer/util/Logger;->log(Ljava/lang/Throwable;)V

    .line 184
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v2, 0x0

    .line 76
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    const/high16 v1, 0x4f000000

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 77
    sget-boolean v0, Lde/j4velin/pedometer/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "probably not a real value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/j4velin/pedometer/util/Logger;->log(Ljava/lang/String;)V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    float-to-int v0, v0

    sput v0, Lde/j4velin/pedometer/SensorListener;->steps:I

    .line 81
    invoke-direct {p0}, Lde/j4velin/pedometer/SensorListener;->updateIfNecessary()Z

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v10, 0x1

    .line 135
    invoke-direct {p0}, Lde/j4velin/pedometer/SensorListener;->reRegisterSensor()V

    .line 136
    invoke-direct {p0}, Lde/j4velin/pedometer/SensorListener;->registerBroadcastReceiver()V

    .line 137
    invoke-direct {p0}, Lde/j4velin/pedometer/SensorListener;->updateIfNecessary()Z

    move-result v4

    if-nez v4, :cond_0

    .line 138
    invoke-direct {p0}, Lde/j4velin/pedometer/SensorListener;->showNotification()V

    .line 142
    :cond_0
    invoke-static {}, Lde/j4velin/pedometer/util/Util;->getTomorrow()J

    move-result-wide v4

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0x36ee80

    add-long/2addr v6, v8

    .line 142
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 144
    .local v2, "nextUpdate":J
    sget-boolean v4, Lde/j4velin/pedometer/BuildConfig;->DEBUG:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "next update: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lde/j4velin/pedometer/util/Logger;->log(Ljava/lang/String;)V

    .line 146
    :cond_1
    invoke-virtual {p0}, Lde/j4velin/pedometer/SensorListener;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 148
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-virtual {p0}, Lde/j4velin/pedometer/SensorListener;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x2

    new-instance v6, Landroid/content/Intent;

    const-class v7, Lde/j4velin/pedometer/SensorListener;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v7, 0x8000000

    invoke-static {v4, v5, v6, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 150
    .local v1, "pi":Landroid/app/PendingIntent;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_2

    .line 151
    invoke-static {v0, v10, v2, v3, v1}, Lde/j4velin/pedometer/util/API23Wrapper;->setAlarmWhileIdle(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    .line 156
    :goto_0
    return v10

    .line 153
    :cond_2
    invoke-virtual {v0, v10, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 7
    .param p1, "rootIntent"    # Landroid/content/Intent;

    .prologue
    .line 167
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 168
    sget-boolean v0, Lde/j4velin/pedometer/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "sensor service task removed"

    invoke-static {v0}, Lde/j4velin/pedometer/util/Logger;->log(Ljava/lang/String;)V

    .line 170
    :cond_0
    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Lde/j4velin/pedometer/SensorListener;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v1, 0x1

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    const/4 v4, 0x3

    new-instance v5, Landroid/content/Intent;

    const-class v6, Lde/j4velin/pedometer/SensorListener;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v6, 0x0

    .line 172
    invoke-static {p0, v4, v5, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 171
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 173
    return-void
.end method
