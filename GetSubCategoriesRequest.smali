.class public Lcom/android/vending/model/GetSubCategoriesRequest;
.super Lcom/android/vending/model/BaseRequest;
.source "GetSubCategoriesRequest.java"

# interfaces
.implements Lcom/android/vending/cache/Cacheable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/android/vending/model/BaseRequest;-><init>(I)V

    .line 20
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/android/vending/model/ApiDefsMessageTypes;->GET_SUB_CATEGORIES_REQUEST_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/android/vending/model/GetSubCategoriesRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 1
    .param p1, "requestProto"    # Lcom/google/common/io/protocol/ProtoBuf;

    .prologue
    .line 24
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/android/vending/model/BaseRequest;-><init>(I)V

    .line 25
    iput-object p1, p0, Lcom/android/vending/model/GetSubCategoriesRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 26
    return-void
.end method


# virtual methods
.method public getAssetType()Lcom/android/vending/model/Asset$AssetType;
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/vending/model/GetSubCategoriesRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/vending/model/Asset$AssetType;->valueOf(I)Lcom/android/vending/model/Asset$AssetType;

    move-result-object v0

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GSCR_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .local v0, "cacheKey":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/vending/model/GetSubCategoriesRequest;->getAssetType()Lcom/android/vending/model/Asset$AssetType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/vending/model/Asset$AssetType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isHighPriority()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public storeInMemory()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method
