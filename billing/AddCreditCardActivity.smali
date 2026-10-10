.class public Lcom/android/vending/billing/AddCreditCardActivity;
.super Lcom/android/vending/billing/BasePurchaseActivity;
.source "AddCreditCardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/vending/AssetItemAdapter$OnImagesLoadedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/billing/AddCreditCardActivity$5;,
        Lcom/android/vending/billing/AddCreditCardActivity$State;
    }
.end annotation


# instance fields
.field protected mAccessor:Lcom/android/vending/BaseActivity$ProgressDialogAccessor;

.field protected mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

.field private mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

.field private mCountries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vending/model/Country;",
            ">;"
        }
    .end annotation
.end field

.field private mCountry:Lcom/android/vending/model/Country;

.field private mCreditCardView:Landroid/view/ViewGroup;

.field private mCurrentState:Lcom/android/vending/billing/AddCreditCardActivity$State;

.field private mErrors:Z

.field private mExpirationMonth:I

.field protected mExpirationMonthEntry:Landroid/widget/EditText;

.field private mExpirationYear:I

.field protected mExpirationYearEntry:Landroid/widget/EditText;

.field mForwarder:Lcom/android/vending/billing/PurchaseResponseForwarder;

.field private mPurchasePostAction:Lcom/android/vending/billing/PurchasePostAction;

.field protected mSaveButton:Landroid/widget/Button;

.field private mScrollView:Landroid/widget/ScrollView;

.field protected mSelectedCountry:Ljava/lang/String;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTosAccepted:Z

.field private mTosText:Ljava/lang/String;

.field private mTosUrl:Ljava/lang/String;

.field protected mTransactionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/vending/billing/BasePurchaseActivity;-><init>()V

    .line 128
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mTempRect:Landroid/graphics/Rect;

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/billing/AddCreditCardActivity;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/billing/AddCreditCardActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/vending/billing/AddCreditCardActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/billing/AddCreditCardActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mTosAccepted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/vending/billing/AddCreditCardActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/billing/AddCreditCardActivity;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/vending/billing/AddCreditCardActivity;->displayTosErrorMessage()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/vending/billing/AddCreditCardActivity;)Lcom/android/vending/model/Country;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/billing/AddCreditCardActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mCountry:Lcom/android/vending/model/Country;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/vending/billing/AddCreditCardActivity;Lcom/android/vending/model/Country;)Lcom/android/vending/model/Country;
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/billing/AddCreditCardActivity;
    .param p1, "x1"    # Lcom/android/vending/model/Country;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mCountry:Lcom/android/vending/model/Country;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/vending/billing/AddCreditCardActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/billing/AddCreditCardActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mCountries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/vending/billing/AddCreditCardActivity;Lcom/android/vending/billing/AddCreditCardActivity$State;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/billing/AddCreditCardActivity;
    .param p1, "x1"    # Lcom/android/vending/billing/AddCreditCardActivity$State;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/vending/billing/AddCreditCardActivity;->setState(Lcom/android/vending/billing/AddCreditCardActivity$State;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/vending/billing/AddCreditCardActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/billing/AddCreditCardActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/vending/billing/AddCreditCardActivity;->displayErrors(Ljava/util/List;)V

    return-void
.end method

.method private addBillingInstrument()V
    .locals 5

    .prologue
    .line 808
    invoke-virtual {p0}, Lcom/android/vending/billing/AddCreditCardActivity;->getCreditCardFromInput()Lcom/android/vending/model/CreditCard;

    move-result-object v0

    .line 809
    .local v0, "creditCard":Lcom/android/vending/model/CreditCard;
    if-nez v0, :cond_0

    .line 811
    invoke-virtual {p0}, Lcom/android/vending/billing/AddCreditCardActivity;->displayErrorMessages()V

    .line 828
    :goto_0
    return-void

    .line 814
    :cond_0
    sget-object v2, Lcom/android/vending/billing/AddCreditCardActivity$State;->SAVING_CARD:Lcom/android/vending/billing/AddCreditCardActivity$State;

    invoke-direct {p0, v2}, Lcom/android/vending/billing/AddCreditCardActivity;->setState(Lcom/android/vending/billing/AddCreditCardActivity$State;)V

    .line 817
    new-instance v1, Lcom/android/vending/model/PurchasePostRequest;

    sget-object v2, Lcom/android/vending/billing/AddCreditCardActivity;->sCheckoutToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mAssetId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mTransactionId:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/vending/model/PurchasePostRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/model/CreditCard;)V

    .line 818
    .local v1, "request":Lcom/android/vending/model/PurchasePostRequest;
    invoke-direct {p0}, Lcom/android/vending/billing/AddCreditCardActivity;->tosExplicitlyAccepted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 819
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/vending/model/PurchasePostRequest;->setTosAccepted(Z)V

    .line 821
    :cond_1
    iget-boolean v2, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mIsInAppPurchase:Z

    if-eqz v2, :cond_2

    .line 822
    iget-object v2, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mVersionCode:I

    iget-object v4, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/vending/billing/AddCreditCardActivity;->computeSignatureHash(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/vending/model/PurchasePostRequest;->setPackageParams(Ljava/lang/String;I[B)V

    .line 824
    sget-object v2, Lcom/android/vending/model/PurchaseInfo$ProductType;->MARKET_IN_APP_PRODUCT:Lcom/android/vending/model/PurchaseInfo$ProductType;

    invoke-virtual {v1, v2}, Lcom/android/vending/model/PurchasePostRequest;->setProductType(Lcom/android/vending/model/PurchaseInfo$ProductType;)V

    .line 826
    :cond_2
    iget-object v2, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mPurchasePostAction:Lcom/android/vending/billing/PurchasePostAction;

    invoke-virtual {v2, v1}, Lcom/android/vending/billing/PurchasePostAction;->queuePostRequest(Lcom/android/vending/model/PurchasePostRequest;)V

    .line 827
    iget-object v2, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mAccessor:Lcom/android/vending/BaseActivity$ProgressDialogAccessor;

    invoke-virtual {p0, v2}, Lcom/android/vending/billing/AddCreditCardActivity;->displayDialog(Lcom/android/vending/controller/DialogAccessor;)V

    goto :goto_0
.end method

.method private clearErrorMessages()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 376
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mErrors:Z

    .line 377
    iget-object v0, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressWidget;->clearErrorMessage()V

    .line 378
    const v0, 0x7f0700b2

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/AddCreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 379
    const v0, 0x7f0700b4

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/AddCreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 380
    const v0, 0x7f0700b6

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/AddCreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 381
    const v0, 0x7f0700b1

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/AddCreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 382
    const v0, 0x7f070065

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/AddCreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0    # "this":Lcom/android/vending/billing/AddCreditCardActivity;
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v1, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 383
    return-void
.end method

.method private displayAssetSnippet()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1011
    iget-boolean v0, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 1027
    :goto_0
    return-void

    .line 1014
    :cond_0
    iget-object v0, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v0, v4}, Lcom/android/vending/AssetItemAdapter;->getAsset(I)Lcom/android/vending/model/Asset;

    move-result-object v0

    .line 1015
    const/high16 v1, -0x40800000    # -1.0f

    .line 1016
    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->getNumRaters()I

    move-result v2

    if-lez v2, :cond_1

    .line 1017
    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->getRating()D

    move-result-wide v1

    double-to-float v1, v1

    .line 1019
    :cond_1
    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->getOwnerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->getPrice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/android/vending/billing/AddCreditCardActivity;->displayTitleBar(Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;)V

    .line 1024
    iget-object v0, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    sget-object v1, Lcom/android/vending/model/Asset$AppImageUsage;->ICON:Lcom/android/vending/model/Asset$AppImageUsage;

    invoke-virtual {v0, v4, v1}, Lcom/android/vending/AssetItemAdapter;->getBitmapAt(ILcom/android/vending/model/Asset$AppImageUsage;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 1025
    iget-object v1, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mTitleBarView:Landroid/view/View;

    const v2, 0x7f07001e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    .line 1026
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private displayCheckoutTosDialog()V
    .locals 7

    .prologue
    .line 558
    const v4, 0x7f030028

    invoke-static {v4, p0}, Lcom/android/vending/util/Util;->inflateView(ILandroid/content/Context;)Landroid/view/View;

    move-result-object v3

    .line 560
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f0700a4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    .line 561
    .local v2, "tosText":Landroid/webkit/WebView;
    iget-object v4, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mTosText:Ljava/lang/String;

    const-string v5, "text/html"

    const-string v6, "utf-8"

    invoke-virtual {v2, v4, v5, v6}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    new-instance v1, Lcom/android/vending/billing/AddCreditCardActivity$2;

    invoke-direct {v1, p0}, Lcom/android/vending/billing/AddCreditCardActivity$2;-><init>(Lcom/android/vending/billing/AddCreditCardActivity;)V

    .line 580
    .local v1, "onClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 581
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f030029

    invoke-static {v4, p0}, Lcom/android/vending/util/Util;->inflateView(ILandroid/content/Context;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 582
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 583
    const v4, 0x7f06002f

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 584
    const v4, 0x7f060030

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 585
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 586
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 587
    return-void
.end method

.method private displayError(Landroid/widget/TextView;I)V
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "errorMessageResId"    # I

    .prologue
    .line 405
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mErrors:Z

    .line 406
    invoke-virtual {p0, p2}, Lcom/android/vending/billing/AddCreditCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    if-eqz p1, :cond_0

    .line 408
    invoke-virtual {p0, p2}, Lcom/android/vending/billing/AddCreditCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 410
    :cond_0
    return-void
.end method

.method private displayErrors(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/InputField;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "errorFields":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/InputField;>;"
    const v10, 0x7f060109

    .line 420
    const/4 v7, 0x0

    .line 421
    .local v7, "topMostView":Landroid/view/View;
    const/4 v6, 0x0

    .line 422
    .local v6, "topMostTop":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/vending/model/InputField;

    .line 423
    .local v3, "field":Lcom/android/vending/model/InputField;
    const/4 v2, 0x0

    .line 425
    .local v2, "currentView":Landroid/view/View;
    sget-object v8, Lcom/android/vending/billing/AddCreditCardActivity$5;->$SwitchMap$com$android$vending$model$InputField:[I

    invoke-virtual {v3}, Lcom/android/vending/model/InputField;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 473
    :goto_1
    if-eqz v2, :cond_0

    .line 477
    if-nez v7, :cond_1

    .line 478
    move-object v7, v2

    .line 479
    iget-object v8, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mCreditCardView:Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mTempRect:Landroid/graphics/Rect;

    invoke-static {v8, v2, v9}, Lcom/android/vending/util/Util;->getViewOffsetToChild(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)I

    move-result v6

    goto :goto_0

    .line 427
    :pswitch_0
    const v8, 0x7f0700b6

    invoke-virtual {p0, v8}, Lcom/android/vending/billing/AddCreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 428
    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    move-object v8, v0

    const v9, 0x7f060106

    invoke-direct {p0, v8, v9}, Lcom/android/vending/billing/AddCreditCardActivity;->displayError(Landroid/widget/TextView;I)V

    goto :goto_1

    .line 431
    :pswitch_1
    iget-object v2, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mExpirationMonthEntry:Landroid/widget/EditText;

    .line 432
    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    move-object v8, v0

    const v9, 0x7f060104

    invoke-direct {p0, v8, v9}, Lcom/android/vending/billing/AddCreditCardActivity;->displayError(Landroid/widget/TextView;I)V

    goto :goto_1

    .line 435
    :pswitch_2
    iget-object v2, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mExpirationYearEntry:Landroid/widget/EditText;

    .line 436
    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    move-object v8, v0

    const v9, 0x7f060105

    invoke-direct {p0, v8, v9}, Lcom/android/vending/billing/AddCreditCardActivity;->displayError(Landroid/widget/TextView;I)V

    goto :goto_1

    .line 439
    :pswitch_3
    const v8, 0x7f0700b1

    invoke-virtual {p0, v8}, Lcom/android/vending/billing/AddCreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 440
    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    move-object v8, v0

    const v9, 0x7f060107

    invoke-direct {p0, v8, v9}, Lcom/android/vending/billing/AddCreditCardActivity;->displayError(Landroid/widget/TextView;I)V

    goto :goto_1

    .line 445
    :pswitch_4
    iget-object v8, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    sget-object v9, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_1:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v8, v9}, Lcom/android/i18n/addressinput/AddressWidget;->getViewForField(Lcom/android/i18n/addressinput/AddressField;)Landroid/view/View;

    move-result-object v2

    .line 446
    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    move-object v8, v0

    invoke-direct {p0, v8, v10}, Lcom/android/vending/billing/AddCreditCardActivity;->displayError(Landroid/widget/TextView;I)V

    goto :goto_1

    .line 449
    :pswitch_5
    iget-object v8, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    sget-object v9, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_2:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v8, v9}, Lcom/android/i18n/addressinput/AddressWidget;->getViewForField(Lcom/android/i18n/addressinput/AddressField;)Landroid/view/View;

    move-result-object v2

    .line 450
    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    move-object v8, v0

    invoke-direct {p0, v8, v10}, Lcom/android/vending/billing/AddCreditCardActivity;->displayError(Landroid/widget/TextView;I)V

    goto :goto_1

    .line 453
    :pswitch_6
    iget-object v8, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    sget-object v9, Lcom/android/i18n/addressinput/AddressField;->LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v8, v9}, Lcom/android/i18n/addressinput/AddressWidget;->getViewForField(Lcom/android/i18n/addressinput/AddressField;)Landroid/view/View;

    move-result-object v2

    .line 454
    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    move-object v8, v0

    const v9, 0x7f06010b

    invoke-direct {p0, v8, v9}, Lcom/android/vending/billing/AddCreditCardActivity;->displayError(Landroid/widget/TextView;I)V

    goto :goto_1

    .line 457
    :pswitch_7
    const v8, 0x7f0700b7

    invoke-virtual {p0, v8}, Lcom/android/vending/billing/AddCreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 458
    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    move-object v8, v0

    const v9, 0x7f060108

    invoke-direct {p0, v8, v9}, Lcom/android/vending/billing/AddCreditCardActivity;->displayError(Landroid/widget/TextView;I)V

    goto/16 :goto_1

    .line 461
    :pswitch_8
    const v8, 0x7f070065

    invoke-virtual {p0, v8}, Lcom/android/vending/billing/AddCreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 462
    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    move-object v8, v0

    const v9, 0x7f06010d

    invoke-direct {p0, v8, v9}, Lcom/android/vending/billing/AddCreditCardActivity;->displayError(Landroid/widget/TextView;I)V

    goto/16 :goto_1

    .line 465
    :pswitch_9
    iget-object v8, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    sget-object v9, Lcom/android/i18n/addressinput/AddressField;->POSTAL_CODE:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v8, v9}, Lcom/android/i18n/addressinput/AddressWidget;->getViewForField(Lcom/android/i18n/addressinput/AddressField;)Landroid/view/View;

    move-result-object v2

    .line 466
    iget-object v8, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    sget-object v9, Lcom/android/i18n/addressinput/AddressField;->POSTAL_CODE:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v8, v9}, Lcom/android/i18n/addressinput/AddressWidget;->displayErrorMessageForInvalidEntryIn(Lcom/android/i18n/addressinput/AddressField;)Landroid/view/View;

    goto/16 :goto_1

    .line 469
    :pswitch_a
    iget-object v8, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    sget-object v9, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v8, v9}, Lcom/android/i18n/addressinput/AddressWidget;->getViewForField(Lcom/android/i18n/addressinput/AddressField;)Landroid/view/View;

    move-result-object v2

    .line 470
    iget-object v8, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    sget-object v9, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v8, v9}, Lcom/android/i18n/addressinput/AddressWidget;->displayErrorMessageForInvalidEntryIn(Lcom/android/i18n/addressinput/AddressField;)Landroid/view/View;

    goto/16 :goto_1

    .line 481
    :cond_1
    iget-object v8, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mCreditCardView:Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mTempRect:Landroid/graphics/Rect;

    invoke-static {v8, v2, v9}, Lcom/android/vending/util/Util;->getViewOffsetToChild(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)I

    move-result v1

    .line 482
    .local v1, "currentTop":I
    if-ge v1, v6, :cond_0

    .line 483
    move-object v7, v2

    .line 484
    move v6, v1

    goto/16 :goto_0

    .line 489
    .end local v1    # "currentTop":I
    .end local v2    # "currentView":Landroid/view/View;
    .end local v3    # "field":Lcom/android/vending/model/InputField;
    :cond_2
    invoke-virtual {p0}, Lcom/android/vending/billing/AddCreditCardActivity;->displayErrorMessages()V

    .line 496
    if-eqz v7, :cond_3

    .line 497
    move-object v4, v7

    .line 498
    .local v4, "finalTopMostView":Landroid/view/View;
    iget-object v8, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/vending/billing/AddCreditCardActivity$1;

    invoke-direct {v9, p0, v4}, Lcom/android/vending/billing/AddCreditCardActivity$1;-><init>(Lcom/android/vending/billing/AddCreditCardActivity;Landroid/view/View;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 506
    .end local v4    # "finalTopMostView":Landroid/view/View;
    :cond_3
    return-void

    .line 425
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private displayTosErrorMessage()V
    .locals 3

    .prologue
    .line 512
    const v1, 0x7f06014a

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 513
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 514
    return-void
.end method

.method private displayWidgets()V
    .locals 0

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/android/vending/billing/AddCreditCardActivity;->displayTOSWidget()V

    .line 370
    return-void
.end method

.method private handleSuccessfulPost(Lcom/android/vending/model/PurchasePostResponse;)V
    .locals 1
    .param p1, "postResponse"    # Lcom/android/vending/model/PurchasePostResponse;

    .prologue
    .line 978
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/AddCreditCardActivity;->setResult(I)V

    .line 979
    invoke-virtual {p0}, Lcom/android/vending/billing/AddCreditCardActivity;->finish()V

    .line 980
    return-void
.end method

.method private parseAndValidateExpirationDate(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .locals 12
    .param p1, "yearEntry"    # Ljava/lang/String;
    .param p2, "monthEntry"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/InputField;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "errorList":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/InputField;>;"
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 609
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 614
    .local v4, "monthVal":I
    if-lt v4, v11, :cond_0

    const/16 v8, 0xc

    if-le v4, v8, :cond_1

    .line 615
    :cond_0
    sget-object v8, Lcom/android/vending/model/InputField;->CC_EXP_MONTH:Lcom/android/vending/model/InputField;

    invoke-interface {p3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v8, v10

    .line 651
    .end local v4    # "monthVal":I
    :goto_0
    return v8

    .line 610
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 611
    .local v2, "e":Ljava/lang/NumberFormatException;
    sget-object v8, Lcom/android/vending/model/InputField;->CC_EXP_MONTH:Lcom/android/vending/model/InputField;

    invoke-interface {p3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v8, v10

    .line 612
    goto :goto_0

    .line 619
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "monthVal":I
    :cond_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v8, "MM/yy"

    invoke-direct {v1, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 621
    .local v1, "df":Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/text/ParsePosition;

    invoke-direct {v5, v10}, Ljava/text/ParsePosition;-><init>(I)V

    .line 622
    .local v5, "pp":Ljava/text/ParsePosition;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    .line 623
    invoke-virtual {v5}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v8

    if-ltz v8, :cond_2

    .line 624
    sget-object v8, Lcom/android/vending/model/InputField;->CC_EXP_YEAR:Lcom/android/vending/model/InputField;

    invoke-interface {p3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v8, v10

    .line 625
    goto :goto_0

    .line 628
    :cond_2
    invoke-virtual {v1}, Ljava/text/SimpleDateFormat;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 630
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v3, v8, 0x1

    .line 631
    .local v3, "month":I
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 633
    .local v7, "year":I
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 634
    .local v6, "today":Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 635
    iget v8, v6, Landroid/text/format/Time;->year:I

    if-ge v7, v8, :cond_3

    .line 636
    sget-object v8, Lcom/android/vending/model/InputField;->CC_EXP_YEAR:Lcom/android/vending/model/InputField;

    invoke-interface {p3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v8, v10

    .line 637
    goto :goto_0

    .line 638
    :cond_3
    iget v8, v6, Landroid/text/format/Time;->year:I

    if-ne v7, v8, :cond_4

    iget v8, v6, Landroid/text/format/Time;->month:I

    add-int/lit8 v8, v8, 0x1

    if-ge v3, v8, :cond_4

    .line 639
    sget-object v8, Lcom/android/vending/model/InputField;->CC_EXP_MONTH:Lcom/android/vending/model/InputField;

    invoke-interface {p3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v8, v10

    .line 640
    goto :goto_0

    .line 644
    :cond_4
    iget v8, v6, Landroid/text/format/Time;->year:I

    add-int/lit8 v8, v8, 0x64

    if-le v7, v8, :cond_5

    .line 645
    sget-object v8, Lcom/android/vending/model/InputField;->CC_EXP_YEAR:Lcom/android/vending/model/InputField;

    invoke-interface {p3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v8, v10

    .line 646
    goto :goto_0

    .line 649
    :cond_5
    iput v3, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mExpirationMonth:I

    .line 650
    iput v7, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mExpirationYear:I

    move v8, v11

    .line 651
    goto/16 :goto_0
.end method

.method private requestBillingCountriesAndAsset()V
    .locals 6

    .prologue
    .line 836
    iget-object v3, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mCountries:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 837
    new-instance v1, Lcom/android/vending/model/PurchaseMetadataRequest;

    invoke-direct {v1}, Lcom/android/vending/model/PurchaseMetadataRequest;-><init>()V

    .line 838
    .local v1, "metadataRequest":Lcom/android/vending/model/PurchaseMetadataRequest;
    invoke-virtual {p0, v1}, Lcom/android/vending/billing/AddCreditCardActivity;->requestBillingCountries(Lcom/android/vending/model/PurchaseMetadataRequest;)V

    .line 839
    iget-object v3, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mPurchasePostAction:Lcom/android/vending/billing/PurchasePostAction;

    invoke-virtual {v3, v1}, Lcom/android/vending/billing/PurchasePostAction;->queueMetadataRequest(Lcom/android/vending/model/PurchaseMetadataRequest;)V

    .line 841
    iget-boolean v3, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mIsInAppPurchase:Z

    if-eqz v3, :cond_1

    .line 842
    iget-object v3, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mPurchasePostAction:Lcom/android/vending/billing/PurchasePostAction;

    iget-object v4, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mAssetId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/vending/billing/PurchasePostAction;->queueIconRequest(Ljava/lang/String;)V

    .line 843
    new-instance v2, Lcom/android/vending/model/PurchaseProductRequest;

    invoke-direct {v2}, Lcom/android/vending/model/PurchaseProductRequest;-><init>()V

    .line 844
    .local v2, "request":Lcom/android/vending/model/PurchaseProductRequest;
    iget-object v3, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mAssetId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/vending/model/PurchaseProductRequest;->setProductId(Ljava/lang/String;)V

    .line 845
    iget-object v3, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mVersionCode:I

    iget-object v5, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/vending/billing/AddCreditCardActivity;->computeSignatureHash(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/vending/model/PurchaseProductRequest;->setPackageParams(Ljava/lang/String;I[B)V

    .line 847
    sget-object v3, Lcom/android/vending/model/PurchaseInfo$ProductType;->MARKET_IN_APP_PRODUCT:Lcom/android/vending/model/PurchaseInfo$ProductType;

    invoke-virtual {v2, v3}, Lcom/android/vending/model/PurchaseProductRequest;->setProductType(Lcom/android/vending/model/PurchaseInfo$ProductType;)V

    .line 848
    iget-object v3, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mPurchasePostAction:Lcom/android/vending/billing/PurchasePostAction;

    invoke-virtual {v3, v2}, Lcom/android/vending/billing/PurchasePostAction;->queuePurchaseProductRequest(Lcom/android/vending/model/PurchaseProductRequest;)V

    .line 856
    .end local v2    # "request":Lcom/android/vending/model/PurchaseProductRequest;
    :goto_0
    iget-object v3, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mPurchasePostAction:Lcom/android/vending/billing/PurchasePostAction;

    iget-object v4, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mForwarder:Lcom/android/vending/billing/PurchaseResponseForwarder;

    invoke-virtual {v3, p0, v4}, Lcom/android/vending/billing/PurchasePostAction;->start(Lcom/android/vending/BaseActivity;Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;)V

    .line 858
    .end local v1    # "metadataRequest":Lcom/android/vending/model/PurchaseMetadataRequest;
    :cond_0
    return-void

    .line 850
    .restart local v1    # "metadataRequest":Lcom/android/vending/model/PurchaseMetadataRequest;
    :cond_1
    new-instance v0, Lcom/android/vending/model/AssetRequest;

    invoke-direct {v0}, Lcom/android/vending/model/AssetRequest;-><init>()V

    .line 851
    .local v0, "assetRequest":Lcom/android/vending/model/AssetRequest;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/vending/model/AssetRequest;->setRetrieveExtendedInfo(Z)V

    .line 852
    iget-object v3, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mAssetId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/vending/model/AssetRequest;->addAssetId(Ljava/lang/String;)V

    .line 853
    iget-object v3, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v3}, Lcom/android/vending/AssetItemAdapter;->clearAllAssets()V

    .line 854
    iget-object v3, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mPurchasePostAction:Lcom/android/vending/billing/PurchasePostAction;

    iget-object v4, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mForwarder:Lcom/android/vending/billing/PurchaseResponseForwarder;

    invoke-virtual {v3, v0, v4}, Lcom/android/vending/billing/PurchasePostAction;->queueAssetRequest(Lcom/android/vending/model/AssetRequest;Lcom/android/vending/api/AssetService$GetAssetsReceiver;)V

    goto :goto_0
.end method

.method private setState(Lcom/android/vending/billing/AddCreditCardActivity$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/vending/billing/AddCreditCardActivity$State;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mCurrentState:Lcom/android/vending/billing/AddCreditCardActivity$State;

    .line 327
    sget-object v0, Lcom/android/vending/billing/AddCreditCardActivity$State;->START_STATE:Lcom/android/vending/billing/AddCreditCardActivity$State;

    if-ne p1, v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mSaveButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 332
    :goto_0
    return-void

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mSaveButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setupAddressWidget()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 749
    invoke-virtual {p0}, Lcom/android/vending/billing/AddCreditCardActivity;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/VendingApplication;->getLineNumber()Ljava/lang/String;

    move-result-object v1

    .line 750
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 751
    const v0, 0x7f070065

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/AddCreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 752
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 753
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 757
    :cond_0
    const v0, 0x7f0700b8

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/AddCreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 758
    const v1, 0x7f06011a

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/AddCreditCardActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 759
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    invoke-direct {v2, p0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 763
    iget-object v1, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mCountries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v5, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vending/model/Country;

    .line 764
    invoke-virtual {v1}, Lcom/android/vending/model/Country;->getCountryName()Ljava/lang/String;

    move-result-object v6

    .line 765
    invoke-virtual {v1}, Lcom/android/vending/model/Country;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 766
    invoke-virtual {v2, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 771
    iget-object v6, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mSelectedCountry:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v5

    .line 774
    :goto_1
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v1

    .line 775
    goto :goto_0

    .line 776
    :cond_1
    const v1, 0x1090009

    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 778
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 779
    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 780
    iget-object v1, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mCountries:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vending/model/Country;

    iput-object v1, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mCountry:Lcom/android/vending/model/Country;

    .line 781
    new-instance v1, Lcom/android/vending/billing/AddCreditCardActivity$3;

    invoke-direct {v1, p0}, Lcom/android/vending/billing/AddCreditCardActivity$3;-><init>(Lcom/android/vending/billing/AddCreditCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 796
    return-void

    :cond_2
    move v1, v4

    goto :goto_1
.end method

.method private setupExpirationDateEntry()V
    .locals 6

    .prologue
    .line 251
    const v4, 0x7f0700b2

    invoke-virtual {p0, v4}, Lcom/android/vending/billing/AddCreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 252
    .local v0, "entry1st":Landroid/widget/EditText;
    const v4, 0x7f0700b4

    invoke-virtual {p0, v4}, Lcom/android/vending/billing/AddCreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 253
    .local v1, "entry2nd":Landroid/widget/EditText;
    const v4, 0x7f0700b5

    invoke-virtual {p0, v4}, Lcom/android/vending/billing/AddCreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 255
    .local v3, "separatorView":Landroid/widget/TextView;
    const v4, 0x7f060023

    invoke-virtual {p0, v4}, Lcom/android/vending/billing/AddCreditCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 256
    .local v2, "monthFirst":Z
    if-eqz v2, :cond_0

    .line 257
    iput-object v0, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mExpirationMonthEntry:Landroid/widget/EditText;

    .line 258
    iput-object v1, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mExpirationYearEntry:Landroid/widget/EditText;

    .line 263
    :goto_0
    iget-object v4, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mExpirationMonthEntry:Landroid/widget/EditText;

    const v5, 0x7f0600e8

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(I)V

    .line 264
    iget-object v4, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mExpirationYearEntry:Landroid/widget/EditText;

    const v5, 0x7f0600e9

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(I)V

    .line 265
    const v4, 0x7f0600ea

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 266
    return-void

    .line 260
    :cond_0
    iput-object v1, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mExpirationMonthEntry:Landroid/widget/EditText;

    .line 261
    iput-object v0, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mExpirationYearEntry:Landroid/widget/EditText;

    goto :goto_0
.end method

.method private showScreen()V
    .locals 2

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1057
    const v0, 0x7f0700d3

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/AddCreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1058
    invoke-direct {p0}, Lcom/android/vending/billing/AddCreditCardActivity;->setupAddressWidget()V

    .line 1059
    invoke-direct {p0}, Lcom/android/vending/billing/AddCreditCardActivity;->displayWidgets()V

    .line 1060
    return-void
.end method

.method private tosExplicitlyAccepted()Z
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mTosText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 532
    iget-boolean v0, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mTosAccepted:Z

    .line 536
    .end local p0    # "this":Lcom/android/vending/billing/AddCreditCardActivity;
    :goto_0
    return v0

    .line 533
    .restart local p0    # "this":Lcom/android/vending/billing/AddCreditCardActivity;
    :cond_0
    iget-object v0, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mTosUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 534
    const v0, 0x7f07000b

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/AddCreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0    # "this":Lcom/android/vending/billing/AddCreditCardActivity;
    check-cast p0, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    goto :goto_0

    .line 536
    .restart local p0    # "this":Lcom/android/vending/billing/AddCreditCardActivity;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private tosUrlAccepted()Z
    .locals 2

    .prologue
    .line 521
    iget-object v1, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mTosUrl:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 522
    const/4 v1, 0x1

    .line 525
    :goto_0
    return v1

    .line 524
    :cond_0
    const v1, 0x7f07000b

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/AddCreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 525
    .local v0, "tosView":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method protected createView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 237
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/AddCreditCardActivity;->requestWindowFeature(I)Z

    .line 238
    const/high16 v1, 0x7f030000

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/AddCreditCardActivity;->setContentView(I)V

    .line 239
    const v1, 0x7f070008

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/AddCreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 240
    .local v0, "root":Landroid/view/View;
    return-object v0
.end method

.method protected displayErrorMessages()V
    .locals 3

    .prologue
    .line 389
    iget-boolean v1, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mErrors:Z

    if-nez v1, :cond_0

    .line 394
    :goto_0
    return-void

    .line 392
    :cond_0
    const v1, 0x7f06010f

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 393
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected displayTOSWidget()V
    .locals 6

    .prologue
    .line 544
    const v2, 0x7f07000b

    invoke-virtual {p0, v2}, Lcom/android/vending/billing/AddCreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 545
    .local v0, "tosCheckBox":Landroid/widget/CheckBox;
    const/16 v1, 0x8

    .line 546
    .local v1, "tosCheckBoxVisibility":I
    iget-object v2, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mTosText:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mTosText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 547
    invoke-direct {p0}, Lcom/android/vending/billing/AddCreditCardActivity;->displayCheckoutTosDialog()V

    .line 554
    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 555
    return-void

    .line 548
    :cond_1
    iget-object v2, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mTosUrl:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mTosUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 549
    const v2, 0x7f0600fa

    invoke-virtual {p0, v2}, Lcom/android/vending/billing/AddCreditCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mTosUrl:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 551
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 552
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getCreditCardFromInput()Lcom/android/vending/model/CreditCard;
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    .line 661
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 663
    const v0, 0x7f0700b1

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/AddCreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/util/Util$CreditCardNumberFilter;->getNumbers(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 665
    const v0, 0x7f0700b6

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/AddCreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 666
    iget-object v0, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mExpirationYearEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 667
    iget-object v2, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mExpirationMonthEntry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 669
    iput v3, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mExpirationMonth:I

    .line 670
    iput v3, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mExpirationYear:I

    .line 671
    invoke-direct {p0, v0, v2, v9}, Lcom/android/vending/billing/AddCreditCardActivity;->parseAndValidateExpirationDate(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    .line 677
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 681
    iget v2, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mExpirationMonth:I

    sub-int/2addr v2, v8

    iget v3, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mExpirationYear:I

    invoke-virtual {v0, v8, v2, v3}, Landroid/text/format/Time;->set(III)V

    .line 682
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v0, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    invoke-direct {v2, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 683
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "MM"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 684
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v5, "yy"

    invoke-direct {v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 685
    iget-object v5, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mExpirationMonthEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 686
    iget-object v0, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mExpirationYearEntry:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressWidget;->getAddressData()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v0

    .line 690
    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getAddressLine1()Ljava/lang/String;

    move-result-object v10

    .line 691
    new-instance v7, Lcom/android/vending/model/Address;

    invoke-direct {v7, v0}, Lcom/android/vending/model/Address;-><init>(Lcom/android/i18n/addressinput/AddressData;)V

    .line 692
    const v0, 0x7f0700b7

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/AddCreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 693
    const v0, 0x7f070065

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/AddCreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 694
    new-instance v0, Lcom/android/vending/model/CreditCard;

    iget v2, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mExpirationMonth:I

    iget v3, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mExpirationYear:I

    invoke-direct/range {v0 .. v8}, Lcom/android/vending/model/CreditCard;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/model/Address;Z)V

    .line 698
    iget-object v1, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/AddressWidget;->getAddressProblems()Lcom/android/i18n/addressinput/AddressProblems;

    move-result-object v1

    .line 699
    invoke-static {v10}, Lcom/android/vending/util/Util;->isEmptyOrSpaces(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 700
    sget-object v2, Lcom/android/vending/model/InputField;->ADDR_ADDRESS1:Lcom/android/vending/model/InputField;

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 703
    :cond_1
    sget-object v2, Lcom/android/i18n/addressinput/AddressField;->POSTAL_CODE:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v1, v2}, Lcom/android/i18n/addressinput/AddressProblems;->getProblem(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/AddressProblemType;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 704
    sget-object v2, Lcom/android/vending/model/InputField;->ADDR_POSTAL_CODE:Lcom/android/vending/model/InputField;

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 707
    :cond_2
    sget-object v2, Lcom/android/i18n/addressinput/AddressField;->LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v1, v2}, Lcom/android/i18n/addressinput/AddressProblems;->getProblem(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/AddressProblemType;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 708
    sget-object v2, Lcom/android/vending/model/InputField;->ADDR_CITY:Lcom/android/vending/model/InputField;

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 711
    :cond_3
    sget-object v2, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v1, v2}, Lcom/android/i18n/addressinput/AddressProblems;->getProblem(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/AddressProblemType;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 712
    sget-object v1, Lcom/android/vending/model/InputField;->ADDR_STATE:Lcom/android/vending/model/InputField;

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 715
    :cond_4
    invoke-static {v5}, Lcom/android/vending/util/Util;->isEmptyOrSpaces(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 716
    sget-object v1, Lcom/android/vending/model/InputField;->PERSON_NAME:Lcom/android/vending/model/InputField;

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 719
    :cond_5
    invoke-virtual {p0}, Lcom/android/vending/billing/AddCreditCardActivity;->isPhoneNumberRequired()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v6}, Lcom/android/vending/util/Util;->isEmptyOrSpaces(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 720
    sget-object v1, Lcom/android/vending/model/InputField;->ADDR_PHONE:Lcom/android/vending/model/InputField;

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 723
    :cond_6
    invoke-virtual {v0}, Lcom/android/vending/model/CreditCard;->isValidCreditCardNumber()Z

    move-result v1

    if-nez v1, :cond_7

    .line 724
    sget-object v1, Lcom/android/vending/model/InputField;->CC_NUMBER:Lcom/android/vending/model/InputField;

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 727
    :cond_7
    invoke-virtual {v0}, Lcom/android/vending/model/CreditCard;->isValidCVC()Z

    move-result v1

    if-nez v1, :cond_8

    .line 728
    sget-object v1, Lcom/android/vending/model/InputField;->CC_CVC:Lcom/android/vending/model/InputField;

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 731
    :cond_8
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 735
    :goto_0
    return-object v0

    .line 734
    :cond_9
    invoke-direct {p0, v9}, Lcom/android/vending/billing/AddCreditCardActivity;->displayErrors(Ljava/util/List;)V

    .line 735
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isPhoneNumberRequired()Z
    .locals 1

    .prologue
    .line 740
    const/4 v0, 0x1

    return v0
.end method

.method public onAssetLoaded()V
    .locals 0

    .prologue
    .line 1031
    invoke-direct {p0}, Lcom/android/vending/billing/AddCreditCardActivity;->displayAssetSnippet()V

    .line 1032
    return-void
.end method

.method protected onAuthTokenComplete(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V
    .locals 2
    .param p1, "service"    # Lcom/android/vending/BaseActivity$AuthService;
    .param p2, "authToken"    # Ljava/lang/String;

    .prologue
    .line 872
    iget-boolean v0, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 907
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 875
    :cond_1
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, v0}, Lcom/android/vending/billing/BasePurchaseActivity;->onAuthTokenComplete(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;Z)V

    .line 877
    sget-object v0, Lcom/android/vending/billing/AddCreditCardActivity;->sCheckoutService:Lcom/android/vending/BaseActivity$AuthService;

    if-ne p1, v0, :cond_2

    .line 878
    sput-object p2, Lcom/android/vending/billing/AddCreditCardActivity;->sCheckoutToken:Ljava/lang/String;

    .line 881
    :cond_2
    sget-object v0, Lcom/android/vending/BaseActivity$AuthService;->ANDROID:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/AddCreditCardActivity;->haveAuthToken(Lcom/android/vending/BaseActivity$AuthService;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/vending/billing/AddCreditCardActivity;->sCheckoutService:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/AddCreditCardActivity;->haveAuthToken(Lcom/android/vending/BaseActivity$AuthService;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/vending/billing/AddCreditCardActivity;->sCheckoutToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 886
    sget-object v0, Lcom/android/vending/billing/AddCreditCardActivity$5;->$SwitchMap$com$android$vending$billing$AddCreditCardActivity$State:[I

    iget-object v1, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mCurrentState:Lcom/android/vending/billing/AddCreditCardActivity$State;

    invoke-virtual {v1}, Lcom/android/vending/billing/AddCreditCardActivity$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 888
    :pswitch_1
    invoke-direct {p0}, Lcom/android/vending/billing/AddCreditCardActivity;->requestBillingCountriesAndAsset()V

    goto :goto_0

    .line 902
    :pswitch_2
    iget-object v0, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mPurchasePostAction:Lcom/android/vending/billing/PurchasePostAction;

    invoke-virtual {v0}, Lcom/android/vending/billing/PurchasePostAction;->cancel()V

    .line 903
    invoke-direct {p0}, Lcom/android/vending/billing/AddCreditCardActivity;->addBillingInstrument()V

    .line 904
    iget-object v0, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mPurchasePostAction:Lcom/android/vending/billing/PurchasePostAction;

    iget-object v1, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mForwarder:Lcom/android/vending/billing/PurchaseResponseForwarder;

    invoke-virtual {v0, p0, v1}, Lcom/android/vending/billing/PurchasePostAction;->start(Lcom/android/vending/BaseActivity;Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;)V

    goto :goto_0

    .line 886
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mSaveButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 288
    iget-object v0, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mCurrentState:Lcom/android/vending/billing/AddCreditCardActivity$State;

    sget-object v1, Lcom/android/vending/billing/AddCreditCardActivity$State;->START_STATE:Lcom/android/vending/billing/AddCreditCardActivity$State;

    if-ne v0, v1, :cond_0

    .line 289
    invoke-direct {p0}, Lcom/android/vending/billing/AddCreditCardActivity;->tosUrlAccepted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    invoke-direct {p0}, Lcom/android/vending/billing/AddCreditCardActivity;->clearErrorMessages()V

    .line 291
    invoke-direct {p0}, Lcom/android/vending/billing/AddCreditCardActivity;->addBillingInstrument()V

    .line 292
    iget-object v0, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mPurchasePostAction:Lcom/android/vending/billing/PurchasePostAction;

    iget-object v1, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mForwarder:Lcom/android/vending/billing/PurchaseResponseForwarder;

    invoke-virtual {v0, p0, v1}, Lcom/android/vending/billing/PurchasePostAction;->start(Lcom/android/vending/BaseActivity;Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;)V

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    invoke-direct {p0}, Lcom/android/vending/billing/AddCreditCardActivity;->displayTosErrorMessage()V

    goto :goto_0

    .line 298
    :cond_2
    invoke-super {p0, p1}, Lcom/android/vending/billing/BasePurchaseActivity;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 181
    invoke-super {p0, p1}, Lcom/android/vending/billing/BasePurchaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 183
    invoke-direct {p0}, Lcom/android/vending/billing/AddCreditCardActivity;->setupExpirationDateEntry()V

    .line 184
    const v5, 0x7f0700b1

    invoke-virtual {p0, v5}, Lcom/android/vending/billing/AddCreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 185
    .local v0, "editText":Landroid/widget/EditText;
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/text/InputFilter;

    new-instance v6, Lcom/android/vending/util/Util$CreditCardNumberFilter;

    invoke-direct {v6}, Lcom/android/vending/util/Util$CreditCardNumberFilter;-><init>()V

    aput-object v6, v5, v7

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 186
    const-string v5, "0123456789 -"

    invoke-static {v5}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/vending/billing/AddCreditCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060140

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "saving":Ljava/lang/String;
    new-instance v5, Lcom/android/vending/BaseActivity$ProgressDialogAccessor;

    invoke-direct {v5, p0, v2}, Lcom/android/vending/BaseActivity$ProgressDialogAccessor;-><init>(Lcom/android/vending/BaseActivity;Ljava/lang/CharSequence;)V

    iput-object v5, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mAccessor:Lcom/android/vending/BaseActivity$ProgressDialogAccessor;

    .line 190
    iget-object v5, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mAccessor:Lcom/android/vending/BaseActivity$ProgressDialogAccessor;

    invoke-virtual {p0, v5}, Lcom/android/vending/billing/AddCreditCardActivity;->registerDialog(Lcom/android/vending/controller/DialogAccessor;)V

    .line 192
    sget-object v3, Lcom/android/vending/billing/AddCreditCardActivity$State;->START_STATE:Lcom/android/vending/billing/AddCreditCardActivity$State;

    .line 193
    .local v3, "state":Lcom/android/vending/billing/AddCreditCardActivity$State;
    if-eqz p1, :cond_0

    .line 194
    const-string v5, "state"

    sget-object v6, Lcom/android/vending/billing/AddCreditCardActivity$State;->START_STATE:Lcom/android/vending/billing/AddCreditCardActivity$State;

    invoke-virtual {v6}, Lcom/android/vending/billing/AddCreditCardActivity$State;->ordinal()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 195
    .local v4, "value":I
    invoke-static {}, Lcom/android/vending/billing/AddCreditCardActivity$State;->values()[Lcom/android/vending/billing/AddCreditCardActivity$State;

    move-result-object v5

    aget-object v3, v5, v4

    .line 196
    const-string v5, "selected_country"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mSelectedCountry:Ljava/lang/String;

    .line 197
    const-string v5, "countries"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mCountries:Ljava/util/ArrayList;

    .line 198
    const-string v5, "tos_text"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mTosText:Ljava/lang/String;

    .line 199
    const-string v5, "tos_url"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mTosUrl:Ljava/lang/String;

    .line 200
    const-string v5, "tos_accepted"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mTosAccepted:Z

    .line 203
    .end local v4    # "value":I
    :cond_0
    iget-object v5, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mSelectedCountry:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/android/vending/util/Util;->getDefaultCountry(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mSelectedCountry:Ljava/lang/String;

    .line 205
    invoke-virtual {p0}, Lcom/android/vending/billing/AddCreditCardActivity;->setupWidgets()V

    .line 206
    invoke-direct {p0, v3}, Lcom/android/vending/billing/AddCreditCardActivity;->setState(Lcom/android/vending/billing/AddCreditCardActivity$State;)V

    .line 209
    invoke-virtual {p0}, Lcom/android/vending/billing/AddCreditCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 210
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "transaction_id"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mTransactionId:Ljava/lang/String;

    .line 213
    iget-object v5, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mAssetId:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 214
    invoke-virtual {p0, v7}, Lcom/android/vending/billing/AddCreditCardActivity;->setResult(I)V

    .line 215
    invoke-virtual {p0}, Lcom/android/vending/billing/AddCreditCardActivity;->finish()V

    .line 219
    :cond_1
    invoke-direct {p0}, Lcom/android/vending/billing/AddCreditCardActivity;->clearErrorMessages()V

    .line 221
    iget-object v5, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-static {p0, v5, v6}, Lcom/android/vending/billing/PurchaseResponseForwarder;->getInstanceForClass(Lcom/android/vending/BaseActivity;Landroid/os/Handler;Lcom/android/vending/api/RequestManager;)Lcom/android/vending/billing/PurchaseResponseForwarder;

    move-result-object v5

    iput-object v5, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mForwarder:Lcom/android/vending/billing/PurchaseResponseForwarder;

    .line 223
    iget-object v5, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mForwarder:Lcom/android/vending/billing/PurchaseResponseForwarder;

    invoke-virtual {v5}, Lcom/android/vending/billing/PurchaseResponseForwarder;->getPurchasePostAction()Lcom/android/vending/billing/PurchasePostAction;

    move-result-object v5

    iput-object v5, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mPurchasePostAction:Lcom/android/vending/billing/PurchasePostAction;

    .line 224
    iget-object v5, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mForwarder:Lcom/android/vending/billing/PurchaseResponseForwarder;

    invoke-virtual {v5}, Lcom/android/vending/billing/PurchaseResponseForwarder;->getAssetAdapter()Lcom/android/vending/AssetItemAdapter;

    move-result-object v5

    iput-object v5, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    .line 225
    iget-object v5, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    sget-object v6, Lcom/android/vending/AssetItemAdapter$ViewType;->SNIPPET_VIEW:Lcom/android/vending/AssetItemAdapter$ViewType;

    invoke-virtual {v5, v6}, Lcom/android/vending/AssetItemAdapter;->setViewType(Lcom/android/vending/AssetItemAdapter$ViewType;)V

    .line 227
    iget-object v5, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mCountries:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    .line 228
    invoke-direct {p0}, Lcom/android/vending/billing/AddCreditCardActivity;->showScreen()V

    .line 229
    invoke-direct {p0}, Lcom/android/vending/billing/AddCreditCardActivity;->displayAssetSnippet()V

    .line 231
    :cond_2
    iget-object v5, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mForwarder:Lcom/android/vending/billing/PurchaseResponseForwarder;

    invoke-virtual {v5, p0}, Lcom/android/vending/billing/PurchaseResponseForwarder;->registerPostListener(Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;)V

    .line 232
    iget-object v5, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mForwarder:Lcom/android/vending/billing/PurchaseResponseForwarder;

    invoke-virtual {v5, p0}, Lcom/android/vending/billing/PurchaseResponseForwarder;->registerImagesLoadedListener(Lcom/android/vending/AssetItemAdapter$OnImagesLoadedListener;)V

    .line 233
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 278
    invoke-super {p0}, Lcom/android/vending/billing/BasePurchaseActivity;->onDestroy()V

    .line 279
    iget-object v0, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mForwarder:Lcom/android/vending/billing/PurchaseResponseForwarder;

    invoke-virtual {v0}, Lcom/android/vending/billing/PurchaseResponseForwarder;->unregister()V

    .line 280
    invoke-virtual {p0}, Lcom/android/vending/billing/AddCreditCardActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    invoke-static {p0}, Lcom/android/vending/billing/PurchaseResponseForwarder;->removeInstanceForClass(Lcom/android/vending/BaseActivity;)V

    .line 283
    :cond_0
    return-void
.end method

.method public onImageLoaded(ILcom/android/vending/model/Asset$AppImageUsage;I)V
    .locals 3

    .prologue
    .line 989
    sget-object v0, Lcom/android/vending/model/Asset$AppImageUsage;->ICON:Lcom/android/vending/model/Asset$AppImageUsage;

    if-ne p2, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 997
    :cond_0
    :goto_0
    return-void

    .line 993
    :cond_1
    iget-object v0, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/vending/AssetItemAdapter;->getBitmapAt(ILcom/android/vending/model/Asset$AppImageUsage;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 994
    iget-object v1, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mTitleBarView:Landroid/view/View;

    const v2, 0x7f07001e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    .line 995
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 996
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0
.end method

.method public onImageLoaded(Lcom/android/vending/model/GetImageResponse;Lcom/android/vending/model/Asset$AppImageUsage;)V
    .locals 3

    .prologue
    .line 1004
    invoke-virtual {p1}, Lcom/android/vending/model/GetImageResponse;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1005
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/vending/billing/AddCreditCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1006
    iget-object v0, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mTitleBarView:Landroid/view/View;

    const v2, 0x7f07001e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    .line 1007
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1008
    return-void
.end method

.method public onPostResponse(Lcom/android/vending/model/PurchasePostResponse;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 915
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez p1, :cond_1

    const-string v3, "null"

    :goto_0
    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 916
    iget-boolean v0, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_2

    .line 967
    :cond_0
    :goto_1
    return-void

    .line 915
    :cond_1
    invoke-virtual {p1}, Lcom/android/vending/model/PurchasePostResponse;->getPurchaseResult()Lcom/android/vending/model/PurchaseResult$ResultCode;

    move-result-object v3

    goto :goto_0

    .line 919
    :cond_2
    iget-object v0, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mAccessor:Lcom/android/vending/BaseActivity$ProgressDialogAccessor;

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/AddCreditCardActivity;->hideDialog(Lcom/android/vending/controller/DialogAccessor;)V

    .line 920
    invoke-virtual {p1}, Lcom/android/vending/model/PurchasePostResponse;->getPurchaseResult()Lcom/android/vending/model/PurchaseResult$ResultCode;

    move-result-object v0

    .line 922
    sget-object v1, Lcom/android/vending/billing/AddCreditCardActivity$5;->$SwitchMap$com$android$vending$model$PurchaseResult$ResultCode:[I

    invoke-virtual {v0}, Lcom/android/vending/model/PurchaseResult$ResultCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 961
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .line 962
    sget-object v0, Lcom/android/vending/billing/AddCreditCardActivity$State;->START_STATE:Lcom/android/vending/billing/AddCreditCardActivity$State;

    invoke-direct {p0, v0}, Lcom/android/vending/billing/AddCreditCardActivity;->setState(Lcom/android/vending/billing/AddCreditCardActivity$State;)V

    .line 963
    const v0, 0x7f060037

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/AddCreditCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 964
    const v1, 0x7f060039

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/AddCreditCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 965
    invoke-virtual {p0, v0, v1, v4}, Lcom/android/vending/billing/AddCreditCardActivity;->displayAlertMessage(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 924
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/vending/billing/AddCreditCardActivity;->handleSuccessfulPost(Lcom/android/vending/model/PurchasePostResponse;)V

    goto :goto_1

    .line 934
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/vending/model/PurchasePostResponse;->getPurchaseInfo()Lcom/android/vending/model/PurchaseInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/model/PurchaseInfo;->getErrorInputFields()Ljava/util/List;

    move-result-object v0

    .line 935
    iget-object v1, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/vending/billing/AddCreditCardActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/android/vending/billing/AddCreditCardActivity$4;-><init>(Lcom/android/vending/billing/AddCreditCardActivity;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 949
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid checkout token: {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/vending/billing/AddCreditCardActivity;->sCheckoutToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    .line 950
    sget-object v0, Lcom/android/vending/billing/AddCreditCardActivity$State;->RETRY_SAVE_AFTER_AUTH:Lcom/android/vending/billing/AddCreditCardActivity$State;

    invoke-direct {p0, v0}, Lcom/android/vending/billing/AddCreditCardActivity;->setState(Lcom/android/vending/billing/AddCreditCardActivity$State;)V

    .line 951
    sget-object v0, Lcom/android/vending/billing/AddCreditCardActivity;->sCheckoutService:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/AddCreditCardActivity;->invalidateAuthToken(Lcom/android/vending/BaseActivity$AuthService;)V

    goto/16 :goto_1

    .line 922
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPurchaseMetadataResponse(Lcom/android/vending/model/PurchaseMetadataResponse;)V
    .locals 1
    .param p1, "purchaseMetadataResponse"    # Lcom/android/vending/model/PurchaseMetadataResponse;

    .prologue
    .line 1048
    iget-boolean v0, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 1053
    :cond_0
    :goto_0
    return-void

    .line 1051
    :cond_1
    invoke-virtual {p1}, Lcom/android/vending/model/PurchaseMetadataResponse;->getBillingCountries()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mCountries:Ljava/util/ArrayList;

    .line 1052
    invoke-direct {p0}, Lcom/android/vending/billing/AddCreditCardActivity;->showScreen()V

    goto :goto_0
.end method

.method public onPurchasePostError()V
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mAccessor:Lcom/android/vending/BaseActivity$ProgressDialogAccessor;

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/AddCreditCardActivity;->hideDialog(Lcom/android/vending/controller/DialogAccessor;)V

    .line 972
    return-void
.end method

.method public onPurchaseProductResponse(Lcom/android/vending/model/PurchaseProductResponse;)V
    .locals 4

    .prologue
    .line 1040
    invoke-virtual {p1}, Lcom/android/vending/model/PurchaseProductResponse;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 1041
    invoke-virtual {p1}, Lcom/android/vending/model/PurchaseProductResponse;->getMerchantField()Ljava/lang/String;

    move-result-object v2

    .line 1042
    iget-object v0, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mTitleBarView:Landroid/view/View;

    const v3, 0x7f07001b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1043
    const/high16 v0, -0x40800000    # -1.0f

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/android/vending/billing/AddCreditCardActivity;->displayTitleBar(Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;)V

    .line 1044
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 1079
    invoke-super {p0, p1}, Lcom/android/vending/billing/BasePurchaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1080
    iget-object v0, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {v0, p1}, Lcom/android/i18n/addressinput/AddressWidget;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 1081
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1064
    invoke-super {p0, p1}, Lcom/android/vending/billing/BasePurchaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1065
    const-string v0, "state"

    iget-object v1, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mCurrentState:Lcom/android/vending/billing/AddCreditCardActivity$State;

    invoke-virtual {v1}, Lcom/android/vending/billing/AddCreditCardActivity$State;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1066
    const-string v0, "assetid"

    iget-object v1, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mAssetId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    const-string v0, "selected_country"

    iget-object v1, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mSelectedCountry:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    iget-object v0, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mCountries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mCountries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1069
    const-string v0, "countries"

    iget-object v1, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mCountries:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1071
    :cond_0
    const-string v0, "tos_text"

    iget-object v1, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mTosText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    const-string v0, "tos_url"

    iget-object v1, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mTosUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    const-string v0, "tos_accepted"

    iget-boolean v1, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mTosAccepted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1074
    iget-object v0, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {v0, p1}, Lcom/android/i18n/addressinput/AddressWidget;->saveInstanceState(Landroid/os/Bundle;)V

    .line 1075
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 270
    invoke-super {p0}, Lcom/android/vending/billing/BasePurchaseActivity;->onStart()V

    .line 271
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/AddCreditCardActivity;->startSetupActionChain(Z)V

    .line 272
    invoke-direct {p0}, Lcom/android/vending/billing/AddCreditCardActivity;->displayWidgets()V

    .line 273
    return-void
.end method

.method protected requestBillingCountries(Lcom/android/vending/model/PurchaseMetadataRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/android/vending/model/PurchaseMetadataRequest;

    .prologue
    .line 867
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/vending/model/PurchaseMetadataRequest;->requestBillingCountries(Z)V

    .line 868
    return-void
.end method

.method protected setupWidgets()V
    .locals 7

    .prologue
    .line 338
    const v3, 0x7f070067

    invoke-virtual {p0, v3}, Lcom/android/vending/billing/AddCreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 339
    .local v2, "rootView":Landroid/view/ViewGroup;
    new-instance v3, Lcom/android/i18n/addressinput/FormOptions$Builder;

    invoke-direct {v3}, Lcom/android/i18n/addressinput/FormOptions$Builder;-><init>()V

    sget-object v4, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v3, v4}, Lcom/android/i18n/addressinput/FormOptions$Builder;->hide(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/FormOptions$Builder;

    move-result-object v3

    sget-object v4, Lcom/android/i18n/addressinput/AddressField;->RECIPIENT:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v3, v4}, Lcom/android/i18n/addressinput/FormOptions$Builder;->hide(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/FormOptions$Builder;

    move-result-object v3

    sget-object v4, Lcom/android/i18n/addressinput/AddressField;->ORGANIZATION:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v3, v4}, Lcom/android/i18n/addressinput/FormOptions$Builder;->hide(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/FormOptions$Builder;

    move-result-object v3

    sget-object v4, Lcom/android/i18n/addressinput/AddressField;->DEPENDENT_LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v3, v4}, Lcom/android/i18n/addressinput/FormOptions$Builder;->hide(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/FormOptions$Builder;

    move-result-object v3

    sget-object v4, Lcom/android/i18n/addressinput/AddressField;->SORTING_CODE:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v3, v4}, Lcom/android/i18n/addressinput/FormOptions$Builder;->hide(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/FormOptions$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/i18n/addressinput/FormOptions$Builder;->build()Lcom/android/i18n/addressinput/FormOptions;

    move-result-object v0

    .line 343
    .local v0, "addressFormOptions":Lcom/android/i18n/addressinput/FormOptions;
    new-instance v3, Lcom/android/i18n/addressinput/AddressWidget;

    new-instance v4, Lcom/android/vending/billing/AddressMetadataCacheManager;

    invoke-direct {v4}, Lcom/android/vending/billing/AddressMetadataCacheManager;-><init>()V

    invoke-direct {v3, p0, v2, v0, v4}, Lcom/android/i18n/addressinput/AddressWidget;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/i18n/addressinput/FormOptions;Lcom/android/i18n/addressinput/ClientCacheManager;)V

    iput-object v3, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    .line 345
    const v3, 0x7f070009

    invoke-virtual {p0, v3}, Lcom/android/vending/billing/AddCreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    iput-object v3, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mScrollView:Landroid/widget/ScrollView;

    .line 346
    const v3, 0x7f07000a

    invoke-virtual {p0, v3}, Lcom/android/vending/billing/AddCreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mCreditCardView:Landroid/view/ViewGroup;

    .line 347
    const v3, 0x7f07000d

    invoke-virtual {p0, v3}, Lcom/android/vending/billing/AddCreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mSaveButton:Landroid/widget/Button;

    .line 348
    iget-object v3, p0, Lcom/android/vending/billing/AddCreditCardActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    const v3, 0x7f0700b3

    invoke-virtual {p0, v3}, Lcom/android/vending/billing/AddCreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 352
    .local v1, "cvcLabel":Landroid/widget/TextView;
    const-string v3, "<a href=\"%s\">%s</a>"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "http://checkout.google.com/support/bin/answer.py?answer=43073&hl=%lang%"

    invoke-static {v6}, Lcom/android/vending/util/Util;->replaceLanguageAndRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const v6, 0x7f0600f1

    invoke-virtual {p0, v6}, Lcom/android/vending/billing/AddCreditCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 359
    const v3, 0x7f0700b1

    invoke-virtual {p0, v3}, Lcom/android/vending/billing/AddCreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 362
    invoke-virtual {p0}, Lcom/android/vending/billing/AddCreditCardActivity;->showSoftKeyboard()V

    .line 363
    return-void
.end method

.method protected startSetupActionChain(Z)V
    .locals 2
    .param p1, "firstrun"    # Z

    .prologue
    .line 304
    const/4 v0, 0x0

    .line 305
    .local v0, "initiated":Z
    sget-object v1, Lcom/android/vending/billing/AddCreditCardActivity;->sCheckoutToken:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/vending/billing/AddCreditCardActivity;->sCheckoutService:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/AddCreditCardActivity;->haveAuthToken(Lcom/android/vending/BaseActivity$AuthService;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 306
    :cond_0
    const/4 v0, 0x1

    .line 307
    sget-object v1, Lcom/android/vending/billing/AddCreditCardActivity;->sCheckoutService:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/AddCreditCardActivity;->initiateGetAuthToken(Lcom/android/vending/BaseActivity$AuthService;)V

    .line 309
    :cond_1
    sget-object v1, Lcom/android/vending/BaseActivity$AuthService;->ANDROID:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/AddCreditCardActivity;->haveAuthToken(Lcom/android/vending/BaseActivity$AuthService;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    .line 310
    :cond_2
    sget-object v1, Lcom/android/vending/BaseActivity$AuthService;->ANDROID:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/AddCreditCardActivity;->initiateGetAuthToken(Lcom/android/vending/BaseActivity$AuthService;)V

    .line 312
    :cond_3
    return-void
.end method

.method public updateStateDependentUi(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
    .locals 0
    .param p1, "assetId"    # Ljava/lang/String;
    .param p2, "newState"    # Lcom/android/vending/model/LocalAssetInfo$AssetState;

    .prologue
    .line 318
    return-void
.end method
