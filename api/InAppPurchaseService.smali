.class public Lcom/android/vending/api/InAppPurchaseService;
.super Lcom/android/vending/api/BaseService;
.source "InAppPurchaseService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/api/InAppPurchaseService$Factory;
    }
.end annotation


# static fields
.field public static sFactoryInstance:Lcom/android/vending/api/InAppPurchaseService$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/android/vending/api/InAppPurchaseService$Factory;

    invoke-direct {v0}, Lcom/android/vending/api/InAppPurchaseService$Factory;-><init>()V

    sput-object v0, Lcom/android/vending/api/InAppPurchaseService;->sFactoryInstance:Lcom/android/vending/api/InAppPurchaseService$Factory;

    return-void
.end method

.method protected constructor <init>(Lcom/android/vending/api/RequestManager;)V
    .locals 0
    .param p1, "requestMgr"    # Lcom/android/vending/api/RequestManager;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/vending/api/BaseService;-><init>(Lcom/android/vending/api/RequestManager;)V

    .line 44
    return-void
.end method

.method public static get(Lcom/android/vending/api/RequestManager;)Lcom/android/vending/api/InAppPurchaseService;
    .locals 1
    .param p0, "requestManager"    # Lcom/android/vending/api/RequestManager;

    .prologue
    .line 31
    sget-object v0, Lcom/android/vending/api/InAppPurchaseService;->sFactoryInstance:Lcom/android/vending/api/InAppPurchaseService$Factory;

    invoke-virtual {v0, p0}, Lcom/android/vending/api/InAppPurchaseService$Factory;->get(Lcom/android/vending/api/RequestManager;)Lcom/android/vending/api/InAppPurchaseService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getInAppPurchaseInformationResponse()Lcom/android/vending/model/InAppPurchaseInformationResponse;
    .locals 0

    .prologue
    .line 68
    iget-object p0, p0, Lcom/android/vending/api/InAppPurchaseService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    .end local p0    # "this":Lcom/android/vending/api/InAppPurchaseService;
    check-cast p0, Lcom/android/vending/model/InAppPurchaseInformationResponse;

    return-object p0
.end method

.method public getInAppRestoreTransactionsResponse()Lcom/android/vending/model/InAppRestoreTransactionsResponse;
    .locals 0

    .prologue
    .line 98
    iget-object p0, p0, Lcom/android/vending/api/InAppPurchaseService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    .end local p0    # "this":Lcom/android/vending/api/InAppPurchaseService;
    check-cast p0, Lcom/android/vending/model/InAppRestoreTransactionsResponse;

    return-object p0
.end method

.method public getPurchaseProductResponse()Lcom/android/vending/model/PurchaseProductResponse;
    .locals 0

    .prologue
    .line 58
    iget-object p0, p0, Lcom/android/vending/api/InAppPurchaseService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    .end local p0    # "this":Lcom/android/vending/api/InAppPurchaseService;
    check-cast p0, Lcom/android/vending/model/PurchaseProductResponse;

    return-object p0
.end method

.method public onResponse(Lcom/android/vending/api/RequestManager$BatchRequest;Z)V
    .locals 0
    .param p1, "request"    # Lcom/android/vending/api/RequestManager$BatchRequest;
    .param p2, "isCached"    # Z

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Lcom/android/vending/api/BaseService;->onResponse(Lcom/android/vending/api/RequestManager$BatchRequest;Z)V

    .line 49
    return-void
.end method

.method public queueRequest(Lcom/android/vending/model/AckNotificationsRequest;)Lcom/android/vending/model/AckNotificationsResponse;
    .locals 1
    .param p1, "request"    # Lcom/android/vending/model/AckNotificationsRequest;

    .prologue
    .line 72
    new-instance v0, Lcom/android/vending/model/AckNotificationsResponse;

    invoke-direct {v0}, Lcom/android/vending/model/AckNotificationsResponse;-><init>()V

    .line 73
    .local v0, "response":Lcom/android/vending/model/AckNotificationsResponse;
    invoke-virtual {p0, p1, v0}, Lcom/android/vending/api/InAppPurchaseService;->addRequest(Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;)Lcom/android/vending/api/RequestManager$BatchRequest;

    .line 74
    return-object v0
.end method

.method public queueRequest(Lcom/android/vending/model/CheckForNotificationsRequest;)Lcom/android/vending/model/CheckForNotificationsResponse;
    .locals 1
    .param p1, "request"    # Lcom/android/vending/model/CheckForNotificationsRequest;

    .prologue
    .line 82
    new-instance v0, Lcom/android/vending/model/CheckForNotificationsResponse;

    invoke-direct {v0}, Lcom/android/vending/model/CheckForNotificationsResponse;-><init>()V

    .line 83
    .local v0, "response":Lcom/android/vending/model/CheckForNotificationsResponse;
    invoke-virtual {p0, p1, v0}, Lcom/android/vending/api/InAppPurchaseService;->addRequest(Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;)Lcom/android/vending/api/RequestManager$BatchRequest;

    .line 84
    return-object v0
.end method

.method public queueRequest(Lcom/android/vending/model/InAppPurchaseInformationRequest;)Lcom/android/vending/model/InAppPurchaseInformationResponse;
    .locals 1
    .param p1, "request"    # Lcom/android/vending/model/InAppPurchaseInformationRequest;

    .prologue
    .line 62
    new-instance v0, Lcom/android/vending/model/InAppPurchaseInformationResponse;

    invoke-direct {v0}, Lcom/android/vending/model/InAppPurchaseInformationResponse;-><init>()V

    .line 63
    .local v0, "response":Lcom/android/vending/model/InAppPurchaseInformationResponse;
    invoke-virtual {p0, p1, v0}, Lcom/android/vending/api/InAppPurchaseService;->addRequest(Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;)Lcom/android/vending/api/RequestManager$BatchRequest;

    .line 64
    return-object v0
.end method

.method public queueRequest(Lcom/android/vending/model/InAppRestoreTransactionsRequest;)Lcom/android/vending/model/InAppRestoreTransactionsResponse;
    .locals 1
    .param p1, "request"    # Lcom/android/vending/model/InAppRestoreTransactionsRequest;

    .prologue
    .line 92
    new-instance v0, Lcom/android/vending/model/InAppRestoreTransactionsResponse;

    invoke-direct {v0}, Lcom/android/vending/model/InAppRestoreTransactionsResponse;-><init>()V

    .line 93
    .local v0, "response":Lcom/android/vending/model/InAppRestoreTransactionsResponse;
    invoke-virtual {p0, p1, v0}, Lcom/android/vending/api/InAppPurchaseService;->addRequest(Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;)Lcom/android/vending/api/RequestManager$BatchRequest;

    .line 94
    return-object v0
.end method

.method public queueRequest(Lcom/android/vending/model/PurchaseProductRequest;)Lcom/android/vending/model/PurchaseProductResponse;
    .locals 1
    .param p1, "request"    # Lcom/android/vending/model/PurchaseProductRequest;

    .prologue
    .line 52
    new-instance v0, Lcom/android/vending/model/PurchaseProductResponse;

    invoke-direct {v0}, Lcom/android/vending/model/PurchaseProductResponse;-><init>()V

    .line 53
    .local v0, "response":Lcom/android/vending/model/PurchaseProductResponse;
    invoke-virtual {p0, p1, v0}, Lcom/android/vending/api/InAppPurchaseService;->addRequest(Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;)Lcom/android/vending/api/RequestManager$BatchRequest;

    .line 54
    return-object v0
.end method
