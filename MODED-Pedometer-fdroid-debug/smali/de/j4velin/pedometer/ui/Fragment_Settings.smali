.class public Lde/j4velin/pedometer/ui/Fragment_Settings;
.super Landroid/preference/PreferenceFragment;
.source "Fragment_Settings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field static final DEFAULT_GOAL:I = 0x2710

.field static final DEFAULT_STEP_SIZE:F

.field static final DEFAULT_STEP_UNIT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x40200000    # 2.5f

    :goto_0
    sput v0, Lde/j4velin/pedometer/ui/Fragment_Settings;->DEFAULT_STEP_SIZE:F

    .line 64
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "ft"

    :goto_1
    sput-object v0, Lde/j4velin/pedometer/ui/Fragment_Settings;->DEFAULT_STEP_UNIT:Ljava/lang/String;

    return-void

    .line 63
    :cond_0
    const/high16 v0, 0x42960000    # 75.0f

    goto :goto_0

    .line 64
    :cond_1
    const-string/jumbo v0, "cm"

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lde/j4velin/pedometer/ui/Fragment_Settings;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lde/j4velin/pedometer/ui/Fragment_Settings;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lde/j4velin/pedometer/ui/Fragment_Settings;->writeToFile(Ljava/io/File;)V

    return-void
.end method

.method private exportCsv()V
    .locals 4

    .prologue
    const v3, 0x104000a

    .line 260
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 261
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "Pedometer.csv"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 262
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Fragment_Settings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0034

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lde/j4velin/pedometer/ui/Fragment_Settings$7;

    invoke-direct {v2, p0, v0}, Lde/j4velin/pedometer/ui/Fragment_Settings$7;-><init>(Lde/j4velin/pedometer/ui/Fragment_Settings;Ljava/io/File;)V

    .line 264
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lde/j4velin/pedometer/ui/Fragment_Settings$6;

    invoke-direct {v3, p0}, Lde/j4velin/pedometer/ui/Fragment_Settings$6;-><init>(Lde/j4velin/pedometer/ui/Fragment_Settings;)V

    .line 270
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 275
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 289
    .end local v0    # "f":Ljava/io/File;
    :goto_0
    return-void

    .line 277
    .restart local v0    # "f":Ljava/io/File;
    :cond_0
    invoke-direct {p0, v0}, Lde/j4velin/pedometer/ui/Fragment_Settings;->writeToFile(Ljava/io/File;)V

    goto :goto_0

    .line 280
    .end local v0    # "f":Ljava/io/File;
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Fragment_Settings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c002e

    .line 281
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lde/j4velin/pedometer/ui/Fragment_Settings$8;

    invoke-direct {v2, p0}, Lde/j4velin/pedometer/ui/Fragment_Settings$8;-><init>(Lde/j4velin/pedometer/ui/Fragment_Settings;)V

    .line 282
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 287
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private hasWriteExternalPermission()Z
    .locals 3

    .prologue
    .line 249
    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Fragment_Settings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 251
    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Fragment_Settings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 250
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 249
    :goto_0
    return v0

    .line 250
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private importCsv()V
    .locals 18

    .prologue
    .line 297
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "mounted"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 298
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v13

    const-string/jumbo v14, "Pedometer.csv"

    invoke-direct {v5, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 299
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v13

    if-nez v13, :cond_1

    .line 300
    :cond_0
    new-instance v13, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lde/j4velin/pedometer/ui/Fragment_Settings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v14, 0x7f0c0035

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    .line 301
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lde/j4velin/pedometer/ui/Fragment_Settings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x104000a

    new-instance v15, Lde/j4velin/pedometer/ui/Fragment_Settings$9;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lde/j4velin/pedometer/ui/Fragment_Settings$9;-><init>(Lde/j4velin/pedometer/ui/Fragment_Settings;)V

    .line 302
    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 307
    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog;->show()V

    .line 366
    .end local v5    # "f":Ljava/io/File;
    :goto_0
    return-void

    .line 310
    .restart local v5    # "f":Ljava/io/File;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lde/j4velin/pedometer/ui/Fragment_Settings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lde/j4velin/pedometer/Database;->getInstance(Landroid/content/Context;)Lde/j4velin/pedometer/Database;

    move-result-object v3

    .line 313
    .local v3, "db":Lde/j4velin/pedometer/Database;
    const/4 v6, 0x0

    .local v6, "ignored":I
    const/4 v8, 0x0

    .local v8, "inserted":I
    const/4 v12, 0x0

    .line 316
    .local v12, "overwritten":I
    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/FileReader;

    invoke-direct {v13, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 317
    .local v7, "in":Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, "line":Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 318
    const-string/jumbo v13, ";"

    invoke-virtual {v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 320
    .local v2, "data":[Ljava/lang/String;
    const/4 v13, 0x0

    :try_start_1
    aget-object v13, v2, v13

    invoke-static {v13}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const/4 v13, 0x1

    aget-object v13, v2, v13

    .line 321
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 320
    invoke-virtual {v3, v14, v15, v13}, Lde/j4velin/pedometer/Database;->insertDayFromBackup(JI)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v13

    if-eqz v13, :cond_2

    .line 322
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 324
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 326
    :catch_0
    move-exception v11

    .line 327
    .local v11, "nfe":Ljava/lang/Exception;
    add-int/lit8 v6, v6, 0x1

    .line 328
    goto :goto_1

    .line 330
    .end local v2    # "data":[Ljava/lang/String;
    .end local v11    # "nfe":Ljava/lang/Exception;
    :cond_3
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 343
    invoke-virtual {v3}, Lde/j4velin/pedometer/Database;->close()V

    .line 345
    const v13, 0x7f0c002c

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    add-int v16, v8, v12

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lde/j4velin/pedometer/ui/Fragment_Settings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 346
    .local v10, "message":Ljava/lang/String;
    if-lez v12, :cond_4

    .line 347
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\n\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v14, 0x7f0c002d

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lde/j4velin/pedometer/ui/Fragment_Settings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 348
    :cond_4
    if-lez v6, :cond_5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\n\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v14, 0x7f0c002b

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lde/j4velin/pedometer/ui/Fragment_Settings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 349
    :cond_5
    new-instance v13, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lde/j4velin/pedometer/ui/Fragment_Settings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v10}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x104000a

    new-instance v15, Lde/j4velin/pedometer/ui/Fragment_Settings$11;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lde/j4velin/pedometer/ui/Fragment_Settings$11;-><init>(Lde/j4velin/pedometer/ui/Fragment_Settings;)V

    .line 350
    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 355
    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 331
    .end local v7    # "in":Ljava/io/BufferedReader;
    .end local v9    # "line":Ljava/lang/String;
    .end local v10    # "message":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 332
    .local v4, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v13, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lde/j4velin/pedometer/ui/Fragment_Settings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v14, 0x7f0c002f

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    .line 333
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lde/j4velin/pedometer/ui/Fragment_Settings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x104000a

    new-instance v15, Lde/j4velin/pedometer/ui/Fragment_Settings$10;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lde/j4velin/pedometer/ui/Fragment_Settings$10;-><init>(Lde/j4velin/pedometer/ui/Fragment_Settings;)V

    .line 334
    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 339
    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog;->show()V

    .line 340
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 343
    invoke-virtual {v3}, Lde/j4velin/pedometer/Database;->close()V

    goto/16 :goto_0

    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    invoke-virtual {v3}, Lde/j4velin/pedometer/Database;->close()V

    .line 344
    throw v13

    .line 357
    .end local v3    # "db":Lde/j4velin/pedometer/Database;
    .end local v5    # "f":Ljava/io/File;
    .end local v6    # "ignored":I
    .end local v8    # "inserted":I
    .end local v12    # "overwritten":I
    :cond_6
    new-instance v13, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lde/j4velin/pedometer/ui/Fragment_Settings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v14, 0x7f0c002e

    .line 358
    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x104000a

    new-instance v15, Lde/j4velin/pedometer/ui/Fragment_Settings$12;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lde/j4velin/pedometer/ui/Fragment_Settings$12;-><init>(Lde/j4velin/pedometer/ui/Fragment_Settings;)V

    .line 359
    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 364
    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method private writeToFile(Ljava/io/File;)V
    .locals 14
    .param p1, "f"    # Ljava/io/File;

    .prologue
    const v4, 0x7f0c002f

    const v13, 0x104000a

    const/4 v3, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 371
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 372
    new-instance v10, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 385
    .local v10, "out":Ljava/io/BufferedWriter;
    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Fragment_Settings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lde/j4velin/pedometer/Database;->getInstance(Landroid/content/Context;)Lde/j4velin/pedometer/Database;

    move-result-object v0

    .line 386
    .local v0, "db":Lde/j4velin/pedometer/Database;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "date"

    aput-object v2, v1, v11

    const-string/jumbo v2, "steps"

    aput-object v2, v1, v12

    const-string/jumbo v2, "date > 0"

    const-string/jumbo v6, "date"

    move-object v4, v3

    move-object v5, v3

    move-object v7, v3

    .line 387
    invoke-virtual/range {v0 .. v7}, Lde/j4velin/pedometer/Database;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 389
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 390
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    .line 391
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 392
    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 393
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 398
    :catch_0
    move-exception v9

    .line 399
    .local v9, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Fragment_Settings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c002f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 400
    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lde/j4velin/pedometer/ui/Fragment_Settings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lde/j4velin/pedometer/ui/Fragment_Settings$14;

    invoke-direct {v3, p0}, Lde/j4velin/pedometer/ui/Fragment_Settings$14;-><init>(Lde/j4velin/pedometer/ui/Fragment_Settings;)V

    .line 401
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 406
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 407
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 410
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 411
    :cond_0
    invoke-virtual {v0}, Lde/j4velin/pedometer/Database;->close()V

    .line 421
    .end local v0    # "db":Lde/j4velin/pedometer/Database;
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v9    # "e":Ljava/io/IOException;
    .end local v10    # "out":Ljava/io/BufferedWriter;
    :goto_1
    return-void

    .line 373
    :catch_1
    move-exception v9

    .line 374
    .restart local v9    # "e":Ljava/io/IOException;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Fragment_Settings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-array v2, v12, [Ljava/lang/Object;

    .line 375
    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-virtual {p0, v4, v2}, Lde/j4velin/pedometer/ui/Fragment_Settings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lde/j4velin/pedometer/ui/Fragment_Settings$13;

    invoke-direct {v2, p0}, Lde/j4velin/pedometer/ui/Fragment_Settings$13;-><init>(Lde/j4velin/pedometer/ui/Fragment_Settings;)V

    .line 376
    invoke-virtual {v1, v13, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 381
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 382
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 396
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v0    # "db":Lde/j4velin/pedometer/Database;
    .restart local v8    # "c":Landroid/database/Cursor;
    .restart local v10    # "out":Ljava/io/BufferedWriter;
    :cond_1
    :try_start_3
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->flush()V

    .line 397
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 410
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 411
    :cond_2
    invoke-virtual {v0}, Lde/j4velin/pedometer/Database;->close()V

    .line 413
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Fragment_Settings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c002a

    new-array v3, v12, [Ljava/lang/Object;

    .line 414
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-virtual {p0, v2, v3}, Lde/j4velin/pedometer/ui/Fragment_Settings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lde/j4velin/pedometer/ui/Fragment_Settings$15;

    invoke-direct {v2, p0}, Lde/j4velin/pedometer/ui/Fragment_Settings$15;-><init>(Lde/j4velin/pedometer/ui/Fragment_Settings;)V

    .line 415
    invoke-virtual {v1, v13, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 420
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 410
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 411
    :cond_3
    invoke-virtual {v0}, Lde/j4velin/pedometer/Database;->close()V

    .line 412
    throw v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 68
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const/high16 v4, 0x7f0f0000

    invoke-virtual {p0, v4}, Lde/j4velin/pedometer/ui/Fragment_Settings;->addPreferencesFromResource(I)V

    .line 73
    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Fragment_Settings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "pedometer"

    invoke-virtual {v4, v5, v8}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 75
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "import"

    invoke-virtual {p0, v4}, Lde/j4velin/pedometer/ui/Fragment_Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 76
    const-string/jumbo v4, "export"

    invoke-virtual {p0, v4}, Lde/j4velin/pedometer/ui/Fragment_Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 77
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_0

    .line 78
    const-string/jumbo v4, "notification"

    invoke-virtual {p0, v4}, Lde/j4velin/pedometer/ui/Fragment_Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 101
    :goto_0
    const-string/jumbo v4, "account"

    invoke-virtual {p0, v4}, Lde/j4velin/pedometer/ui/Fragment_Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 103
    .local v0, "account":Landroid/preference/Preference;
    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Fragment_Settings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lde/j4velin/pedometer/ui/Activity_Main;

    invoke-static {v0, p1, v4}, Lde/j4velin/pedometer/util/PlaySettingsWrapper;->setupAccountSetting(Landroid/preference/Preference;Landroid/os/Bundle;Lde/j4velin/pedometer/ui/Activity_Main;)V

    .line 105
    const-string/jumbo v4, "goal"

    invoke-virtual {p0, v4}, Lde/j4velin/pedometer/ui/Fragment_Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 106
    .local v1, "goal":Landroid/preference/Preference;
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 107
    const v4, 0x7f0c0038

    new-array v5, v9, [Ljava/lang/Object;

    const-string/jumbo v6, "goal"

    const/16 v7, 0x2710

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lde/j4velin/pedometer/ui/Fragment_Settings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 109
    const-string/jumbo v4, "stepsize"

    invoke-virtual {p0, v4}, Lde/j4velin/pedometer/ui/Fragment_Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 110
    .local v3, "stepsize":Landroid/preference/Preference;
    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 111
    const v4, 0x7f0c0059

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "stepsize_value"

    sget v7, Lde/j4velin/pedometer/ui/Fragment_Settings;->DEFAULT_STEP_SIZE:F

    .line 112
    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v8

    const-string/jumbo v6, "stepsize_unit"

    sget-object v7, Lde/j4velin/pedometer/ui/Fragment_Settings;->DEFAULT_STEP_UNIT:Ljava/lang/String;

    .line 113
    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    .line 111
    invoke-virtual {p0, v4, v5}, Lde/j4velin/pedometer/ui/Fragment_Settings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {p0, v9}, Lde/j4velin/pedometer/ui/Fragment_Settings;->setHasOptionsMenu(Z)V

    .line 116
    return-void

    .line 80
    .end local v0    # "account":Landroid/preference/Preference;
    .end local v1    # "goal":Landroid/preference/Preference;
    .end local v3    # "stepsize":Landroid/preference/Preference;
    :cond_0
    const-string/jumbo v4, "notification"

    invoke-virtual {p0, v4}, Lde/j4velin/pedometer/ui/Fragment_Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    new-instance v5, Lde/j4velin/pedometer/ui/Fragment_Settings$1;

    invoke-direct {v5, p0, v2}, Lde/j4velin/pedometer/ui/Fragment_Settings$1;-><init>(Lde/j4velin/pedometer/ui/Fragment_Settings;Landroid/content/SharedPreferences;)V

    .line 81
    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 136
    const/high16 v0, 0x7f0a0000

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 137
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 148
    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Fragment_Settings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lde/j4velin/pedometer/ui/Activity_Main;

    invoke-virtual {v0, p1}, Lde/j4velin/pedometer/ui/Activity_Main;->optionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 13
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const v12, 0x104000a

    const/high16 v11, 0x1040000

    const/4 v5, 0x1

    const/4 v10, 0x0

    .line 155
    .line 156
    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Fragment_Settings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "pedometer"

    invoke-virtual {v0, v1, v10}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 157
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitleRes()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 245
    :goto_0
    return v10

    .line 159
    :sswitch_0
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Fragment_Settings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 160
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v8, Landroid/widget/NumberPicker;

    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Fragment_Settings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 161
    .local v8, "np":Landroid/widget/NumberPicker;
    invoke-virtual {v8, v5}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 162
    const v0, 0x186a0

    invoke-virtual {v8, v0}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 163
    const-string/jumbo v0, "goal"

    const/16 v1, 0x2710

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 164
    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 165
    const v0, 0x7f0c004d

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 166
    new-instance v0, Lde/j4velin/pedometer/ui/Fragment_Settings$2;

    invoke-direct {v0, p0, v8, v2, p1}, Lde/j4velin/pedometer/ui/Fragment_Settings$2;-><init>(Lde/j4velin/pedometer/ui/Fragment_Settings;Landroid/widget/NumberPicker;Landroid/content/SharedPreferences;Landroid/preference/Preference;)V

    invoke-virtual {v6, v12, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 177
    new-instance v0, Lde/j4velin/pedometer/ui/Fragment_Settings$3;

    invoke-direct {v0, p0}, Lde/j4velin/pedometer/ui/Fragment_Settings$3;-><init>(Lde/j4velin/pedometer/ui/Fragment_Settings;)V

    invoke-virtual {v6, v11, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 183
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 184
    .local v7, "dialog":Landroid/app/Dialog;
    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 186
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 189
    .end local v6    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v7    # "dialog":Landroid/app/Dialog;
    .end local v8    # "np":Landroid/widget/NumberPicker;
    :sswitch_1
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Fragment_Settings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 190
    .restart local v6    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Fragment_Settings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f09002a

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 191
    .local v9, "v":Landroid/view/View;
    const v0, 0x7f0700ae

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioGroup;

    .line 192
    .local v4, "unit":Landroid/widget/RadioGroup;
    const v0, 0x7f0700b1

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 193
    .local v3, "value":Landroid/widget/EditText;
    const-string/jumbo v0, "stepsize_unit"

    sget-object v1, Lde/j4velin/pedometer/ui/Fragment_Settings;->DEFAULT_STEP_UNIT:Ljava/lang/String;

    .line 194
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "cm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f07003a

    .line 193
    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 196
    const-string/jumbo v0, "stepsize_value"

    sget v1, Lde/j4velin/pedometer/ui/Fragment_Settings;->DEFAULT_STEP_SIZE:F

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 197
    invoke-virtual {v6, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 198
    const v0, 0x7f0c004e

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 199
    new-instance v0, Lde/j4velin/pedometer/ui/Fragment_Settings$4;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lde/j4velin/pedometer/ui/Fragment_Settings$4;-><init>(Lde/j4velin/pedometer/ui/Fragment_Settings;Landroid/content/SharedPreferences;Landroid/widget/EditText;Landroid/widget/RadioGroup;Landroid/preference/Preference;)V

    invoke-virtual {v6, v12, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 217
    new-instance v0, Lde/j4velin/pedometer/ui/Fragment_Settings$5;

    invoke-direct {v0, p0}, Lde/j4velin/pedometer/ui/Fragment_Settings$5;-><init>(Lde/j4velin/pedometer/ui/Fragment_Settings;)V

    invoke-virtual {v6, v11, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 223
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 194
    :cond_0
    const v0, 0x7f070050

    goto :goto_1

    .line 227
    .end local v3    # "value":Landroid/widget/EditText;
    .end local v4    # "unit":Landroid/widget/RadioGroup;
    .end local v6    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v9    # "v":Landroid/view/View;
    :sswitch_2
    invoke-direct {p0}, Lde/j4velin/pedometer/ui/Fragment_Settings;->hasWriteExternalPermission()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitleRes()I

    move-result v0

    const v1, 0x7f0c003a

    if-ne v0, v1, :cond_1

    .line 229
    invoke-direct {p0}, Lde/j4velin/pedometer/ui/Fragment_Settings;->importCsv()V

    goto/16 :goto_0

    .line 231
    :cond_1
    invoke-direct {p0}, Lde/j4velin/pedometer/ui/Fragment_Settings;->exportCsv()V

    goto/16 :goto_0

    .line 233
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    .line 234
    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Fragment_Settings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v5, v1, v10

    invoke-static {v0, v1}, Lde/j4velin/pedometer/util/API23Wrapper;->requestPermission(Landroid/app/Activity;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 237
    :cond_3
    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Fragment_Settings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0047

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 242
    :sswitch_3
    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Fragment_Settings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lde/j4velin/pedometer/util/API26Wrapper;->launchNotificationSettings(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 157
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c0031 -> :sswitch_2
        0x7f0c0036 -> :sswitch_0
        0x7f0c003a -> :sswitch_2
        0x7f0c0041 -> :sswitch_3
        0x7f0c0058 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 142
    const v0, 0x7f07001a

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 143
    const v0, 0x7f07001b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 144
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 126
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 127
    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Fragment_Settings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 128
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 129
    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Fragment_Settings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    .line 130
    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Fragment_Settings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lde/j4velin/pedometer/SensorListener;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    invoke-static {v0, v1}, Lde/j4velin/pedometer/util/API26Wrapper;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 132
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Lde/j4velin/pedometer/ui/Fragment_Settings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lde/j4velin/pedometer/ui/Activity_Main;

    invoke-static {p1, v0}, Lde/j4velin/pedometer/util/PlaySettingsWrapper;->onSavedInstance(Landroid/os/Bundle;Lde/j4velin/pedometer/ui/Activity_Main;)V

    .line 122
    return-void
.end method
