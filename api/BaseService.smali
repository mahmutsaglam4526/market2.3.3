.class public abstract Lcom/android/vending/api/BaseService;
.super Ljava/lang/Object;
.source "BaseService.java"

# interfaces
.implements Lcom/android/vending/api/RequestManager$ResponseListener;


# instance fields
.field protected mLastResponse:Lcom/android/vending/model/BaseResponse;

.field protected final mRequestManager:Lcom/android/vending/api/RequestManager;


# direct methods
.method public constructor <init>(Lcom/android/vending/api/RequestManager;)V
    .locals 0
    .param p1, "requestMgr"    # Lcom/android/vending/api/RequestManager;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/vending/api/BaseService;->mRequestManager:Lcom/android/vending/api/RequestManager;

    .line 27
    return-void
.end method


# virtual methods
.method protected addRequest(Lcom/android/vending/api/RequestManager$BatchRequest;)Lcom/android/vending/api/RequestManager$BatchRequest;
    .locals 1
    .param p1, "batchRequest"    # Lcom/android/vending/api/RequestManager$BatchRequest;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/vending/api/BaseService;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-virtual {v0, p1}, Lcom/android/vending/api/RequestManager;->addRequest(Lcom/android/vending/api/RequestManager$BatchRequest;)V

    .line 83
    return-object p1
.end method

.method protected addRequest(Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;)Lcom/android/vending/api/RequestManager$BatchRequest;
    .locals 1
    .param p1, "request"    # Lcom/android/vending/model/BaseRequest;
    .param p2, "response"    # Lcom/android/vending/model/BaseResponse;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/vending/api/BaseService;->addRequest(Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;Z)Lcom/android/vending/api/RequestManager$BatchRequest;

    move-result-object v0

    return-object v0
.end method

.method protected addRequest(Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;Z)Lcom/android/vending/api/RequestManager$BatchRequest;
    .locals 1
    .param p1, "request"    # Lcom/android/vending/model/BaseRequest;
    .param p2, "response"    # Lcom/android/vending/model/BaseResponse;
    .param p3, "canPostponeRefresh"    # Z

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/vending/api/BaseService;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/vending/api/RequestManager;->addRequest(Lcom/android/vending/api/RequestManager$ResponseListener;Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;Z)Lcom/android/vending/api/RequestManager$BatchRequest;

    move-result-object v0

    return-object v0
.end method

.method protected addRequestWithSecureToken(Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;)Lcom/android/vending/api/RequestManager$BatchRequest;
    .locals 7
    .param p1, "request"    # Lcom/android/vending/model/BaseRequest;
    .param p2, "response"    # Lcom/android/vending/model/BaseResponse;

    .prologue
    const/4 v4, 0x1

    .line 93
    new-instance v0, Lcom/android/vending/api/RequestManager$BatchRequest;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/vending/api/RequestManager$BatchRequest;-><init>(Lcom/android/vending/api/RequestManager$ResponseListener;Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;ZZZ)V

    .line 95
    .local v0, "batchRequest":Lcom/android/vending/api/RequestManager$BatchRequest;
    iget-object v1, p0, Lcom/android/vending/api/BaseService;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-virtual {v1, v0}, Lcom/android/vending/api/RequestManager;->addRequest(Lcom/android/vending/api/RequestManager$BatchRequest;)V

    .line 96
    return-object v0
.end method

.method public clearResponse()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vending/api/BaseService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    .line 50
    return-void
.end method

.method public hasResponse()Z
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/vending/api/BaseService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResponse(Lcom/android/vending/api/RequestManager$BatchRequest;Z)V
    .locals 1
    .param p1, "request"    # Lcom/android/vending/api/RequestManager$BatchRequest;
    .param p2, "isCached"    # Z

    .prologue
    .line 34
    invoke-virtual {p1}, Lcom/android/vending/api/RequestManager$BatchRequest;->getBaseResponse()Lcom/android/vending/model/BaseResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/api/BaseService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    .line 35
    return-void
.end method
