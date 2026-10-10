.class public abstract Lcom/android/vending/api/MultiFileDatabaseHelper;
.super Ljava/lang/Object;
.source "MultiFileDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/api/MultiFileDatabaseHelper$SQLiteOpenHelperAdapter;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLegacyNames:[Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNewVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "newVersion"    # I
    .param p4, "legacyNames"    # [Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/vending/api/MultiFileDatabaseHelper;->mContext:Landroid/content/Context;

    .line 53
    iput p3, p0, Lcom/android/vending/api/MultiFileDatabaseHelper;->mNewVersion:I

    .line 54
    iput-object p2, p0, Lcom/android/vending/api/MultiFileDatabaseHelper;->mName:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lcom/android/vending/api/MultiFileDatabaseHelper;->mLegacyNames:[Ljava/lang/String;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/api/MultiFileDatabaseHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/api/MultiFileDatabaseHelper;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/vending/api/MultiFileDatabaseHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/vending/api/MultiFileDatabaseHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/api/MultiFileDatabaseHelper;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/vending/api/MultiFileDatabaseHelper;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/vending/api/MultiFileDatabaseHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/api/MultiFileDatabaseHelper;

    .prologue
    .line 27
    iget v0, p0, Lcom/android/vending/api/MultiFileDatabaseHelper;->mNewVersion:I

    return v0
.end method


# virtual methods
.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 10

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v8, p0, Lcom/android/vending/api/MultiFileDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 61
    .local v0, "databases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 62
    .local v4, "oldDatabase":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v8, p0, Lcom/android/vending/api/MultiFileDatabaseHelper;->mLegacyNames:[Ljava/lang/String;

    array-length v8, v8

    if-ge v2, v8, :cond_0

    .line 63
    iget-object v8, p0, Lcom/android/vending/api/MultiFileDatabaseHelper;->mLegacyNames:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 64
    iget-object v8, p0, Lcom/android/vending/api/MultiFileDatabaseHelper;->mLegacyNames:[Ljava/lang/String;

    aget-object v4, v8, v2

    .line 70
    :cond_0
    if-eqz v4, :cond_2

    .line 71
    iget-object v8, p0, Lcom/android/vending/api/MultiFileDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 72
    .local v5, "oldPath":Ljava/io/File;
    iget-object v8, p0, Lcom/android/vending/api/MultiFileDatabaseHelper;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/vending/api/MultiFileDatabaseHelper;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 73
    .local v3, "newPath":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 74
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 76
    :cond_1
    invoke-virtual {v5, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .end local v3    # "newPath":Ljava/io/File;
    .end local v5    # "oldPath":Ljava/io/File;
    :cond_2
    const/4 v7, 0x0

    .line 83
    .local v7, "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    new-instance v8, Lcom/android/vending/api/MultiFileDatabaseHelper$SQLiteOpenHelperAdapter;

    invoke-direct {v8, p0}, Lcom/android/vending/api/MultiFileDatabaseHelper$SQLiteOpenHelperAdapter;-><init>(Lcom/android/vending/api/MultiFileDatabaseHelper;)V

    invoke-virtual {v8}, Lcom/android/vending/api/MultiFileDatabaseHelper$SQLiteOpenHelperAdapter;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 96
    :goto_1
    monitor-exit p0

    return-object v7

    .line 62
    .end local v7    # "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    .restart local v7    # "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 85
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string v8, "Caught exception when getting a writeable database. Deleting and recreating."

    invoke-static {v8, v1}, Lcom/android/vending/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    iget-object v8, p0, Lcom/android/vending/api/MultiFileDatabaseHelper;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/vending/api/MultiFileDatabaseHelper;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 88
    .local v6, "path":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 89
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 90
    new-instance v8, Lcom/android/vending/api/MultiFileDatabaseHelper$SQLiteOpenHelperAdapter;

    invoke-direct {v8, p0}, Lcom/android/vending/api/MultiFileDatabaseHelper$SQLiteOpenHelperAdapter;-><init>(Lcom/android/vending/api/MultiFileDatabaseHelper;)V

    invoke-virtual {v8}, Lcom/android/vending/api/MultiFileDatabaseHelper$SQLiteOpenHelperAdapter;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    goto :goto_1

    .line 92
    :cond_4
    const-string v8, "Could not find database to recreate."

    invoke-static {v8}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .line 93
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    .end local v0    # "databases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v2    # "i":I
    .end local v4    # "oldDatabase":Ljava/lang/String;
    .end local v6    # "path":Ljava/io/File;
    .end local v7    # "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public abstract onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public abstract onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.end method
