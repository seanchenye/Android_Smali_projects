.class public Lde/j4velin/pedometer/widget/DashClock;
.super Lcom/google/android/apps/dashclock/api/DashClockExtension;
.source "DashClock.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/android/apps/dashclock/api/DashClockExtension;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUpdateData(I)V
    .locals 8
    .param p1, "reason"    # I

    .prologue
    .line 38
    new-instance v0, Lcom/google/android/apps/dashclock/api/ExtensionData;

    invoke-direct {v0}, Lcom/google/android/apps/dashclock/api/ExtensionData;-><init>()V

    .line 39
    .local v0, "data":Lcom/google/android/apps/dashclock/api/ExtensionData;
    invoke-static {p0}, Lde/j4velin/pedometer/Database;->getInstance(Landroid/content/Context;)Lde/j4velin/pedometer/Database;

    move-result-object v1

    .line 40
    .local v1, "db":Lde/j4velin/pedometer/Database;
    invoke-virtual {v1}, Lde/j4velin/pedometer/Database;->getCurrentSteps()I

    move-result v3

    invoke-static {}, Lde/j4velin/pedometer/util/Util;->getToday()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lde/j4velin/pedometer/Database;->getSteps(J)I

    move-result v4

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 41
    .local v2, "steps":I
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/android/apps/dashclock/api/ExtensionData;->visible(Z)Lcom/google/android/apps/dashclock/api/ExtensionData;

    move-result-object v3

    sget-object v4, Lde/j4velin/pedometer/ui/Fragment_Overview;->formatter:Ljava/text/NumberFormat;

    int-to-long v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/dashclock/api/ExtensionData;->status(Ljava/lang/String;)Lcom/google/android/apps/dashclock/api/ExtensionData;

    move-result-object v3

    const v4, 0x7f060055

    .line 42
    invoke-virtual {v3, v4}, Lcom/google/android/apps/dashclock/api/ExtensionData;->icon(I)Lcom/google/android/apps/dashclock/api/ExtensionData;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lde/j4velin/pedometer/ui/Activity_Main;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    invoke-virtual {v3, v4}, Lcom/google/android/apps/dashclock/api/ExtensionData;->clickIntent(Landroid/content/Intent;)Lcom/google/android/apps/dashclock/api/ExtensionData;

    .line 44
    invoke-virtual {v1}, Lde/j4velin/pedometer/Database;->close()V

    .line 45
    invoke-virtual {p0, v0}, Lde/j4velin/pedometer/widget/DashClock;->publishUpdate(Lcom/google/android/apps/dashclock/api/ExtensionData;)V

    .line 46
    return-void
.end method
