.class public Lcom/android/vending/model/RestoreApplicationsRequest;
.super Lcom/android/vending/model/BaseRequest;
.source "RestoreApplicationsRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    const/16 v0, 0x18

    invoke-direct {p0, v0}, Lcom/android/vending/model/BaseRequest;-><init>(I)V

    .line 17
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/android/vending/model/ApiDefsMessageTypes;->RESTORE_APPLICATIONS_REQUEST_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/android/vending/model/RestoreApplicationsRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 18
    return-void
.end method


# virtual methods
.method public setDeviceConfiguration(Lcom/android/vending/model/DeviceConfiguration;)Lcom/android/vending/model/RestoreApplicationsRequest;
    .locals 3
    .param p1, "configuration"    # Lcom/android/vending/model/DeviceConfiguration;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/vending/model/RestoreApplicationsRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-virtual {p1}, Lcom/android/vending/model/DeviceConfiguration;->getProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 33
    return-object p0
.end method

.method public setTOSVersion(Ljava/lang/String;)Lcom/android/vending/model/RestoreApplicationsRequest;
    .locals 2
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/vending/model/RestoreApplicationsRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 27
    return-object p0
.end method

.method public setTargetAndroidId(Ljava/lang/String;)Lcom/android/vending/model/RestoreApplicationsRequest;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/vending/model/RestoreApplicationsRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 22
    return-object p0
.end method
