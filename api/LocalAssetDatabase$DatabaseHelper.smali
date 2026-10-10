.class Lcom/android/vending/api/LocalAssetDatabase$DatabaseHelper;
.super Lcom/android/vending/api/MultiFileDatabaseHelper;
.source "LocalAssetDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/api/LocalAssetDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1217
    const-string v0, "assets14.db"

    const/16 v1, 0xe

    invoke-static {}, Lcom/android/vending/api/LocalAssetDatabase;->access$000()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/vending/api/MultiFileDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 1218
    iput-object p1, p0, Lcom/android/vending/api/LocalAssetDatabase$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 1219
    return-void
.end method

.method private createNewAssetTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1246
    invoke-direct {p0, p1}, Lcom/android/vending/api/LocalAssetDatabase$DatabaseHelper;->createV10AssetTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1247
    const-string v0, "ALTER TABLE assets10 ADD COLUMN referrer TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1249
    const-string v0, "ALTER TABLE assets10 ADD COLUMN source TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1251
    const-string v0, "ALTER TABLE assets10 ADD COLUMN auto_update INTEGER"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1253
    return-void
.end method

.method private createV10AssetTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1227
    const-string v0, "CREATE TABLE assets10(_id INTEGER PRIMARY KEY AUTOINCREMENT, content_uri TEXT, state TEXT, download_pending_time INTEGER, download_start_time INTEGER, install_time INTEGER, uninstall_time INTEGER, size INTEGER, type TEXT, package_name TEXT, is_forward_locked TEXT, signature TEXT, refund_timeout INTEGER, version_code INTEGER, server_string_id TEXT UNIQUE)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1243
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1223
    invoke-direct {p0, p1}, Lcom/android/vending/api/LocalAssetDatabase$DatabaseHelper;->createNewAssetTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1224
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 25
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 1257
    const/4 v5, 0x7

    move/from16 v0, p2

    move v1, v5

    if-ge v0, v1, :cond_1

    .line 1261
    const-string v5, "DROP TABLE IF EXISTS assets10"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1262
    invoke-direct/range {p0 .. p1}, Lcom/android/vending/api/LocalAssetDatabase$DatabaseHelper;->createNewAssetTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1361
    :cond_0
    return-void

    .line 1266
    :cond_1
    move/from16 v22, p2

    .local v22, "version":I
    :goto_0
    move/from16 v0, v22

    move/from16 v1, p3

    if-ge v0, v1, :cond_0

    .line 1267
    packed-switch v22, :pswitch_data_0

    .line 1266
    :goto_1
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 1269
    :pswitch_0
    const-string v5, "ALTER TABLE assets ADD COLUMN signature TEXT"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    .line 1273
    :pswitch_1
    const-string v5, "ALTER TABLE assets ADD COLUMN refund_timeout INTEGER"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    .line 1277
    :pswitch_2
    const-string v5, "ALTER TABLE assets ADD COLUMN version_code INTEGER"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1279
    const-string v5, "ALTER TABLE assets ADD COLUMN server_string_id TEXT"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1282
    const-string v5, "UPDATE assets SET server_string_id = server_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1285
    const-string v6, "assets"

    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "_id"

    aput-object v8, v7, v5

    const/4 v5, 0x1

    const-string v8, "package_name"

    aput-object v8, v7, v5

    const-string v8, "state = ?"

    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    sget-object v10, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    invoke-virtual {v10}, Lcom/android/vending/model/LocalAssetInfo$AssetState;->name()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1294
    .local v16, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/api/LocalAssetDatabase$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 1295
    .local v18, "packageManager":Landroid/content/pm/PackageManager;
    :goto_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1296
    const/4 v5, 0x0

    move-object/from16 v0, v16

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 1297
    .local v20, "uid":J
    const/4 v5, 0x1

    move-object/from16 v0, v16

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v19

    .line 1299
    .local v19, "packageName":Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_1
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    move v0, v5

    int-to-long v0, v0

    move-wide/from16 v23, v0

    .line 1301
    .local v23, "versionCode":J
    new-instance v15, Landroid/content/ContentValues;

    const/4 v5, 0x1

    invoke-direct {v15, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 1302
    .local v15, "contentValues":Landroid/content/ContentValues;
    const-string v5, "version_code"

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v15, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1303
    const-string v5, "assets"

    const-string v6, "_id = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v15

    move-object v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1307
    .end local v15    # "contentValues":Landroid/content/ContentValues;
    .end local v23    # "versionCode":J
    :catch_0
    move-exception v5

    move-object/from16 v17, v5

    .line 1308
    .local v17, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot find package on DB upgrade: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    .line 1310
    new-instance v15, Landroid/content/ContentValues;

    const/4 v5, 0x1

    invoke-direct {v15, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 1311
    .restart local v15    # "contentValues":Landroid/content/ContentValues;
    const-string v5, "state"

    sget-object v6, Lcom/android/vending/model/LocalAssetInfo$AssetState;->UNINSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    invoke-virtual {v6}, Lcom/android/vending/model/LocalAssetInfo$AssetState;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    const-string v5, "assets"

    const-string v6, "_id = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v15

    move-object v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 1320
    .end local v15    # "contentValues":Landroid/content/ContentValues;
    .end local v17    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v18    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v19    # "packageName":Ljava/lang/String;
    .end local v20    # "uid":J
    :catchall_0
    move-exception v5

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v5

    .restart local v18    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1325
    .end local v16    # "cursor":Landroid/database/Cursor;
    .end local v18    # "packageManager":Landroid/content/pm/PackageManager;
    :pswitch_3
    :try_start_3
    invoke-direct/range {p0 .. p1}, Lcom/android/vending/api/LocalAssetDatabase$DatabaseHelper;->createV10AssetTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1333
    :goto_3
    const/16 v5, 0xe

    new-array v13, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "server_string_id"

    aput-object v6, v13, v5

    const/4 v5, 0x1

    const-string v6, "state"

    aput-object v6, v13, v5

    const/4 v5, 0x2

    const-string v6, "download_pending_time"

    aput-object v6, v13, v5

    const/4 v5, 0x3

    const-string v6, "download_start_time"

    aput-object v6, v13, v5

    const/4 v5, 0x4

    const-string v6, "install_time"

    aput-object v6, v13, v5

    const/4 v5, 0x5

    const-string v6, "uninstall_time"

    aput-object v6, v13, v5

    const/4 v5, 0x6

    const-string v6, "size"

    aput-object v6, v13, v5

    const/4 v5, 0x7

    const-string v6, "type"

    aput-object v6, v13, v5

    const/16 v5, 0x8

    const-string v6, "package_name"

    aput-object v6, v13, v5

    const/16 v5, 0x9

    const-string v6, "content_uri"

    aput-object v6, v13, v5

    const/16 v5, 0xa

    const-string v6, "is_forward_locked"

    aput-object v6, v13, v5

    const/16 v5, 0xb

    const-string v6, "signature"

    aput-object v6, v13, v5

    const/16 v5, 0xc

    const-string v6, "refund_timeout"

    aput-object v6, v13, v5

    const/16 v5, 0xd

    const-string v6, "version_code"

    aput-object v6, v13, v5

    .line 1340
    .local v13, "columns":[Ljava/lang/String;
    const-string v5, ", "

    invoke-static {v5, v13}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 1341
    .local v14, "commaDelimitedColumns":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INSERT INTO assets10("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " SELECT "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " FROM "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "assets"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " WHERE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "server_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " IS NOT NULL"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1326
    .end local v13    # "columns":[Ljava/lang/String;
    .end local v14    # "commaDelimitedColumns":Ljava/lang/String;
    :catch_1
    move-exception v17

    .line 1328
    .local v17, "e":Landroid/database/sqlite/SQLiteException;
    const-string v5, "DROP TABLE IF EXISTS assets10"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1329
    invoke-direct/range {p0 .. p1}, Lcom/android/vending/api/LocalAssetDatabase$DatabaseHelper;->createV10AssetTable(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_3

    .line 1348
    .end local v17    # "e":Landroid/database/sqlite/SQLiteException;
    :pswitch_4
    const-string v5, "ALTER TABLE assets10 ADD COLUMN referrer TEXT"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1352
    :pswitch_5
    const-string v5, "ALTER TABLE assets10 ADD COLUMN source TEXT"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1356
    :pswitch_6
    const-string v5, "ALTER TABLE assets10 ADD COLUMN auto_update INTEGER"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1267
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
