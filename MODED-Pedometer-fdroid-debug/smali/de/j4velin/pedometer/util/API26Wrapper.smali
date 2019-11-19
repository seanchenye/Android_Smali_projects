.class public Lde/j4velin/pedometer/util/API26Wrapper;
.super Ljava/lang/Object;
.source "API26Wrapper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# static fields
.field public static final NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "Notification"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNotificationBuilder(Landroid/content/Context;)Landroid/app/Notification$Builder;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 40
    const-string/jumbo v3, "notification"

    .line 41
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 42
    .local v2, "manager":Landroid/app/NotificationManager;
    new-instance v1, Landroid/app/NotificationChannel;

    const-string/jumbo v3, "Notification"

    const-string/jumbo v4, "Notification"

    invoke-direct {v1, v3, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 45
    .local v1, "channel":Landroid/app/NotificationChannel;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 46
    invoke-virtual {v1, v5}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 47
    invoke-virtual {v1, v5}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 48
    invoke-virtual {v1, v5}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 49
    invoke-virtual {v1, v6, v6}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 50
    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 51
    new-instance v0, Landroid/app/Notification$Builder;

    const-string/jumbo v3, "Notification"

    invoke-direct {v0, p0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    .local v0, "builder":Landroid/app/Notification$Builder;
    return-object v0
.end method

.method public static launchNotificationSettings(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.CHANNEL_NOTIFICATION_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.provider.extra.CHANNEL_ID"

    const-string/jumbo v3, "Notification"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string/jumbo v2, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "Settings not found - please search for the notification settings in the Android settings manually"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 64
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 37
    return-void
.end method
