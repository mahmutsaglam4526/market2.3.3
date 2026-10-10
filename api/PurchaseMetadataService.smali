.class public Lcom/android/vending/api/PurchaseMetadataService;
.super Lcom/android/vending/api/BaseService;
.source "PurchaseMetadataService.java"


# direct methods
.method public constructor <init>(Lcom/android/vending/api/RequestManager;)V
    .locals 0
    .param p1, "requestMgr"    # Lcom/android/vending/api/RequestManager;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/android/vending/api/BaseService;-><init>(Lcom/android/vending/api/RequestManager;)V

    .line 14
    return-void
.end method


# virtual methods
.method public getPurchaseMetadataResponse()Lcom/android/vending/model/PurchaseMetadataResponse;
    .locals 0

    .prologue
    .line 17
    iget-object p0, p0, Lcom/android/vending/api/PurchaseMetadataService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    .end local p0    # "this":Lcom/android/vending/api/PurchaseMetadataService;
    check-cast p0, Lcom/android/vending/model/PurchaseMetadataResponse;

    return-object p0
.end method

.method public queueGetPurchaseMetadata(Lcom/android/vending/model/PurchaseMetadataRequest;)V
    .locals 1
    .param p1, "purchaseMetadataRequest"    # Lcom/android/vending/model/PurchaseMetadataRequest;

    .prologue
    .line 21
    new-instance v0, Lcom/android/vending/model/PurchaseMetadataResponse;

    invoke-direct {v0}, Lcom/android/vending/model/PurchaseMetadataResponse;-><init>()V

    .line 22
    .local v0, "response":Lcom/android/vending/model/PurchaseMetadataResponse;
    invoke-virtual {p0, p1, v0}, Lcom/android/vending/api/PurchaseMetadataService;->addRequest(Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;)Lcom/android/vending/api/RequestManager$BatchRequest;

    .line 23
    return-void
.end method
