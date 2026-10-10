.class public Lcom/android/vending/model/BaseResponse;
.super Ljava/lang/Object;
.source "BaseResponse.java"


# instance fields
.field private mPrefetchedBundles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/PrefetchedBundle;",
            ">;"
        }
    .end annotation
.end field

.field protected final mProtoBufType:Lcom/google/common/io/protocol/ProtoBufType;

.field protected final mResponseGroupField:I

.field protected mResponseProperties:Lcom/android/vending/model/ResponseProperties;

.field protected mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>(Lcom/android/vending/model/BaseResponse;)V
    .locals 1
    .param p1, "baseResponse"    # Lcom/android/vending/model/BaseResponse;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iget-object v0, p1, Lcom/android/vending/model/BaseResponse;->mProtoBufType:Lcom/google/common/io/protocol/ProtoBufType;

    iput-object v0, p0, Lcom/android/vending/model/BaseResponse;->mProtoBufType:Lcom/google/common/io/protocol/ProtoBufType;

    .line 36
    iget v0, p1, Lcom/android/vending/model/BaseResponse;->mResponseGroupField:I

    iput v0, p0, Lcom/android/vending/model/BaseResponse;->mResponseGroupField:I

    .line 37
    return-void
.end method

.method protected constructor <init>(Lcom/google/common/io/protocol/ProtoBufType;I)V
    .locals 2
    .param p1, "protoBufType"    # Lcom/google/common/io/protocol/ProtoBufType;
    .param p2, "responseGroupField"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "protoBufType cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    iput-object p1, p0, Lcom/android/vending/model/BaseResponse;->mProtoBufType:Lcom/google/common/io/protocol/ProtoBufType;

    .line 50
    iput p2, p0, Lcom/android/vending/model/BaseResponse;->mResponseGroupField:I

    .line 51
    return-void
.end method


# virtual methods
.method public getPrefetchedBundles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/PrefetchedBundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/vending/model/BaseResponse;->mPrefetchedBundles:Ljava/util/List;

    return-object v0
.end method

.method public getResponseProperties()Lcom/android/vending/model/ResponseProperties;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/vending/model/BaseResponse;->mResponseProperties:Lcom/android/vending/model/ResponseProperties;

    return-object v0
.end method

.method public getResponseProto()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/vending/model/BaseResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public readFromResponseGroup(Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 2
    .param p1, "responseGroup"    # Lcom/google/common/io/protocol/ProtoBuf;

    .prologue
    .line 100
    iget v0, p0, Lcom/android/vending/model/BaseResponse;->mResponseGroupField:I

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/vending/model/BaseResponse;->setProtos(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 103
    return-void
.end method

.method public setProtos(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 6
    .param p1, "responseProto"    # Lcom/google/common/io/protocol/ProtoBuf;
    .param p2, "responseProperties"    # Lcom/google/common/io/protocol/ProtoBuf;
    .param p3, "responseGroup"    # Lcom/google/common/io/protocol/ProtoBuf;

    .prologue
    const/16 v5, 0x13

    .line 62
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/vending/model/BaseResponse;->mProtoBufType:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {p1}, Lcom/google/common/io/protocol/ProtoBuf;->getType()Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/io/protocol/ProtoBufType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 63
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setProtos: Wrong responseProto type. expected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/vending/model/BaseResponse;->mProtoBufType:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / actual: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/common/io/protocol/ProtoBuf;->getType()Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 66
    :cond_0
    sget-object v3, Lcom/android/vending/model/ApiDefsMessageTypes;->RESPONSE_PROPERTIES_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {p2}, Lcom/google/common/io/protocol/ProtoBuf;->getType()Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/io/protocol/ProtoBufType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 67
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Response properties proto has wrong ProtoBufType."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 69
    :cond_1
    iput-object p1, p0, Lcom/android/vending/model/BaseResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 70
    new-instance v3, Lcom/android/vending/model/ResponseProperties;

    invoke-direct {v3, p2}, Lcom/android/vending/model/ResponseProperties;-><init>(Lcom/google/common/io/protocol/ProtoBuf;)V

    iput-object v3, p0, Lcom/android/vending/model/BaseResponse;->mResponseProperties:Lcom/android/vending/model/ResponseProperties;

    .line 73
    iget-object v3, p0, Lcom/android/vending/model/BaseResponse;->mPrefetchedBundles:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 74
    iget-object v3, p0, Lcom/android/vending/model/BaseResponse;->mPrefetchedBundles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 76
    :cond_2
    invoke-virtual {p3, v5}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 77
    .local v1, "numPrefetched":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 78
    iget-object v3, p0, Lcom/android/vending/model/BaseResponse;->mPrefetchedBundles:Ljava/util/List;

    if-nez v3, :cond_3

    .line 79
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vending/model/BaseResponse;->mPrefetchedBundles:Ljava/util/List;

    .line 81
    :cond_3
    new-instance v2, Lcom/android/vending/model/PrefetchedBundle;

    invoke-virtual {p3, v5, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/vending/model/PrefetchedBundle;-><init>(Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 83
    .local v2, "prefetchedBundle":Lcom/android/vending/model/PrefetchedBundle;
    iget-object v3, p0, Lcom/android/vending/model/BaseResponse;->mPrefetchedBundles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    .end local v2    # "prefetchedBundle":Lcom/android/vending/model/PrefetchedBundle;
    :cond_4
    return-void
.end method
