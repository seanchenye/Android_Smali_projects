.class public Lde/j4velin/pedometer/ui/Fragment_Overview;
.super Landroid/app/Fragment;
.source "Fragment_Overview.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field public static final formatter:Ljava/text/NumberFormat;


# instance fields
.field private averageView:Landroid/widget/TextView;

.field private goal:I

.field private pg:Lorg/eazegraph/lib/charts/PieChart;

.field private showSteps:Z

.field private since_boot:I

.field private sliceCurrent:Lorg/eazegraph/lib/models/PieModel;

.field private sliceGoal:Lorg/eazegraph/lib/models/PieModel;

.field private stepsView:Landroid/widget/TextView;

.field private todayOffset:I

.field private totalView:Landroid/widget/TextView;

.field private total_days:I

.field private total_start:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lde/j4velin/pedometer/ui/Fragment_Overview;->formatter:Ljava/text/NumberFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->showSteps:Z

    return-void
.end method

.method static synthetic access$000(Lde/j4velin/pedometer/ui/Fragment_Overview;)Z
    .locals 1
    .param p0, "x0"    # Lde/j4velin/pedometer/ui/Fragment_Overview;

    .prologue
    .line 60
    iget-boolean v0, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->showSteps:Z

    return v0
.end method

.method static synthetic access$002(Lde/j4velin/pedometer/ui/Fragment_Overview;Z)Z
    .locals 0
    .param p0, "x0"    # Lde/j4velin/pedometer/ui/Fragment_Overview;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->showSteps:Z

    return p1
.end method

.method static synthetic access$100(Lde/j4velin/pedometer/ui/Fragment_Overview;)V
    .locals 0
    .param p0, "x0"    # Lde/j4velin/pedometer/ui/Fragment_Overview;

    .prologue
    .line 60
    invoke-direct {p0}, Lde/j4velin/pedometer/ui/Fragment_Overview;->stepsDistanceChanged()V

    return-void
.end method

.method static synthetic access$200(Lde/j4velin/pedometer/ui/Fragment_Overview;)I
    .locals 1
    .param p0, "x0"    # Lde/j4velin/pedometer/ui/Fragment_Overview;

    .prologue
    .line 60
    iget v0, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->since_boot:I

    return v0
.end method

.method private stepsDistanceChanged()V
    .locals 5

    .prologue
    const v4, 0x7f0700ae

    .line 167
    iget-boolean v1, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->showSteps:Z

    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Fragment_Overview;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0c005a

    invoke-virtual {p0, v2}, Lde/j4velin/pedometer/ui/Fragment_Overview;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :goto_0
    invoke-direct {p0}, Lde/j4velin/pedometer/ui/Fragment_Overview;->updatePie()V

    .line 181
    invoke-direct {p0}, Lde/j4velin/pedometer/ui/Fragment_Overview;->updateBars()V

    .line 182
    return-void

    .line 170
    :cond_0
    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Fragment_Overview;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "pedometer"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "stepsize_unit"

    sget-object v3, Lde/j4velin/pedometer/ui/Fragment_Settings;->DEFAULT_STEP_UNIT:Ljava/lang/String;

    .line 171
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "unit":Ljava/lang/String;
    const-string/jumbo v1, "cm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    const-string/jumbo v0, "km"

    .line 177
    :goto_1
    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Fragment_Overview;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 175
    :cond_1
    const-string/jumbo v0, "mi"

    goto :goto_1
.end method

.method private updateBars()V
    .locals 18

    .prologue
    .line 296
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v14, "E"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-direct {v6, v14, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 297
    .local v6, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual/range {p0 .. p0}, Lde/j4velin/pedometer/ui/Fragment_Overview;->getView()Landroid/view/View;

    move-result-object v14

    const v15, 0x7f07002b

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/eazegraph/lib/charts/BarChart;

    .line 298
    .local v2, "barChart":Lorg/eazegraph/lib/charts/BarChart;
    invoke-virtual {v2}, Lorg/eazegraph/lib/charts/BarChart;->getData()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_0

    invoke-virtual {v2}, Lorg/eazegraph/lib/charts/BarChart;->clearChart()V

    .line 300
    :cond_0
    sget v12, Lde/j4velin/pedometer/ui/Fragment_Settings;->DEFAULT_STEP_SIZE:F

    .line 301
    .local v12, "stepsize":F
    const/4 v13, 0x1

    .line 302
    .local v13, "stepsize_cm":Z
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lde/j4velin/pedometer/ui/Fragment_Overview;->showSteps:Z

    if-nez v14, :cond_1

    .line 305
    invoke-virtual/range {p0 .. p0}, Lde/j4velin/pedometer/ui/Fragment_Overview;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string/jumbo v15, "pedometer"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 306
    .local v10, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v14, "stepsize_value"

    sget v15, Lde/j4velin/pedometer/ui/Fragment_Settings;->DEFAULT_STEP_SIZE:F

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v12

    .line 307
    const-string/jumbo v14, "stepsize_unit"

    sget-object v15, Lde/j4velin/pedometer/ui/Fragment_Settings;->DEFAULT_STEP_UNIT:Ljava/lang/String;

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "cm"

    .line 308
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 310
    .end local v10    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lde/j4velin/pedometer/ui/Fragment_Overview;->showSteps:Z

    if-nez v14, :cond_3

    const/4 v14, 0x1

    :goto_0
    invoke-virtual {v2, v14}, Lorg/eazegraph/lib/charts/BarChart;->setShowDecimal(Z)V

    .line 312
    invoke-virtual/range {p0 .. p0}, Lde/j4velin/pedometer/ui/Fragment_Overview;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14}, Lde/j4velin/pedometer/Database;->getInstance(Landroid/content/Context;)Lde/j4velin/pedometer/Database;

    move-result-object v5

    .line 313
    .local v5, "db":Lde/j4velin/pedometer/Database;
    const/16 v14, 0x8

    invoke-virtual {v5, v14}, Lde/j4velin/pedometer/Database;->getLastEntries(I)Ljava/util/List;

    move-result-object v9

    .line 314
    .local v9, "last":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;"
    invoke-virtual {v5}, Lde/j4velin/pedometer/Database;->close()V

    .line 315
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v8, v14, -0x1

    .local v8, "i":I
    :goto_1
    if-lez v8, :cond_7

    .line 316
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 317
    .local v4, "current":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    iget-object v14, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 318
    .local v11, "steps":I
    if-lez v11, :cond_2

    .line 319
    new-instance v3, Lorg/eazegraph/lib/models/BarModel;

    new-instance v15, Ljava/util/Date;

    iget-object v14, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-direct/range {v15 .. v17}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lde/j4velin/pedometer/ui/Fragment_Overview;->goal:I

    if-le v11, v14, :cond_4

    const-string/jumbo v14, "#99CC00"

    .line 320
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    :goto_2
    move/from16 v0, v16

    invoke-direct {v3, v15, v0, v14}, Lorg/eazegraph/lib/models/BarModel;-><init>(Ljava/lang/String;FI)V

    .line 321
    .local v3, "bm":Lorg/eazegraph/lib/models/BarModel;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lde/j4velin/pedometer/ui/Fragment_Overview;->showSteps:Z

    if-eqz v14, :cond_5

    .line 322
    int-to-float v14, v11

    invoke-virtual {v3, v14}, Lorg/eazegraph/lib/models/BarModel;->setValue(F)V

    .line 333
    :goto_3
    invoke-virtual {v2, v3}, Lorg/eazegraph/lib/charts/BarChart;->addBar(Lorg/eazegraph/lib/models/BarModel;)V

    .line 315
    .end local v3    # "bm":Lorg/eazegraph/lib/models/BarModel;
    :cond_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 310
    .end local v4    # "current":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v5    # "db":Lde/j4velin/pedometer/Database;
    .end local v8    # "i":I
    .end local v9    # "last":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;"
    .end local v11    # "steps":I
    :cond_3
    const/4 v14, 0x0

    goto :goto_0

    .line 320
    .restart local v4    # "current":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v5    # "db":Lde/j4velin/pedometer/Database;
    .restart local v8    # "i":I
    .restart local v9    # "last":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;"
    .restart local v11    # "steps":I
    :cond_4
    const-string/jumbo v14, "#0099cc"

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    goto :goto_2

    .line 324
    .restart local v3    # "bm":Lorg/eazegraph/lib/models/BarModel;
    :cond_5
    int-to-float v14, v11

    mul-float v7, v14, v12

    .line 325
    .local v7, "distance":F
    if-eqz v13, :cond_6

    .line 326
    const v14, 0x47c35000    # 100000.0f

    div-float/2addr v7, v14

    .line 330
    :goto_4
    const/high16 v14, 0x447a0000    # 1000.0f

    mul-float/2addr v14, v7

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x447a0000    # 1000.0f

    div-float v7, v14, v15

    .line 331
    invoke-virtual {v3, v7}, Lorg/eazegraph/lib/models/BarModel;->setValue(F)V

    goto :goto_3

    .line 328
    :cond_6
    const/high16 v14, 0x45a50000    # 5280.0f

    div-float/2addr v7, v14

    goto :goto_4

    .line 336
    .end local v3    # "bm":Lorg/eazegraph/lib/models/BarModel;
    .end local v4    # "current":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v7    # "distance":F
    .end local v11    # "steps":I
    :cond_7
    invoke-virtual {v2}, Lorg/eazegraph/lib/charts/BarChart;->getData()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_8

    .line 337
    new-instance v14, Lde/j4velin/pedometer/ui/Fragment_Overview$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lde/j4velin/pedometer/ui/Fragment_Overview$4;-><init>(Lde/j4velin/pedometer/ui/Fragment_Overview;)V

    invoke-virtual {v2, v14}, Lorg/eazegraph/lib/charts/BarChart;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    invoke-virtual {v2}, Lorg/eazegraph/lib/charts/BarChart;->startAnimation()V

    .line 347
    :goto_5
    return-void

    .line 345
    :cond_8
    const/16 v14, 0x8

    invoke-virtual {v2, v14}, Lorg/eazegraph/lib/charts/BarChart;->setVisibility(I)V

    goto :goto_5
.end method

.method private updatePie()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const v8, 0x47c35000    # 100000.0f

    const/high16 v7, 0x45a50000    # 5280.0f

    .line 248
    sget-boolean v5, Lde/j4velin/pedometer/BuildConfig;->DEBUG:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "UI - update steps: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->since_boot:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lde/j4velin/pedometer/util/Logger;->log(Ljava/lang/String;)V

    .line 250
    :cond_0
    iget v5, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->todayOffset:I

    iget v6, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->since_boot:I

    add-int/2addr v5, v6

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 251
    .local v3, "steps_today":I
    iget-object v5, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->sliceCurrent:Lorg/eazegraph/lib/models/PieModel;

    int-to-float v6, v3

    invoke-virtual {v5, v6}, Lorg/eazegraph/lib/models/PieModel;->setValue(F)V

    .line 252
    iget v5, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->goal:I

    sub-int/2addr v5, v3

    if-lez v5, :cond_2

    .line 254
    iget-object v5, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->pg:Lorg/eazegraph/lib/charts/PieChart;

    invoke-virtual {v5}, Lorg/eazegraph/lib/charts/PieChart;->getData()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 257
    iget-object v5, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->pg:Lorg/eazegraph/lib/charts/PieChart;

    iget-object v6, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->sliceGoal:Lorg/eazegraph/lib/models/PieModel;

    invoke-virtual {v5, v6}, Lorg/eazegraph/lib/charts/PieChart;->addPieSlice(Lorg/eazegraph/lib/models/PieModel;)V

    .line 259
    :cond_1
    iget-object v5, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->sliceGoal:Lorg/eazegraph/lib/models/PieModel;

    iget v6, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->goal:I

    sub-int/2addr v6, v3

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lorg/eazegraph/lib/models/PieModel;->setValue(F)V

    .line 265
    :goto_0
    iget-object v5, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->pg:Lorg/eazegraph/lib/charts/PieChart;

    invoke-virtual {v5}, Lorg/eazegraph/lib/charts/PieChart;->update()V

    .line 266
    iget-boolean v5, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->showSteps:Z

    if-eqz v5, :cond_3

    .line 267
    iget-object v5, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->stepsView:Landroid/widget/TextView;

    sget-object v6, Lde/j4velin/pedometer/ui/Fragment_Overview;->formatter:Ljava/text/NumberFormat;

    int-to-long v8, v3

    invoke-virtual {v6, v8, v9}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v5, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->totalView:Landroid/widget/TextView;

    sget-object v6, Lde/j4velin/pedometer/ui/Fragment_Overview;->formatter:Ljava/text/NumberFormat;

    iget v7, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->total_start:I

    add-int/2addr v7, v3

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v5, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->averageView:Landroid/widget/TextView;

    sget-object v6, Lde/j4velin/pedometer/ui/Fragment_Overview;->formatter:Ljava/text/NumberFormat;

    iget v7, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->total_start:I

    add-int/2addr v7, v3

    iget v8, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->total_days:I

    div-int/2addr v7, v8

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    :goto_1
    return-void

    .line 262
    :cond_2
    iget-object v5, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->pg:Lorg/eazegraph/lib/charts/PieChart;

    invoke-virtual {v5}, Lorg/eazegraph/lib/charts/PieChart;->clearChart()V

    .line 263
    iget-object v5, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->pg:Lorg/eazegraph/lib/charts/PieChart;

    iget-object v6, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->sliceCurrent:Lorg/eazegraph/lib/models/PieModel;

    invoke-virtual {v5, v6}, Lorg/eazegraph/lib/charts/PieChart;->addPieSlice(Lorg/eazegraph/lib/models/PieModel;)V

    goto :goto_0

    .line 273
    :cond_3
    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Fragment_Overview;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "pedometer"

    invoke-virtual {v5, v6, v9}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 274
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v5, "stepsize_value"

    sget v6, Lde/j4velin/pedometer/ui/Fragment_Settings;->DEFAULT_STEP_SIZE:F

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    .line 275
    .local v4, "stepsize":F
    int-to-float v5, v3

    mul-float v0, v5, v4

    .line 276
    .local v0, "distance_today":F
    iget v5, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->total_start:I

    add-int/2addr v5, v3

    int-to-float v5, v5

    mul-float v1, v5, v4

    .line 277
    .local v1, "distance_total":F
    const-string/jumbo v5, "stepsize_unit"

    sget-object v6, Lde/j4velin/pedometer/ui/Fragment_Settings;->DEFAULT_STEP_UNIT:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "cm"

    .line 278
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 279
    div-float/2addr v0, v8

    .line 280
    div-float/2addr v1, v8

    .line 285
    :goto_2
    iget-object v5, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->stepsView:Landroid/widget/TextView;

    sget-object v6, Lde/j4velin/pedometer/ui/Fragment_Overview;->formatter:Ljava/text/NumberFormat;

    float-to-double v8, v0

    invoke-virtual {v6, v8, v9}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v5, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->totalView:Landroid/widget/TextView;

    sget-object v6, Lde/j4velin/pedometer/ui/Fragment_Overview;->formatter:Ljava/text/NumberFormat;

    float-to-double v8, v1

    invoke-virtual {v6, v8, v9}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v5, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->averageView:Landroid/widget/TextView;

    sget-object v6, Lde/j4velin/pedometer/ui/Fragment_Overview;->formatter:Ljava/text/NumberFormat;

    iget v7, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->total_days:I

    int-to-float v7, v7

    div-float v7, v1, v7

    float-to-double v8, v7

    invoke-virtual {v6, v8, v9}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 282
    :cond_4
    div-float/2addr v0, v7

    .line 283
    div-float/2addr v1, v7

    goto :goto_2
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 219
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lde/j4velin/pedometer/ui/Fragment_Overview;->setHasOptionsMenu(Z)V

    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 75
    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Fragment_Overview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    .line 76
    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Fragment_Overview;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lde/j4velin/pedometer/SensorListener;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    invoke-static {v0, v1}, Lde/j4velin/pedometer/util/API26Wrapper;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Fragment_Overview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Fragment_Overview;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lde/j4velin/pedometer/SensorListener;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 201
    const/high16 v0, 0x7f0a0000

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 202
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    const v1, 0x7f09001e

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 85
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f070093

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->stepsView:Landroid/widget/TextView;

    .line 86
    const v1, 0x7f0700a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->totalView:Landroid/widget/TextView;

    .line 87
    const v1, 0x7f070024

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->averageView:Landroid/widget/TextView;

    .line 89
    const v1, 0x7f070051

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/eazegraph/lib/charts/PieChart;

    iput-object v1, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->pg:Lorg/eazegraph/lib/charts/PieChart;

    .line 92
    new-instance v1, Lorg/eazegraph/lib/models/PieModel;

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    const-string/jumbo v4, "#99CC00"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lorg/eazegraph/lib/models/PieModel;-><init>(Ljava/lang/String;FI)V

    iput-object v1, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->sliceCurrent:Lorg/eazegraph/lib/models/PieModel;

    .line 93
    iget-object v1, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->pg:Lorg/eazegraph/lib/charts/PieChart;

    iget-object v2, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->sliceCurrent:Lorg/eazegraph/lib/models/PieModel;

    invoke-virtual {v1, v2}, Lorg/eazegraph/lib/charts/PieChart;->addPieSlice(Lorg/eazegraph/lib/models/PieModel;)V

    .line 96
    new-instance v1, Lorg/eazegraph/lib/models/PieModel;

    const-string/jumbo v2, ""

    const v3, 0x461c4000    # 10000.0f

    const-string/jumbo v4, "#CC0000"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lorg/eazegraph/lib/models/PieModel;-><init>(Ljava/lang/String;FI)V

    iput-object v1, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->sliceGoal:Lorg/eazegraph/lib/models/PieModel;

    .line 97
    iget-object v1, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->pg:Lorg/eazegraph/lib/charts/PieChart;

    iget-object v2, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->sliceGoal:Lorg/eazegraph/lib/models/PieModel;

    invoke-virtual {v1, v2}, Lorg/eazegraph/lib/charts/PieChart;->addPieSlice(Lorg/eazegraph/lib/models/PieModel;)V

    .line 99
    iget-object v1, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->pg:Lorg/eazegraph/lib/charts/PieChart;

    new-instance v2, Lde/j4velin/pedometer/ui/Fragment_Overview$1;

    invoke-direct {v2, p0}, Lde/j4velin/pedometer/ui/Fragment_Overview$1;-><init>(Lde/j4velin/pedometer/ui/Fragment_Overview;)V

    invoke-virtual {v1, v2}, Lorg/eazegraph/lib/charts/PieChart;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v1, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->pg:Lorg/eazegraph/lib/charts/PieChart;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/eazegraph/lib/charts/PieChart;->setDrawValueInPie(Z)V

    .line 108
    iget-object v1, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->pg:Lorg/eazegraph/lib/charts/PieChart;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/eazegraph/lib/charts/PieChart;->setUsePieRotation(Z)V

    .line 109
    iget-object v1, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->pg:Lorg/eazegraph/lib/charts/PieChart;

    invoke-virtual {v1}, Lorg/eazegraph/lib/charts/PieChart;->startAnimation()V

    .line 110
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 206
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 212
    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Fragment_Overview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lde/j4velin/pedometer/ui/Activity_Main;

    invoke-virtual {v0, p1}, Lde/j4velin/pedometer/ui/Activity_Main;->optionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 208
    :pswitch_0
    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Fragment_Overview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->total_start:I

    iget v2, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->todayOffset:I

    iget v3, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->since_boot:I

    add-int/2addr v2, v3

    const/4 v3, 0x0

    .line 209
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 208
    invoke-static {v0, v1}, Lde/j4velin/pedometer/ui/Dialog_Split;->getDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 210
    const/4 v0, 0x1

    goto :goto_0

    .line 206
    :pswitch_data_0
    .packed-switch 0x7f07001b
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 5

    .prologue
    .line 186
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 189
    :try_start_0
    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Fragment_Overview;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "sensor"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    .line 190
    .local v2, "sm":Landroid/hardware/SensorManager;
    invoke-virtual {v2, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .end local v2    # "sm":Landroid/hardware/SensorManager;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Fragment_Overview;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lde/j4velin/pedometer/Database;->getInstance(Landroid/content/Context;)Lde/j4velin/pedometer/Database;

    move-result-object v0

    .line 195
    .local v0, "db":Lde/j4velin/pedometer/Database;
    iget v3, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->since_boot:I

    invoke-virtual {v0, v3}, Lde/j4velin/pedometer/Database;->saveCurrentSteps(I)V

    .line 196
    invoke-virtual {v0}, Lde/j4velin/pedometer/Database;->close()V

    .line 197
    return-void

    .line 191
    .end local v0    # "db":Lde/j4velin/pedometer/Database;
    :catch_0
    move-exception v1

    .line 192
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v3, Lde/j4velin/pedometer/BuildConfig;->DEBUG:Z

    if-eqz v3, :cond_0

    invoke-static {v1}, Lde/j4velin/pedometer/util/Logger;->log(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 115
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 116
    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Fragment_Overview;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 118
    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Fragment_Overview;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lde/j4velin/pedometer/Database;->getInstance(Landroid/content/Context;)Lde/j4velin/pedometer/Database;

    move-result-object v0

    .line 120
    .local v0, "db":Lde/j4velin/pedometer/Database;
    sget-boolean v5, Lde/j4velin/pedometer/BuildConfig;->DEBUG:Z

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lde/j4velin/pedometer/Database;->logState()V

    .line 122
    :cond_0
    invoke-static {}, Lde/j4velin/pedometer/util/Util;->getToday()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lde/j4velin/pedometer/Database;->getSteps(J)I

    move-result v5

    iput v5, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->todayOffset:I

    .line 125
    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Fragment_Overview;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "pedometer"

    invoke-virtual {v5, v6, v8}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 127
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v5, "goal"

    const/16 v6, 0x2710

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->goal:I

    .line 128
    invoke-virtual {v0}, Lde/j4velin/pedometer/Database;->getCurrentSteps()I

    move-result v5

    iput v5, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->since_boot:I

    .line 129
    iget v5, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->since_boot:I

    const-string/jumbo v6, "pauseCount"

    iget v7, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->since_boot:I

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    sub-int v1, v5, v6

    .line 132
    .local v1, "pauseDifference":I
    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Fragment_Overview;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "sensor"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager;

    .line 133
    .local v4, "sm":Landroid/hardware/SensorManager;
    const/16 v5, 0x13

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    .line 134
    .local v3, "sensor":Landroid/hardware/Sensor;
    if-nez v3, :cond_1

    .line 135
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Fragment_Overview;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0c003d

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c003e

    .line 136
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lde/j4velin/pedometer/ui/Fragment_Overview$3;

    invoke-direct {v6, p0}, Lde/j4velin/pedometer/ui/Fragment_Overview$3;-><init>(Lde/j4velin/pedometer/ui/Fragment_Overview;)V

    .line 137
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    new-instance v7, Lde/j4velin/pedometer/ui/Fragment_Overview$2;

    invoke-direct {v7, p0}, Lde/j4velin/pedometer/ui/Fragment_Overview$2;-><init>(Lde/j4velin/pedometer/ui/Fragment_Overview;)V

    .line 142
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 147
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 152
    :goto_0
    iget v5, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->since_boot:I

    sub-int/2addr v5, v1

    iput v5, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->since_boot:I

    .line 154
    invoke-virtual {v0}, Lde/j4velin/pedometer/Database;->getTotalWithoutToday()I

    move-result v5

    iput v5, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->total_start:I

    .line 155
    invoke-virtual {v0}, Lde/j4velin/pedometer/Database;->getDays()I

    move-result v5

    iput v5, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->total_days:I

    .line 157
    invoke-virtual {v0}, Lde/j4velin/pedometer/Database;->close()V

    .line 159
    invoke-direct {p0}, Lde/j4velin/pedometer/ui/Fragment_Overview;->stepsDistanceChanged()V

    .line 160
    return-void

    .line 149
    :cond_1
    const/4 v5, 0x2

    invoke-virtual {v4, p0, v3, v5, v8}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;II)Z

    goto :goto_0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v4, 0x0

    .line 223
    sget-boolean v1, Lde/j4velin/pedometer/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UI - sensorChanged | todayOffset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->todayOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " since boot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/j4velin/pedometer/util/Logger;->log(Ljava/lang/String;)V

    .line 226
    :cond_0
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    const/high16 v2, 0x4f000000

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    .line 240
    :cond_1
    :goto_0
    return-void

    .line 229
    :cond_2
    iget v1, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->todayOffset:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_3

    .line 233
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    float-to-int v1, v1

    neg-int v1, v1

    iput v1, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->todayOffset:I

    .line 234
    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Fragment_Overview;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lde/j4velin/pedometer/Database;->getInstance(Landroid/content/Context;)Lde/j4velin/pedometer/Database;

    move-result-object v0

    .line 235
    .local v0, "db":Lde/j4velin/pedometer/Database;
    invoke-static {}, Lde/j4velin/pedometer/util/Util;->getToday()J

    move-result-wide v2

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    float-to-int v1, v1

    invoke-virtual {v0, v2, v3, v1}, Lde/j4velin/pedometer/Database;->insertNewDay(JI)V

    .line 236
    invoke-virtual {v0}, Lde/j4velin/pedometer/Database;->close()V

    .line 238
    .end local v0    # "db":Lde/j4velin/pedometer/Database;
    :cond_3
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    float-to-int v1, v1

    iput v1, p0, Lde/j4velin/pedometer/ui/Fragment_Overview;->since_boot:I

    .line 239
    invoke-direct {p0}, Lde/j4velin/pedometer/ui/Fragment_Overview;->updatePie()V

    goto :goto_0
.end method
