.class public Lcom/android/vending/billing/InAppBuyPageActivity;
.super Lcom/android/vending/billing/BaseBuyPageActivity;
.source "InAppBuyPageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/billing/InAppBuyPageActivity$3;,
        Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;
    }
.end annotation


# instance fields
.field private mDeveloperPayload:Ljava/lang/String;

.field private mDialog:Landroid/app/Dialog;

.field private mDisplayingErrorDialog:Z

.field private mErrorDialogAccessor:Lcom/android/vending/AlertUtil$MutableDialogAccessor;

.field private mHelpUri:Landroid/net/Uri;

.field private mInAppTitleBarView:Landroid/view/View;

.field private mItemDescriptionView:Landroid/widget/TextView;

.field private mItemTitleView:Landroid/widget/TextView;

.field private volatile mNotificationDeadline:J

.field private mNotificationReceiver:Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;

.field private mRequestId:J

.field private mResponseCode:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

.field private volatile mSeenNotificationIds:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;-><init>()V

    .line 77
    sget-object v0, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_OK:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    iput-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mResponseCode:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/billing/InAppBuyPageActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/billing/InAppBuyPageActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mSeenNotificationIds:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/vending/billing/InAppBuyPageActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/billing/InAppBuyPageActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mSeenNotificationIds:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/vending/billing/InAppBuyPageActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/vending/billing/InAppBuyPageActivity;

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mNotificationDeadline:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/vending/billing/InAppBuyPageActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/billing/InAppBuyPageActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/vending/billing/InAppBuyPageActivity;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/billing/InAppBuyPageActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mHelpUri:Landroid/net/Uri;

    return-object v0
.end method

.method private displayErrorDialog(IILjava/lang/String;)V
    .locals 6
    .param p1, "titleId"    # I
    .param p2, "messageId"    # I
    .param p3, "helpUrl"    # Ljava/lang/String;

    .prologue
    .line 440
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mDisplayingErrorDialog:Z

    .line 441
    const/4 v5, 0x0

    .line 442
    .local v5, "helpButtonText":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 443
    invoke-static {p3}, Lcom/android/vending/util/Util;->replaceLanguageAndRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 444
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mHelpUri:Landroid/net/Uri;

    .line 445
    const v0, 0x7f060098

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/InAppBuyPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 447
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/vending/billing/InAppBuyPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 448
    .local v2, "title":Ljava/lang/String;
    invoke-virtual {p0, p2}, Lcom/android/vending/billing/InAppBuyPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 449
    .local v3, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mErrorDialogAccessor:Lcom/android/vending/AlertUtil$MutableDialogAccessor;

    const v0, 0x7f06002b

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/InAppBuyPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/vending/AlertUtil;->displayTitleMessageDialog(Lcom/android/vending/BaseActivity;Lcom/android/vending/AlertUtil$MutableDialogAccessor;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 451
    return-void
.end method

.method private initDialogViews()V
    .locals 1

    .prologue
    .line 454
    invoke-direct {p0}, Lcom/android/vending/billing/InAppBuyPageActivity;->makeDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mDialog:Landroid/app/Dialog;

    .line 455
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 456
    return-void
.end method

.method private makeDialog()Landroid/app/Dialog;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 459
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 461
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f03003b

    invoke-static {p0, v3, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .local v1, "v":Landroid/view/View;
    move v3, v2

    move v4, v2

    move v5, v2

    .line 462
    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    .line 465
    const v2, 0x7f030018

    invoke-static {p0, v2, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mInAppTitleBarView:Landroid/view/View;

    .line 466
    iget-object v2, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mInAppTitleBarView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 467
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 468
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 470
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected addAppIconRequest(Lcom/android/vending/billing/PurchasePostAction;)Z
    .locals 1
    .param p1, "purchasePostAction"    # Lcom/android/vending/billing/PurchasePostAction;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mAssetId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/vending/billing/PurchasePostAction;->queueIconRequest(Ljava/lang/String;)V

    .line 297
    const/4 v0, 0x1

    return v0
.end method

.method protected addAssetRequest(Lcom/android/vending/billing/PurchasePostAction;)Z
    .locals 1
    .param p1, "purchasePostAction"    # Lcom/android/vending/billing/PurchasePostAction;

    .prologue
    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method protected addPurchaseProductRequest(Lcom/android/vending/billing/PurchasePostAction;)Z
    .locals 4
    .param p1, "purchasePostAction"    # Lcom/android/vending/billing/PurchasePostAction;

    .prologue
    .line 309
    new-instance v0, Lcom/android/vending/model/PurchaseProductRequest;

    invoke-direct {v0}, Lcom/android/vending/model/PurchaseProductRequest;-><init>()V

    .line 310
    .local v0, "request":Lcom/android/vending/model/PurchaseProductRequest;
    sget-object v1, Lcom/android/vending/model/PurchaseInfo$ProductType;->MARKET_IN_APP_PRODUCT:Lcom/android/vending/model/PurchaseInfo$ProductType;

    invoke-virtual {v0, v1}, Lcom/android/vending/model/PurchaseProductRequest;->setProductType(Lcom/android/vending/model/PurchaseInfo$ProductType;)V

    .line 311
    iget-object v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mAssetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/vending/model/PurchaseProductRequest;->setProductId(Ljava/lang/String;)V

    .line 312
    iget-object v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mVersionCode:I

    iget-object v3, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/vending/billing/InAppBuyPageActivity;->computeSignatureHash(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/vending/model/PurchaseProductRequest;->setPackageParams(Ljava/lang/String;I[B)V

    .line 313
    invoke-virtual {p1, v0}, Lcom/android/vending/billing/PurchasePostAction;->queuePurchaseProductRequest(Lcom/android/vending/model/PurchaseProductRequest;)V

    .line 314
    const/4 v1, 0x1

    return v1
.end method

.method protected createViewOnStart()Landroid/view/View;
    .locals 3

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/android/vending/billing/InAppBuyPageActivity;->initDialogViews()V

    .line 257
    iget-object v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mDialog:Landroid/app/Dialog;

    const v2, 0x7f070069

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 258
    .local v0, "rootView":Landroid/view/View;
    iget-object v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mInAppTitleBarView:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/billing/InAppBuyPageActivity;->setupWidgets(Landroid/view/View;Landroid/view/View;)V

    .line 259
    return-object v0
.end method

.method public displayWaitingUiForPurchaseOrderAction()V
    .locals 2

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mRootView:Landroid/view/View;

    const v1, 0x7f07006a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 519
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mRootView:Landroid/view/View;

    const v1, 0x7f0700d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 520
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mRootView:Landroid/view/View;

    const v1, 0x7f0700d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0    # "this":Lcom/android/vending/billing/InAppBuyPageActivity;
    check-cast p0, Landroid/widget/TextView;

    const v0, 0x7f060103

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    .line 522
    return-void
.end method

.method protected finishOnOrderSuccess()Z
    .locals 1

    .prologue
    .line 511
    const/4 v0, 0x0

    return v0
.end method

.method protected getDefaultRefundPolicy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    const-string v0, ""

    return-object v0
.end method

.method protected getTitleBarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mInAppTitleBarView:Landroid/view/View;

    return-object v0
.end method

.method public hideWaitingUiForPurchaseOrderAction()V
    .locals 0

    .prologue
    .line 527
    return-void
.end method

.method protected initClass(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 177
    invoke-virtual {p0}, Lcom/android/vending/billing/InAppBuyPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 178
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 179
    .local v1, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 180
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 181
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 183
    invoke-virtual {p0}, Lcom/android/vending/billing/InAppBuyPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 184
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "request_id"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mRequestId:J

    .line 185
    const-string v3, "developer_payload"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mDeveloperPayload:Ljava/lang/String;

    .line 187
    new-instance v3, Lcom/android/vending/billing/InAppBuyPageActivity$1;

    invoke-direct {v3, p0}, Lcom/android/vending/billing/InAppBuyPageActivity$1;-><init>(Lcom/android/vending/billing/InAppBuyPageActivity;)V

    new-instance v4, Lcom/android/vending/billing/InAppBuyPageActivity$2;

    invoke-direct {v4, p0}, Lcom/android/vending/billing/InAppBuyPageActivity$2;-><init>(Lcom/android/vending/billing/InAppBuyPageActivity;)V

    const/4 v5, 0x0

    invoke-static {p0, v3, v4, v5}, Lcom/android/vending/AlertUtil;->registerMutableDialogAccessor(Lcom/android/vending/BaseActivity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/android/vending/AlertUtil$MutableDialogAccessor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mErrorDialogAccessor:Lcom/android/vending/AlertUtil$MutableDialogAccessor;

    .line 203
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 224
    invoke-super {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->onPause()V

    .line 225
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mNotificationReceiver:Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mNotificationReceiver:Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;

    invoke-virtual {v0}, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->onDestroy()V

    .line 228
    :cond_0
    return-void
.end method

.method protected onDisplayErrorUi(Lcom/android/vending/BaseActivity$BaseAction$RequestErrorType;)V
    .locals 1
    .param p1, "errorType"    # Lcom/android/vending/BaseActivity$BaseAction$RequestErrorType;

    .prologue
    .line 422
    sget-object v0, Lcom/android/vending/BaseActivity$BaseAction$RequestErrorType;->NETWORK_ERROR:Lcom/android/vending/BaseActivity$BaseAction$RequestErrorType;

    if-ne p1, v0, :cond_0

    .line 423
    sget-object v0, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_SERVICE_UNAVAILABLE:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    iput-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mResponseCode:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    .line 427
    :goto_0
    invoke-super {p0, p1}, Lcom/android/vending/billing/BaseBuyPageActivity;->onDisplayErrorUi(Lcom/android/vending/BaseActivity$BaseAction$RequestErrorType;)V

    .line 428
    return-void

    .line 425
    :cond_0
    sget-object v0, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_ERROR:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    iput-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mResponseCode:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    goto :goto_0
.end method

.method public onImageLoaded(Lcom/android/vending/model/GetImageResponse;Lcom/android/vending/model/Asset$AppImageUsage;)V
    .locals 1
    .param p1, "response"    # Lcom/android/vending/model/GetImageResponse;
    .param p2, "usage"    # Lcom/android/vending/model/Asset$AppImageUsage;

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mDisplayingErrorDialog:Z

    if-eqz v0, :cond_0

    .line 349
    :goto_0
    return-void

    .line 348
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/vending/billing/BaseBuyPageActivity;->onImageLoaded(Lcom/android/vending/model/GetImageResponse;Lcom/android/vending/model/Asset$AppImageUsage;)V

    goto :goto_0
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 485
    packed-switch p2, :pswitch_data_0

    .line 506
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 492
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 494
    iget-object v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mSeenNotificationIds:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 495
    const v1, 0x7f060103

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 497
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 501
    .end local v0    # "toast":Landroid/widget/Toast;
    :goto_1
    iget-object v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 502
    invoke-virtual {p0}, Lcom/android/vending/billing/InAppBuyPageActivity;->finish()V

    :cond_0
    move v1, v2

    .line 504
    goto :goto_0

    .line 499
    :cond_1
    sget-object v1, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_USER_CANCELED:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    iput-object v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mResponseCode:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    goto :goto_1

    .line 485
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 215
    invoke-super {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->onPause()V

    .line 216
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mNotificationReceiver:Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mNotificationReceiver:Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;

    invoke-virtual {v0}, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->onPause()V

    .line 218
    invoke-virtual {p0}, Lcom/android/vending/billing/InAppBuyPageActivity;->finish()V

    .line 220
    :cond_0
    return-void
.end method

.method public onPostResponse(Lcom/android/vending/model/PurchasePostResponse;)V
    .locals 4
    .param p1, "postResponse"    # Lcom/android/vending/model/PurchasePostResponse;

    .prologue
    const/4 v3, 0x0

    .line 376
    iget-boolean v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 413
    :goto_0
    return-void

    .line 379
    :cond_0
    invoke-virtual {p1}, Lcom/android/vending/model/PurchasePostResponse;->getPurchaseResult()Lcom/android/vending/model/PurchaseResult$ResultCode;

    move-result-object v0

    .line 380
    .local v0, "purchaseResult":Lcom/android/vending/model/PurchaseResult$ResultCode;
    sget-object v1, Lcom/android/vending/billing/InAppBuyPageActivity$3;->$SwitchMap$com$android$vending$model$PurchaseResult$ResultCode:[I

    invoke-virtual {v0}, Lcom/android/vending/model/PurchaseResult$ResultCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 412
    invoke-super {p0, p1}, Lcom/android/vending/billing/BaseBuyPageActivity;->onPostResponse(Lcom/android/vending/model/PurchasePostResponse;)V

    goto :goto_0

    .line 382
    :pswitch_0
    sget-object v1, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_ITEM_UNAVAILABLE:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    iput-object v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mResponseCode:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    .line 383
    const v1, 0x7f06003d

    const v2, 0x7f06003e

    invoke-direct {p0, v1, v2, v3}, Lcom/android/vending/billing/InAppBuyPageActivity;->displayErrorDialog(IILjava/lang/String;)V

    goto :goto_0

    .line 390
    :pswitch_1
    sget-object v1, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_OK:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    iput-object v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mResponseCode:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    .line 391
    const v1, 0x7f06003f

    const v2, 0x7f060040

    invoke-direct {p0, v1, v2, v3}, Lcom/android/vending/billing/InAppBuyPageActivity;->displayErrorDialog(IILjava/lang/String;)V

    goto :goto_0

    .line 401
    :pswitch_2
    sget-object v1, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    iput-object v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mResponseCode:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    .line 406
    const v1, 0x7f060041

    const v2, 0x7f060042

    const-string v3, "http://www.google.com/support/androidmarket/bin/answer.py?answer=1084187&hl=%lang%&dl=%region%"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/vending/billing/InAppBuyPageActivity;->displayErrorDialog(IILjava/lang/String;)V

    goto :goto_0

    .line 380
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPurchaseProductResponse(Lcom/android/vending/model/PurchaseProductResponse;)V
    .locals 3
    .param p1, "response"    # Lcom/android/vending/model/PurchaseProductResponse;

    .prologue
    .line 357
    iget-boolean v2, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mDisplayingErrorDialog:Z

    if-eqz v2, :cond_1

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    invoke-super {p0, p1}, Lcom/android/vending/billing/BaseBuyPageActivity;->onPurchaseProductResponse(Lcom/android/vending/model/PurchaseProductResponse;)V

    .line 364
    invoke-virtual {p1}, Lcom/android/vending/model/PurchaseProductResponse;->getItemTitle()Ljava/lang/String;

    move-result-object v1

    .line 365
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/vending/model/PurchaseProductResponse;->getItemDescription()Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "description":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 367
    iget-object v2, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mItemTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    :cond_2
    if-eqz v0, :cond_0

    .line 370
    iget-object v2, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mItemDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 279
    invoke-super {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->onRestart()V

    .line 280
    invoke-direct {p0}, Lcom/android/vending/billing/InAppBuyPageActivity;->initDialogViews()V

    .line 281
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 241
    if-eqz p1, :cond_0

    .line 242
    const-string v1, "SEEN_NOTIFICATION_IDS"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "ids":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 245
    new-instance v1, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;

    invoke-direct {v1, p0, v0}, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;-><init>(Lcom/android/vending/billing/InAppBuyPageActivity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mNotificationReceiver:Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;

    .line 246
    const-string v1, "NOTIFICATION_DEADLINE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mNotificationDeadline:J

    .line 247
    invoke-virtual {p0}, Lcom/android/vending/billing/InAppBuyPageActivity;->displayWaitingUiForPurchaseOrderAction()V

    .line 252
    .end local v0    # "ids":Ljava/lang/String;
    :goto_0
    return-void

    .line 251
    :cond_0
    invoke-super {p0, p1}, Lcom/android/vending/billing/BaseBuyPageActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 207
    invoke-super {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->onResume()V

    .line 208
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mNotificationReceiver:Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mNotificationReceiver:Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;

    invoke-virtual {v0}, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->onResume()V

    .line 211
    :cond_0
    return-void
.end method

.method protected onRetryPanelCanceled()V
    .locals 0

    .prologue
    .line 417
    invoke-super {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->onRetryPanelCanceled()V

    .line 418
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mCurrentState:Lcom/android/vending/billing/BaseBuyPageActivity$State;

    if-eqz v0, :cond_0

    .line 233
    invoke-super {p0, p1}, Lcom/android/vending/billing/BaseBuyPageActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 235
    :cond_0
    const-string v0, "SEEN_NOTIFICATION_IDS"

    iget-object v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mSeenNotificationIds:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v0, "NOTIFICATION_DEADLINE"

    iget-wide v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mNotificationDeadline:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 237
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 269
    invoke-super {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->onStop()V

    .line 270
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 271
    invoke-virtual {p0}, Lcom/android/vending/billing/InAppBuyPageActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mPackageName:Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mRequestId:J

    iget-object v3, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mResponseCode:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/vending/billing/MarketBillingService;->sendResponseCode(Landroid/content/Context;Ljava/lang/String;JLcom/android/vending/billing/MarketBillingService$ResponseCode;)Z

    .line 275
    :cond_0
    return-void
.end method

.method protected purchaseAsset(Ljava/lang/String;Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;Ljava/lang/String;)V
    .locals 4
    .param p1, "instrumentId"    # Ljava/lang/String;
    .param p2, "instrumentType"    # Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;
    .param p3, "carrierBillingPassword"    # Ljava/lang/String;

    .prologue
    .line 534
    new-instance v2, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;

    invoke-direct {v2, p0}, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;-><init>(Lcom/android/vending/billing/InAppBuyPageActivity;)V

    iput-object v2, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mNotificationReceiver:Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;

    .line 535
    sget-object v2, Lcom/android/vending/compat/VendingGservicesKeys;->VENDING_MAX_IAB_PURCHASE_WAIT_MS:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v2}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 536
    .local v0, "purchaseWaitDeadline":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mNotificationDeadline:J

    .line 537
    iget-object v2, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mNotificationReceiver:Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;

    invoke-virtual {v2}, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->registerReceiver()V

    .line 540
    invoke-super {p0, p1, p2, p3}, Lcom/android/vending/billing/BaseBuyPageActivity;->purchaseAsset(Ljava/lang/String;Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;Ljava/lang/String;)V

    .line 545
    iget-object v2, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mNotificationReceiver:Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;

    invoke-virtual {v2}, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->onResume()V

    .line 546
    iget-object v2, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mNotificationReceiver:Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;

    invoke-virtual {v2, v0, v1}, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->postCloseActivity(J)V

    .line 547
    return-void
.end method

.method protected setPurchasePostProductType(Lcom/android/vending/model/PurchasePostRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/android/vending/model/PurchasePostRequest;

    .prologue
    .line 319
    sget-object v0, Lcom/android/vending/model/PurchaseInfo$ProductType;->MARKET_IN_APP_PRODUCT:Lcom/android/vending/model/PurchaseInfo$ProductType;

    invoke-virtual {p1, v0}, Lcom/android/vending/model/PurchasePostRequest;->setProductType(Lcom/android/vending/model/PurchaseInfo$ProductType;)V

    .line 320
    return-void
.end method

.method protected setSignatureHash(Lcom/android/vending/model/PurchaseOrderRequest;)V
    .locals 3
    .param p1, "request"    # Lcom/android/vending/model/PurchaseOrderRequest;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mPackageName:Ljava/lang/String;

    iget v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mVersionCode:I

    iget-object v2, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/vending/billing/InAppBuyPageActivity;->computeSignatureHash(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/vending/model/PurchaseOrderRequest;->setPackageParams(Ljava/lang/String;I[B)V

    .line 338
    return-void
.end method

.method protected setSignatureHash(Lcom/android/vending/model/PurchasePostRequest;)V
    .locals 3
    .param p1, "request"    # Lcom/android/vending/model/PurchasePostRequest;

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mPackageName:Ljava/lang/String;

    iget v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mVersionCode:I

    iget-object v2, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/vending/billing/InAppBuyPageActivity;->computeSignatureHash(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/vending/model/PurchasePostRequest;->setPackageParams(Ljava/lang/String;I[B)V

    .line 333
    return-void
.end method

.method protected setupWidgets(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "titleBarView"    # Landroid/view/View;

    .prologue
    .line 475
    invoke-super {p0, p1, p2}, Lcom/android/vending/billing/BaseBuyPageActivity;->setupWidgets(Landroid/view/View;Landroid/view/View;)V

    .line 476
    const v0, 0x7f0700dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mItemTitleView:Landroid/widget/TextView;

    .line 477
    const v0, 0x7f0700dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mItemDescriptionView:Landroid/widget/TextView;

    .line 478
    return-void
.end method

.method protected updatePurchaseOrderForProductType(Lcom/android/vending/model/PurchaseOrderRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/android/vending/model/PurchaseOrderRequest;

    .prologue
    .line 324
    sget-object v0, Lcom/android/vending/model/PurchaseInfo$ProductType;->MARKET_IN_APP_PRODUCT:Lcom/android/vending/model/PurchaseInfo$ProductType;

    invoke-virtual {p1, v0}, Lcom/android/vending/model/PurchaseOrderRequest;->setProductType(Lcom/android/vending/model/PurchaseInfo$ProductType;)V

    .line 325
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mDeveloperPayload:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mDeveloperPayload:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/vending/model/PurchaseOrderRequest;->setDeveloperPayload(Ljava/lang/String;)V

    .line 328
    :cond_0
    return-void
.end method

.method public updateStateDependentUi(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
    .locals 0
    .param p1, "assetId"    # Ljava/lang/String;
    .param p2, "newState"    # Lcom/android/vending/model/LocalAssetInfo$AssetState;

    .prologue
    .line 482
    return-void
.end method
