.class Lcom/android/vending/UninstallActivity$AsynchUninstallReasonRequest;
.super Ljava/lang/Object;
.source "UninstallActivity.java"

# interfaces
.implements Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/UninstallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsynchUninstallReasonRequest"
.end annotation


# instance fields
.field private final mAssetId:Ljava/lang/String;

.field private final mReason:Lcom/android/vending/model/UninstallReasonRequest$Reason;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/vending/model/UninstallReasonRequest$Reason;)V
    .locals 0
    .param p1, "assetId"    # Ljava/lang/String;
    .param p2, "reason"    # Lcom/android/vending/model/UninstallReasonRequest$Reason;

    .prologue
    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    iput-object p1, p0, Lcom/android/vending/UninstallActivity$AsynchUninstallReasonRequest;->mAssetId:Ljava/lang/String;

    .line 505
    iput-object p2, p0, Lcom/android/vending/UninstallActivity$AsynchUninstallReasonRequest;->mReason:Lcom/android/vending/model/UninstallReasonRequest$Reason;

    .line 506
    return-void
.end method


# virtual methods
.method public doRequest(Lcom/android/vending/api/RequestManager;)V
    .locals 2
    .param p1, "manager"    # Lcom/android/vending/api/RequestManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vending/api/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 509
    new-instance v0, Lcom/android/vending/model/UninstallReasonRequest;

    invoke-direct {v0}, Lcom/android/vending/model/UninstallReasonRequest;-><init>()V

    .line 510
    .local v0, "uninstallReasonRequest":Lcom/android/vending/model/UninstallReasonRequest;
    iget-object v1, p0, Lcom/android/vending/UninstallActivity$AsynchUninstallReasonRequest;->mAssetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/vending/model/UninstallReasonRequest;->setAssetId(Ljava/lang/String;)V

    .line 511
    iget-object v1, p0, Lcom/android/vending/UninstallActivity$AsynchUninstallReasonRequest;->mReason:Lcom/android/vending/model/UninstallReasonRequest$Reason;

    invoke-virtual {v0, v1}, Lcom/android/vending/model/UninstallReasonRequest;->setReason(Lcom/android/vending/model/UninstallReasonRequest$Reason;)V

    .line 513
    new-instance v1, Lcom/android/vending/api/UninstallReasonService;

    invoke-direct {v1, p1}, Lcom/android/vending/api/UninstallReasonService;-><init>(Lcom/android/vending/api/RequestManager;)V

    invoke-virtual {v1, v0}, Lcom/android/vending/api/UninstallReasonService;->queueUninstallReasonRequest(Lcom/android/vending/model/UninstallReasonRequest;)V

    .line 514
    invoke-virtual {p1}, Lcom/android/vending/api/RequestManager;->doRequests()V

    .line 515
    return-void
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 518
    const-string v0, "Failed to send uninstall reason %s for asset %s: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/vending/UninstallActivity$AsynchUninstallReasonRequest;->mReason:Lcom/android/vending/model/UninstallReasonRequest$Reason;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/vending/UninstallActivity$AsynchUninstallReasonRequest;->mAssetId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 519
    return-void
.end method
