.class final Lde/j4velin/pedometer/ui/Dialog_Split$1;
.super Ljava/lang/Object;
.source "Dialog_Split.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/j4velin/pedometer/ui/Dialog_Split;->getDialog(Landroid/content/Context;I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$d:Landroid/app/Dialog;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;

.field final synthetic val$started:Landroid/view/View;

.field final synthetic val$startstop:Landroid/widget/Button;

.field final synthetic val$stopped:Landroid/view/View;

.field final synthetic val$totalSteps:I


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;ILandroid/app/Dialog;Landroid/view/View;Landroid/view/View;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lde/j4velin/pedometer/ui/Dialog_Split$1;->val$prefs:Landroid/content/SharedPreferences;

    iput p2, p0, Lde/j4velin/pedometer/ui/Dialog_Split$1;->val$totalSteps:I

    iput-object p3, p0, Lde/j4velin/pedometer/ui/Dialog_Split$1;->val$d:Landroid/app/Dialog;

    iput-object p4, p0, Lde/j4velin/pedometer/ui/Dialog_Split$1;->val$started:Landroid/view/View;

    iput-object p5, p0, Lde/j4velin/pedometer/ui/Dialog_Split$1;->val$stopped:Landroid/view/View;

    iput-object p6, p0, Lde/j4velin/pedometer/ui/Dialog_Split$1;->val$startstop:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-static {}, Lde/j4velin/pedometer/ui/Dialog_Split;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lde/j4velin/pedometer/ui/Dialog_Split$1;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "split_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "split_steps"

    iget v2, p0, Lde/j4velin/pedometer/ui/Dialog_Split$1;->val$totalSteps:I

    .line 73
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 74
    const/4 v0, 0x1

    invoke-static {v0}, Lde/j4velin/pedometer/ui/Dialog_Split;->access$002(Z)Z

    .line 75
    iget-object v0, p0, Lde/j4velin/pedometer/ui/Dialog_Split$1;->val$d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 82
    :goto_0
    iget-object v1, p0, Lde/j4velin/pedometer/ui/Dialog_Split$1;->val$startstop:Landroid/widget/Button;

    invoke-static {}, Lde/j4velin/pedometer/ui/Dialog_Split;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0c005b

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 83
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lde/j4velin/pedometer/ui/Dialog_Split$1;->val$started:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lde/j4velin/pedometer/ui/Dialog_Split$1;->val$stopped:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lde/j4velin/pedometer/ui/Dialog_Split$1;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "split_date"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "split_steps"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 80
    invoke-static {v2}, Lde/j4velin/pedometer/ui/Dialog_Split;->access$002(Z)Z

    goto :goto_0

    .line 82
    :cond_1
    const v0, 0x7f0c0056

    goto :goto_1
.end method
