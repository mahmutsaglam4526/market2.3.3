.class public Lcom/android/vending/model/GetSubCategoriesResponse;
.super Lcom/android/vending/model/BaseResponse;
.source "GetSubCategoriesResponse.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/android/vending/model/ApiDefsMessageTypes;->GET_SUB_CATEGORIES_RESPONSE_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0xd

    invoke-direct {p0, v0, v1}, Lcom/android/vending/model/BaseResponse;-><init>(Lcom/google/common/io/protocol/ProtoBufType;I)V

    .line 21
    return-void
.end method
