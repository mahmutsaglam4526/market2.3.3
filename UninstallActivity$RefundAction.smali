.class Lcom/android/vending/UninstallActivity$RefundAction;
.super Lcom/android/vending/BaseActivity$BaseAction;
.source "UninstallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/UninstallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefundAction"
.end annotation


# instance fields
.field mRefundService:Lcom/android/vending/api/RefundService;

.field final synthetic this$0:Lcom/android/vending/UninstallActivity;


# direct methods
.method public constructor <init>(Lcom/android/vending/UninstallActivity;)V
    .locals 2

    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/vending/UninstallActivity$RefundAction;->this$0:Lcom/android/vending/UninstallActivity;

    .line 360
    invoke-direct {p0, p1}, Lcom/android/vending/BaseActivity$BaseAction;-><init>(Lcom/android/vending/BaseActivity;)V

    .line 361
    new-instance v0, Lcom/android/vending/api/RefundService;

    iget-object v1, p1, Lcom/android/vending/UninstallActivity;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-direct {v0, v1}, Lcom/android/vending/api/RefundService;-><init>(Lcom/android/vending/api/RequestManager;)V

    iput-object v0, p0, Lcom/android/vending/UninstallActivity$RefundAction;->mRefundService:Lcom/android/vending/api/RefundService;

    .line 362
    return-void
.end method


# virtual methods
.method public displayResults()V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/vending/UninstallActivity$RefundAction;->this$0:Lcom/android/vending/UninstallActivity;

    invoke-static {v0}, Lcom/android/vending/UninstallActivity;->access$600(Lcom/android/vending/UninstallActivity;)V

    .line 398
    return-void
.end method

.method public onRequestComplete(Z)V
    .locals 4
    .param p1, "success"    # Z

    .prologue
    .line 374
    const/4 v0, 0x0

    .line 375
    .local v0, "refundSuccess":Z
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/vending/UninstallActivity$RefundAction;->mRefundService:Lcom/android/vending/api/RefundService;

    invoke-virtual {v2}, Lcom/android/vending/api/RefundService;->getRefundResponse()Lcom/android/vending/model/RefundResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/vending/model/RefundResponse;->getResult()Lcom/android/vending/model/RefundResponse$Result;

    move-result-object v2

    sget-object v3, Lcom/android/vending/model/RefundResponse$Result;->OK:Lcom/android/vending/model/RefundResponse$Result;

    if-ne v2, v3, :cond_0

    .line 377
    const/4 v0, 0x1

    .line 378
    iget-object v2, p0, Lcom/android/vending/UninstallActivity$RefundAction;->this$0:Lcom/android/vending/UninstallActivity;

    invoke-static {v2}, Lcom/android/vending/UninstallActivity;->access$700(Lcom/android/vending/UninstallActivity;)Lcom/android/vending/model/Asset;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/vending/model/Asset;->getApplicationPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/vending/model/Asset;->setRefundTimeoutByPackageName(Ljava/lang/String;Ljava/lang/Long;)V

    .line 379
    iget-object v2, p0, Lcom/android/vending/UninstallActivity$RefundAction;->this$0:Lcom/android/vending/UninstallActivity;

    invoke-static {v2}, Lcom/android/vending/UninstallActivity;->access$700(Lcom/android/vending/UninstallActivity;)Lcom/android/vending/model/Asset;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/vending/model/Asset;->clearPurchaseInfo()V

    .line 382
    :cond_0
    move v1, v0

    .line 383
    .local v1, "refundSuccessFinal":Z
    iget-object v2, p0, Lcom/android/vending/UninstallActivity$RefundAction;->this$0:Lcom/android/vending/UninstallActivity;

    iget-object v2, v2, Lcom/android/vending/UninstallActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/vending/UninstallActivity$RefundAction$1;

    invoke-direct {v3, p0, v1}, Lcom/android/vending/UninstallActivity$RefundAction$1;-><init>(Lcom/android/vending/UninstallActivity$RefundAction;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 393
    return-void
.end method

.method public prepare()V
    .locals 2

    .prologue
    .line 366
    new-instance v0, Lcom/android/vending/model/RefundRequest;

    invoke-direct {v0}, Lcom/android/vending/model/RefundRequest;-><init>()V

    .line 367
    .local v0, "refundRequest":Lcom/android/vending/model/RefundRequest;
    iget-object v1, p0, Lcom/android/vending/UninstallActivity$RefundAction;->this$0:Lcom/android/vending/UninstallActivity;

    iget-object v1, v1, Lcom/android/vending/UninstallActivity;->mServerAssetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/vending/model/RefundRequest;->setAssetId(Ljava/lang/String;)V

    .line 368
    iget-object v1, p0, Lcom/android/vending/UninstallActivity$RefundAction;->mRefundService:Lcom/android/vending/api/RefundService;

    invoke-virtual {v1, v0}, Lcom/android/vending/api/RefundService;->queueRefund(Lcom/android/vending/model/RefundRequest;)V

    .line 369
    return-void
.end method
