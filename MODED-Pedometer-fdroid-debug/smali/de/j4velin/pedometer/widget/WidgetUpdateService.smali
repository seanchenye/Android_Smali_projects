.class public Lde/j4velin/pedometer/widget/WidgetUpdateService;
.super Landroid/support/v4/app/JobIntentService;
.source "WidgetUpdateService.java"


# static fields
.field private static final JOB_ID:I = 0x2a


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v4/app/JobIntentService;-><init>()V

    return-void
.end method

.method public static enqueueUpdate(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const-class v0, Lde/j4velin/pedometer/widget/WidgetUpdateService;

    const/16 v1, 0x2a

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v0, v1, v2}, Lde/j4velin/pedometer/widget/WidgetUpdateService;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected onHandleWork(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 39
    invoke-static {p0}, Lde/j4velin/pedometer/Database;->getInstance(Landroid/content/Context;)Lde/j4velin/pedometer/Database;

    move-result-object v3

    .line 40
    .local v3, "db":Lde/j4velin/pedometer/Database;
    invoke-virtual {v3}, Lde/j4velin/pedometer/Database;->getCurrentSteps()I

    move-result v6

    invoke-static {}, Lde/j4velin/pedometer/util/Util;->getToday()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lde/j4velin/pedometer/Database;->getSteps(J)I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 41
    .local v4, "steps":I
    invoke-virtual {v3}, Lde/j4velin/pedometer/Database;->close()V

    .line 42
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 43
    .local v2, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    new-instance v6, Landroid/content/ComponentName;

    const-class v7, Lde/j4velin/pedometer/widget/Widget;

    invoke-direct {v6, p0, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    invoke-virtual {v2, v6}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 45
    .local v1, "appWidgetIds":[I
    array-length v6, v1

    :goto_0
    if-ge v5, v6, :cond_0

    aget v0, v1, v5

    .line 47
    .local v0, "appWidgetId":I
    invoke-static {v0, p0, v4}, Lde/j4velin/pedometer/widget/Widget;->updateWidget(ILandroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v7

    invoke-virtual {v2, v0, v7}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 45
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 49
    .end local v0    # "appWidgetId":I
    :cond_0
    return-void
.end method
