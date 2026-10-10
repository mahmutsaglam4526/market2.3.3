.class Lcom/android/vending/licensing/LicensingService$1;
.super Lcom/android/vending/licensing/ILicensingService$Stub;
.source "LicensingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/licensing/LicensingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/licensing/LicensingService;


# direct methods
.method constructor <init>(Lcom/android/vending/licensing/LicensingService;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/vending/licensing/LicensingService$1;->this$0:Lcom/android/vending/licensing/LicensingService;

    invoke-direct {p0}, Lcom/android/vending/licensing/ILicensingService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public checkLicense(JLjava/lang/String;Lcom/android/vending/licensing/ILicenseResultListener;)V
    .locals 8
    .param p1, "nonce"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/android/vending/licensing/ILicenseResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getAsynchRequestRunner()Lcom/android/vending/AsynchRequestRunner;

    move-result-object v7

    new-instance v0, Lcom/android/vending/licensing/LicensingService$AsynchLicenseChecker;

    iget-object v1, p0, Lcom/android/vending/licensing/LicensingService$1;->this$0:Lcom/android/vending/licensing/LicensingService;

    invoke-static {}, Lcom/android/vending/licensing/LicensingService$1;->getCallingUid()I

    move-result v6

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/vending/licensing/LicensingService$AsynchLicenseChecker;-><init>(Lcom/android/vending/licensing/LicensingService;JLjava/lang/String;Lcom/android/vending/licensing/ILicenseResultListener;I)V

    invoke-virtual {v7, v0}, Lcom/android/vending/AsynchRequestRunner;->runRequest(Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;)V

    .line 37
    return-void
.end method
