.class public Lcom/android/vending/api/GetAssetService;
.super Lcom/android/vending/api/BaseService;
.source "GetAssetService.java"


# direct methods
.method public constructor <init>(Lcom/android/vending/api/RequestManager;)V
    .locals 0
    .param p1, "requestMgr"    # Lcom/android/vending/api/RequestManager;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/android/vending/api/BaseService;-><init>(Lcom/android/vending/api/RequestManager;)V

    .line 20
    return-void
.end method


# virtual methods
.method public getGetAssetResponse()Lcom/android/vending/model/GetAssetResponse;
    .locals 0

    .prologue
    .line 28
    iget-object p0, p0, Lcom/android/vending/api/GetAssetService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    .end local p0    # "this":Lcom/android/vending/api/GetAssetService;
    check-cast p0, Lcom/android/vending/model/GetAssetResponse;

    return-object p0
.end method

.method public queueGetAssetRequest(Lcom/android/vending/model/GetAssetRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/android/vending/model/GetAssetRequest;

    .prologue
    .line 23
    new-instance v0, Lcom/android/vending/model/GetAssetResponse;

    invoke-direct {v0}, Lcom/android/vending/model/GetAssetResponse;-><init>()V

    .line 24
    .local v0, "response":Lcom/android/vending/model/GetAssetResponse;
    invoke-virtual {p0, p1, v0}, Lcom/android/vending/api/GetAssetService;->addRequestWithSecureToken(Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;)Lcom/android/vending/api/RequestManager$BatchRequest;

    .line 25
    return-void
.end method
