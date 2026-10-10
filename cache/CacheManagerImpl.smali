.class public Lcom/android/vending/cache/CacheManagerImpl;
.super Ljava/lang/Object;
.source "CacheManagerImpl.java"

# interfaces
.implements Lcom/android/vending/cache/CacheManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/cache/CacheManagerImpl$1;,
        Lcom/android/vending/cache/CacheManagerImpl$CacheCleanComparator;,
        Lcom/android/vending/cache/CacheManagerImpl$CacheFilenameFilter;,
        Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;,
        Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;
    }
.end annotation


# static fields
.field private static final sCacheCleanComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCacheFilenameFilter:Ljava/io/FilenameFilter;


# instance fields
.field private mApproximateDiskCacheSize:I

.field private final mCache:Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;

.field private mCacheDeletes:J

.field private mCacheInvalidates:J

.field private mCacheWrites:J

.field private final mContext:Landroid/content/Context;

.field private mDiskCacheMisses:J

.field private mDiskCacheReads:J

.field private mDiskLock:Ljava/lang/Object;

.field private mMemoryCacheMisses:J

.field private mMemoryCacheReads:J

.field private mMemoryLock:Ljava/lang/Object;

.field private final mPriorityCache:Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    new-instance v0, Lcom/android/vending/cache/CacheManagerImpl$CacheFilenameFilter;

    invoke-direct {v0, v1}, Lcom/android/vending/cache/CacheManagerImpl$CacheFilenameFilter;-><init>(Lcom/android/vending/cache/CacheManagerImpl$1;)V

    sput-object v0, Lcom/android/vending/cache/CacheManagerImpl;->sCacheFilenameFilter:Ljava/io/FilenameFilter;

    .line 90
    new-instance v0, Lcom/android/vending/cache/CacheManagerImpl$CacheCleanComparator;

    invoke-direct {v0, v1}, Lcom/android/vending/cache/CacheManagerImpl$CacheCleanComparator;-><init>(Lcom/android/vending/cache/CacheManagerImpl$1;)V

    sput-object v0, Lcom/android/vending/cache/CacheManagerImpl;->sCacheCleanComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;

    const/16 v1, 0x32

    invoke-direct {v0, p0, v1}, Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;-><init>(Lcom/android/vending/cache/CacheManagerImpl;I)V

    iput-object v0, p0, Lcom/android/vending/cache/CacheManagerImpl;->mCache:Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;

    .line 112
    new-instance v0, Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;

    const/16 v1, 0x1e

    invoke-direct {v0, p0, v1}, Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;-><init>(Lcom/android/vending/cache/CacheManagerImpl;I)V

    iput-object v0, p0, Lcom/android/vending/cache/CacheManagerImpl;->mPriorityCache:Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/vending/cache/CacheManagerImpl;->mDiskLock:Ljava/lang/Object;

    .line 130
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/vending/cache/CacheManagerImpl;->mMemoryLock:Ljava/lang/Object;

    .line 141
    iput-object p1, p0, Lcom/android/vending/cache/CacheManagerImpl;->mContext:Landroid/content/Context;

    .line 142
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/vending/cache/CacheManagerImpl;->mApproximateDiskCacheSize:I

    .line 143
    return-void
.end method

.method static synthetic access$200(Ljava/io/File;)Z
    .locals 1
    .param p0, "x0"    # Ljava/io/File;

    .prologue
    .line 47
    invoke-static {p0}, Lcom/android/vending/cache/CacheManagerImpl;->isHighPriority(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private static isHighPriority(Ljava/io/File;)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 362
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AVMC_P"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isValidFilenameChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 372
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    sparse-switch p0, :sswitch_data_0

    .line 391
    const/4 v0, 0x0

    .line 394
    :goto_0
    return v0

    :cond_0
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 373
    nop

    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_0
        0x25 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
        0x3d -> :sswitch_0
        0x40 -> :sswitch_0
        0x5b -> :sswitch_0
        0x5d -> :sswitch_0
        0x5f -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method static sanitizeFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 406
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 407
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/android/vending/cache/CacheManagerImpl;->isValidFilenameChar(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "S"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/16 v3, 0xb

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 413
    :goto_1
    return-object v1

    .line 406
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 413
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "U"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 9

    .prologue
    .line 306
    iget-object v5, p0, Lcom/android/vending/cache/CacheManagerImpl;->mDiskLock:Ljava/lang/Object;

    monitor-enter v5

    .line 307
    :try_start_0
    iget-object v6, p0, Lcom/android/vending/cache/CacheManagerImpl;->mMemoryLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 308
    :try_start_1
    iget-object v7, p0, Lcom/android/vending/cache/CacheManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    sget-object v8, Lcom/android/vending/cache/CacheManagerImpl;->sCacheFilenameFilter:Ljava/io/FilenameFilter;

    invoke-virtual {v7, v8}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 309
    .local v1, "cacheFiles":[Ljava/io/File;
    move-object v0, v1

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 310
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 309
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 312
    .end local v2    # "file":Ljava/io/File;
    :cond_0
    iget-object v7, p0, Lcom/android/vending/cache/CacheManagerImpl;->mPriorityCache:Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;

    invoke-virtual {v7}, Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;->clear()V

    .line 313
    iget-object v7, p0, Lcom/android/vending/cache/CacheManagerImpl;->mCache:Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;

    invoke-virtual {v7}, Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;->clear()V

    .line 314
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 316
    return-void

    .line 314
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "cacheFiles":[Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v7

    .line 315
    :catchall_1
    move-exception v6

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6
.end method

.method public delete(Lcom/android/vending/cache/Cacheable;)V
    .locals 0
    .param p1, "cacheable"    # Lcom/android/vending/cache/Cacheable;

    .prologue
    .line 299
    invoke-virtual {p0, p1}, Lcom/android/vending/cache/CacheManagerImpl;->deleteFromDisk(Lcom/android/vending/cache/Cacheable;)V

    .line 300
    return-void
.end method

.method deleteFromDisk(Lcom/android/vending/cache/Cacheable;)V
    .locals 6
    .param p1, "cacheable"    # Lcom/android/vending/cache/Cacheable;

    .prologue
    .line 612
    iget-object v1, p0, Lcom/android/vending/cache/CacheManagerImpl;->mDiskLock:Ljava/lang/Object;

    monitor-enter v1

    .line 613
    :try_start_0
    iget-wide v2, p0, Lcom/android/vending/cache/CacheManagerImpl;->mCacheDeletes:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/vending/cache/CacheManagerImpl;->mCacheDeletes:J

    .line 614
    invoke-virtual {p0, p1}, Lcom/android/vending/cache/CacheManagerImpl;->getDiskCacheFile(Lcom/android/vending/cache/Cacheable;)Ljava/io/File;

    move-result-object v0

    .line 615
    .local v0, "cacheFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 616
    iget v2, p0, Lcom/android/vending/cache/CacheManagerImpl;->mApproximateDiskCacheSize:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/vending/cache/CacheManagerImpl;->mApproximateDiskCacheSize:I

    .line 617
    invoke-virtual {p0, p1}, Lcom/android/vending/cache/CacheManagerImpl;->deleteFromMemory(Lcom/android/vending/cache/Cacheable;)V

    .line 618
    monitor-exit v1

    .line 619
    return-void

    .line 618
    .end local v0    # "cacheFile":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method deleteFromMemory(Lcom/android/vending/cache/Cacheable;)V
    .locals 3
    .param p1, "cacheable"    # Lcom/android/vending/cache/Cacheable;

    .prologue
    .line 627
    iget-object v1, p0, Lcom/android/vending/cache/CacheManagerImpl;->mMemoryLock:Ljava/lang/Object;

    monitor-enter v1

    .line 628
    :try_start_0
    invoke-interface {p1}, Lcom/android/vending/cache/Cacheable;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    .line 629
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/vending/cache/CacheManagerImpl;->mPriorityCache:Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;

    invoke-virtual {v2, v0}, Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    iget-object v2, p0, Lcom/android/vending/cache/CacheManagerImpl;->mCache:Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;

    invoke-virtual {v2, v0}, Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    monitor-exit v1

    .line 632
    return-void

    .line 631
    .end local v0    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method ensureDiskCapacity()V
    .locals 6

    .prologue
    const/16 v5, 0x190

    .line 635
    iget v3, p0, Lcom/android/vending/cache/CacheManagerImpl;->mApproximateDiskCacheSize:I

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/android/vending/cache/CacheManagerImpl;->mApproximateDiskCacheSize:I

    if-le v3, v5, :cond_1

    .line 637
    :cond_0
    iget-object v3, p0, Lcom/android/vending/cache/CacheManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    sget-object v4, Lcom/android/vending/cache/CacheManagerImpl;->sCacheFilenameFilter:Ljava/io/FilenameFilter;

    invoke-virtual {v3, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 638
    .local v0, "cacheFiles":[Ljava/io/File;
    array-length v1, v0

    .line 639
    .local v1, "cacheSize":I
    iput v1, p0, Lcom/android/vending/cache/CacheManagerImpl;->mApproximateDiskCacheSize:I

    .line 640
    if-ge v1, v5, :cond_2

    .line 653
    .end local v0    # "cacheFiles":[Ljava/io/File;
    .end local v1    # "cacheSize":I
    :cond_1
    return-void

    .line 644
    .restart local v0    # "cacheFiles":[Ljava/io/File;
    .restart local v1    # "cacheSize":I
    :cond_2
    sget-object v3, Lcom/android/vending/cache/CacheManagerImpl;->sCacheCleanComparator:Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 645
    const/4 v2, 0x0

    .line 646
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    iget v3, p0, Lcom/android/vending/cache/CacheManagerImpl;->mApproximateDiskCacheSize:I

    const/16 v4, 0x12c

    if-le v3, v4, :cond_1

    .line 648
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 649
    iget v3, p0, Lcom/android/vending/cache/CacheManagerImpl;->mApproximateDiskCacheSize:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/vending/cache/CacheManagerImpl;->mApproximateDiskCacheSize:I

    .line 647
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public get(Lcom/android/vending/cache/Cacheable;Z)Lcom/android/vending/cache/CacheManager$CacheResult;
    .locals 11
    .param p1, "cacheable"    # Lcom/android/vending/cache/Cacheable;
    .param p2, "checkDiskToo"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "entry":Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;
    const/4 v4, 0x0

    .line 163
    .local v4, "triedDisk":Z
    invoke-virtual {p0, p1}, Lcom/android/vending/cache/CacheManagerImpl;->readFromMemory(Lcom/android/vending/cache/Cacheable;)Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;

    move-result-object v0

    .line 164
    if-nez v0, :cond_1

    .line 176
    instance-of v5, p1, Lcom/android/vending/model/GetImageRequest;

    if-nez v5, :cond_0

    .line 177
    const/4 p2, 0x1

    .line 180
    :cond_0
    if-eqz p2, :cond_1

    .line 181
    invoke-virtual {p0, p1}, Lcom/android/vending/cache/CacheManagerImpl;->readFromDisk(Lcom/android/vending/cache/Cacheable;)Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;

    move-result-object v0

    .line 182
    const/4 v4, 0x1

    .line 186
    :cond_1
    const/4 v3, 0x0

    .line 187
    .local v3, "result":Lcom/android/vending/cache/CacheManager$CacheResult;
    if-eqz v0, :cond_2

    .line 188
    new-instance v3, Lcom/android/vending/cache/CacheManager$CacheResult;

    .end local v3    # "result":Lcom/android/vending/cache/CacheManager$CacheResult;
    invoke-direct {v3}, Lcom/android/vending/cache/CacheManager$CacheResult;-><init>()V

    .line 189
    .restart local v3    # "result":Lcom/android/vending/cache/CacheManager$CacheResult;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 190
    .local v1, "now":J
    iget-object v5, v0, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->protoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    iput-object v5, v3, Lcom/android/vending/cache/CacheManager$CacheResult;->protoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    .line 191
    iget-object v5, v0, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->serializable:Ljava/io/Serializable;

    iput-object v5, v3, Lcom/android/vending/cache/CacheManager$CacheResult;->serializable:Ljava/io/Serializable;

    .line 192
    iget-wide v5, v0, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->expiryTime:J

    cmp-long v5, v5, v1

    if-gez v5, :cond_3

    move v5, v10

    :goto_0
    iput-boolean v5, v3, Lcom/android/vending/cache/CacheManager$CacheResult;->isExpired:Z

    .line 193
    iget-object v5, v0, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->etag:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/vending/cache/CacheManager$CacheResult;->etag:Ljava/lang/String;

    .line 194
    iget-wide v5, v0, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->postponeRefreshExpiryTime:J

    cmp-long v5, v5, v1

    if-ltz v5, :cond_4

    iget-wide v5, v0, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->postponeRefreshExpiryTime:J

    iget-wide v7, v0, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->expiryTime:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_4

    move v5, v10

    :goto_1
    iput-boolean v5, v3, Lcom/android/vending/cache/CacheManager$CacheResult;->canPostponeRefresh:Z

    .line 196
    iget-wide v5, v0, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->modifiedTime:J

    iput-wide v5, v3, Lcom/android/vending/cache/CacheManager$CacheResult;->modifiedTime:J

    .line 214
    .end local v1    # "now":J
    :cond_2
    return-object v3

    .restart local v1    # "now":J
    :cond_3
    move v5, v9

    .line 192
    goto :goto_0

    :cond_4
    move v5, v9

    .line 194
    goto :goto_1
.end method

.method getDiskCacheFile(Lcom/android/vending/cache/Cacheable;)Ljava/io/File;
    .locals 3
    .param p1, "cacheable"    # Lcom/android/vending/cache/Cacheable;

    .prologue
    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AVMC_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/vending/cache/Cacheable;->isHighPriority()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "P"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/vending/cache/Cacheable;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/vending/cache/CacheManagerImpl;->sanitizeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "sanitizedFilename":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/vending/cache/CacheManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    .line 351
    .end local v0    # "sanitizedFilename":Ljava/lang/String;
    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public invalidate(Lcom/android/vending/cache/Cacheable;)Z
    .locals 1
    .param p1, "cacheable"    # Lcom/android/vending/cache/Cacheable;

    .prologue
    .line 282
    invoke-virtual {p0, p1}, Lcom/android/vending/cache/CacheManagerImpl;->invalidateFromDisk(Lcom/android/vending/cache/Cacheable;)Z

    move-result v0

    return v0
.end method

.method invalidateFromDisk(Lcom/android/vending/cache/Cacheable;)Z
    .locals 7
    .param p1, "cacheable"    # Lcom/android/vending/cache/Cacheable;

    .prologue
    .line 590
    iget-object v2, p0, Lcom/android/vending/cache/CacheManagerImpl;->mDiskLock:Ljava/lang/Object;

    monitor-enter v2

    .line 591
    :try_start_0
    iget-wide v3, p0, Lcom/android/vending/cache/CacheManagerImpl;->mCacheInvalidates:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/vending/cache/CacheManagerImpl;->mCacheInvalidates:J

    .line 593
    invoke-virtual {p0, p1}, Lcom/android/vending/cache/CacheManagerImpl;->invalidateFromMemory(Lcom/android/vending/cache/Cacheable;)Z

    move-result v1

    .line 594
    .local v1, "invalidated":Z
    invoke-virtual {p0, p1}, Lcom/android/vending/cache/CacheManagerImpl;->readFromDisk(Lcom/android/vending/cache/Cacheable;)Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;

    move-result-object v0

    .line 596
    .local v0, "entry":Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;
    if-eqz v0, :cond_0

    .line 597
    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->expiryTime:J

    .line 598
    invoke-virtual {p0, p1, v0}, Lcom/android/vending/cache/CacheManagerImpl;->writeToDisk(Lcom/android/vending/cache/Cacheable;Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;)V

    .line 599
    const/4 v3, 0x1

    monitor-exit v2

    move v2, v3

    .line 602
    :goto_0
    return v2

    :cond_0
    monitor-exit v2

    move v2, v1

    goto :goto_0

    .line 603
    .end local v0    # "entry":Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;
    .end local v1    # "invalidated":Z
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method invalidateFromMemory(Lcom/android/vending/cache/Cacheable;)Z
    .locals 4
    .param p1, "cacheable"    # Lcom/android/vending/cache/Cacheable;

    .prologue
    .line 570
    iget-object v1, p0, Lcom/android/vending/cache/CacheManagerImpl;->mMemoryLock:Ljava/lang/Object;

    monitor-enter v1

    .line 571
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/vending/cache/CacheManagerImpl;->readFromMemory(Lcom/android/vending/cache/Cacheable;)Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;

    move-result-object v0

    .line 573
    .local v0, "entry":Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;
    if-eqz v0, :cond_0

    .line 574
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->expiryTime:J

    .line 575
    invoke-virtual {p0, p1, v0}, Lcom/android/vending/cache/CacheManagerImpl;->writeToMemory(Lcom/android/vending/cache/Cacheable;Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;)V

    .line 576
    const/4 v2, 0x1

    monitor-exit v1

    move v1, v2

    .line 579
    :goto_0
    return v1

    :cond_0
    const/4 v2, 0x0

    monitor-exit v1

    move v1, v2

    goto :goto_0

    .line 580
    .end local v0    # "entry":Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public put(Lcom/android/vending/cache/Cacheable;Lcom/google/common/io/protocol/ProtoBuf;Ljava/io/Serializable;Ljava/lang/String;II)V
    .locals 7
    .param p1, "cacheable"    # Lcom/android/vending/cache/Cacheable;
    .param p2, "protoBuf"    # Lcom/google/common/io/protocol/ProtoBuf;
    .param p3, "serializable"    # Ljava/io/Serializable;
    .param p4, "etag"    # Ljava/lang/String;
    .param p5, "maxAge"    # I
    .param p6, "maxAgeConsumable"    # I

    .prologue
    const-wide/16 v5, 0x3e8

    .line 250
    if-gtz p5, :cond_0

    .line 265
    :goto_0
    return-void

    .line 254
    :cond_0
    new-instance v0, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;

    invoke-direct {v0}, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;-><init>()V

    .line 255
    .local v0, "entry":Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;
    iput-object p2, v0, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->protoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    .line 256
    iput-object p3, v0, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->serializable:Ljava/io/Serializable;

    .line 257
    iput-object p4, v0, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->etag:Ljava/lang/String;

    .line 258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 259
    .local v1, "now":J
    iput-wide v1, v0, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->modifiedTime:J

    .line 260
    int-to-long v3, p5

    mul-long/2addr v3, v5

    add-long/2addr v3, v1

    iput-wide v3, v0, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->expiryTime:J

    .line 261
    int-to-long v3, p6

    mul-long/2addr v3, v5

    add-long/2addr v3, v1

    iput-wide v3, v0, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->postponeRefreshExpiryTime:J

    .line 262
    invoke-interface {p1}, Lcom/android/vending/cache/Cacheable;->isHighPriority()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->highPriority:Z

    .line 264
    invoke-virtual {p0, p1, v0}, Lcom/android/vending/cache/CacheManagerImpl;->writeToDisk(Lcom/android/vending/cache/Cacheable;Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;)V

    goto :goto_0
.end method

.method readFromDisk(Lcom/android/vending/cache/Cacheable;)Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;
    .locals 14
    .param p1, "cacheable"    # Lcom/android/vending/cache/Cacheable;

    .prologue
    .line 420
    iget-object v9, p0, Lcom/android/vending/cache/CacheManagerImpl;->mDiskLock:Ljava/lang/Object;

    monitor-enter v9

    .line 421
    :try_start_0
    iget-wide v10, p0, Lcom/android/vending/cache/CacheManagerImpl;->mDiskCacheReads:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/android/vending/cache/CacheManagerImpl;->mDiskCacheReads:J

    .line 422
    invoke-virtual {p0, p1}, Lcom/android/vending/cache/CacheManagerImpl;->getDiskCacheFile(Lcom/android/vending/cache/Cacheable;)Ljava/io/File;

    move-result-object v0

    .line 423
    .local v0, "cacheFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 424
    iget-wide v10, p0, Lcom/android/vending/cache/CacheManagerImpl;->mDiskCacheMisses:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/android/vending/cache/CacheManagerImpl;->mDiskCacheMisses:J

    .line 425
    const/4 v10, 0x0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v10

    .line 489
    :goto_0
    return-object v9

    .line 429
    :cond_0
    :try_start_1
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v11, 0x400

    invoke-direct {v5, v10, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 431
    .local v5, "in":Ljava/io/InputStream;
    new-instance v6, Ljava/io/ObjectInputStream;

    invoke-direct {v6, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 432
    .local v6, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v8

    .line 433
    .local v8, "version":I
    const/16 v10, 0x8

    if-eq v8, v10, :cond_1

    .line 434
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid cache version: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/vending/util/Log;->i(Ljava/lang/String;)V

    .line 435
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V

    .line 436
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 437
    iget-wide v10, p0, Lcom/android/vending/cache/CacheManagerImpl;->mDiskCacheMisses:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/android/vending/cache/CacheManagerImpl;->mDiskCacheMisses:J
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    const/4 v10, 0x0

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v9, v10

    goto :goto_0

    .line 441
    :cond_1
    :try_start_3
    new-instance v4, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;

    invoke-direct {v4}, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;-><init>()V

    .line 442
    .local v4, "entry":Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v10

    iput-wide v10, v4, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->expiryTime:J

    .line 443
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->etag:Ljava/lang/String;

    .line 444
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v10

    iput-wide v10, v4, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->postponeRefreshExpiryTime:J

    .line 445
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v10

    iput-wide v10, v4, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->modifiedTime:J

    .line 447
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readBoolean()Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    .line 448
    .local v2, "containsSerializable":Z
    if-eqz v2, :cond_2

    .line 450
    :try_start_4
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    iput-object v1, v4, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->serializable:Ljava/io/Serializable;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 466
    :cond_2
    :try_start_5
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v1

    .line 467
    .local v1, "containsProto":Z
    if-eqz v1, :cond_3

    .line 468
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/vending/model/ApiDefsMessageTypesRegistry;->getProtoBufType(Ljava/lang/String;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v7

    .line 470
    .local v7, "protoType":Lcom/google/common/io/protocol/ProtoBufType;
    new-instance v10, Lcom/google/common/io/protocol/ProtoBuf;

    invoke-direct {v10, v7}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    iput-object v10, v4, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->protoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    .line 471
    iget-object v10, v4, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->protoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v10, v6}, Lcom/google/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;)Lcom/google/common/io/protocol/ProtoBuf;

    .line 473
    .end local v7    # "protoType":Lcom/google/common/io/protocol/ProtoBufType;
    :cond_3
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V

    .line 476
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Ljava/io/File;->setLastModified(J)Z

    .line 477
    invoke-virtual {p0, p1, v4}, Lcom/android/vending/cache/CacheManagerImpl;->writeToMemory(Lcom/android/vending/cache/Cacheable;Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 478
    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v9, v4

    goto/16 :goto_0

    .line 451
    .end local v1    # "containsProto":Z
    :catch_0
    move-exception v10

    move-object v3, v10

    .line 452
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    :try_start_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t read serializable object "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lcom/android/vending/cache/Cacheable;->getCacheKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .line 454
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V

    .line 455
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 456
    iget-wide v10, p0, Lcom/android/vending/cache/CacheManagerImpl;->mDiskCacheMisses:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/android/vending/cache/CacheManagerImpl;->mDiskCacheMisses:J
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 457
    const/4 v10, 0x0

    :try_start_8
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v9, v10

    goto/16 :goto_0

    .line 458
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v10

    move-object v3, v10

    .line 459
    .local v3, "e":Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V

    .line 460
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 461
    iget-wide v10, p0, Lcom/android/vending/cache/CacheManagerImpl;->mDiskCacheMisses:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/android/vending/cache/CacheManagerImpl;->mDiskCacheMisses:J
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 462
    const/4 v10, 0x0

    :try_start_a
    monitor-exit v9

    move-object v9, v10

    goto/16 :goto_0

    .line 480
    .end local v2    # "containsSerializable":Z
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "entry":Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v6    # "ois":Ljava/io/ObjectInputStream;
    .end local v8    # "version":I
    :catch_2
    move-exception v10

    move-object v3, v10

    .line 481
    .local v3, "e":Ljava/io/FileNotFoundException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t open cache file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " for read: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .line 488
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    iget-wide v10, p0, Lcom/android/vending/cache/CacheManagerImpl;->mDiskCacheMisses:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/android/vending/cache/CacheManagerImpl;->mDiskCacheMisses:J

    .line 489
    const/4 v10, 0x0

    monitor-exit v9

    move-object v9, v10

    goto/16 :goto_0

    .line 483
    :catch_3
    move-exception v10

    move-object v3, v10

    .line 484
    .local v3, "e":Ljava/io/IOException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Reading cache file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .line 485
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 490
    .end local v0    # "cacheFile":Ljava/io/File;
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v10
.end method

.method readFromMemory(Lcom/android/vending/cache/Cacheable;)Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;
    .locals 10
    .param p1, "cacheable"    # Lcom/android/vending/cache/Cacheable;

    .prologue
    const-wide/16 v8, 0x1

    const/4 v7, 0x0

    .line 325
    iget-object v4, p0, Lcom/android/vending/cache/CacheManagerImpl;->mMemoryLock:Ljava/lang/Object;

    monitor-enter v4

    .line 326
    :try_start_0
    iget-wide v5, p0, Lcom/android/vending/cache/CacheManagerImpl;->mMemoryCacheReads:J

    add-long/2addr v5, v8

    iput-wide v5, p0, Lcom/android/vending/cache/CacheManagerImpl;->mMemoryCacheReads:J

    .line 330
    invoke-interface {p1}, Lcom/android/vending/cache/Cacheable;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/vending/cache/CacheManagerImpl;->mPriorityCache:Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;

    invoke-virtual {v3, v1}, Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 333
    .local v2, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;

    move-object v0, v3

    .line 334
    .local v0, "entry":Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;
    :goto_0
    if-nez v0, :cond_0

    .line 335
    iget-object v3, p0, Lcom/android/vending/cache/CacheManagerImpl;->mCache:Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;

    invoke-virtual {v3, v1}, Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;>;"
    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 336
    .restart local v2    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;>;"
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;

    move-object v0, v3

    .line 338
    :cond_0
    :goto_1
    if-nez v0, :cond_3

    .line 339
    iget-wide v5, p0, Lcom/android/vending/cache/CacheManagerImpl;->mMemoryCacheMisses:J

    add-long/2addr v5, v8

    iput-wide v5, p0, Lcom/android/vending/cache/CacheManagerImpl;->mMemoryCacheMisses:J

    .line 340
    invoke-virtual {p0, p1}, Lcom/android/vending/cache/CacheManagerImpl;->deleteFromMemory(Lcom/android/vending/cache/Cacheable;)V

    .line 341
    monitor-exit v4

    move-object v3, v7

    .line 343
    :goto_2
    return-object v3

    .end local v0    # "entry":Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;
    :cond_1
    move-object v0, v7

    .line 333
    goto :goto_0

    .restart local v0    # "entry":Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;
    :cond_2
    move-object v0, v7

    .line 336
    goto :goto_1

    .line 343
    :cond_3
    monitor-exit v4

    move-object v3, v0

    goto :goto_2

    .line 344
    .end local v0    # "entry":Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method writeToDisk(Lcom/android/vending/cache/Cacheable;Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;)V
    .locals 13
    .param p1, "cacheable"    # Lcom/android/vending/cache/Cacheable;
    .param p2, "entry"    # Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 500
    iget-object v6, p0, Lcom/android/vending/cache/CacheManagerImpl;->mDiskLock:Ljava/lang/Object;

    monitor-enter v6

    .line 501
    :try_start_0
    iget-wide v7, p0, Lcom/android/vending/cache/CacheManagerImpl;->mCacheWrites:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, p0, Lcom/android/vending/cache/CacheManagerImpl;->mCacheWrites:J

    .line 502
    invoke-virtual {p0}, Lcom/android/vending/cache/CacheManagerImpl;->ensureDiskCapacity()V

    .line 504
    invoke-virtual {p0, p1}, Lcom/android/vending/cache/CacheManagerImpl;->getDiskCacheFile(Lcom/android/vending/cache/Cacheable;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 506
    .local v0, "cacheFile":Ljava/io/File;
    :try_start_1
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v8, 0x400

    invoke-direct {v5, v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 508
    .local v5, "out":Ljava/io/OutputStream;
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v5}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 509
    .local v4, "oos":Ljava/io/ObjectOutputStream;
    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 510
    iget-wide v7, p2, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->expiryTime:J

    invoke-virtual {v4, v7, v8}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 511
    iget-object v7, p2, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->etag:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 512
    iget-wide v7, p2, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->postponeRefreshExpiryTime:J

    invoke-virtual {v4, v7, v8}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 513
    iget-wide v7, p2, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->modifiedTime:J

    invoke-virtual {v4, v7, v8}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 515
    iget-object v7, p2, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->serializable:Ljava/io/Serializable;

    if-eqz v7, :cond_2

    move v2, v12

    .line 516
    .local v2, "containsSerializable":Z
    :goto_0
    invoke-virtual {v4, v2}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 517
    if-eqz v2, :cond_0

    .line 518
    iget-object v7, p2, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->serializable:Ljava/io/Serializable;

    invoke-virtual {v4, v7}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 521
    :cond_0
    iget-object v7, p2, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->protoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    if-eqz v7, :cond_3

    move v1, v12

    .line 522
    .local v1, "containsProto":Z
    :goto_1
    invoke-virtual {v4, v1}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 523
    if-eqz v1, :cond_1

    .line 524
    iget-object v7, p2, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->protoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v7}, Lcom/google/common/io/protocol/ProtoBuf;->getType()Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v7

    invoke-static {v7}, Lcom/android/vending/model/ApiDefsMessageTypesRegistry;->getProtoBufName(Lcom/google/common/io/protocol/ProtoBufType;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 526
    iget-object v7, p2, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->protoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v7, v4}, Lcom/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    .line 528
    :cond_1
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    .line 529
    iget v7, p0, Lcom/android/vending/cache/CacheManagerImpl;->mApproximateDiskCacheSize:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/vending/cache/CacheManagerImpl;->mApproximateDiskCacheSize:I

    .line 530
    invoke-virtual {p0, p1, p2}, Lcom/android/vending/cache/CacheManagerImpl;->writeToMemory(Lcom/android/vending/cache/Cacheable;Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 539
    .end local v1    # "containsProto":Z
    .end local v2    # "containsSerializable":Z
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .end local v5    # "out":Ljava/io/OutputStream;
    :goto_2
    :try_start_2
    monitor-exit v6

    .line 540
    return-void

    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    :cond_2
    move v2, v11

    .line 515
    goto :goto_0

    .restart local v2    # "containsSerializable":Z
    :cond_3
    move v1, v11

    .line 521
    goto :goto_1

    .line 532
    .end local v2    # "containsSerializable":Z
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .end local v5    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 533
    .local v3, "e":Ljava/io/FileNotFoundException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t open cache file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to write: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 539
    .end local v0    # "cacheFile":Ljava/io/File;
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 535
    .restart local v0    # "cacheFile":Ljava/io/File;
    :catch_1
    move-exception v7

    move-object v3, v7

    .line 536
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Writing cache file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .line 537
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method writeToMemory(Lcom/android/vending/cache/Cacheable;Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;)V
    .locals 4
    .param p1, "cacheable"    # Lcom/android/vending/cache/Cacheable;
    .param p2, "entry"    # Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;

    .prologue
    .line 549
    invoke-interface {p1}, Lcom/android/vending/cache/Cacheable;->storeInMemory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 561
    :goto_0
    return-void

    .line 553
    :cond_0
    iget-object v1, p0, Lcom/android/vending/cache/CacheManagerImpl;->mMemoryLock:Ljava/lang/Object;

    monitor-enter v1

    .line 554
    :try_start_0
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 555
    .local v0, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;>;"
    iget-boolean v2, p2, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->highPriority:Z

    if-eqz v2, :cond_1

    .line 556
    iget-object v2, p0, Lcom/android/vending/cache/CacheManagerImpl;->mPriorityCache:Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;

    invoke-interface {p1}, Lcom/android/vending/cache/Cacheable;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    :goto_1
    monitor-exit v1

    goto :goto_0

    .end local v0    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;>;"
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 558
    .restart local v0    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;>;"
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/vending/cache/CacheManagerImpl;->mCache:Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;

    invoke-interface {p1}, Lcom/android/vending/cache/Cacheable;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
