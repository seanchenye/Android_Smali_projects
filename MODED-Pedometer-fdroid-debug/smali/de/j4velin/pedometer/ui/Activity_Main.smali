.class public Lde/j4velin/pedometer/ui/Activity_Main;
.super Landroid/support/v4/app/FragmentActivity;
.source "Activity_Main.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Activity_Main;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Activity_Main;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Activity_Main;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 43
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lde/j4velin/pedometer/SensorListener;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lde/j4velin/pedometer/ui/Activity_Main;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 45
    if-nez p1, :cond_0

    .line 47
    new-instance v0, Lde/j4velin/pedometer/ui/Fragment_Overview;

    invoke-direct {v0}, Lde/j4velin/pedometer/ui/Fragment_Overview;-><init>()V

    .line 48
    .local v0, "newFragment":Landroid/app/Fragment;
    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Activity_Main;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 53
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    const v2, 0x1020002

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 56
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 59
    .end local v0    # "newFragment":Landroid/app/Fragment;
    .end local v1    # "transaction":Landroid/app/FragmentTransaction;
    :cond_0
    sget-boolean v2, Lde/j4velin/pedometer/BuildConfig;->DEBUG:Z

    if-eqz v2, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 60
    invoke-static {p0, v2}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v2, v4

    invoke-virtual {p0, v2, v4}, Lde/j4velin/pedometer/ui/Activity_Main;->requestPermissions([Ljava/lang/String;I)V

    .line 64
    :cond_1
    return-void
.end method

.method public optionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const v11, 0x104000a

    const/4 v10, 0x1

    const/16 v5, 0xa

    .line 76
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 131
    :goto_0
    return v10

    .line 78
    :sswitch_0
    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Activity_Main;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    goto :goto_0

    .line 81
    :sswitch_1
    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Activity_Main;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    const v5, 0x1020002

    new-instance v6, Lde/j4velin/pedometer/ui/Fragment_Settings;

    invoke-direct {v6}, Lde/j4velin/pedometer/ui/Fragment_Settings;-><init>()V

    .line 82
    invoke-virtual {v4, v5, v6}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 83
    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 87
    :sswitch_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 88
    .local v1, "builder2":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v4, "Google services required"

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 89
    const-string/jumbo v4, "This feature is not available on the F-Droid version of the app"

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 91
    new-instance v4, Lde/j4velin/pedometer/ui/Activity_Main$1;

    invoke-direct {v4, p0}, Lde/j4velin/pedometer/ui/Activity_Main$1;-><init>(Lde/j4velin/pedometer/ui/Activity_Main;)V

    invoke-virtual {v1, v11, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 98
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 101
    .end local v1    # "builder2":Landroid/app/AlertDialog$Builder;
    :sswitch_3
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.VIEW"

    const-string/jumbo v6, "http://j4velin.de/faq/index.php?app=pm"

    .line 102
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v5, 0x10000000

    .line 103
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 101
    invoke-virtual {p0, v4}, Lde/j4velin/pedometer/ui/Activity_Main;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 106
    :sswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 107
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0c001d

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 108
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 109
    .local v3, "tv":Landroid/widget/TextView;
    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 110
    const v4, 0x7f0c001f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 112
    const v4, 0x7f0c001e

    const/4 v5, 0x1

    :try_start_0
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 113
    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Activity_Main;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Activity_Main;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v7, v5, v6

    .line 112
    invoke-virtual {p0, v4, v5}, Lde/j4velin/pedometer/ui/Activity_Main;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_1
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 120
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 121
    new-instance v4, Lde/j4velin/pedometer/ui/Activity_Main$2;

    invoke-direct {v4, p0}, Lde/j4velin/pedometer/ui/Activity_Main$2;-><init>(Lde/j4velin/pedometer/ui/Activity_Main;)V

    invoke-virtual {v0, v11, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 128
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 114
    :catch_0
    move-exception v2

    .line 117
    .local v2, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 76
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f070006 -> :sswitch_4
        0x7f070007 -> :sswitch_2
        0x7f070012 -> :sswitch_3
        0x7f070014 -> :sswitch_2
        0x7f07001a -> :sswitch_1
    .end sparse-switch
.end method
