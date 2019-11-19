.class abstract Lde/j4velin/pedometer/ui/Dialog_Split;
.super Ljava/lang/Object;
.source "Dialog_Split.java"


# static fields
.field private static split_active:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lde/j4velin/pedometer/ui/Dialog_Split;->split_active:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 29
    sput-boolean p0, Lde/j4velin/pedometer/ui/Dialog_Split;->split_active:Z

    return p0
.end method

.method public static getDialog(Landroid/content/Context;I)Landroid/app/Dialog;
    .locals 18
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "totalSteps"    # I

    .prologue
    .line 34
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 35
    .local v5, "d":Landroid/app/Dialog;
    const v2, 0x7f0c0055

    invoke-virtual {v5, v2}, Landroid/app/Dialog;->setTitle(I)V

    .line 36
    const v2, 0x7f09001c

    invoke-virtual {v5, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 38
    const-string/jumbo v2, "pedometer"

    const/4 v4, 0x4

    .line 39
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 40
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "split_date"

    const-wide/16 v14, -0x1

    invoke-interface {v3, v2, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 41
    .local v10, "split_date":J
    const-string/jumbo v2, "split_steps"

    move/from16 v0, p1

    invoke-interface {v3, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 42
    .local v12, "split_steps":I
    const v2, 0x7f070093

    invoke-virtual {v5, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget-object v4, Lde/j4velin/pedometer/ui/Fragment_Overview;->formatter:Ljava/text/NumberFormat;

    sub-int v14, p1, v12

    int-to-long v14, v14

    .line 43
    invoke-virtual {v4, v14, v15}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    const-string/jumbo v2, "stepsize_value"

    sget v4, Lde/j4velin/pedometer/ui/Fragment_Settings;->DEFAULT_STEP_SIZE:F

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v13

    .line 45
    .local v13, "stepsize":F
    sub-int v2, p1, v12

    int-to-float v2, v2

    mul-float v9, v2, v13

    .line 46
    .local v9, "distance":F
    const-string/jumbo v2, "stepsize_unit"

    sget-object v4, Lde/j4velin/pedometer/ui/Fragment_Settings;->DEFAULT_STEP_UNIT:Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "cm"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    const v2, 0x47c35000    # 100000.0f

    div-float/2addr v9, v2

    .line 48
    const v2, 0x7f070046

    invoke-virtual {v5, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string/jumbo v4, "km"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :goto_0
    const v2, 0x7f070045

    invoke-virtual {v5, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget-object v4, Lde/j4velin/pedometer/ui/Fragment_Overview;->formatter:Ljava/text/NumberFormat;

    float-to-double v14, v9

    .line 54
    invoke-virtual {v4, v14, v15}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    const v2, 0x7f070041

    invoke-virtual {v5, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f0c0054

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 56
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v16

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    .line 55
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    const v2, 0x7f070092

    invoke-virtual {v5, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 59
    .local v6, "started":Landroid/view/View;
    const v2, 0x7f070094

    invoke-virtual {v5, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 61
    .local v7, "stopped":Landroid/view/View;
    const-wide/16 v14, 0x0

    cmp-long v2, v10, v14

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    sput-boolean v2, Lde/j4velin/pedometer/ui/Dialog_Split;->split_active:Z

    .line 63
    sget-boolean v2, Lde/j4velin/pedometer/ui/Dialog_Split;->split_active:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 64
    sget-boolean v2, Lde/j4velin/pedometer/ui/Dialog_Split;->split_active:Z

    if-eqz v2, :cond_3

    const/16 v2, 0x8

    :goto_3
    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    .line 66
    const v2, 0x7f070091

    invoke-virtual {v5, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 67
    .local v8, "startstop":Landroid/widget/Button;
    sget-boolean v2, Lde/j4velin/pedometer/ui/Dialog_Split;->split_active:Z

    if-eqz v2, :cond_4

    const v2, 0x7f0c005b

    :goto_4
    invoke-virtual {v8, v2}, Landroid/widget/Button;->setText(I)V

    .line 68
    new-instance v2, Lde/j4velin/pedometer/ui/Dialog_Split$1;

    move/from16 v4, p1

    invoke-direct/range {v2 .. v8}, Lde/j4velin/pedometer/ui/Dialog_Split$1;-><init>(Landroid/content/SharedPreferences;ILandroid/app/Dialog;Landroid/view/View;Landroid/view/View;Landroid/widget/Button;)V

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v2, 0x7f070039

    invoke-virtual {v5, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v4, Lde/j4velin/pedometer/ui/Dialog_Split$2;

    invoke-direct {v4, v5}, Lde/j4velin/pedometer/ui/Dialog_Split$2;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-object v5

    .line 50
    .end local v6    # "started":Landroid/view/View;
    .end local v7    # "stopped":Landroid/view/View;
    .end local v8    # "startstop":Landroid/widget/Button;
    :cond_0
    const/high16 v2, 0x45a50000    # 5280.0f

    div-float/2addr v9, v2

    .line 51
    const v2, 0x7f070046

    invoke-virtual {v5, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string/jumbo v4, "mi"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 61
    .restart local v6    # "started":Landroid/view/View;
    .restart local v7    # "stopped":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 63
    :cond_2
    const/16 v2, 0x8

    goto :goto_2

    .line 64
    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 67
    .restart local v8    # "startstop":Landroid/widget/Button;
    :cond_4
    const v2, 0x7f0c0056

    goto :goto_4
.end method
