.class Lcom/android/vending/licensing/LicensingService$AsynchLicenseChecker;
.super Ljava/lang/Object;
.source "LicensingService.java"

# interfaces
.implements Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/licensing/LicensingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsynchLicenseChecker"
.end annotation


# instance fields
.field private final mCallingUid:I

.field private final mListener:Lcom/android/vending/licensing/ILicenseResultListener;

.field private final mNonce:J

.field private final mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/vending/licensing/LicensingService;


# direct methods
.method public constructor <init>(Lcom/android/vending/licensing/LicensingService;JLjava/lang/String;Lcom/android/vending/licensing/ILicenseResultListener;I)V
    .locals 0
    .param p2, "nonce"    # J
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "listener"    # Lcom/android/vending/licensing/ILicenseResultListener;
    .param p6, "callingUid"    # I

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/vending/licensing/LicensingService$AsynchLicenseChecker;->this$0:Lcom/android/vending/licensing/LicensingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-wide p2, p0, Lcom/android/vending/licensing/LicensingService$AsynchLicenseChecker;->mNonce:J

    .line 54
    iput-object p4, p0, Lcom/android/vending/licensing/LicensingService$AsynchLicenseChecker;->mPackageName:Ljava/lang/String;

    .line 55
    iput-object p5, p0, Lcom/android/vending/licensing/LicensingService$AsynchLicenseChecker;->mListener:Lcom/android/vending/licensing/ILicenseResultListener;

    .line 56
    iput p6, p0, Lcom/android/vending/licensing/LicensingService$AsynchLicenseChecker;->mCallingUid:I

    .line 57
    return-void
.end method


# virtual methods
.method public doRequest(Lcom/android/vending/api/RequestManager;)V
    .locals 9
    .param p1, "manager"    # Lcom/android/vending/api/RequestManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vending/api/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    :try_start_0
    iget-object v5, p0, Lcom/android/vending/licensing/LicensingService$AsynchLicenseChecker;->this$0:Lcom/android/vending/licensing/LicensingService;

    invoke-virtual {v5}, Lcom/android/vending/licensing/LicensingService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/vending/licensing/LicensingService$AsynchLicenseChecker;->mPackageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 63
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v6, p0, Lcom/android/vending/licensing/LicensingService$AsynchLicenseChecker;->mCallingUid:I

    if-eq v5, v6, :cond_0

    .line 64
    iget-object v5, p0, Lcom/android/vending/licensing/LicensingService$AsynchLicenseChecker;->mListener:Lcom/android/vending/licensing/ILicenseResultListener;

    const/16 v6, 0x103

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Lcom/android/vending/licensing/ILicenseResultListener;->verifyLicense(ILjava/lang/String;Ljava/lang/String;)V

    .line 85
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 67
    .restart local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    new-instance v2, Lcom/android/vending/model/CheckLicenseRequest;

    invoke-direct {v2}, Lcom/android/vending/model/CheckLicenseRequest;-><init>()V

    .line 68
    .local v2, "request":Lcom/android/vending/model/CheckLicenseRequest;
    iget-object v5, p0, Lcom/android/vending/licensing/LicensingService$AsynchLicenseChecker;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/android/vending/model/CheckLicenseRequest;->setPackageName(Ljava/lang/String;)V

    .line 69
    iget v5, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v5}, Lcom/android/vending/model/CheckLicenseRequest;->setVersionCode(I)V

    .line 70
    iget-wide v5, p0, Lcom/android/vending/licensing/LicensingService$AsynchLicenseChecker;->mNonce:J

    invoke-virtual {v2, v5, v6}, Lcom/android/vending/model/CheckLicenseRequest;->setNonce(J)V

    .line 71
    new-instance v4, Lcom/android/vending/api/CheckLicenseService;

    invoke-direct {v4, p1}, Lcom/android/vending/api/CheckLicenseService;-><init>(Lcom/android/vending/api/RequestManager;)V

    .line 72
    .local v4, "service":Lcom/android/vending/api/CheckLicenseService;
    invoke-virtual {v4, v2}, Lcom/android/vending/api/CheckLicenseService;->queueCheckLicense(Lcom/android/vending/model/CheckLicenseRequest;)V

    .line 74
    invoke-virtual {p1}, Lcom/android/vending/api/RequestManager;->doRequests()V

    .line 76
    invoke-virtual {v4}, Lcom/android/vending/api/CheckLicenseService;->getCheckLicenseResponse()Lcom/android/vending/model/CheckLicenseResponse;

    move-result-object v3

    .line 77
    .local v3, "response":Lcom/android/vending/model/CheckLicenseResponse;
    iget-object v5, p0, Lcom/android/vending/licensing/LicensingService$AsynchLicenseChecker;->mListener:Lcom/android/vending/licensing/ILicenseResultListener;

    invoke-virtual {v3}, Lcom/android/vending/model/CheckLicenseResponse;->getResponseCode()I

    move-result v6

    invoke-virtual {v3}, Lcom/android/vending/model/CheckLicenseResponse;->getSignedData()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/vending/model/CheckLicenseResponse;->getSignature()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Lcom/android/vending/licensing/ILicenseResultListener;->verifyLicense(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 79
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "request":Lcom/android/vending/model/CheckLicenseRequest;
    .end local v3    # "response":Lcom/android/vending/model/CheckLicenseResponse;
    .end local v4    # "service":Lcom/android/vending/api/CheckLicenseService;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 80
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    iget-object v5, p0, Lcom/android/vending/licensing/LicensingService$AsynchLicenseChecker;->mListener:Lcom/android/vending/licensing/ILicenseResultListener;

    const/16 v6, 0x102

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Lcom/android/vending/licensing/ILicenseResultListener;->verifyLicense(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 82
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 83
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to send license information to requesting app: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/android/vending/licensing/LicensingService$AsynchLicenseChecker;->mListener:Lcom/android/vending/licensing/ILicenseResultListener;

    const/16 v2, 0x101

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/vending/licensing/ILicenseResultListener;->verifyLicense(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 91
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to tell requesting app about ERROR_CONTACTING_SERVER: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    goto :goto_0
.end method
