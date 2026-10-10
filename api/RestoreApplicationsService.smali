.class public Lcom/android/vending/api/RestoreApplicationsService;
.super Lcom/android/vending/api/BaseService;
.source "RestoreApplicationsService.java"


# direct methods
.method public constructor <init>(Lcom/android/vending/api/RequestManager;)V
    .locals 0
    .param p1, "requestMgr"    # Lcom/android/vending/api/RequestManager;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/vending/api/BaseService;-><init>(Lcom/android/vending/api/RequestManager;)V

    .line 19
    return-void
.end method


# virtual methods
.method public getResponse()Lcom/android/vending/model/RestoreApplicationsResponse;
    .locals 0

    .prologue
    .line 44
    iget-object p0, p0, Lcom/android/vending/api/RestoreApplicationsService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    .end local p0    # "this":Lcom/android/vending/api/RestoreApplicationsService;
    check-cast p0, Lcom/android/vending/model/RestoreApplicationsResponse;

    return-object p0
.end method

.method public queueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/model/DeviceConfiguration;)V
    .locals 2
    .param p1, "backupAndroidId"    # Ljava/lang/String;
    .param p2, "tosVersion"    # Ljava/lang/String;
    .param p3, "configuration"    # Lcom/android/vending/model/DeviceConfiguration;

    .prologue
    .line 33
    new-instance v1, Lcom/android/vending/model/RestoreApplicationsRequest;

    invoke-direct {v1}, Lcom/android/vending/model/RestoreApplicationsRequest;-><init>()V

    invoke-virtual {v1, p1}, Lcom/android/vending/model/RestoreApplicationsRequest;->setTargetAndroidId(Ljava/lang/String;)Lcom/android/vending/model/RestoreApplicationsRequest;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/vending/model/RestoreApplicationsRequest;->setTOSVersion(Ljava/lang/String;)Lcom/android/vending/model/RestoreApplicationsRequest;

    move-result-object v0

    .line 37
    .local v0, "request":Lcom/android/vending/model/RestoreApplicationsRequest;
    if-eqz p3, :cond_0

    .line 38
    invoke-virtual {v0, p3}, Lcom/android/vending/model/RestoreApplicationsRequest;->setDeviceConfiguration(Lcom/android/vending/model/DeviceConfiguration;)Lcom/android/vending/model/RestoreApplicationsRequest;

    .line 40
    :cond_0
    new-instance v1, Lcom/android/vending/model/RestoreApplicationsResponse;

    invoke-direct {v1}, Lcom/android/vending/model/RestoreApplicationsResponse;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/api/RestoreApplicationsService;->addRequest(Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;)Lcom/android/vending/api/RequestManager$BatchRequest;

    .line 41
    return-void
.end method
