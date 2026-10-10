.class public abstract Lcom/android/vending/model/BaseRequest;
.super Ljava/lang/Object;
.source "BaseRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/model/BaseRequest$RequestType;
    }
.end annotation


# instance fields
.field protected final mRequestGroupField:I

.field protected mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

.field protected mRequestSpecificProperties:Lcom/android/vending/model/RequestSpecificProperties;


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .param p1, "requestGroupField"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/android/vending/model/BaseRequest;->mRequestGroupField:I

    .line 29
    return-void
.end method


# virtual methods
.method public createAndAddRequestGroup(Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 4
    .param p1, "wrapper"    # Lcom/google/common/io/protocol/ProtoBuf;

    .prologue
    const/4 v3, 0x2

    .line 59
    invoke-virtual {p1, v3}, Lcom/google/common/io/protocol/ProtoBuf;->createGroup(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 60
    .local v0, "requestGroup":Lcom/google/common/io/protocol/ProtoBuf;
    iget v1, p0, Lcom/android/vending/model/BaseRequest;->mRequestGroupField:I

    iget-object v2, p0, Lcom/android/vending/model/BaseRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 61
    iget-object v1, p0, Lcom/android/vending/model/BaseRequest;->mRequestSpecificProperties:Lcom/android/vending/model/RequestSpecificProperties;

    if-eqz v1, :cond_0

    .line 62
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/vending/model/BaseRequest;->mRequestSpecificProperties:Lcom/android/vending/model/RequestSpecificProperties;

    invoke-virtual {v2}, Lcom/android/vending/model/RequestSpecificProperties;->getProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 65
    :cond_0
    invoke-virtual {p1, v3, v0}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 66
    return-void
.end method

.method public getRequestProto()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/vending/model/BaseRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public getRequestSpecificProperties()Lcom/android/vending/model/RequestSpecificProperties;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/vending/model/BaseRequest;->mRequestSpecificProperties:Lcom/android/vending/model/RequestSpecificProperties;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/android/vending/model/RequestSpecificProperties;

    invoke-direct {v0}, Lcom/android/vending/model/RequestSpecificProperties;-><init>()V

    iput-object v0, p0, Lcom/android/vending/model/BaseRequest;->mRequestSpecificProperties:Lcom/android/vending/model/RequestSpecificProperties;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/BaseRequest;->mRequestSpecificProperties:Lcom/android/vending/model/RequestSpecificProperties;

    return-object v0
.end method

.method public getRequestType()Lcom/android/vending/model/BaseRequest$RequestType;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/vending/model/BaseRequest$RequestType;->API_REQUEST:Lcom/android/vending/model/BaseRequest$RequestType;

    return-object v0
.end method

.method public requiresSsl()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method
