.class public Lcom/android/vending/api/CheckLicenseService;
.super Lcom/android/vending/api/BaseService;
.source "CheckLicenseService.java"


# direct methods
.method public constructor <init>(Lcom/android/vending/api/RequestManager;)V
    .locals 0
    .param p1, "requestMgr"    # Lcom/android/vending/api/RequestManager;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/vending/api/BaseService;-><init>(Lcom/android/vending/api/RequestManager;)V

    .line 21
    return-void
.end method


# virtual methods
.method public getCheckLicenseResponse()Lcom/android/vending/model/CheckLicenseResponse;
    .locals 0

    .prologue
    .line 32
    iget-object p0, p0, Lcom/android/vending/api/CheckLicenseService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    .end local p0    # "this":Lcom/android/vending/api/CheckLicenseService;
    check-cast p0, Lcom/android/vending/model/CheckLicenseResponse;

    return-object p0
.end method

.method public queueCheckLicense(Lcom/android/vending/model/CheckLicenseRequest;)V
    .locals 1
    .param p1, "checkLicenseRequest"    # Lcom/android/vending/model/CheckLicenseRequest;

    .prologue
    .line 27
    new-instance v0, Lcom/android/vending/model/CheckLicenseResponse;

    invoke-direct {v0}, Lcom/android/vending/model/CheckLicenseResponse;-><init>()V

    .line 28
    .local v0, "checkLicenseResponse":Lcom/android/vending/model/CheckLicenseResponse;
    invoke-virtual {p0, p1, v0}, Lcom/android/vending/api/CheckLicenseService;->addRequest(Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;)Lcom/android/vending/api/RequestManager$BatchRequest;

    .line 29
    return-void
.end method
