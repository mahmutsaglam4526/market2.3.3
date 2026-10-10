.class Lcom/android/vending/api/AssetService$AssetRequestKey;
.super Ljava/lang/Object;
.source "AssetService.java"

# interfaces
.implements Lcom/android/vending/cache/Cacheable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/api/AssetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AssetRequestKey"
.end annotation


# instance fields
.field private mAssetRequest:Lcom/android/vending/model/AssetRequest;


# direct methods
.method public constructor <init>(Lcom/android/vending/model/AssetRequest;)V
    .locals 0
    .param p1, "assetRequest"    # Lcom/android/vending/model/AssetRequest;

    .prologue
    .line 623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 624
    iput-object p1, p0, Lcom/android/vending/api/AssetService$AssetRequestKey;->mAssetRequest:Lcom/android/vending/model/AssetRequest;

    .line 625
    return-void
.end method


# virtual methods
.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/vending/api/AssetService$AssetRequestKey;->mAssetRequest:Lcom/android/vending/model/AssetRequest;

    invoke-virtual {v0}, Lcom/android/vending/model/AssetRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isHighPriority()Z
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/vending/api/AssetService$AssetRequestKey;->mAssetRequest:Lcom/android/vending/model/AssetRequest;

    invoke-virtual {v0}, Lcom/android/vending/model/AssetRequest;->getRetrieveVendingHistory()Z

    move-result v0

    return v0
.end method

.method public storeInMemory()Z
    .locals 1

    .prologue
    .line 632
    const/4 v0, 0x1

    return v0
.end method
