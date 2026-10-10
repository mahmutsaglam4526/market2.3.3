.class public Lcom/android/vending/billing/MarketBillingService;
.super Lcom/android/vending/compat/VendingService;
.source "MarketBillingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/billing/MarketBillingService$1;,
        Lcom/android/vending/billing/MarketBillingService$AsynchInAppAckNotifications;,
        Lcom/android/vending/billing/MarketBillingService$AsynchRestoreTransactions;,
        Lcom/android/vending/billing/MarketBillingService$AsynchPurchaseInformation;,
        Lcom/android/vending/billing/MarketBillingService$BillingNotifier;,
        Lcom/android/vending/billing/MarketBillingService$Stub;,
        Lcom/android/vending/billing/MarketBillingService$ResponseCode;,
        Lcom/android/vending/billing/MarketBillingService$UidProvider;
    }
.end annotation


# static fields
.field private static sRandom:Ljava/util/Random;


# instance fields
.field private final mBinder:Lcom/android/vending/billing/IMarketBillingService$Stub;

.field mNotifier:Lcom/android/vending/billing/MarketBillingService$BillingNotifier;

.field mPackageManager:Landroid/content/pm/PackageManager;

.field mUidProvider:Lcom/android/vending/billing/MarketBillingService$UidProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/vending/billing/MarketBillingService;->sRandom:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/vending/compat/VendingService;-><init>()V

    .line 79
    new-instance v0, Lcom/android/vending/billing/MarketBillingService$UidProvider;

    invoke-direct {v0}, Lcom/android/vending/billing/MarketBillingService$UidProvider;-><init>()V

    iput-object v0, p0, Lcom/android/vending/billing/MarketBillingService;->mUidProvider:Lcom/android/vending/billing/MarketBillingService$UidProvider;

    .line 98
    new-instance v0, Lcom/android/vending/billing/MarketBillingService$BillingNotifier;

    invoke-direct {v0, p0}, Lcom/android/vending/billing/MarketBillingService$BillingNotifier;-><init>(Lcom/android/vending/billing/MarketBillingService;)V

    iput-object v0, p0, Lcom/android/vending/billing/MarketBillingService;->mNotifier:Lcom/android/vending/billing/MarketBillingService$BillingNotifier;

    .line 99
    new-instance v0, Lcom/android/vending/billing/MarketBillingService$Stub;

    invoke-direct {v0, p0}, Lcom/android/vending/billing/MarketBillingService$Stub;-><init>(Lcom/android/vending/billing/MarketBillingService;)V

    iput-object v0, p0, Lcom/android/vending/billing/MarketBillingService;->mBinder:Lcom/android/vending/billing/IMarketBillingService$Stub;

    .line 604
    return-void
.end method

.method static synthetic access$000()Ljava/util/Random;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/vending/billing/MarketBillingService;->sRandom:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/vending/billing/MarketBillingService;Lcom/android/vending/model/PurchaseResult;)Lcom/android/vending/billing/MarketBillingService$ResponseCode;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/billing/MarketBillingService;
    .param p1, "x1"    # Lcom/android/vending/model/PurchaseResult;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/vending/billing/MarketBillingService;->purchaseResultToResponseCode(Lcom/android/vending/model/PurchaseResult;)Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    move-result-object v0

    return-object v0
.end method

.method private purchaseResultToResponseCode(Lcom/android/vending/model/PurchaseResult;)Lcom/android/vending/billing/MarketBillingService$ResponseCode;
    .locals 2
    .param p1, "result"    # Lcom/android/vending/model/PurchaseResult;

    .prologue
    .line 473
    sget-object v0, Lcom/android/vending/billing/MarketBillingService$1;->$SwitchMap$com$android$vending$model$PurchaseResult$ResultCode:[I

    invoke-virtual {p1}, Lcom/android/vending/model/PurchaseResult;->getResultCode()Lcom/android/vending/model/PurchaseResult$ResultCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/vending/model/PurchaseResult$ResultCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 481
    sget-object v0, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_ERROR:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    :goto_0
    return-object v0

    .line 475
    :pswitch_0
    sget-object v0, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_OK:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    goto :goto_0

    .line 477
    :pswitch_1
    sget-object v0, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    goto :goto_0

    .line 479
    :pswitch_2
    sget-object v0, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_ITEM_UNAVAILABLE:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    goto :goto_0

    .line 473
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static sendNotify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "notifyIds"    # Ljava/lang/String;

    .prologue
    const-string v5, "notification_id"

    .line 446
    new-instance v1, Lcom/android/vending/billing/InAppRequestDatabase;

    invoke-direct {v1, p0}, Lcom/android/vending/billing/InAppRequestDatabase;-><init>(Landroid/content/Context;)V

    .line 448
    .local v1, "inAppRequestDatabase":Lcom/android/vending/billing/InAppRequestDatabase;
    invoke-virtual {v1, p1, p2}, Lcom/android/vending/billing/InAppRequestDatabase;->logNotificationId(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 450
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.vending.billing.IN_APP_NOTIFY_INTERNAL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 451
    .local v0, "buyActivityIntent":Landroid/content/Intent;
    const-string v3, "asset_package"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    const-string v3, "notification_id"

    invoke-virtual {v0, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 455
    .end local v0    # "buyActivityIntent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {v1}, Lcom/android/vending/billing/InAppRequestDatabase;->close()V

    .line 457
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.vending.billing.IN_APP_NOTIFY"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v3}, Lcom/android/vending/util/Util;->findReceiverName(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    .line 459
    .local v2, "intent":Landroid/content/Intent;
    if-nez v2, :cond_1

    .line 460
    const/4 v3, 0x0

    .line 465
    :goto_0
    return v3

    .line 462
    :cond_1
    const-string v3, "notification_id"

    invoke-virtual {v2, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 465
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static sendResponseCode(Landroid/content/Context;Ljava/lang/String;JLcom/android/vending/billing/MarketBillingService$ResponseCode;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "requestId"    # J
    .param p4, "responseCode"    # Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    .prologue
    .line 345
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.vending.billing.RESPONSE_CODE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Lcom/android/vending/util/Util;->findReceiverName(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 347
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 348
    const/4 v1, 0x0

    .line 353
    :goto_0
    return v1

    .line 350
    :cond_0
    const-string v1, "request_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 351
    const-string v1, "response_code"

    invoke-virtual {p4}, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 352
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 353
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/vending/billing/MarketBillingService;->mBinder:Lcom/android/vending/billing/IMarketBillingService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/android/vending/compat/VendingService;->onCreate()V

    .line 85
    invoke-virtual {p0}, Lcom/android/vending/billing/MarketBillingService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/billing/MarketBillingService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 86
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 95
    invoke-super {p0}, Lcom/android/vending/compat/VendingService;->onDestroy()V

    .line 96
    return-void
.end method
