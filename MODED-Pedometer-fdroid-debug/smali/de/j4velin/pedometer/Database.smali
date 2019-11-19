.class public Lde/j4velin/pedometer/Database;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "Database.java"


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "steps"

.field private static final DB_VERSION:I = 0x2

.field private static instance:Lde/j4velin/pedometer/Database;

.field private static final openCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lde/j4velin/pedometer/Database;->openCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const-string/jumbo v0, "steps"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 44
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lde/j4velin/pedometer/Database;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 47
    const-class v1, Lde/j4velin/pedometer/Database;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lde/j4velin/pedometer/Database;->instance:Lde/j4velin/pedometer/Database;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lde/j4velin/pedometer/Database;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lde/j4velin/pedometer/Database;-><init>(Landroid/content/Context;)V

    sput-object v0, Lde/j4velin/pedometer/Database;->instance:Lde/j4velin/pedometer/Database;

    .line 50
    :cond_0
    sget-object v0, Lde/j4velin/pedometer/Database;->openCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 51
    sget-object v0, Lde/j4velin/pedometer/Database;->instance:Lde/j4velin/pedometer/Database;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addToLastEntry(I)V
    .locals 3
    .param p1, "steps"    # I

    .prologue
    .line 145
    invoke-virtual {p0}, Lde/j4velin/pedometer/Database;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UPDATE steps SET steps = steps + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " WHERE date = (SELECT MAX(date) FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "steps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lde/j4velin/pedometer/Database;->openCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 57
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 59
    :cond_0
    return-void
.end method

.method public getCurrentSteps()I
    .locals 4

    .prologue
    .line 380
    const-wide/16 v2, -0x1

    invoke-virtual {p0, v2, v3}, Lde/j4velin/pedometer/Database;->getSteps(J)I

    move-result v0

    .line 381
    .local v0, "re":I
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .end local v0    # "re":I
    :cond_0
    return v0
.end method

.method public getDays()I
    .locals 2

    .prologue
    .line 352
    invoke-virtual {p0}, Lde/j4velin/pedometer/Database;->getDaysWithoutToday()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 353
    .local v0, "re":I
    return v0
.end method

.method public getDaysWithoutToday()I
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 329
    invoke-virtual {p0}, Lde/j4velin/pedometer/Database;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "steps"

    new-array v2, v11, [Ljava/lang/String;

    const-string/jumbo v3, "COUNT(*)"

    aput-object v3, v2, v10

    const-string/jumbo v3, "steps > ? AND date < ? AND date > 0"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 331
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v10

    invoke-static {}, Lde/j4velin/pedometer/util/Util;->getToday()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v11

    move-object v6, v5

    move-object v7, v5

    .line 330
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 333
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 334
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 335
    .local v9, "re":I
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 336
    if-gez v9, :cond_0

    move v9, v10

    .end local v9    # "re":I
    :cond_0
    return v9
.end method

.method public getLastEntries(I)Ljava/util/List;
    .locals 14
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v4, 0x0

    .line 263
    invoke-virtual {p0}, Lde/j4velin/pedometer/Database;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "steps"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "date"

    aput-object v3, v2, v12

    const-string/jumbo v3, "steps"

    aput-object v3, v2, v13

    const-string/jumbo v3, "date > 0"

    const-string/jumbo v7, "date DESC"

    .line 265
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move-object v5, v4

    move-object v6, v4

    .line 264
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 266
    .local v9, "c":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 267
    .local v10, "max":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 268
    .local v11, "result":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;"
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    :cond_0
    new-instance v0, Landroid/util/Pair;

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v9, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    :cond_1
    return-object v11
.end method

.method public getRecord()I
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 211
    invoke-virtual {p0}, Lde/j4velin/pedometer/Database;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "steps"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "MAX(steps)"

    aput-object v3, v2, v10

    const-string/jumbo v3, "date > 0"

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 212
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 213
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 214
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 215
    .local v9, "re":I
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 216
    return v9
.end method

.method public getRecordData()Landroid/util/Pair;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/Date;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v4, 0x0

    .line 226
    invoke-virtual {p0}, Lde/j4velin/pedometer/Database;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "steps"

    new-array v2, v12, [Ljava/lang/String;

    const-string/jumbo v3, "date, steps"

    aput-object v3, v2, v11

    const-string/jumbo v3, "date > 0"

    const-string/jumbo v7, "steps DESC"

    const-string/jumbo v8, "1"

    move-object v5, v4

    move-object v6, v4

    .line 227
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 229
    .local v9, "c":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 230
    new-instance v10, Landroid/util/Pair;

    new-instance v0, Ljava/util/Date;

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v10, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 231
    .local v10, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/Date;Ljava/lang/Integer;>;"
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 232
    return-object v10
.end method

.method public getSteps(J)I
    .locals 11
    .param p1, "date"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 246
    invoke-virtual {p0}, Lde/j4velin/pedometer/Database;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "steps"

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "steps"

    aput-object v3, v2, v10

    const-string/jumbo v3, "date = ?"

    new-array v4, v4, [Ljava/lang/String;

    .line 247
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v10

    move-object v6, v5

    move-object v7, v5

    .line 246
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 248
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 250
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/high16 v9, -0x80000000

    .line 252
    .local v9, "re":I
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 253
    return v9

    .line 251
    .end local v9    # "re":I
    :cond_0
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .restart local v9    # "re":I
    goto :goto_0
.end method

.method public getSteps(JJ)I
    .locals 11
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 288
    invoke-virtual {p0}, Lde/j4velin/pedometer/Database;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "steps"

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "SUM(steps)"

    aput-object v3, v2, v10

    const-string/jumbo v3, "date >= ? AND date <= ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 290
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v10

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    .line 289
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 292
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 293
    const/4 v9, 0x0

    .line 298
    .local v9, "re":I
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 299
    return v9

    .line 295
    .end local v9    # "re":I
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 296
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .restart local v9    # "re":I
    goto :goto_0
.end method

.method public getTotalWithoutToday()I
    .locals 11

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 196
    invoke-virtual {p0}, Lde/j4velin/pedometer/Database;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "steps"

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "SUM(steps)"

    aput-object v3, v2, v10

    const-string/jumbo v3, "steps > 0 AND date > 0 AND date < ?"

    new-array v4, v4, [Ljava/lang/String;

    .line 198
    invoke-static {}, Lde/j4velin/pedometer/util/Util;->getToday()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v10

    move-object v6, v5

    move-object v7, v5

    .line 197
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 199
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 200
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 201
    .local v9, "re":I
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 202
    return v9
.end method

.method public insertDayFromBackup(JI)Z
    .locals 9
    .param p1, "date"    # J
    .param p3, "steps"    # I

    .prologue
    .line 159
    invoke-virtual {p0}, Lde/j4velin/pedometer/Database;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 160
    const/4 v0, 0x0

    .line 162
    .local v0, "newEntryCreated":Z
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 163
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "steps"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 164
    invoke-virtual {p0}, Lde/j4velin/pedometer/Database;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string/jumbo v4, "steps"

    const-string/jumbo v5, "date = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 165
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 166
    .local v1, "updatedRows":I
    if-nez v1, :cond_0

    .line 167
    const-string/jumbo v3, "date"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 168
    invoke-virtual {p0}, Lde/j4velin/pedometer/Database;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string/jumbo v4, "steps"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 169
    const/4 v0, 0x1

    .line 171
    :cond_0
    invoke-virtual {p0}, Lde/j4velin/pedometer/Database;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    invoke-virtual {p0}, Lde/j4velin/pedometer/Database;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 175
    return v0

    .line 173
    .end local v1    # "updatedRows":I
    .end local v2    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lde/j4velin/pedometer/Database;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 174
    throw v3
.end method

.method public insertNewDay(JI)V
    .locals 11
    .param p1, "date"    # J
    .param p3, "steps"    # I

    .prologue
    .line 112
    invoke-virtual {p0}, Lde/j4velin/pedometer/Database;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 114
    :try_start_0
    invoke-virtual {p0}, Lde/j4velin/pedometer/Database;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "steps"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "date"

    aput-object v4, v2, v3

    const-string/jumbo v3, "date = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 115
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 114
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 116
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    if-ltz p3, :cond_0

    .line 119
    invoke-virtual {p0, p3}, Lde/j4velin/pedometer/Database;->addToLastEntry(I)V

    .line 122
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 123
    .local v9, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "date"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 125
    const-string/jumbo v0, "steps"

    neg-int v1, p3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    invoke-virtual {p0}, Lde/j4velin/pedometer/Database;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "steps"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 128
    .end local v9    # "values":Landroid/content/ContentValues;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 129
    sget-boolean v0, Lde/j4velin/pedometer/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "insertDay "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/j4velin/pedometer/util/Logger;->log(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lde/j4velin/pedometer/Database;->logState()V

    .line 133
    :cond_1
    invoke-virtual {p0}, Lde/j4velin/pedometer/Database;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    invoke-virtual {p0}, Lde/j4velin/pedometer/Database;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 137
    return-void

    .line 135
    .end local v8    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lde/j4velin/pedometer/Database;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 136
    throw v0
.end method

.method public logState()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 182
    sget-boolean v0, Lde/j4velin/pedometer/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lde/j4velin/pedometer/Database;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "steps"

    const-string/jumbo v7, "date DESC"

    const-string/jumbo v8, "5"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    .line 184
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 185
    .local v9, "c":Landroid/database/Cursor;
    invoke-static {v9}, Lde/j4velin/pedometer/util/Logger;->log(Landroid/database/Cursor;)V

    .line 186
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 188
    .end local v9    # "c":Landroid/database/Cursor;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 63
    const-string/jumbo v0, "CREATE TABLE steps (date INTEGER, steps INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 68
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 70
    const-string/jumbo v0, "CREATE TABLE steps2 (date INTEGER, steps INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 71
    const-string/jumbo v0, "INSERT INTO steps2 (date, steps) SELECT date, steps FROM steps"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    const-string/jumbo v0, "DROP TABLE steps"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 74
    const-string/jumbo v0, "ALTER TABLE steps2 RENAME TO steps"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 76
    :cond_0
    return-void
.end method

.method public query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "columns"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "groupBy"    # Ljava/lang/String;
    .param p5, "having"    # Ljava/lang/String;
    .param p6, "orderBy"    # Ljava/lang/String;
    .param p7, "limit"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-virtual {p0}, Lde/j4velin/pedometer/Database;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "steps"

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    .line 93
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 92
    return-object v0
.end method

.method public removeInvalidEntries()V
    .locals 6

    .prologue
    .line 318
    invoke-virtual {p0}, Lde/j4velin/pedometer/Database;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "steps"

    const-string/jumbo v2, "steps >= ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "200000"

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 319
    return-void
.end method

.method removeNegativeEntries()V
    .locals 6

    .prologue
    .line 309
    invoke-virtual {p0}, Lde/j4velin/pedometer/Database;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "steps"

    const-string/jumbo v2, "steps < ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "0"

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 310
    return-void
.end method

.method public saveCurrentSteps(I)V
    .locals 5
    .param p1, "steps"    # I

    .prologue
    const/4 v4, 0x0

    .line 362
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 363
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "steps"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 364
    invoke-virtual {p0}, Lde/j4velin/pedometer/Database;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "steps"

    const-string/jumbo v3, "date = -1"

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 365
    const-string/jumbo v1, "date"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 366
    invoke-virtual {p0}, Lde/j4velin/pedometer/Database;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "steps"

    invoke-virtual {v1, v2, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 368
    :cond_0
    sget-boolean v1, Lde/j4velin/pedometer/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saving steps in db: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/j4velin/pedometer/util/Logger;->log(Ljava/lang/String;)V

    .line 371
    :cond_1
    return-void
.end method
