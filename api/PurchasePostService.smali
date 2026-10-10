.class public Lcom/android/vending/api/PurchasePostService;
.super Lcom/android/vending/api/BaseService;
.source "PurchasePostService.java"


# direct methods
.method public constructor <init>(Lcom/android/vending/api/RequestManager;)V
    .locals 0
    .param p1, "requestMgr"    # Lcom/android/vending/api/RequestManager;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/vending/api/BaseService;-><init>(Lcom/android/vending/api/RequestManager;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getPurchasePostResponse()Lcom/android/vending/model/PurchasePostResponse;
    .locals 0

    .prologue
    .line 60
    iget-object p0, p0, Lcom/android/vending/api/PurchasePostService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    .end local p0    # "this":Lcom/android/vending/api/PurchasePostService;
    check-cast p0, Lcom/android/vending/model/PurchasePostResponse;

    return-object p0
.end method

.method public purchasePost(Lcom/android/vending/model/PurchasePostRequest;)V
    .locals 15
    .param p1, "request"    # Lcom/android/vending/model/PurchasePostRequest;

    .prologue
    .line 36
    new-instance v3, Lcom/android/vending/model/PurchasePostResponse;

    invoke-direct {v3}, Lcom/android/vending/model/PurchasePostResponse;-><init>()V

    .line 39
    .local v3, "response":Lcom/android/vending/model/PurchasePostResponse;
    invoke-virtual/range {p1 .. p1}, Lcom/android/vending/model/PurchasePostRequest;->getCreditCard()Lcom/android/vending/model/CreditCard;

    move-result-object v14

    .line 40
    .local v14, "card":Lcom/android/vending/model/CreditCard;
    if-eqz v14, :cond_0

    .line 42
    const/4 v1, 0x2

    new-array v6, v1, [Lorg/apache/http/NameValuePair;

    .line 43
    .local v6, "params":[Lorg/apache/http/NameValuePair;
    const/4 v1, 0x0

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "ccn"

    invoke-virtual {v14}, Lcom/android/vending/model/CreditCard;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v6, v1

    .line 44
    const/4 v1, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "cvc"

    invoke-virtual {v14}, Lcom/android/vending/model/CreditCard;->getCVC()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v6, v1

    .line 47
    new-instance v0, Lcom/android/vending/api/RequestManager$BatchRequest;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v7, "ccn%3an%3bcvc%3an"

    const/4 v8, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/vending/api/RequestManager$BatchRequest;-><init>(Lcom/android/vending/api/RequestManager$ResponseListener;Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;ZZ[Lorg/apache/http/NameValuePair;Ljava/lang/String;Z)V

    .line 56
    .end local v6    # "params":[Lorg/apache/http/NameValuePair;
    .local v0, "batchRequest":Lcom/android/vending/api/RequestManager$BatchRequest;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/vending/api/PurchasePostService;->addRequest(Lcom/android/vending/api/RequestManager$BatchRequest;)Lcom/android/vending/api/RequestManager$BatchRequest;

    .line 57
    return-void

    .line 52
    .end local v0    # "batchRequest":Lcom/android/vending/api/RequestManager$BatchRequest;
    :cond_0
    new-instance v0, Lcom/android/vending/api/RequestManager$BatchRequest;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, v0

    move-object v8, p0

    move-object/from16 v9, p1

    move-object v10, v3

    invoke-direct/range {v7 .. v13}, Lcom/android/vending/api/RequestManager$BatchRequest;-><init>(Lcom/android/vending/api/RequestManager$ResponseListener;Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;ZZZ)V

    .restart local v0    # "batchRequest":Lcom/android/vending/api/RequestManager$BatchRequest;
    goto :goto_0
.end method
