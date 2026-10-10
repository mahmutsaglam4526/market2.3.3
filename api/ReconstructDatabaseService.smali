.class public Lcom/android/vending/api/ReconstructDatabaseService;
.super Lcom/android/vending/api/BaseService;
.source "ReconstructDatabaseService.java"


# direct methods
.method public constructor <init>(Lcom/android/vending/api/RequestManager;)V
    .locals 0
    .param p1, "requestManager"    # Lcom/android/vending/api/RequestManager;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/vending/api/BaseService;-><init>(Lcom/android/vending/api/RequestManager;)V

    .line 15
    return-void
.end method


# virtual methods
.method public getResponse()Lcom/android/vending/model/ReconstructDatabaseResponse;
    .locals 0

    .prologue
    .line 23
    iget-object p0, p0, Lcom/android/vending/api/ReconstructDatabaseService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    .end local p0    # "this":Lcom/android/vending/api/ReconstructDatabaseService;
    check-cast p0, Lcom/android/vending/model/ReconstructDatabaseResponse;

    return-object p0
.end method

.method public queueRequest(Lcom/android/vending/model/ReconstructDatabaseRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/android/vending/model/ReconstructDatabaseRequest;

    .prologue
    .line 18
    new-instance v0, Lcom/android/vending/model/ReconstructDatabaseResponse;

    invoke-direct {v0}, Lcom/android/vending/model/ReconstructDatabaseResponse;-><init>()V

    .line 19
    .local v0, "response":Lcom/android/vending/model/ReconstructDatabaseResponse;
    invoke-virtual {p0, p1, v0}, Lcom/android/vending/api/ReconstructDatabaseService;->addRequest(Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;)Lcom/android/vending/api/RequestManager$BatchRequest;

    .line 20
    return-void
.end method
