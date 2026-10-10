.class public Lcom/android/vending/RefundAction;
.super Landroid/os/AsyncTask;
.source "RefundAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/vending/model/Asset;",
        "Ljava/lang/String;",
        "Lcom/android/vending/model/RefundResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private mBaseActivity:Lcom/android/vending/BaseActivity;

.field private mRequestManager:Lcom/android/vending/api/RequestManager;


# direct methods
.method private constructor <init>(Lcom/android/vending/BaseActivity;Lcom/android/vending/api/RequestManager;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/vending/BaseActivity;
    .param p2, "requestManager"    # Lcom/android/vending/api/RequestManager;

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/android/vending/RefundAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    .line 31
    iput-object v0, p0, Lcom/android/vending/RefundAction;->mRequestManager:Lcom/android/vending/api/RequestManager;

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/android/vending/RefundAction;->attach(Lcom/android/vending/BaseActivity;Lcom/android/vending/api/RequestManager;)V

    .line 35
    return-void
.end method

.method public static refund(Lcom/android/vending/BaseActivity;Lcom/android/vending/api/RequestManager;Lcom/android/vending/model/Asset;)Lcom/android/vending/RefundAction;
    .locals 3
    .param p0, "activity"    # Lcom/android/vending/BaseActivity;
    .param p1, "requestManager"    # Lcom/android/vending/api/RequestManager;
    .param p2, "asset"    # Lcom/android/vending/model/Asset;

    .prologue
    .line 140
    new-instance v0, Lcom/android/vending/RefundAction;

    invoke-direct {v0, p0, p1}, Lcom/android/vending/RefundAction;-><init>(Lcom/android/vending/BaseActivity;Lcom/android/vending/api/RequestManager;)V

    .line 141
    .local v0, "action":Lcom/android/vending/RefundAction;
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/vending/model/Asset;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/vending/RefundAction;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 142
    return-object v0
.end method

.method private reloadAssetFromServer(Lcom/android/vending/model/Asset;)V
    .locals 9
    .param p1, "asset"    # Lcom/android/vending/model/Asset;

    .prologue
    const-string v8, "Could not complete reload requests: "

    .line 75
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v3, "assets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/vending/model/Asset;>;"
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getCacheManager()Lcom/android/vending/cache/CacheManager;

    move-result-object v4

    .line 78
    .local v4, "cacheManager":Lcom/android/vending/cache/CacheManager;
    new-instance v2, Lcom/android/vending/api/AssetService;

    iget-object v6, p0, Lcom/android/vending/RefundAction;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-direct {v2, v6, v4}, Lcom/android/vending/api/AssetService;-><init>(Lcom/android/vending/api/RequestManager;Lcom/android/vending/cache/CacheManager;)V

    .line 79
    .local v2, "assetService":Lcom/android/vending/api/AssetService;
    new-instance v1, Lcom/android/vending/model/AssetRequest;

    invoke-direct {v1}, Lcom/android/vending/model/AssetRequest;-><init>()V

    .line 80
    .local v1, "assetRequest":Lcom/android/vending/model/AssetRequest;
    invoke-virtual {v2, p1}, Lcom/android/vending/api/AssetService;->invalidate(Lcom/android/vending/model/Asset;)V

    .line 81
    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/vending/model/AssetRequest;->addAssetId(Ljava/lang/String;)V

    .line 82
    new-instance v6, Lcom/android/vending/RefundAction$1;

    invoke-direct {v6, p0, v3}, Lcom/android/vending/RefundAction$1;-><init>(Lcom/android/vending/RefundAction;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v1, v6}, Lcom/android/vending/api/AssetService;->queueGetAssets(Lcom/android/vending/model/AssetRequest;Lcom/android/vending/api/AssetService$GetAssetsReceiver;)V

    .line 89
    :try_start_0
    iget-object v6, p0, Lcom/android/vending/RefundAction;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-virtual {v6}, Lcom/android/vending/api/RequestManager;->doRequests()V

    .line 93
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 94
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/android/vending/model/Asset;

    move-object p1, v0

    .line 95
    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->hasPurchaseInfo()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 96
    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->clearPurchaseInfo()V

    .line 99
    :cond_0
    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->getApplicationPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/vending/model/Asset;->setRefundTimeoutByPackageName(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Lcom/android/vending/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 105
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 101
    .local v5, "e":Lcom/android/vending/api/ApiException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not complete reload requests: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    .end local v5    # "e":Lcom/android/vending/api/ApiException;
    :catch_1
    move-exception v6

    move-object v5, v6

    .line 103
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not complete reload requests: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public attach(Lcom/android/vending/BaseActivity;Lcom/android/vending/api/RequestManager;)V
    .locals 0
    .param p1, "activity"    # Lcom/android/vending/BaseActivity;
    .param p2, "requestManager"    # Lcom/android/vending/api/RequestManager;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/vending/RefundAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    .line 47
    iput-object p2, p0, Lcom/android/vending/RefundAction;->mRequestManager:Lcom/android/vending/api/RequestManager;

    .line 48
    return-void
.end method

.method protected varargs doInBackground([Lcom/android/vending/model/Asset;)Lcom/android/vending/model/RefundResponse;
    .locals 7
    .param p1, "assets"    # [Lcom/android/vending/model/Asset;

    .prologue
    const-string v6, "Could not complete refund requests: "

    .line 52
    const/4 v4, 0x0

    aget-object v0, p1, v4

    .line 53
    .local v0, "asset":Lcom/android/vending/model/Asset;
    new-instance v2, Lcom/android/vending/model/RefundRequest;

    invoke-direct {v2}, Lcom/android/vending/model/RefundRequest;-><init>()V

    .line 54
    .local v2, "refundRequest":Lcom/android/vending/model/RefundRequest;
    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/vending/model/RefundRequest;->setAssetId(Ljava/lang/String;)V

    .line 56
    new-instance v3, Lcom/android/vending/api/RefundService;

    iget-object v4, p0, Lcom/android/vending/RefundAction;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-direct {v3, v4}, Lcom/android/vending/api/RefundService;-><init>(Lcom/android/vending/api/RequestManager;)V

    .line 57
    .local v3, "refundService":Lcom/android/vending/api/RefundService;
    invoke-virtual {v3, v2}, Lcom/android/vending/api/RefundService;->queueRefund(Lcom/android/vending/model/RefundRequest;)V

    .line 60
    :try_start_0
    iget-object v4, p0, Lcom/android/vending/RefundAction;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-virtual {v4}, Lcom/android/vending/api/RequestManager;->doRequests()V

    .line 62
    invoke-direct {p0, v0}, Lcom/android/vending/RefundAction;->reloadAssetFromServer(Lcom/android/vending/model/Asset;)V

    .line 64
    invoke-virtual {v3}, Lcom/android/vending/api/RefundService;->getRefundResponse()Lcom/android/vending/model/RefundResponse;
    :try_end_0
    .catch Lcom/android/vending/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 71
    :goto_0
    return-object v4

    .line 65
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 66
    .local v1, "e":Lcom/android/vending/api/ApiException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not complete refund requests: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .line 71
    .end local v1    # "e":Lcom/android/vending/api/ApiException;
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 67
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 68
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not complete refund requests: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 29
    check-cast p1, [Lcom/android/vending/model/Asset;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/vending/RefundAction;->doInBackground([Lcom/android/vending/model/Asset;)Lcom/android/vending/model/RefundResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/vending/model/RefundResponse;)V
    .locals 4
    .param p1, "response"    # Lcom/android/vending/model/RefundResponse;

    .prologue
    .line 110
    const/4 v1, 0x0

    .line 111
    .local v1, "result":Lcom/android/vending/model/RefundResponse$Result;
    if-eqz p1, :cond_0

    .line 112
    invoke-virtual {p1}, Lcom/android/vending/model/RefundResponse;->getResult()Lcom/android/vending/model/RefundResponse$Result;

    move-result-object v1

    .line 114
    :cond_0
    sget-object v2, Lcom/android/vending/model/RefundResponse$Result;->OK:Lcom/android/vending/model/RefundResponse$Result;

    if-ne v1, v2, :cond_2

    .line 115
    iget-object v2, p0, Lcom/android/vending/RefundAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    invoke-virtual {v2}, Lcom/android/vending/BaseActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0600d2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "refundMessage":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/vending/RefundAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/vending/BaseActivity;->updateActivity(I)V

    .line 123
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/vending/model/RefundResponse;->getResultDetail()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 124
    invoke-virtual {p1}, Lcom/android/vending/model/RefundResponse;->getResultDetail()Ljava/lang/String;

    move-result-object v0

    .line 126
    :cond_1
    iget-object v2, p0, Lcom/android/vending/RefundAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    invoke-virtual {v2, v0}, Lcom/android/vending/BaseActivity;->displayToast(Ljava/lang/CharSequence;)V

    .line 127
    return-void

    .line 118
    .end local v0    # "refundMessage":Ljava/lang/String;
    :cond_2
    sget-object v2, Lcom/android/vending/model/RefundResponse$Result;->CANNOT_REFUND:Lcom/android/vending/model/RefundResponse$Result;

    if-ne v1, v2, :cond_3

    .line 119
    iget-object v2, p0, Lcom/android/vending/RefundAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/android/vending/BaseActivity;->updateActivity(I)V

    .line 121
    :cond_3
    iget-object v2, p0, Lcom/android/vending/RefundAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    invoke-virtual {v2}, Lcom/android/vending/BaseActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0600d3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "refundMessage":Ljava/lang/String;
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    check-cast p1, Lcom/android/vending/model/RefundResponse;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/vending/RefundAction;->onPostExecute(Lcom/android/vending/model/RefundResponse;)V

    return-void
.end method
