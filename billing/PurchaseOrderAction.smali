.class public Lcom/android/vending/billing/PurchaseOrderAction;
.super Lcom/android/vending/BaseActivity$BaseAction;
.source "PurchaseOrderAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionCarrierBillingListener;,
        Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionListener;
    }
.end annotation


# instance fields
.field private mAssetId:Ljava/lang/String;

.field private mBadCredentialsReturned:Lcom/android/vending/model/CarrierCredentialsResponse;

.field private mListener:Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionListener;

.field private mListenerCarrierBilling:Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionCarrierBillingListener;

.field private mRequest:Lcom/android/vending/model/PurchaseOrderRequest;

.field private final mRequestManager:Lcom/android/vending/api/RequestManager;

.field private mRequestPerformed:Z

.field private final mService:Lcom/android/vending/api/PurchaseOrderService;


# direct methods
.method public constructor <init>(Lcom/android/vending/BaseActivity;Lcom/android/vending/api/RequestManager;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/vending/BaseActivity;
    .param p2, "requestManager"    # Lcom/android/vending/api/RequestManager;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/vending/BaseActivity$BaseAction;-><init>()V

    .line 52
    iput-object p2, p0, Lcom/android/vending/billing/PurchaseOrderAction;->mRequestManager:Lcom/android/vending/api/RequestManager;

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/vending/billing/PurchaseOrderAction;->setActivity(Lcom/android/vending/BaseActivity;)V

    .line 54
    new-instance v0, Lcom/android/vending/api/PurchaseOrderService;

    iget-object v1, p0, Lcom/android/vending/billing/PurchaseOrderAction;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-direct {v0, v1}, Lcom/android/vending/api/PurchaseOrderService;-><init>(Lcom/android/vending/api/RequestManager;)V

    iput-object v0, p0, Lcom/android/vending/billing/PurchaseOrderAction;->mService:Lcom/android/vending/api/PurchaseOrderService;

    .line 55
    return-void
.end method

.method static synthetic access$002(Lcom/android/vending/billing/PurchaseOrderAction;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/billing/PurchaseOrderAction;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/vending/billing/PurchaseOrderAction;->mRequestPerformed:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/vending/billing/PurchaseOrderAction;Lcom/android/vending/model/CarrierCredentialsResponse;)Lcom/android/vending/model/CarrierCredentialsResponse;
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/billing/PurchaseOrderAction;
    .param p1, "x1"    # Lcom/android/vending/model/CarrierCredentialsResponse;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/vending/billing/PurchaseOrderAction;->mBadCredentialsReturned:Lcom/android/vending/model/CarrierCredentialsResponse;

    return-object p1
.end method


# virtual methods
.method public displayErrorUi(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/vending/billing/PurchaseOrderAction;->mAssetId:Ljava/lang/String;

    sget-object v1, Lcom/android/vending/model/LocalAssetInfo$AssetState;->UNINSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    invoke-static {v0, v1}, Lcom/android/vending/model/Asset;->setStateById(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V

    .line 227
    invoke-super {p0, p1}, Lcom/android/vending/BaseActivity$BaseAction;->displayErrorUi(Ljava/lang/Throwable;)V

    .line 228
    return-void
.end method

.method public displayResults()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 195
    iget-boolean v1, p0, Lcom/android/vending/billing/PurchaseOrderAction;->mRequestPerformed:Z

    if-eqz v1, :cond_1

    .line 196
    iget-object v1, p0, Lcom/android/vending/billing/PurchaseOrderAction;->mService:Lcom/android/vending/api/PurchaseOrderService;

    invoke-virtual {v1}, Lcom/android/vending/api/PurchaseOrderService;->getPurchaseOrderResponse()Lcom/android/vending/model/PurchaseOrderResponse;

    move-result-object v0

    .line 197
    .local v0, "response":Lcom/android/vending/model/PurchaseOrderResponse;
    iget-object v1, p0, Lcom/android/vending/billing/PurchaseOrderAction;->mListener:Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionListener;

    invoke-interface {v1, v0}, Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionListener;->onOrderResponse(Lcom/android/vending/model/PurchaseOrderResponse;)V

    .line 203
    .end local v0    # "response":Lcom/android/vending/model/PurchaseOrderResponse;
    :cond_0
    :goto_0
    iput-object v3, p0, Lcom/android/vending/billing/PurchaseOrderAction;->mRequest:Lcom/android/vending/model/PurchaseOrderRequest;

    .line 204
    return-void

    .line 199
    :cond_1
    iget-object v1, p0, Lcom/android/vending/billing/PurchaseOrderAction;->mListenerCarrierBilling:Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionCarrierBillingListener;

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/android/vending/billing/PurchaseOrderAction;->mListenerCarrierBilling:Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionCarrierBillingListener;

    iget-object v2, p0, Lcom/android/vending/billing/PurchaseOrderAction;->mBadCredentialsReturned:Lcom/android/vending/model/CarrierCredentialsResponse;

    invoke-interface {v1, v3, v2}, Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionCarrierBillingListener;->onOrderResponse(Lcom/android/vending/model/PurchaseOrderResponse;Lcom/android/vending/model/CarrierCredentialsResponse;)V

    goto :goto_0
.end method

.method protected displayWaitingUi()V
    .locals 0

    .prologue
    .line 212
    invoke-super {p0}, Lcom/android/vending/BaseActivity$BaseAction;->displayWaitingUi()V

    .line 213
    iget-object p0, p0, Lcom/android/vending/billing/PurchaseOrderAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    .end local p0    # "this":Lcom/android/vending/billing/PurchaseOrderAction;
    check-cast p0, Lcom/android/vending/billing/BaseBuyPageActivity;

    invoke-virtual {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->displayWaitingUiForPurchaseOrderAction()V

    .line 214
    return-void
.end method

.method public executeCarrierBillingOrderRequest(Lcom/android/vending/model/PurchaseOrderRequest;Lcom/android/vending/BaseActivity;Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionListener;Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionCarrierBillingListener;Lcom/android/vending/api/CarrierService;Lcom/android/vending/model/LocalBillingData;Lcom/android/vending/api/BillingDatabase;Lcom/android/vending/model/BillingParameter;Ljava/lang/String;)V
    .locals 8
    .param p1, "request"    # Lcom/android/vending/model/PurchaseOrderRequest;
    .param p2, "activity"    # Lcom/android/vending/BaseActivity;
    .param p3, "listener"    # Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionListener;
    .param p4, "carrierBillingListener"    # Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionCarrierBillingListener;
    .param p5, "carrierService"    # Lcom/android/vending/api/CarrierService;
    .param p6, "localBillingData"    # Lcom/android/vending/model/LocalBillingData;
    .param p7, "billingDatabase"    # Lcom/android/vending/api/BillingDatabase;
    .param p8, "billingParameter"    # Lcom/android/vending/model/BillingParameter;
    .param p9, "password"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/vending/billing/PurchaseOrderAction;->mRequest:Lcom/android/vending/model/PurchaseOrderRequest;

    .line 127
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/vending/billing/PurchaseOrderAction;->mRequestPerformed:Z

    .line 128
    invoke-virtual {p0, p2}, Lcom/android/vending/billing/PurchaseOrderAction;->setActivity(Lcom/android/vending/BaseActivity;)V

    .line 129
    invoke-virtual {p0, p3}, Lcom/android/vending/billing/PurchaseOrderAction;->setListener(Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionListener;)V

    .line 130
    invoke-virtual {p0, p4}, Lcom/android/vending/billing/PurchaseOrderAction;->setCarrierBillingListener(Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionCarrierBillingListener;)V

    .line 133
    invoke-virtual {p1}, Lcom/android/vending/model/PurchaseOrderRequest;->getAssetId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/billing/PurchaseOrderAction;->mAssetId:Ljava/lang/String;

    .line 135
    new-instance v0, Lcom/android/vending/billing/PurchaseOrderAction$1;

    move-object v1, p0

    move-object/from16 v2, p8

    move-object v3, p6

    move-object v4, p5

    move-object/from16 v5, p9

    move-object v6, p7

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/vending/billing/PurchaseOrderAction$1;-><init>(Lcom/android/vending/billing/PurchaseOrderAction;Lcom/android/vending/model/BillingParameter;Lcom/android/vending/model/LocalBillingData;Lcom/android/vending/api/CarrierService;Ljava/lang/String;Lcom/android/vending/api/BillingDatabase;Lcom/android/vending/model/PurchaseOrderRequest;)V

    .line 177
    .local v0, "runnable":Lcom/android/vending/BaseActivity$BaseAction$ActionRunnable;
    invoke-virtual {p0, v0}, Lcom/android/vending/billing/PurchaseOrderAction;->setActionRunnable(Lcom/android/vending/BaseActivity$BaseAction$ActionRunnable;)V

    .line 178
    invoke-virtual {p0}, Lcom/android/vending/billing/PurchaseOrderAction;->start()V

    .line 179
    return-void
.end method

.method public executeOrderRequest(Lcom/android/vending/model/PurchaseOrderRequest;Lcom/android/vending/BaseActivity;Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionListener;)V
    .locals 1
    .param p1, "request"    # Lcom/android/vending/model/PurchaseOrderRequest;
    .param p2, "activity"    # Lcom/android/vending/BaseActivity;
    .param p3, "listener"    # Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionListener;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/vending/billing/PurchaseOrderAction;->mRequest:Lcom/android/vending/model/PurchaseOrderRequest;

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vending/billing/PurchaseOrderAction;->mRequestPerformed:Z

    .line 99
    invoke-virtual {p0, p2}, Lcom/android/vending/billing/PurchaseOrderAction;->setActivity(Lcom/android/vending/BaseActivity;)V

    .line 100
    invoke-virtual {p0, p3}, Lcom/android/vending/billing/PurchaseOrderAction;->setListener(Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionListener;)V

    .line 103
    invoke-virtual {p1}, Lcom/android/vending/model/PurchaseOrderRequest;->getAssetId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/billing/PurchaseOrderAction;->mAssetId:Ljava/lang/String;

    .line 104
    invoke-virtual {p0}, Lcom/android/vending/billing/PurchaseOrderAction;->start()V

    .line 105
    return-void
.end method

.method protected hideWaitingUi()V
    .locals 0

    .prologue
    .line 218
    invoke-super {p0}, Lcom/android/vending/BaseActivity$BaseAction;->hideWaitingUi()V

    .line 219
    iget-object p0, p0, Lcom/android/vending/billing/PurchaseOrderAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    .end local p0    # "this":Lcom/android/vending/billing/PurchaseOrderAction;
    check-cast p0, Lcom/android/vending/billing/BaseBuyPageActivity;

    invoke-virtual {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->hideWaitingUiForPurchaseOrderAction()V

    .line 220
    return-void
.end method

.method public prepare()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/vending/billing/PurchaseOrderAction;->mService:Lcom/android/vending/api/PurchaseOrderService;

    iget-object v1, p0, Lcom/android/vending/billing/PurchaseOrderAction;->mRequest:Lcom/android/vending/model/PurchaseOrderRequest;

    invoke-virtual {v0, v1}, Lcom/android/vending/api/PurchaseOrderService;->queuePurchaseOrder(Lcom/android/vending/model/PurchaseOrderRequest;)V

    .line 188
    return-void
.end method

.method public setActivity(Lcom/android/vending/BaseActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/vending/BaseActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/vending/billing/PurchaseOrderAction;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-super {p0, p1, v0}, Lcom/android/vending/BaseActivity$BaseAction;->setActivity(Lcom/android/vending/BaseActivity;Lcom/android/vending/api/RequestManager;)V

    .line 66
    return-void
.end method

.method public setCarrierBillingListener(Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionCarrierBillingListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionCarrierBillingListener;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/vending/billing/PurchaseOrderAction;->mListenerCarrierBilling:Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionCarrierBillingListener;

    .line 86
    return-void
.end method

.method public setListener(Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionListener;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/vending/billing/PurchaseOrderAction;->mListener:Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionListener;

    .line 76
    return-void
.end method
