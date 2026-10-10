.class public Lcom/android/vending/api/AssetService;
.super Lcom/android/vending/api/BaseService;
.source "AssetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/api/AssetService$1;,
        Lcom/android/vending/api/AssetService$SingleAssetKey;,
        Lcom/android/vending/api/AssetService$CachedAssetList;,
        Lcom/android/vending/api/AssetService$AssetRequestKey;,
        Lcom/android/vending/api/AssetService$GetAssetsReceiver;
    }
.end annotation


# instance fields
.field private mAllowMultipleResponses:Z

.field protected mAssetsReceiver:Lcom/android/vending/api/AssetService$GetAssetsReceiver;

.field private mCacheManager:Lcom/android/vending/cache/CacheManager;

.field private mCachedCorrectedQuery:Ljava/lang/String;

.field private mCachedHeader:Ljava/lang/String;

.field private mCachedListType:Ljava/lang/Integer;

.field private mCachedTotalCorrectedResults:Ljava/lang/Long;

.field private mCachedTotalResults:Ljava/lang/Long;

.field private mHandledAssetRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/AssetRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mPossiblyExpiredAssetList:Lcom/android/vending/api/AssetService$CachedAssetList;

.field private mPossiblyExpiredAssets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;"
        }
    .end annotation
.end field

.field private mPossiblyExpiredCorrectedAssets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getCacheManager()Lcom/android/vending/cache/CacheManager;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/vending/api/AssetService;-><init>(Lcom/android/vending/api/RequestManager;Lcom/android/vending/cache/CacheManager;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Lcom/android/vending/api/RequestManager;Lcom/android/vending/cache/CacheManager;)V
    .locals 1
    .param p1, "requestMgr"    # Lcom/android/vending/api/RequestManager;
    .param p2, "cacheManager"    # Lcom/android/vending/cache/CacheManager;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/vending/api/BaseService;-><init>(Lcom/android/vending/api/RequestManager;)V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vending/api/AssetService;->mAllowMultipleResponses:Z

    .line 116
    iput-object p2, p0, Lcom/android/vending/api/AssetService;->mCacheManager:Lcom/android/vending/cache/CacheManager;

    .line 117
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/api/AssetService;->mHandledAssetRequests:Ljava/util/List;

    .line 118
    return-void
.end method

.method public static cacheAssets(Lcom/android/vending/cache/CacheManager;Lcom/android/vending/model/AssetRequest;Lcom/android/vending/model/ResponseProperties;Ljava/util/List;)V
    .locals 4
    .param p0, "cacheManager"    # Lcom/android/vending/cache/CacheManager;
    .param p1, "assetRequest"    # Lcom/android/vending/model/AssetRequest;
    .param p2, "responseProperties"    # Lcom/android/vending/model/ResponseProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/vending/cache/CacheManager;",
            "Lcom/android/vending/model/AssetRequest;",
            "Lcom/android/vending/model/ResponseProperties;",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p3, "assetsToCache":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    new-instance v1, Lcom/android/vending/api/AssetService$CachedAssetList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/vending/api/AssetService$CachedAssetList;-><init>(Lcom/android/vending/api/AssetService$1;)V

    .line 236
    .local v1, "assetListToCache":Lcom/android/vending/api/AssetService$CachedAssetList;
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 237
    .local v0, "assetIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/vending/model/Asset;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    iget-object v3, v1, Lcom/android/vending/api/AssetService$CachedAssetList;->mAssetList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vending/model/Asset;

    invoke-virtual {v2}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 240
    :cond_0
    invoke-static {p0, p1, p2, v1, p3}, Lcom/android/vending/api/AssetService;->cacheResponse(Lcom/android/vending/cache/CacheManager;Lcom/android/vending/model/AssetRequest;Lcom/android/vending/model/ResponseProperties;Lcom/android/vending/api/AssetService$CachedAssetList;Ljava/util/List;)V

    .line 242
    return-void
.end method

.method private static cacheResponse(Lcom/android/vending/cache/CacheManager;Lcom/android/vending/model/AssetRequest;Lcom/android/vending/model/ResponseProperties;Lcom/android/vending/api/AssetService$CachedAssetList;Ljava/util/List;)V
    .locals 9
    .param p0, "cacheManager"    # Lcom/android/vending/cache/CacheManager;
    .param p1, "assetRequest"    # Lcom/android/vending/model/AssetRequest;
    .param p2, "responseProperties"    # Lcom/android/vending/model/ResponseProperties;
    .param p3, "assetListToCache"    # Lcom/android/vending/api/AssetService$CachedAssetList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/vending/cache/CacheManager;",
            "Lcom/android/vending/model/AssetRequest;",
            "Lcom/android/vending/model/ResponseProperties;",
            "Lcom/android/vending/api/AssetService$CachedAssetList;",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 540
    .local p4, "assetsToCache":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    new-instance v1, Lcom/android/vending/api/AssetService$AssetRequestKey;

    invoke-direct {v1, p1}, Lcom/android/vending/api/AssetService$AssetRequestKey;-><init>(Lcom/android/vending/model/AssetRequest;)V

    .line 541
    .local v1, "requestKey":Lcom/android/vending/api/AssetService$AssetRequestKey;
    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/android/vending/model/ResponseProperties;->getEtag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/vending/model/ResponseProperties;->getMaxAge()I

    move-result v5

    invoke-virtual {p2}, Lcom/android/vending/model/ResponseProperties;->getMaxAgeConsumable()I

    move-result v6

    move-object v0, p0

    move-object v3, p3

    invoke-interface/range {v0 .. v6}, Lcom/android/vending/cache/CacheManager;->put(Lcom/android/vending/cache/Cacheable;Lcom/google/common/io/protocol/ProtoBuf;Ljava/io/Serializable;Ljava/lang/String;II)V

    .line 547
    invoke-virtual {v1}, Lcom/android/vending/api/AssetService$AssetRequestKey;->isHighPriority()Z

    move-result p3

    .line 550
    .local p3, "highPriority":Z
    if-eqz p4, :cond_0

    .line 551
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    .end local v1    # "requestKey":Lcom/android/vending/api/AssetService$AssetRequestKey;
    .local p1, "i":I
    :goto_0
    add-int/lit8 v0, p1, -0x1

    .end local p1    # "i":I
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 553
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/vending/model/Asset;

    .line 554
    .local p1, "asset":Lcom/android/vending/model/Asset;
    new-instance v3, Lcom/android/vending/api/AssetService$SingleAssetKey;

    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, p3}, Lcom/android/vending/api/AssetService$SingleAssetKey;-><init>(Ljava/lang/String;Z)V

    .line 555
    .local v3, "assetKey":Lcom/android/vending/api/AssetService$SingleAssetKey;
    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->getProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, ""

    invoke-virtual {p2}, Lcom/android/vending/model/ResponseProperties;->getMaxAge()I

    move-result v7

    invoke-virtual {p2}, Lcom/android/vending/model/ResponseProperties;->getMaxAgeConsumable()I

    move-result v8

    move-object v2, p0

    invoke-interface/range {v2 .. v8}, Lcom/android/vending/cache/CacheManager;->put(Lcom/android/vending/cache/Cacheable;Lcom/google/common/io/protocol/ProtoBuf;Ljava/io/Serializable;Ljava/lang/String;II)V

    move p1, v0

    .line 557
    .end local v0    # "i":I
    .local p1, "i":I
    goto :goto_0

    .line 559
    .end local v3    # "assetKey":Lcom/android/vending/api/AssetService$SingleAssetKey;
    .end local p1    # "i":I
    :cond_0
    return-void
.end method

.method private checkCache(Lcom/android/vending/model/AssetRequest;)Z
    .locals 13
    .param p1, "assetRequest"    # Lcom/android/vending/model/AssetRequest;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 454
    const/4 v0, 0x0

    .line 455
    .local v0, "cacheResult":Lcom/android/vending/cache/CacheManager$CacheResult;
    const/4 v1, 0x0

    .line 456
    .local v1, "cachedAssetList":Lcom/android/vending/api/AssetService$CachedAssetList;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 457
    .local v2, "cachedAssets":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 458
    .local v3, "cachedCorrectedAssets":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    invoke-virtual {p1}, Lcom/android/vending/model/AssetRequest;->numAssetId()I

    move-result v7

    if-ne v7, v11, :cond_5

    .line 459
    iget-object v7, p0, Lcom/android/vending/api/AssetService;->mCacheManager:Lcom/android/vending/cache/CacheManager;

    new-instance v8, Lcom/android/vending/api/AssetService$SingleAssetKey;

    invoke-virtual {p1, v10}, Lcom/android/vending/model/AssetRequest;->getAssetId(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/vending/api/AssetService$SingleAssetKey;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v8, v10}, Lcom/android/vending/cache/CacheManager;->get(Lcom/android/vending/cache/Cacheable;Z)Lcom/android/vending/cache/CacheManager$CacheResult;

    move-result-object v0

    .line 463
    if-eqz v0, :cond_1

    .line 464
    new-instance v4, Lcom/android/vending/model/Asset;

    iget-object v7, v0, Lcom/android/vending/cache/CacheManager$CacheResult;->protoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-direct {v4, v7}, Lcom/android/vending/model/Asset;-><init>(Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 465
    .local v4, "existingAsset":Lcom/android/vending/model/Asset;
    invoke-virtual {v4}, Lcom/android/vending/model/Asset;->hasExtendedInfo()Z

    move-result v7

    if-nez v7, :cond_0

    move v7, v10

    .line 518
    .end local v4    # "existingAsset":Lcom/android/vending/model/Asset;
    :goto_0
    return v7

    .line 468
    .restart local v4    # "existingAsset":Lcom/android/vending/model/Asset;
    :cond_0
    new-instance v1, Lcom/android/vending/api/AssetService$CachedAssetList;

    .end local v1    # "cachedAssetList":Lcom/android/vending/api/AssetService$CachedAssetList;
    invoke-direct {v1, v12}, Lcom/android/vending/api/AssetService$CachedAssetList;-><init>(Lcom/android/vending/api/AssetService$1;)V

    .line 469
    .restart local v1    # "cachedAssetList":Lcom/android/vending/api/AssetService$CachedAssetList;
    iget-object v7, v1, Lcom/android/vending/api/AssetService$CachedAssetList;->mAssetList:Ljava/util/List;

    invoke-virtual {v4}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    const-wide/16 v7, 0x1

    iput-wide v7, v1, Lcom/android/vending/api/AssetService$CachedAssetList;->mNumTotalAssets:J

    .line 471
    const-string v7, ""

    iput-object v7, v1, Lcom/android/vending/api/AssetService$CachedAssetList;->mCorrectedQuery:Ljava/lang/String;

    .line 472
    const-wide/16 v7, 0x0

    iput-wide v7, v1, Lcom/android/vending/api/AssetService$CachedAssetList;->mNumTotalCorrectedAssets:J

    .line 473
    iput-object v12, v1, Lcom/android/vending/api/AssetService$CachedAssetList;->mHeader:Ljava/lang/String;

    .line 474
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    .end local v4    # "existingAsset":Lcom/android/vending/model/Asset;
    :cond_1
    :goto_1
    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    .line 497
    iget-boolean v7, v0, Lcom/android/vending/cache/CacheManager$CacheResult;->isExpired:Z

    if-eqz v7, :cond_2

    iget-boolean v7, v0, Lcom/android/vending/cache/CacheManager$CacheResult;->isExpired:Z

    if-eqz v7, :cond_3

    iget-boolean v7, v0, Lcom/android/vending/cache/CacheManager$CacheResult;->canPostponeRefresh:Z

    if-eqz v7, :cond_3

    .line 499
    :cond_2
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/vending/api/AssetService;->initializeFromCache(Lcom/android/vending/model/AssetRequest;Lcom/android/vending/api/AssetService$CachedAssetList;Ljava/util/List;Ljava/util/List;)V

    .line 506
    :cond_3
    iget-boolean v7, v0, Lcom/android/vending/cache/CacheManager$CacheResult;->isExpired:Z

    if-eqz v7, :cond_4

    .line 507
    iput-object v1, p0, Lcom/android/vending/api/AssetService;->mPossiblyExpiredAssetList:Lcom/android/vending/api/AssetService$CachedAssetList;

    .line 508
    iput-object v2, p0, Lcom/android/vending/api/AssetService;->mPossiblyExpiredAssets:Ljava/util/List;

    .line 509
    iput-object v3, p0, Lcom/android/vending/api/AssetService;->mPossiblyExpiredCorrectedAssets:Ljava/util/List;

    .line 510
    invoke-virtual {p1}, Lcom/android/vending/model/AssetRequest;->getRequestSpecificProperties()Lcom/android/vending/model/RequestSpecificProperties;

    move-result-object v7

    iget-object v8, v0, Lcom/android/vending/cache/CacheManager$CacheResult;->etag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/vending/model/RequestSpecificProperties;->setIfNoneMatch(Ljava/lang/String;)V

    .line 514
    :cond_4
    iget-boolean v7, v0, Lcom/android/vending/cache/CacheManager$CacheResult;->isExpired:Z

    if-nez v7, :cond_6

    move v7, v11

    goto :goto_0

    .line 477
    :cond_5
    iget-object v7, p0, Lcom/android/vending/api/AssetService;->mCacheManager:Lcom/android/vending/cache/CacheManager;

    new-instance v8, Lcom/android/vending/api/AssetService$AssetRequestKey;

    invoke-direct {v8, p1}, Lcom/android/vending/api/AssetService$AssetRequestKey;-><init>(Lcom/android/vending/model/AssetRequest;)V

    invoke-interface {v7, v8, v10}, Lcom/android/vending/cache/CacheManager;->get(Lcom/android/vending/cache/Cacheable;Z)Lcom/android/vending/cache/CacheManager$CacheResult;

    move-result-object v0

    .line 480
    if-eqz v0, :cond_1

    .line 483
    iget-object v1, v0, Lcom/android/vending/cache/CacheManager$CacheResult;->serializable:Ljava/io/Serializable;

    .end local v1    # "cachedAssetList":Lcom/android/vending/api/AssetService$CachedAssetList;
    check-cast v1, Lcom/android/vending/api/AssetService$CachedAssetList;

    .line 484
    .restart local v1    # "cachedAssetList":Lcom/android/vending/api/AssetService$CachedAssetList;
    new-instance v6, Lcom/android/vending/api/AssetService$AssetRequestKey;

    invoke-direct {v6, p1}, Lcom/android/vending/api/AssetService$AssetRequestKey;-><init>(Lcom/android/vending/model/AssetRequest;)V

    .line 485
    .local v6, "key":Lcom/android/vending/api/AssetService$AssetRequestKey;
    invoke-virtual {v6}, Lcom/android/vending/api/AssetService$AssetRequestKey;->isHighPriority()Z

    move-result v7

    invoke-direct {p0, v1, v2, v3, v7}, Lcom/android/vending/api/AssetService;->loadCachedAssets(Lcom/android/vending/api/AssetService$CachedAssetList;Ljava/util/List;Ljava/util/List;Z)Z

    move-result v5

    .line 487
    .local v5, "inCache":Z
    if-nez v5, :cond_1

    .line 489
    const/4 v2, 0x0

    .line 490
    const/4 v3, 0x0

    goto :goto_1

    .end local v5    # "inCache":Z
    .end local v6    # "key":Lcom/android/vending/api/AssetService$AssetRequestKey;
    :cond_6
    move v7, v10

    .line 514
    goto :goto_0

    :cond_7
    move v7, v10

    .line 518
    goto :goto_0
.end method

.method private createMyDownloadsRequest()Lcom/android/vending/model/AssetRequest;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 416
    new-instance v0, Lcom/android/vending/model/AssetRequest;

    invoke-direct {v0}, Lcom/android/vending/model/AssetRequest;-><init>()V

    .line 417
    .local v0, "assetRequest":Lcom/android/vending/model/AssetRequest;
    invoke-virtual {v0, v1}, Lcom/android/vending/model/AssetRequest;->setRetrieveVendingHistory(Z)V

    .line 421
    invoke-virtual {v0, v1}, Lcom/android/vending/model/AssetRequest;->setRetrieveExtendedInfo(Z)V

    .line 422
    return-object v0
.end method

.method private expandAssetList(Lcom/android/vending/model/AssetRequest;Ljava/util/List;)Ljava/util/List;
    .locals 12
    .param p1, "assetRequest"    # Lcom/android/vending/model/AssetRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/vending/model/AssetRequest;",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    .local p2, "assets":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    invoke-virtual {p1}, Lcom/android/vending/model/AssetRequest;->getAssetIdRequests()Ljava/util/List;

    move-result-object v2

    .line 264
    .local v2, "assetIdRequests":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    .line 265
    .local v8, "numAssetIdRequests":I
    if-nez v8, :cond_1

    .line 301
    :cond_0
    return-object p2

    .line 274
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 275
    .local v3, "assetMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/vending/model/Asset;>;"
    invoke-virtual {p1}, Lcom/android/vending/model/AssetRequest;->getAssetIdRequestsToServer()Ljava/util/List;

    move-result-object v4

    .line 276
    .local v4, "assetRequestsToServer":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 277
    .local v5, "assetRequestsToServerSize":I
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    .local v9, "numAssets":I
    :goto_0
    if-ge v6, v9, :cond_3

    .line 278
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 282
    .local v0, "asset":Lcom/android/vending/model/Asset;
    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, "assetId":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    if-ge v6, v5, :cond_2

    .line 285
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 286
    .local v10, "serverId":Ljava/lang/String;
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 287
    invoke-interface {v3, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .end local v10    # "serverId":Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 292
    .end local v0    # "asset":Lcom/android/vending/model/Asset;
    .end local v1    # "assetId":Ljava/lang/String;
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 293
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 294
    .restart local v1    # "assetId":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 297
    .restart local v0    # "asset":Lcom/android/vending/model/Asset;
    if-eqz v0, :cond_4

    .line 298
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private initializeFromCache(Lcom/android/vending/model/AssetRequest;Lcom/android/vending/api/AssetService$CachedAssetList;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .param p1, "assetRequest"    # Lcom/android/vending/model/AssetRequest;
    .param p2, "cachedAssetList"    # Lcom/android/vending/api/AssetService$CachedAssetList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/vending/model/AssetRequest;",
            "Lcom/android/vending/api/AssetService$CachedAssetList;",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 568
    .local p3, "cachedAssets":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    .local p4, "cachedCorrectedAssets":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    iget-object v2, p0, Lcom/android/vending/api/AssetService;->mHandledAssetRequests:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 580
    :goto_0
    return-void

    .line 571
    :cond_0
    iget-wide v2, p2, Lcom/android/vending/api/AssetService$CachedAssetList;->mNumTotalAssets:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/android/vending/api/AssetService;->mCachedTotalResults:Ljava/lang/Long;

    .line 572
    invoke-direct {p0, p1, p3}, Lcom/android/vending/api/AssetService;->expandAssetList(Lcom/android/vending/model/AssetRequest;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 573
    .local v0, "assets":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    invoke-direct {p0, p1, p4}, Lcom/android/vending/api/AssetService;->expandAssetList(Lcom/android/vending/model/AssetRequest;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 574
    .local v1, "correctedAssets":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    iget-object v2, p0, Lcom/android/vending/api/AssetService;->mAssetsReceiver:Lcom/android/vending/api/AssetService$GetAssetsReceiver;

    invoke-interface {v2, v0, v1}, Lcom/android/vending/api/AssetService$GetAssetsReceiver;->onGetAssetsResponse(Ljava/util/List;Ljava/util/List;)V

    .line 575
    iget-object v2, p0, Lcom/android/vending/api/AssetService;->mHandledAssetRequests:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    iget-object v2, p2, Lcom/android/vending/api/AssetService$CachedAssetList;->mCorrectedQuery:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/vending/api/AssetService;->mCachedCorrectedQuery:Ljava/lang/String;

    .line 577
    iget-wide v2, p2, Lcom/android/vending/api/AssetService$CachedAssetList;->mNumTotalCorrectedAssets:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/android/vending/api/AssetService;->mCachedTotalCorrectedResults:Ljava/lang/Long;

    .line 578
    iget-object v2, p2, Lcom/android/vending/api/AssetService$CachedAssetList;->mHeader:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/vending/api/AssetService;->mCachedHeader:Ljava/lang/String;

    .line 579
    iget-object v2, p2, Lcom/android/vending/api/AssetService$CachedAssetList;->mListType:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/android/vending/api/AssetService;->mCachedListType:Ljava/lang/Integer;

    goto :goto_0
.end method

.method private loadCachedAssets(Lcom/android/vending/api/AssetService$CachedAssetList;Ljava/util/List;Ljava/util/List;Z)Z
    .locals 8
    .param p1, "cachedAssetList"    # Lcom/android/vending/api/AssetService$CachedAssetList;
    .param p4, "isHighPriority"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/vending/api/AssetService$CachedAssetList;",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .local p2, "cachedAssets":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    .local p3, "cachedCorrectedAssets":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    const/4 v7, 0x0

    .line 591
    iget-object v0, p1, Lcom/android/vending/api/AssetService$CachedAssetList;->mAssetList:Ljava/util/List;

    .line 592
    .local v0, "assetList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "i":I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_1

    .line 593
    new-instance v4, Lcom/android/vending/api/AssetService$SingleAssetKey;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5, p4}, Lcom/android/vending/api/AssetService$SingleAssetKey;-><init>(Ljava/lang/String;Z)V

    .line 594
    .local v4, "key":Lcom/android/vending/api/AssetService$SingleAssetKey;
    iget-object v5, p0, Lcom/android/vending/api/AssetService;->mCacheManager:Lcom/android/vending/cache/CacheManager;

    invoke-interface {v5, v4, v7}, Lcom/android/vending/cache/CacheManager;->get(Lcom/android/vending/cache/Cacheable;Z)Lcom/android/vending/cache/CacheManager$CacheResult;

    move-result-object v1

    .line 595
    .local v1, "cacheResult":Lcom/android/vending/cache/CacheManager$CacheResult;
    if-nez v1, :cond_0

    move v5, v7

    .line 612
    .end local v1    # "cacheResult":Lcom/android/vending/cache/CacheManager$CacheResult;
    .end local v4    # "key":Lcom/android/vending/api/AssetService$SingleAssetKey;
    :goto_1
    return v5

    .line 598
    .restart local v1    # "cacheResult":Lcom/android/vending/cache/CacheManager$CacheResult;
    .restart local v4    # "key":Lcom/android/vending/api/AssetService$SingleAssetKey;
    :cond_0
    new-instance v5, Lcom/android/vending/model/Asset;

    iget-object v6, v1, Lcom/android/vending/cache/CacheManager$CacheResult;->protoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-direct {v5, v6}, Lcom/android/vending/model/Asset;-><init>(Lcom/google/common/io/protocol/ProtoBuf;)V

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 602
    .end local v1    # "cacheResult":Lcom/android/vending/cache/CacheManager$CacheResult;
    .end local v4    # "key":Lcom/android/vending/api/AssetService$SingleAssetKey;
    :cond_1
    iget-object v2, p1, Lcom/android/vending/api/AssetService$CachedAssetList;->mCorrectedAssetList:Ljava/util/List;

    .line 603
    .local v2, "correctedAssetList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    :goto_2
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_3

    .line 604
    new-instance v4, Lcom/android/vending/api/AssetService$SingleAssetKey;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/android/vending/api/AssetService$SingleAssetKey;-><init>(Ljava/lang/String;)V

    .line 605
    .restart local v4    # "key":Lcom/android/vending/api/AssetService$SingleAssetKey;
    iget-object v5, p0, Lcom/android/vending/api/AssetService;->mCacheManager:Lcom/android/vending/cache/CacheManager;

    invoke-interface {v5, v4, v7}, Lcom/android/vending/cache/CacheManager;->get(Lcom/android/vending/cache/Cacheable;Z)Lcom/android/vending/cache/CacheManager$CacheResult;

    move-result-object v1

    .line 606
    .restart local v1    # "cacheResult":Lcom/android/vending/cache/CacheManager$CacheResult;
    if-nez v1, :cond_2

    move v5, v7

    .line 607
    goto :goto_1

    .line 609
    :cond_2
    new-instance v5, Lcom/android/vending/model/Asset;

    iget-object v6, v1, Lcom/android/vending/cache/CacheManager$CacheResult;->protoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-direct {v5, v6}, Lcom/android/vending/model/Asset;-><init>(Lcom/google/common/io/protocol/ProtoBuf;)V

    invoke-interface {p3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 612
    .end local v1    # "cacheResult":Lcom/android/vending/cache/CacheManager$CacheResult;
    .end local v4    # "key":Lcom/android/vending/api/AssetService$SingleAssetKey;
    :cond_3
    const/4 v5, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getCorrectedSearchQuery()Ljava/lang/String;
    .locals 5

    .prologue
    const-string v4, ""

    .line 320
    iget-object v0, p0, Lcom/android/vending/api/AssetService;->mCachedCorrectedQuery:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/vending/api/AssetService;->mCachedCorrectedQuery:Ljava/lang/String;

    .line 338
    .end local p0    # "this":Lcom/android/vending/api/AssetService;
    :goto_0
    return-object v0

    .line 330
    .restart local p0    # "this":Lcom/android/vending/api/AssetService;
    :cond_0
    iget-object v0, p0, Lcom/android/vending/api/AssetService;->mCachedTotalCorrectedResults:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/vending/api/AssetService;->mCachedTotalCorrectedResults:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 332
    const-string v0, ""

    move-object v0, v4

    goto :goto_0

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/android/vending/api/AssetService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    if-eqz v0, :cond_2

    .line 336
    iget-object p0, p0, Lcom/android/vending/api/AssetService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    .end local p0    # "this":Lcom/android/vending/api/AssetService;
    check-cast p0, Lcom/android/vending/model/AssetResponse;

    invoke-virtual {p0}, Lcom/android/vending/model/AssetResponse;->getCorrectedQuery()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 338
    .restart local p0    # "this":Lcom/android/vending/api/AssetService;
    :cond_2
    const-string v0, ""

    move-object v0, v4

    goto :goto_0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/vending/api/AssetService;->mCachedHeader:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/vending/api/AssetService;->mCachedHeader:Ljava/lang/String;

    .line 364
    .end local p0    # "this":Lcom/android/vending/api/AssetService;
    :goto_0
    return-object v0

    .line 361
    .restart local p0    # "this":Lcom/android/vending/api/AssetService;
    :cond_0
    iget-object v0, p0, Lcom/android/vending/api/AssetService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    if-eqz v0, :cond_1

    .line 362
    iget-object p0, p0, Lcom/android/vending/api/AssetService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    .end local p0    # "this":Lcom/android/vending/api/AssetService;
    check-cast p0, Lcom/android/vending/model/AssetResponse;

    invoke-virtual {p0}, Lcom/android/vending/model/AssetResponse;->getHeader()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 364
    .restart local p0    # "this":Lcom/android/vending/api/AssetService;
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getListType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/vending/api/AssetService;->mCachedListType:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/vending/api/AssetService;->mCachedListType:Ljava/lang/Integer;

    .line 375
    .end local p0    # "this":Lcom/android/vending/api/AssetService;
    :goto_0
    return-object v0

    .line 372
    .restart local p0    # "this":Lcom/android/vending/api/AssetService;
    :cond_0
    iget-object v0, p0, Lcom/android/vending/api/AssetService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    if-eqz v0, :cond_1

    .line 373
    iget-object p0, p0, Lcom/android/vending/api/AssetService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    .end local p0    # "this":Lcom/android/vending/api/AssetService;
    check-cast p0, Lcom/android/vending/model/AssetResponse;

    invoke-virtual {p0}, Lcom/android/vending/model/AssetResponse;->getListType()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 375
    .restart local p0    # "this":Lcom/android/vending/api/AssetService;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNumTotalAssets()J
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/vending/api/AssetService;->mCachedTotalResults:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/vending/api/AssetService;->mCachedTotalResults:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 316
    .end local p0    # "this":Lcom/android/vending/api/AssetService;
    :goto_0
    return-wide v0

    .line 312
    .restart local p0    # "this":Lcom/android/vending/api/AssetService;
    :cond_0
    iget-object v0, p0, Lcom/android/vending/api/AssetService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    if-eqz v0, :cond_1

    .line 313
    iget-object p0, p0, Lcom/android/vending/api/AssetService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    .end local p0    # "this":Lcom/android/vending/api/AssetService;
    check-cast p0, Lcom/android/vending/model/AssetResponse;

    invoke-virtual {p0}, Lcom/android/vending/model/AssetResponse;->getNumTotalAssets()J

    move-result-wide v0

    goto :goto_0

    .line 316
    .restart local p0    # "this":Lcom/android/vending/api/AssetService;
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getNumTotalCorrectedAssets()J
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/vending/api/AssetService;->mCachedTotalCorrectedResults:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/android/vending/api/AssetService;->mCachedTotalCorrectedResults:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 353
    .end local p0    # "this":Lcom/android/vending/api/AssetService;
    :goto_0
    return-wide v0

    .line 349
    .restart local p0    # "this":Lcom/android/vending/api/AssetService;
    :cond_0
    iget-object v0, p0, Lcom/android/vending/api/AssetService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    if-eqz v0, :cond_1

    .line 350
    iget-object p0, p0, Lcom/android/vending/api/AssetService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    .end local p0    # "this":Lcom/android/vending/api/AssetService;
    check-cast p0, Lcom/android/vending/model/AssetResponse;

    invoke-virtual {p0}, Lcom/android/vending/model/AssetResponse;->getNumTotalCorrectedAssets()J

    move-result-wide v0

    goto :goto_0

    .line 353
    .restart local p0    # "this":Lcom/android/vending/api/AssetService;
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public invalidate(Lcom/android/vending/model/Asset;)V
    .locals 3
    .param p1, "asset"    # Lcom/android/vending/model/Asset;

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/vending/api/AssetService;->mCacheManager:Lcom/android/vending/cache/CacheManager;

    new-instance v1, Lcom/android/vending/api/AssetService$SingleAssetKey;

    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/vending/api/AssetService$SingleAssetKey;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/vending/cache/CacheManager;->delete(Lcom/android/vending/cache/Cacheable;)V

    .line 388
    return-void
.end method

.method public invalidate(Lcom/android/vending/model/LocalAsset;)V
    .locals 3
    .param p1, "asset"    # Lcom/android/vending/model/LocalAsset;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/vending/api/AssetService;->mCacheManager:Lcom/android/vending/cache/CacheManager;

    new-instance v1, Lcom/android/vending/api/AssetService$SingleAssetKey;

    invoke-virtual {p1}, Lcom/android/vending/model/LocalAsset;->getAssetId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/vending/api/AssetService$SingleAssetKey;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/vending/cache/CacheManager;->delete(Lcom/android/vending/cache/Cacheable;)V

    .line 392
    return-void
.end method

.method public invalidateById(Ljava/lang/String;)V
    .locals 3
    .param p1, "assetId"    # Ljava/lang/String;

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/vending/api/AssetService;->mCacheManager:Lcom/android/vending/cache/CacheManager;

    new-instance v1, Lcom/android/vending/api/AssetService$SingleAssetKey;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/android/vending/api/AssetService$SingleAssetKey;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Lcom/android/vending/cache/CacheManager;->delete(Lcom/android/vending/cache/Cacheable;)V

    .line 399
    iget-object v0, p0, Lcom/android/vending/api/AssetService;->mCacheManager:Lcom/android/vending/cache/CacheManager;

    new-instance v1, Lcom/android/vending/api/AssetService$SingleAssetKey;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/vending/api/AssetService$SingleAssetKey;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Lcom/android/vending/cache/CacheManager;->delete(Lcom/android/vending/cache/Cacheable;)V

    .line 400
    return-void
.end method

.method public invalidateMyDownloads()V
    .locals 3

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/android/vending/api/AssetService;->createMyDownloadsRequest()Lcom/android/vending/model/AssetRequest;

    move-result-object v0

    .line 408
    .local v0, "myDownloadsRequest":Lcom/android/vending/model/AssetRequest;
    iget-object v1, p0, Lcom/android/vending/api/AssetService;->mCacheManager:Lcom/android/vending/cache/CacheManager;

    new-instance v2, Lcom/android/vending/api/AssetService$AssetRequestKey;

    invoke-direct {v2, v0}, Lcom/android/vending/api/AssetService$AssetRequestKey;-><init>(Lcom/android/vending/model/AssetRequest;)V

    invoke-interface {v1, v2}, Lcom/android/vending/cache/CacheManager;->invalidate(Lcom/android/vending/cache/Cacheable;)Z

    .line 409
    return-void
.end method

.method public onResponse(Lcom/android/vending/api/RequestManager$BatchRequest;Z)V
    .locals 13
    .param p1, "request"    # Lcom/android/vending/api/RequestManager$BatchRequest;
    .param p2, "isCached"    # Z

    .prologue
    .line 177
    invoke-super {p0, p1, p2}, Lcom/android/vending/api/BaseService;->onResponse(Lcom/android/vending/api/RequestManager$BatchRequest;Z)V

    .line 178
    const/4 v1, 0x0

    .line 179
    .local v1, "assetListToCache":Lcom/android/vending/api/AssetService$CachedAssetList;
    const/4 v5, 0x0

    .line 180
    .local v5, "assetsToCache":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    invoke-virtual {p1}, Lcom/android/vending/api/RequestManager$BatchRequest;->getBaseRequest()Lcom/android/vending/model/BaseRequest;

    move-result-object v2

    check-cast v2, Lcom/android/vending/model/AssetRequest;

    .line 181
    .local v2, "assetRequest":Lcom/android/vending/model/AssetRequest;
    iget-object v3, p0, Lcom/android/vending/api/AssetService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    check-cast v3, Lcom/android/vending/model/AssetResponse;

    .line 184
    .local v3, "assetResponse":Lcom/android/vending/model/AssetResponse;
    invoke-virtual {v3}, Lcom/android/vending/model/AssetResponse;->getResponseProperties()Lcom/android/vending/model/ResponseProperties;

    move-result-object v9

    .line 185
    .local v9, "responseProperties":Lcom/android/vending/model/ResponseProperties;
    invoke-virtual {v9}, Lcom/android/vending/model/ResponseProperties;->getResult()Lcom/android/vending/model/ResponseProperties$ResultType;

    move-result-object v10

    sget-object v11, Lcom/android/vending/model/ResponseProperties$ResultType;->NOT_MODIFIED:Lcom/android/vending/model/ResponseProperties$ResultType;

    if-ne v10, v11, :cond_1

    .line 186
    iget-object v10, p0, Lcom/android/vending/api/AssetService;->mPossiblyExpiredAssetList:Lcom/android/vending/api/AssetService$CachedAssetList;

    iget-object v11, p0, Lcom/android/vending/api/AssetService;->mPossiblyExpiredAssets:Ljava/util/List;

    iget-object v12, p0, Lcom/android/vending/api/AssetService;->mPossiblyExpiredCorrectedAssets:Ljava/util/List;

    invoke-direct {p0, v2, v10, v11, v12}, Lcom/android/vending/api/AssetService;->initializeFromCache(Lcom/android/vending/model/AssetRequest;Lcom/android/vending/api/AssetService$CachedAssetList;Ljava/util/List;Ljava/util/List;)V

    .line 188
    iget-object v1, p0, Lcom/android/vending/api/AssetService;->mPossiblyExpiredAssetList:Lcom/android/vending/api/AssetService$CachedAssetList;

    .line 203
    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 204
    new-instance v1, Lcom/android/vending/api/AssetService$CachedAssetList;

    .end local v1    # "assetListToCache":Lcom/android/vending/api/AssetService$CachedAssetList;
    const/4 v10, 0x0

    invoke-direct {v1, v10}, Lcom/android/vending/api/AssetService$CachedAssetList;-><init>(Lcom/android/vending/api/AssetService$1;)V

    .line 205
    .restart local v1    # "assetListToCache":Lcom/android/vending/api/AssetService$CachedAssetList;
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "assetsToCache":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .restart local v5    # "assetsToCache":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    invoke-virtual {v3}, Lcom/android/vending/model/AssetResponse;->getNumAssets()I

    move-result v8

    .local v8, "i":I
    :goto_1
    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_3

    .line 207
    invoke-virtual {v3, v8}, Lcom/android/vending/model/AssetResponse;->getAsset(I)Lcom/android/vending/model/Asset;

    move-result-object v0

    .line 208
    .local v0, "asset":Lcom/android/vending/model/Asset;
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v10, v1, Lcom/android/vending/api/AssetService$CachedAssetList;->mAssetList:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 190
    .end local v0    # "asset":Lcom/android/vending/model/Asset;
    .end local v8    # "i":I
    :cond_1
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/vending/api/AssetService;->mCachedTotalResults:Ljava/lang/Long;

    .line 191
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/vending/api/AssetService;->mCachedCorrectedQuery:Ljava/lang/String;

    .line 192
    iget-boolean v10, p0, Lcom/android/vending/api/AssetService;->mAllowMultipleResponses:Z

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/android/vending/api/AssetService;->mHandledAssetRequests:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 193
    :cond_2
    invoke-virtual {v3}, Lcom/android/vending/model/AssetResponse;->getAssets()Ljava/util/List;

    move-result-object v10

    invoke-direct {p0, v2, v10}, Lcom/android/vending/api/AssetService;->expandAssetList(Lcom/android/vending/model/AssetRequest;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 194
    .local v4, "assets":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    invoke-virtual {v3}, Lcom/android/vending/model/AssetResponse;->getCorrectedAssets()Ljava/util/List;

    move-result-object v10

    invoke-direct {p0, v2, v10}, Lcom/android/vending/api/AssetService;->expandAssetList(Lcom/android/vending/model/AssetRequest;Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 197
    .local v7, "correctedAssets":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    iget-object v10, p0, Lcom/android/vending/api/AssetService;->mAssetsReceiver:Lcom/android/vending/api/AssetService$GetAssetsReceiver;

    invoke-interface {v10, v4, v7}, Lcom/android/vending/api/AssetService$GetAssetsReceiver;->onGetAssetsResponse(Ljava/util/List;Ljava/util/List;)V

    .line 198
    iget-object v10, p0, Lcom/android/vending/api/AssetService;->mHandledAssetRequests:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 211
    .end local v4    # "assets":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    .end local v7    # "correctedAssets":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    .restart local v8    # "i":I
    :cond_3
    invoke-virtual {v3}, Lcom/android/vending/model/AssetResponse;->getNumTotalAssets()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/android/vending/api/AssetService$CachedAssetList;->mNumTotalAssets:J

    .line 214
    invoke-virtual {v3}, Lcom/android/vending/model/AssetResponse;->getCorrectedQuery()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/android/vending/api/AssetService$CachedAssetList;->mCorrectedQuery:Ljava/lang/String;

    .line 215
    invoke-virtual {v3}, Lcom/android/vending/model/AssetResponse;->getNumCorrectedAssets()I

    move-result v8

    :goto_2
    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_4

    .line 216
    invoke-virtual {v3, v8}, Lcom/android/vending/model/AssetResponse;->getCorrectedAsset(I)Lcom/android/vending/model/Asset;

    move-result-object v6

    .line 217
    .local v6, "correctedAsset":Lcom/android/vending/model/Asset;
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v10, v1, Lcom/android/vending/api/AssetService$CachedAssetList;->mCorrectedAssetList:Ljava/util/List;

    invoke-virtual {v6}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 220
    .end local v6    # "correctedAsset":Lcom/android/vending/model/Asset;
    :cond_4
    invoke-virtual {v3}, Lcom/android/vending/model/AssetResponse;->getNumTotalCorrectedAssets()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/android/vending/api/AssetService$CachedAssetList;->mNumTotalCorrectedAssets:J

    .line 223
    invoke-virtual {v3}, Lcom/android/vending/model/AssetResponse;->getHeader()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/android/vending/api/AssetService$CachedAssetList;->mHeader:Ljava/lang/String;

    .line 225
    .end local v8    # "i":I
    :cond_5
    iget-object v10, p0, Lcom/android/vending/api/AssetService;->mCacheManager:Lcom/android/vending/cache/CacheManager;

    invoke-static {v10, v2, v9, v1, v5}, Lcom/android/vending/api/AssetService;->cacheResponse(Lcom/android/vending/cache/CacheManager;Lcom/android/vending/model/AssetRequest;Lcom/android/vending/model/ResponseProperties;Lcom/android/vending/api/AssetService$CachedAssetList;Ljava/util/List;)V

    .line 227
    return-void
.end method

.method public queueGetAssets(Lcom/android/vending/model/AssetRequest;Lcom/android/vending/api/AssetService$GetAssetsReceiver;)V
    .locals 3
    .param p1, "assetRequest"    # Lcom/android/vending/model/AssetRequest;
    .param p2, "assetsReceiver"    # Lcom/android/vending/api/AssetService$GetAssetsReceiver;

    .prologue
    .line 136
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/vending/model/AssetRequest;->setRetrieveExtendedInfo(Z)V

    .line 139
    iput-object p2, p0, Lcom/android/vending/api/AssetService;->mAssetsReceiver:Lcom/android/vending/api/AssetService$GetAssetsReceiver;

    .line 140
    invoke-direct {p0, p1}, Lcom/android/vending/api/AssetService;->checkCache(Lcom/android/vending/model/AssetRequest;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    :goto_0
    return-void

    .line 144
    :cond_0
    new-instance v0, Lcom/android/vending/model/AssetResponse;

    invoke-direct {v0}, Lcom/android/vending/model/AssetResponse;-><init>()V

    .line 145
    .local v0, "applicationsResponse":Lcom/android/vending/model/AssetResponse;
    iget-object v2, p0, Lcom/android/vending/api/AssetService;->mHandledAssetRequests:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 146
    .local v1, "canPostponeRefresh":Z
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/vending/api/AssetService;->addRequest(Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;Z)Lcom/android/vending/api/RequestManager$BatchRequest;

    goto :goto_0
.end method

.method public queueGetMyDownloads(Lcom/android/vending/api/AssetService$GetAssetsReceiver;[Ljava/lang/String;)V
    .locals 2
    .param p1, "assetsReceiver"    # Lcom/android/vending/api/AssetService$GetAssetsReceiver;
    .param p2, "pendingDownloads"    # [Ljava/lang/String;

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/vending/api/AssetService;->createMyDownloadsRequest()Lcom/android/vending/model/AssetRequest;

    move-result-object v0

    .line 156
    .local v0, "assetRequest":Lcom/android/vending/model/AssetRequest;
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    .line 157
    invoke-virtual {v0, p2}, Lcom/android/vending/model/AssetRequest;->setPendingDownloadAssetIds([Ljava/lang/String;)V

    .line 159
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/android/vending/api/AssetService;->queueGetAssets(Lcom/android/vending/model/AssetRequest;Lcom/android/vending/api/AssetService$GetAssetsReceiver;)V

    .line 160
    return-void
.end method

.method public setAllowMultipleResponses(Z)V
    .locals 0
    .param p1, "allow"    # Z

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/android/vending/api/AssetService;->mAllowMultipleResponses:Z

    .line 173
    return-void
.end method
