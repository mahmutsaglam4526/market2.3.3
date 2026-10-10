.class public Lcom/android/vending/api/GetMarketMetadataService;
.super Lcom/android/vending/api/BaseService;
.source "GetMarketMetadataService.java"


# direct methods
.method public constructor <init>(Lcom/android/vending/api/RequestManager;)V
    .locals 0
    .param p1, "requestManager"    # Lcom/android/vending/api/RequestManager;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/android/vending/api/BaseService;-><init>(Lcom/android/vending/api/RequestManager;)V

    .line 14
    return-void
.end method


# virtual methods
.method public getResponse()Lcom/android/vending/model/GetMarketMetadataResponse;
    .locals 0

    .prologue
    .line 22
    iget-object p0, p0, Lcom/android/vending/api/GetMarketMetadataService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    .end local p0    # "this":Lcom/android/vending/api/GetMarketMetadataService;
    check-cast p0, Lcom/android/vending/model/GetMarketMetadataResponse;

    return-object p0
.end method

.method public queueRequest(Lcom/android/vending/model/GetMarketMetadataRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/android/vending/model/GetMarketMetadataRequest;

    .prologue
    .line 17
    new-instance v0, Lcom/android/vending/model/GetMarketMetadataResponse;

    invoke-direct {v0}, Lcom/android/vending/model/GetMarketMetadataResponse;-><init>()V

    .line 18
    .local v0, "response":Lcom/android/vending/model/GetMarketMetadataResponse;
    invoke-virtual {p0, p1, v0}, Lcom/android/vending/api/GetMarketMetadataService;->addRequest(Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;)Lcom/android/vending/api/RequestManager$BatchRequest;

    .line 19
    return-void
.end method
