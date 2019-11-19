.class public Lde/j4velin/pedometer/util/API23Wrapper;
.super Ljava/lang/Object;
.source "API23Wrapper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requestPermission(Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 1
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 29
    const/16 v0, 0x2a

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 30
    return-void
.end method

.method public static setAlarmWhileIdle(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V
    .locals 0
    .param p0, "am"    # Landroid/app/AlarmManager;
    .param p1, "type"    # I
    .param p2, "time"    # J
    .param p4, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 35
    return-void
.end method
