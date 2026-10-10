.class public Lcom/android/vending/api/RequestManager$BatchRequest;
.super Ljava/lang/Object;
.source "RequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/api/RequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BatchRequest"
.end annotation


# instance fields
.field private final mBaseRequest:Lcom/android/vending/model/BaseRequest;

.field private final mBaseResponse:Lcom/android/vending/model/BaseResponse;

.field private final mCanPostponeRefresh:Z

.field private final mEfeEncryptedFields:Ljava/lang/String;

.field private final mListener:Lcom/android/vending/api/RequestManager$ResponseListener;

.field private final mPostParameters:[Lorg/apache/http/NameValuePair;

.field private final mRequiresSsl:Z

.field private final mUsesSecureToken:Z


# direct methods
.method public constructor <init>(Lcom/android/vending/api/RequestManager$ResponseListener;Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;Z)V
    .locals 7
    .param p1, "listener"    # Lcom/android/vending/api/RequestManager$ResponseListener;
    .param p2, "baseRequest"    # Lcom/android/vending/model/BaseRequest;
    .param p3, "baseResponse"    # Lcom/android/vending/model/BaseResponse;
    .param p4, "canPostponeRefresh"    # Z

    .prologue
    const/4 v4, 0x0

    .line 322
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/vending/api/RequestManager$BatchRequest;-><init>(Lcom/android/vending/api/RequestManager$ResponseListener;Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;ZZZ)V

    .line 323
    return-void
.end method

.method public constructor <init>(Lcom/android/vending/api/RequestManager$ResponseListener;Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;ZZZ)V
    .locals 9
    .param p1, "listener"    # Lcom/android/vending/api/RequestManager$ResponseListener;
    .param p2, "baseRequest"    # Lcom/android/vending/model/BaseRequest;
    .param p3, "baseResponse"    # Lcom/android/vending/model/BaseResponse;
    .param p4, "requiresSsl"    # Z
    .param p5, "usesSecureToken"    # Z
    .param p6, "canPostponeRefresh"    # Z

    .prologue
    const/4 v6, 0x0

    .line 328
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v7, v6

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/vending/api/RequestManager$BatchRequest;-><init>(Lcom/android/vending/api/RequestManager$ResponseListener;Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;ZZ[Lorg/apache/http/NameValuePair;Ljava/lang/String;Z)V

    .line 330
    return-void
.end method

.method public constructor <init>(Lcom/android/vending/api/RequestManager$ResponseListener;Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;ZZ[Lorg/apache/http/NameValuePair;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "listener"    # Lcom/android/vending/api/RequestManager$ResponseListener;
    .param p2, "baseRequest"    # Lcom/android/vending/model/BaseRequest;
    .param p3, "baseResponse"    # Lcom/android/vending/model/BaseResponse;
    .param p4, "requiresSsl"    # Z
    .param p5, "usesSecureToken"    # Z
    .param p6, "postParameters"    # [Lorg/apache/http/NameValuePair;
    .param p7, "efeEncryptedFields"    # Ljava/lang/String;
    .param p8, "canPostponeRefresh"    # Z

    .prologue
    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    if-nez p2, :cond_0

    .line 351
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "baseRequest cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_0
    if-nez p3, :cond_1

    .line 354
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "baseResponse cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_1
    iput-object p1, p0, Lcom/android/vending/api/RequestManager$BatchRequest;->mListener:Lcom/android/vending/api/RequestManager$ResponseListener;

    .line 357
    iput-object p2, p0, Lcom/android/vending/api/RequestManager$BatchRequest;->mBaseRequest:Lcom/android/vending/model/BaseRequest;

    .line 358
    iput-object p3, p0, Lcom/android/vending/api/RequestManager$BatchRequest;->mBaseResponse:Lcom/android/vending/model/BaseResponse;

    .line 359
    if-nez p4, :cond_2

    if-nez p7, :cond_2

    invoke-virtual {p2}, Lcom/android/vending/model/BaseRequest;->requiresSsl()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/vending/api/RequestManager$BatchRequest;->mRequiresSsl:Z

    .line 361
    iput-boolean p5, p0, Lcom/android/vending/api/RequestManager$BatchRequest;->mUsesSecureToken:Z

    .line 362
    iput-object p6, p0, Lcom/android/vending/api/RequestManager$BatchRequest;->mPostParameters:[Lorg/apache/http/NameValuePair;

    .line 363
    iput-object p7, p0, Lcom/android/vending/api/RequestManager$BatchRequest;->mEfeEncryptedFields:Ljava/lang/String;

    .line 364
    iput-boolean p8, p0, Lcom/android/vending/api/RequestManager$BatchRequest;->mCanPostponeRefresh:Z

    .line 365
    return-void

    .line 359
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public altRequestSuggest()Z
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/vending/api/RequestManager$BatchRequest;->mBaseRequest:Lcom/android/vending/model/BaseRequest;

    invoke-virtual {v0}, Lcom/android/vending/model/BaseRequest;->getRequestType()Lcom/android/vending/model/BaseRequest$RequestType;

    move-result-object v0

    sget-object v1, Lcom/android/vending/model/BaseRequest$RequestType;->SUGGEST_REQUEST:Lcom/android/vending/model/BaseRequest$RequestType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBaseRequest()Lcom/android/vending/model/BaseRequest;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/vending/api/RequestManager$BatchRequest;->mBaseRequest:Lcom/android/vending/model/BaseRequest;

    return-object v0
.end method

.method public getBaseResponse()Lcom/android/vending/model/BaseResponse;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/vending/api/RequestManager$BatchRequest;->mBaseResponse:Lcom/android/vending/model/BaseResponse;

    return-object v0
.end method

.method public getEfeEncryptedFields()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/vending/api/RequestManager$BatchRequest;->mEfeEncryptedFields:Ljava/lang/String;

    return-object v0
.end method

.method public getListener()Lcom/android/vending/api/RequestManager$ResponseListener;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/vending/api/RequestManager$BatchRequest;->mListener:Lcom/android/vending/api/RequestManager$ResponseListener;

    return-object v0
.end method

.method public getPostParameters()[Lorg/apache/http/NameValuePair;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/vending/api/RequestManager$BatchRequest;->mPostParameters:[Lorg/apache/http/NameValuePair;

    return-object v0
.end method

.method public isBillingRequest()Z
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/vending/api/RequestManager$BatchRequest;->mBaseRequest:Lcom/android/vending/model/BaseRequest;

    invoke-virtual {v0}, Lcom/android/vending/model/BaseRequest;->getRequestType()Lcom/android/vending/model/BaseRequest$RequestType;

    move-result-object v0

    sget-object v1, Lcom/android/vending/model/BaseRequest$RequestType;->BILLING_REQUEST:Lcom/android/vending/model/BaseRequest$RequestType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCanPostponeRefresh()Z
    .locals 1

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/android/vending/api/RequestManager$BatchRequest;->mCanPostponeRefresh:Z

    return v0
.end method

.method public isLicensing()Z
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/vending/api/RequestManager$BatchRequest;->mBaseRequest:Lcom/android/vending/model/BaseRequest;

    invoke-virtual {v0}, Lcom/android/vending/model/BaseRequest;->getRequestType()Lcom/android/vending/model/BaseRequest$RequestType;

    move-result-object v0

    sget-object v1, Lcom/android/vending/model/BaseRequest$RequestType;->LICENSE_REQUEST:Lcom/android/vending/model/BaseRequest$RequestType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requiresEfe()Z
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/vending/api/RequestManager$BatchRequest;->mEfeEncryptedFields:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requiresSsl()Z
    .locals 1

    .prologue
    .line 384
    iget-boolean v0, p0, Lcom/android/vending/api/RequestManager$BatchRequest;->mRequiresSsl:Z

    return v0
.end method

.method public usesSecureToken()Z
    .locals 1

    .prologue
    .line 388
    iget-boolean v0, p0, Lcom/android/vending/api/RequestManager$BatchRequest;->mUsesSecureToken:Z

    return v0
.end method
