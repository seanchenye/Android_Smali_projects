.class abstract Lde/j4velin/pedometer/ui/Dialog_Statistics;
.super Ljava/lang/Object;
.source "Dialog_Statistics.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDialog(Landroid/content/Context;I)Landroid/app/Dialog;
    .locals 14
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "since_boot"    # I

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x5

    .line 36
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 37
    .local v0, "d":Landroid/app/Dialog;
    invoke-virtual {v0, v13}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 38
    const v7, 0x7f090029

    invoke-virtual {v0, v7}, Landroid/app/Dialog;->setContentView(I)V

    .line 39
    const v7, 0x7f070039

    invoke-virtual {v0, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lde/j4velin/pedometer/ui/Dialog_Statistics$1;

    invoke-direct {v8, v0}, Lde/j4velin/pedometer/ui/Dialog_Statistics$1;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    invoke-static {p0}, Lde/j4velin/pedometer/Database;->getInstance(Landroid/content/Context;)Lde/j4velin/pedometer/Database;

    move-result-object v3

    .line 47
    .local v3, "db":Lde/j4velin/pedometer/Database;
    invoke-virtual {v3}, Lde/j4velin/pedometer/Database;->getRecordData()Landroid/util/Pair;

    move-result-object v4

    .line 49
    .local v4, "record":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/Date;Ljava/lang/Integer;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 50
    .local v1, "date":Ljava/util/Calendar;
    invoke-static {}, Lde/j4velin/pedometer/util/Util;->getToday()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 51
    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 53
    .local v2, "daysThisMonth":I
    const/4 v7, -0x6

    invoke-virtual {v1, v12, v7}, Ljava/util/Calendar;->add(II)V

    .line 55
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v3, v8, v9, v10, v11}, Lde/j4velin/pedometer/Database;->getSteps(JJ)I

    move-result v7

    add-int v6, v7, p1

    .line 57
    .local v6, "thisWeek":I
    invoke-static {}, Lde/j4velin/pedometer/util/Util;->getToday()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 58
    invoke-virtual {v1, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 59
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v3, v8, v9, v10, v11}, Lde/j4velin/pedometer/Database;->getSteps(JJ)I

    move-result v7

    add-int v5, v7, p1

    .line 61
    .local v5, "thisMonth":I
    const v7, 0x7f070072

    invoke-virtual {v0, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lde/j4velin/pedometer/ui/Fragment_Overview;->formatter:Ljava/text/NumberFormat;

    iget-object v10, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 62
    invoke-virtual {v9, v10}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " @ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 63
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v10

    iget-object v8, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/util/Date;

    invoke-virtual {v10, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 61
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    const v7, 0x7f0700ab

    invoke-virtual {v0, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    sget-object v8, Lde/j4velin/pedometer/ui/Fragment_Overview;->formatter:Ljava/text/NumberFormat;

    int-to-long v10, v6

    invoke-virtual {v8, v10, v11}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    const v7, 0x7f0700aa

    invoke-virtual {v0, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    sget-object v8, Lde/j4velin/pedometer/ui/Fragment_Overview;->formatter:Ljava/text/NumberFormat;

    int-to-long v10, v5

    invoke-virtual {v8, v10, v11}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const v7, 0x7f070029

    invoke-virtual {v0, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    sget-object v8, Lde/j4velin/pedometer/ui/Fragment_Overview;->formatter:Ljava/text/NumberFormat;

    div-int/lit8 v9, v6, 0x7

    int-to-long v10, v9

    invoke-virtual {v8, v10, v11}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    const v7, 0x7f070027

    invoke-virtual {v0, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    sget-object v8, Lde/j4velin/pedometer/ui/Fragment_Overview;->formatter:Ljava/text/NumberFormat;

    div-int v9, v5, v2

    int-to-long v10, v9

    invoke-virtual {v8, v10, v11}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {v3}, Lde/j4velin/pedometer/Database;->close()V

    .line 73
    return-object v0
.end method
