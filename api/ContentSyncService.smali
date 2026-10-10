.class public Lcom/android/vending/api/ContentSyncService;
.super Lcom/android/vending/api/BaseService;
.source "ContentSyncService.java"


# direct methods
.method public constructor <init>(Lcom/android/vending/api/RequestManager;)V
    .locals 0
    .param p1, "requestMgr"    # Lcom/android/vending/api/RequestManager;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/android/vending/api/BaseService;-><init>(Lcom/android/vending/api/RequestManager;)V

    .line 16
    return-void
.end method


# virtual methods
.method public getContentSyncResponse()Lcom/android/vending/model/ContentSyncResponse;
    .locals 0

    .prologue
    .line 24
    iget-object p0, p0, Lcom/android/vending/api/ContentSyncService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    .end local p0    # "this":Lcom/android/vending/api/ContentSyncService;
    check-cast p0, Lcom/android/vending/model/ContentSyncResponse;

    return-object p0
.end method

.method public queueContentSync(Lcom/android/vending/model/ContentSyncRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/android/vending/model/ContentSyncRequest;

    .prologue
    .line 19
    new-instance v0, Lcom/android/vending/model/ContentSyncResponse;

    invoke-direct {v0}, Lcom/android/vending/model/ContentSyncResponse;-><init>()V

    .line 20
    .local v0, "response":Lcom/android/vending/model/ContentSyncResponse;
    invoke-virtual {p0, p1, v0}, Lcom/android/vending/api/ContentSyncService;->addRequest(Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;)Lcom/android/vending/api/RequestManager$BatchRequest;

    .line 21
    return-void
.end method
