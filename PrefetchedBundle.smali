.class public Lcom/android/vending/model/PrefetchedBundle;
.super Ljava/lang/Object;
.source "PrefetchedBundle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/model/PrefetchedBundle$RequestType;
    }
.end annotation


# instance fields
.field private mProtoBuf:Lcom/google/common/io/protocol/ProtoBuf;

.field private mRequest:Lcom/android/vending/model/BaseRequest;

.field private mRequestType:Lcom/android/vending/model/PrefetchedBundle$RequestType;

.field private mResponse:Lcom/android/vending/model/BaseResponse;

.field private mResponseGroup:Lcom/google/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>(Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 8
    .param p1, "prefetchedProto"    # Lcom/google/common/io/protocol/ProtoBuf;

    .prologue
    const/4 v7, 0x5

    const/4 v3, 0x2

    const/16 v6, 0x15

    const/16 v5, 0xd

    const/4 v4, 0x4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/vending/model/PrefetchedBundle;->mProtoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    .line 34
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 35
    .local v0, "request":Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {p1, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    iput-object v2, p0, Lcom/android/vending/model/PrefetchedBundle;->mResponseGroup:Lcom/google/common/io/protocol/ProtoBuf;

    .line 36
    iget-object v2, p0, Lcom/android/vending/model/PrefetchedBundle;->mResponseGroup:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 39
    .local v1, "responseProperties":Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v0, v4}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    sget-object v2, Lcom/android/vending/model/PrefetchedBundle$RequestType;->ASSET:Lcom/android/vending/model/PrefetchedBundle$RequestType;

    iput-object v2, p0, Lcom/android/vending/model/PrefetchedBundle;->mRequestType:Lcom/android/vending/model/PrefetchedBundle$RequestType;

    .line 41
    new-instance v2, Lcom/android/vending/model/AssetRequest;

    invoke-virtual {v0, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/vending/model/AssetRequest;-><init>(Lcom/google/common/io/protocol/ProtoBuf;)V

    iput-object v2, p0, Lcom/android/vending/model/PrefetchedBundle;->mRequest:Lcom/android/vending/model/BaseRequest;

    .line 42
    new-instance v2, Lcom/android/vending/model/AssetResponse;

    invoke-direct {v2}, Lcom/android/vending/model/AssetResponse;-><init>()V

    iput-object v2, p0, Lcom/android/vending/model/PrefetchedBundle;->mResponse:Lcom/android/vending/model/BaseResponse;

    .line 43
    iget-object v2, p0, Lcom/android/vending/model/PrefetchedBundle;->mResponse:Lcom/android/vending/model/BaseResponse;

    iget-object v3, p0, Lcom/android/vending/model/PrefetchedBundle;->mResponseGroup:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    iget-object v4, p0, Lcom/android/vending/model/PrefetchedBundle;->mResponseGroup:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/vending/model/BaseResponse;->setProtos(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 47
    sget-object v2, Lcom/android/vending/model/PrefetchedBundle$RequestType;->GET_IMAGE:Lcom/android/vending/model/PrefetchedBundle$RequestType;

    iput-object v2, p0, Lcom/android/vending/model/PrefetchedBundle;->mRequestType:Lcom/android/vending/model/PrefetchedBundle$RequestType;

    .line 48
    new-instance v2, Lcom/android/vending/model/GetImageRequest;

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/vending/model/GetImageRequest;-><init>(Lcom/google/common/io/protocol/ProtoBuf;)V

    iput-object v2, p0, Lcom/android/vending/model/PrefetchedBundle;->mRequest:Lcom/android/vending/model/BaseRequest;

    .line 50
    new-instance v2, Lcom/android/vending/model/GetImageResponse;

    invoke-direct {v2}, Lcom/android/vending/model/GetImageResponse;-><init>()V

    iput-object v2, p0, Lcom/android/vending/model/PrefetchedBundle;->mResponse:Lcom/android/vending/model/BaseResponse;

    .line 51
    iget-object v2, p0, Lcom/android/vending/model/PrefetchedBundle;->mResponse:Lcom/android/vending/model/BaseResponse;

    iget-object v3, p0, Lcom/android/vending/model/PrefetchedBundle;->mResponseGroup:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    iget-object v4, p0, Lcom/android/vending/model/PrefetchedBundle;->mResponseGroup:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/vending/model/BaseResponse;->setProtos(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/common/io/protocol/ProtoBuf;)V

    goto :goto_0

    .line 54
    :cond_2
    const/16 v2, 0x16

    invoke-virtual {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 55
    sget-object v2, Lcom/android/vending/model/PrefetchedBundle$RequestType;->GET_CARRIER_INFO:Lcom/android/vending/model/PrefetchedBundle$RequestType;

    iput-object v2, p0, Lcom/android/vending/model/PrefetchedBundle;->mRequestType:Lcom/android/vending/model/PrefetchedBundle$RequestType;

    .line 56
    new-instance v2, Lcom/android/vending/model/GetCarrierInfoRequest;

    const/16 v3, 0x16

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/vending/model/GetCarrierInfoRequest;-><init>(Lcom/google/common/io/protocol/ProtoBuf;)V

    iput-object v2, p0, Lcom/android/vending/model/PrefetchedBundle;->mRequest:Lcom/android/vending/model/BaseRequest;

    .line 58
    new-instance v2, Lcom/android/vending/model/GetCarrierInfoResponse;

    invoke-direct {v2}, Lcom/android/vending/model/GetCarrierInfoResponse;-><init>()V

    iput-object v2, p0, Lcom/android/vending/model/PrefetchedBundle;->mResponse:Lcom/android/vending/model/BaseResponse;

    .line 59
    iget-object v2, p0, Lcom/android/vending/model/PrefetchedBundle;->mResponse:Lcom/android/vending/model/BaseResponse;

    iget-object v3, p0, Lcom/android/vending/model/PrefetchedBundle;->mResponseGroup:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v3, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    iget-object v4, p0, Lcom/android/vending/model/PrefetchedBundle;->mResponseGroup:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/vending/model/BaseResponse;->setProtos(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/common/io/protocol/ProtoBuf;)V

    goto :goto_0

    .line 63
    :cond_3
    invoke-virtual {v0, v6}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 64
    sget-object v2, Lcom/android/vending/model/PrefetchedBundle$RequestType;->GET_CATEGORIES:Lcom/android/vending/model/PrefetchedBundle$RequestType;

    iput-object v2, p0, Lcom/android/vending/model/PrefetchedBundle;->mRequestType:Lcom/android/vending/model/PrefetchedBundle$RequestType;

    .line 65
    new-instance v2, Lcom/android/vending/model/GetCategoriesRequest;

    invoke-virtual {v0, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/vending/model/GetCategoriesRequest;-><init>(Lcom/google/common/io/protocol/ProtoBuf;)V

    iput-object v2, p0, Lcom/android/vending/model/PrefetchedBundle;->mRequest:Lcom/android/vending/model/BaseRequest;

    .line 67
    new-instance v2, Lcom/android/vending/model/GetCategoriesResponse;

    invoke-direct {v2}, Lcom/android/vending/model/GetCategoriesResponse;-><init>()V

    iput-object v2, p0, Lcom/android/vending/model/PrefetchedBundle;->mResponse:Lcom/android/vending/model/BaseResponse;

    .line 68
    iget-object v2, p0, Lcom/android/vending/model/PrefetchedBundle;->mResponse:Lcom/android/vending/model/BaseResponse;

    iget-object v3, p0, Lcom/android/vending/model/PrefetchedBundle;->mResponseGroup:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    iget-object v4, p0, Lcom/android/vending/model/PrefetchedBundle;->mResponseGroup:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/vending/model/BaseResponse;->setProtos(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/common/io/protocol/ProtoBuf;)V

    goto/16 :goto_0

    .line 72
    :cond_4
    invoke-virtual {v0, v7}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 73
    sget-object v2, Lcom/android/vending/model/PrefetchedBundle$RequestType;->COMMENTS:Lcom/android/vending/model/PrefetchedBundle$RequestType;

    iput-object v2, p0, Lcom/android/vending/model/PrefetchedBundle;->mRequestType:Lcom/android/vending/model/PrefetchedBundle$RequestType;

    .line 74
    new-instance v2, Lcom/android/vending/model/CommentsRequest;

    invoke-virtual {v0, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/vending/model/CommentsRequest;-><init>(Lcom/google/common/io/protocol/ProtoBuf;)V

    iput-object v2, p0, Lcom/android/vending/model/PrefetchedBundle;->mRequest:Lcom/android/vending/model/BaseRequest;

    .line 76
    new-instance v2, Lcom/android/vending/model/CommentsResponse;

    invoke-direct {v2}, Lcom/android/vending/model/CommentsResponse;-><init>()V

    iput-object v2, p0, Lcom/android/vending/model/PrefetchedBundle;->mResponse:Lcom/android/vending/model/BaseResponse;

    .line 77
    iget-object v2, p0, Lcom/android/vending/model/PrefetchedBundle;->mResponse:Lcom/android/vending/model/BaseResponse;

    iget-object v3, p0, Lcom/android/vending/model/PrefetchedBundle;->mResponseGroup:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    iget-object v4, p0, Lcom/android/vending/model/PrefetchedBundle;->mResponseGroup:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/vending/model/BaseResponse;->setProtos(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/common/io/protocol/ProtoBuf;)V

    goto/16 :goto_0

    .line 80
    :cond_5
    invoke-virtual {v0, v5}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 81
    sget-object v2, Lcom/android/vending/model/PrefetchedBundle$RequestType;->PURCHASE_METADATA:Lcom/android/vending/model/PrefetchedBundle$RequestType;

    iput-object v2, p0, Lcom/android/vending/model/PrefetchedBundle;->mRequestType:Lcom/android/vending/model/PrefetchedBundle$RequestType;

    .line 82
    new-instance v2, Lcom/android/vending/model/PurchaseMetadataRequest;

    invoke-virtual {v0, v5}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/vending/model/PurchaseMetadataRequest;-><init>(Lcom/google/common/io/protocol/ProtoBuf;)V

    iput-object v2, p0, Lcom/android/vending/model/PrefetchedBundle;->mRequest:Lcom/android/vending/model/BaseRequest;

    .line 84
    new-instance v2, Lcom/android/vending/model/PurchaseMetadataResponse;

    invoke-direct {v2}, Lcom/android/vending/model/PurchaseMetadataResponse;-><init>()V

    iput-object v2, p0, Lcom/android/vending/model/PrefetchedBundle;->mResponse:Lcom/android/vending/model/BaseResponse;

    .line 85
    iget-object v2, p0, Lcom/android/vending/model/PrefetchedBundle;->mResponse:Lcom/android/vending/model/BaseResponse;

    iget-object v3, p0, Lcom/android/vending/model/PrefetchedBundle;->mResponseGroup:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    iget-object v4, p0, Lcom/android/vending/model/PrefetchedBundle;->mResponseGroup:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/vending/model/BaseResponse;->setProtos(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/common/io/protocol/ProtoBuf;)V

    goto/16 :goto_0

    .line 89
    :cond_6
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    sget-object v2, Lcom/android/vending/model/PrefetchedBundle$RequestType;->SUB_CATEGORIES:Lcom/android/vending/model/PrefetchedBundle$RequestType;

    iput-object v2, p0, Lcom/android/vending/model/PrefetchedBundle;->mRequestType:Lcom/android/vending/model/PrefetchedBundle$RequestType;

    .line 91
    new-instance v2, Lcom/android/vending/model/GetSubCategoriesRequest;

    const/16 v3, 0xe

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/vending/model/GetSubCategoriesRequest;-><init>(Lcom/google/common/io/protocol/ProtoBuf;)V

    iput-object v2, p0, Lcom/android/vending/model/PrefetchedBundle;->mRequest:Lcom/android/vending/model/BaseRequest;

    .line 93
    new-instance v2, Lcom/android/vending/model/GetSubCategoriesResponse;

    invoke-direct {v2}, Lcom/android/vending/model/GetSubCategoriesResponse;-><init>()V

    iput-object v2, p0, Lcom/android/vending/model/PrefetchedBundle;->mResponse:Lcom/android/vending/model/BaseResponse;

    .line 94
    iget-object v2, p0, Lcom/android/vending/model/PrefetchedBundle;->mResponse:Lcom/android/vending/model/BaseResponse;

    iget-object v3, p0, Lcom/android/vending/model/PrefetchedBundle;->mResponseGroup:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v3, v5}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    iget-object v4, p0, Lcom/android/vending/model/PrefetchedBundle;->mResponseGroup:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/vending/model/BaseResponse;->setProtos(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/common/io/protocol/ProtoBuf;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getRequest()Lcom/android/vending/model/BaseRequest;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/vending/model/PrefetchedBundle;->mRequest:Lcom/android/vending/model/BaseRequest;

    return-object v0
.end method

.method public getRequestType()Lcom/android/vending/model/PrefetchedBundle$RequestType;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/vending/model/PrefetchedBundle;->mRequestType:Lcom/android/vending/model/PrefetchedBundle$RequestType;

    return-object v0
.end method

.method public getResponse()Lcom/android/vending/model/BaseResponse;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/vending/model/PrefetchedBundle;->mResponse:Lcom/android/vending/model/BaseResponse;

    return-object v0
.end method

.method public getResponseGroup()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/vending/model/PrefetchedBundle;->mResponseGroup:Lcom/google/common/io/protocol/ProtoBuf;

    return-object v0
.end method
