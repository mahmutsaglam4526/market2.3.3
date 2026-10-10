.class public Lcom/android/vending/billing/MarketBillingService$BillingNotifier;
.super Ljava/lang/Object;
.source "MarketBillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/billing/MarketBillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BillingNotifier"
.end annotation


# instance fields
.field private mService:Lcom/android/vending/billing/MarketBillingService;


# direct methods
.method public constructor <init>(Lcom/android/vending/billing/MarketBillingService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/vending/billing/MarketBillingService;

    .prologue
    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    iput-object p1, p0, Lcom/android/vending/billing/MarketBillingService$BillingNotifier;->mService:Lcom/android/vending/billing/MarketBillingService;

    .line 364
    return-void
.end method


# virtual methods
.method protected sendPurchaseStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;

    .prologue
    .line 413
    iget-object v1, p0, Lcom/android/vending/billing/MarketBillingService$BillingNotifier;->mService:Lcom/android/vending/billing/MarketBillingService;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.vending.billing.PURCHASE_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1, v2}, Lcom/android/vending/util/Util;->findReceiverName(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 415
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 416
    const/4 v1, 0x0

    .line 421
    :goto_0
    return v1

    .line 418
    :cond_0
    const-string v1, "inapp_signed_data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    const-string v1, "inapp_signature"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    iget-object v1, p0, Lcom/android/vending/billing/MarketBillingService$BillingNotifier;->mService:Lcom/android/vending/billing/MarketBillingService;

    invoke-virtual {v1, v0}, Lcom/android/vending/billing/MarketBillingService;->sendBroadcast(Landroid/content/Intent;)V

    .line 421
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected sendResponseCode(Ljava/lang/String;JLcom/android/vending/billing/MarketBillingService$ResponseCode;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "requestId"    # J
    .param p4, "responseCode"    # Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/vending/billing/MarketBillingService$BillingNotifier;->mService:Lcom/android/vending/billing/MarketBillingService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/vending/billing/MarketBillingService;->sendResponseCode(Landroid/content/Context;Ljava/lang/String;JLcom/android/vending/billing/MarketBillingService$ResponseCode;)Z

    move-result v0

    return v0
.end method

.method protected showStatusBarNotifications(Landroid/content/Context;Ljava/lang/String;Lcom/android/vending/model/InAppPurchaseInformationResponse;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "response"    # Lcom/android/vending/model/InAppPurchaseInformationResponse;

    .prologue
    .line 381
    invoke-virtual {p3}, Lcom/android/vending/model/InAppPurchaseInformationResponse;->getNumStatusBarNotifications()I

    move-result v10

    .line 382
    .local v10, "numNotifications":I
    invoke-virtual {p3}, Lcom/android/vending/model/InAppPurchaseInformationResponse;->getSignedData()Ljava/lang/String;

    move-result-object v8

    .line 383
    .local v8, "data":Ljava/lang/String;
    invoke-virtual {p3}, Lcom/android/vending/model/InAppPurchaseInformationResponse;->getSignature()Ljava/lang/String;

    move-result-object v11

    .line 384
    .local v11, "signature":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v10, :cond_0

    .line 385
    invoke-virtual {p3, v9}, Lcom/android/vending/model/InAppPurchaseInformationResponse;->getTickerText(I)Ljava/lang/String;

    move-result-object v4

    .line 386
    .local v4, "tickerText":Ljava/lang/String;
    invoke-virtual {p3, v9}, Lcom/android/vending/model/InAppPurchaseInformationResponse;->getContentTitle(I)Ljava/lang/String;

    move-result-object v3

    .line 387
    .local v3, "contentTitle":Ljava/lang/String;
    invoke-virtual {p3, v9}, Lcom/android/vending/model/InAppPurchaseInformationResponse;->getContentText(I)Ljava/lang/String;

    move-result-object v6

    .line 388
    .local v6, "contentText":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/vending/billing/MarketBillingService$BillingNotifier;->mService:Lcom/android/vending/billing/MarketBillingService;

    iget-object v1, v1, Lcom/android/vending/billing/MarketBillingService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 389
    .local v2, "intent":Landroid/content/Intent;
    const-string v1, "inapp_signed_data"

    invoke-virtual {v2, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    const-string v1, "inapp_signature"

    invoke-virtual {v2, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getVendingNotificationManager()Lcom/android/vending/VendingNotificationManager;

    move-result-object v0

    .line 393
    .local v0, "notificationMgr":Lcom/android/vending/VendingNotificationManager;
    iget-object v1, p0, Lcom/android/vending/billing/MarketBillingService$BillingNotifier;->mService:Lcom/android/vending/billing/MarketBillingService;

    const v7, 0x108008a

    move-object v5, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/vending/VendingNotificationManager;->showNotification(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 384
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 397
    .end local v0    # "notificationMgr":Lcom/android/vending/VendingNotificationManager;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "contentTitle":Ljava/lang/String;
    .end local v4    # "tickerText":Ljava/lang/String;
    .end local v6    # "contentText":Ljava/lang/String;
    :cond_0
    return-void
.end method
