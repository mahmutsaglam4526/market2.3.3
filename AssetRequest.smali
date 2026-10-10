.class public Lcom/android/vending/model/AssetRequest;
.super Lcom/android/vending/model/BaseRequest;
.source "AssetRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/model/AssetRequest$ViewFilterType;,
        Lcom/android/vending/model/AssetRequest$SortOrderType;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mAssetIdRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAssetIdRequestsToServer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/android/vending/model/AssetRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/vending/model/AssetRequest;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 85
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/vending/model/BaseRequest;-><init>(I)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vending/model/AssetRequest;->mAssetIdRequests:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vending/model/AssetRequest;->mAssetIdRequestsToServer:Ljava/util/List;

    .line 86
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/android/vending/model/ApiDefsMessageTypes;->ASSETS_REQUEST_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 87
    return-void
.end method

.method public constructor <init>(Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 6
    .param p1, "requestProto"    # Lcom/google/common/io/protocol/ProtoBuf;

    .prologue
    const/4 v5, 0x4

    .line 93
    invoke-direct {p0, v5}, Lcom/android/vending/model/BaseRequest;-><init>(I)V

    .line 20
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/vending/model/AssetRequest;->mAssetIdRequests:Ljava/util/List;

    .line 23
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/vending/model/AssetRequest;->mAssetIdRequestsToServer:Ljava/util/List;

    .line 94
    sget-boolean v3, Lcom/android/vending/model/AssetRequest;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/google/common/io/protocol/ProtoBuf;->getType()Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    sget-object v4, Lcom/android/vending/model/ApiDefsMessageTypes;->ASSETS_REQUEST_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    if-eq v3, v4, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 95
    :cond_0
    iput-object p1, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 98
    invoke-virtual {p1, v5}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 99
    .local v2, "numAssetIds":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 100
    invoke-virtual {p1, v5, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "assetId":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/vending/model/AssetRequest;->mAssetIdRequests:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v3, p0, Lcom/android/vending/model/AssetRequest;->mAssetIdRequestsToServer:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 103
    iget-object v3, p0, Lcom/android/vending/model/AssetRequest;->mAssetIdRequestsToServer:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    .end local v0    # "assetId":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public addAssetId(Ljava/lang/String;)V
    .locals 2
    .param p1, "assetId"    # Ljava/lang/String;

    .prologue
    .line 160
    if-nez p1, :cond_0

    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Asset id cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mAssetIdRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mAssetIdRequestsToServer:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mAssetIdRequestsToServer:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public getAssetId(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mAssetIdRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/android/vending/model/AssetRequest;
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getAssetIdRequests()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mAssetIdRequests:Ljava/util/List;

    return-object v0
.end method

.method public getAssetIdRequestsToServer()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mAssetIdRequestsToServer:Ljava/util/List;

    return-object v0
.end method

.method public getAssetType()Lcom/android/vending/model/Asset$AssetType;
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/vending/model/Asset$AssetType;->valueOf(I)Lcom/android/vending/model/Asset$AssetType;

    move-result-object v0

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x1

    const-string v6, "_"

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "AR"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    .local v0, "cacheKey":Ljava/lang/StringBuilder;
    const-string v4, "{"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->numAssetId()I

    move-result v2

    .line 319
    .local v2, "numAssetIds":I
    if-ne v2, v5, :cond_c

    .line 322
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/vending/model/AssetRequest;->getAssetId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    :cond_0
    const-string v4, "}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->hasAssetType()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 340
    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->getAssetType()Lcom/android/vending/model/Asset$AssetType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/vending/model/Asset$AssetType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    :cond_1
    const-string v4, "_"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->hasQuery()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 345
    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->getQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    :cond_2
    const-string v4, "_"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->hasCategoryId()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 350
    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->getCategoryId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    :cond_3
    const-string v4, "_"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->hasSortOrder()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 355
    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->getSortOrder()Lcom/android/vending/model/AssetRequest$SortOrderType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/vending/model/AssetRequest$SortOrderType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    :cond_4
    const-string v4, "_"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->hasViewFilter()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 360
    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->getViewFilter()Lcom/android/vending/model/AssetRequest$ViewFilterType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/vending/model/AssetRequest$ViewFilterType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    :cond_5
    const-string v4, "_"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->hasStartIndex()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 365
    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->getStartIndex()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 367
    :cond_6
    const-string v4, "_"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->hasNumEntries()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 370
    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->getNumEntries()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 372
    :cond_7
    const-string v4, "_"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->hasRetrieveExtendedInfo()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->getRetrieveExtendedInfo()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 375
    const-string v4, "rei"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    :cond_8
    const-string v4, "_"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->hasReconstructVendingHistory()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->getReconstructVendingHistory()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 381
    const-string v4, "rdb"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    :cond_9
    :goto_0
    const-string v4, "_"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->hasRetrieveCarrierChannel()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->getRetrieveCarrierChannel()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 388
    const-string v4, "rcc"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    :cond_a
    const-string v4, "_"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->hasRankingType()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 393
    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->getRankingType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    :cond_b
    const-string v4, "_"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 323
    :cond_c
    if-le v2, v5, :cond_0

    .line 328
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .local v3, "sortedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_d

    .line 330
    invoke-virtual {p0, v1}, Lcom/android/vending/model/AssetRequest;->getAssetId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 332
    :cond_d
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 333
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_0

    .line 334
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 382
    .end local v1    # "i":I
    .end local v3    # "sortedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_e
    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->hasRetrieveVendingHistory()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lcom/android/vending/model/AssetRequest;->getRetrieveVendingHistory()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 383
    const-string v4, "rvh"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getCategoryId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumEntries()J
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRankingType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReconstructVendingHistory()Z
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    return v0
.end method

.method public getRetrieveCarrierChannel()Z
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    return v0
.end method

.method public getRetrieveExtendedInfo()Z
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    return v0
.end method

.method public getRetrieveVendingHistory()Z
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    return v0
.end method

.method public getSortOrder()Lcom/android/vending/model/AssetRequest$SortOrderType;
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/vending/model/AssetRequest$SortOrderType;->valueOf(I)Lcom/android/vending/model/AssetRequest$SortOrderType;

    move-result-object v0

    return-object v0
.end method

.method public getStartIndex()J
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getViewFilter()Lcom/android/vending/model/AssetRequest$ViewFilterType;
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/vending/model/AssetRequest$ViewFilterType;->valueOf(I)Lcom/android/vending/model/AssetRequest$ViewFilterType;

    move-result-object v0

    return-object v0
.end method

.method public hasAssetType()Z
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public hasCategoryId()Z
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public hasNumEntries()Z
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public hasQuery()Z
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public hasRankingType()Z
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public hasReconstructVendingHistory()Z
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public hasRetrieveCarrierChannel()Z
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public hasRetrieveExtendedInfo()Z
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public hasRetrieveVendingHistory()Z
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public hasSortOrder()Z
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public hasStartIndex()Z
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public hasViewFilter()Z
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public numAssetId()I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mAssetIdRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public setAssetType(Lcom/android/vending/model/Asset$AssetType;)V
    .locals 3
    .param p1, "assetType"    # Lcom/android/vending/model/Asset$AssetType;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/android/vending/model/Asset$AssetType;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 231
    return-void
.end method

.method public setCategoryId(Ljava/lang/String;)V
    .locals 2
    .param p1, "categoryId"    # Ljava/lang/String;

    .prologue
    .line 128
    if-nez p1, :cond_0

    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Category ID cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 132
    return-void
.end method

.method public setNumEntries(J)V
    .locals 2
    .param p1, "numEntries"    # J

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 219
    return-void
.end method

.method public setPendingDownloadAssetIds([Ljava/lang/String;)V
    .locals 4
    .param p1, "pendingDownloadAssetIds"    # [Ljava/lang/String;

    .prologue
    .line 303
    if-eqz p1, :cond_0

    .line 304
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v2, 0xd

    aget-object v3, p1, v0

    invoke-virtual {v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 309
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 113
    if-nez p1, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Query cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 117
    return-void
.end method

.method public setRankingType(Ljava/lang/String;)V
    .locals 2
    .param p1, "rankingType"    # Ljava/lang/String;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 296
    return-void
.end method

.method public setRetrieveCarrierChannel(Z)V
    .locals 2
    .param p1, "retrieveCarrierChannel"    # Z

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 284
    return-void
.end method

.method public setRetrieveExtendedInfo(Z)V
    .locals 2
    .param p1, "retrieveExtended"    # Z

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 247
    return-void
.end method

.method public setRetrieveVendingHistory(Z)V
    .locals 2
    .param p1, "filterHistory"    # Z

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 259
    return-void
.end method

.method public setSortOrder(Lcom/android/vending/model/AssetRequest$SortOrderType;)V
    .locals 3
    .param p1, "sortOrder"    # Lcom/android/vending/model/AssetRequest$SortOrderType;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x7

    invoke-virtual {p1}, Lcom/android/vending/model/AssetRequest$SortOrderType;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 183
    return-void
.end method

.method public setStartIndex(J)V
    .locals 2
    .param p1, "startIndex"    # J

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 207
    return-void
.end method

.method public setViewFilter(Lcom/android/vending/model/AssetRequest$ViewFilterType;)V
    .locals 3
    .param p1, "viewFilter"    # Lcom/android/vending/model/AssetRequest$ViewFilterType;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/vending/model/AssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0xa

    invoke-virtual {p1}, Lcom/android/vending/model/AssetRequest$ViewFilterType;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 195
    return-void
.end method
