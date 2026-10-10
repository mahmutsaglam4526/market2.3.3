.class public Lcom/android/vending/model/AssetIdentifier;
.super Ljava/lang/Object;
.source "AssetIdentifier.java"


# instance fields
.field mProto:Lcom/google/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>(Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 0
    .param p1, "assetIdentifierProto"    # Lcom/google/common/io/protocol/ProtoBuf;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/vending/model/AssetIdentifier;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 19
    return-void
.end method


# virtual methods
.method public findMatchingLocalAsset()Lcom/android/vending/model/LocalAsset;
    .locals 4

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/android/vending/model/AssetIdentifier;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/vending/model/LocalAsset;->getById(Ljava/lang/String;)Lcom/android/vending/model/LocalAsset;

    move-result-object v0

    .line 35
    .local v0, "matching":Lcom/android/vending/model/LocalAsset;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 38
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/android/vending/model/LocalAssetCache;->get()Lcom/android/vending/model/AbstractLocalAssetCache;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vending/model/AssetIdentifier;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/vending/model/AbstractLocalAssetCache;->getByPackageName(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)Lcom/android/vending/model/LocalAsset;

    move-result-object v1

    goto :goto_0
.end method

.method public getAssetId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/vending/model/AssetIdentifier;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/vending/model/AssetIdentifier;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionCode()I
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/vending/model/AssetIdentifier;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    return v0
.end method
