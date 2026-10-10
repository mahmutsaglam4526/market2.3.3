.class public Lcom/android/vending/billing/GermanDirectDebitActivity;
.super Lcom/android/vending/billing/BasePurchaseActivity;
.source "GermanDirectDebitActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/vending/AssetItemAdapter$OnImagesLoadedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/billing/GermanDirectDebitActivity$2;,
        Lcom/android/vending/billing/GermanDirectDebitActivity$State;
    }
.end annotation


# instance fields
.field private mAccessor:Lcom/android/vending/BaseActivity$ProgressDialogAccessor;

.field private mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

.field private mCurrentState:Lcom/android/vending/billing/GermanDirectDebitActivity$State;

.field private mPurchasePostAction:Lcom/android/vending/billing/PurchasePostAction;

.field private mSaveButton:Landroid/widget/Button;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mThumbnailView:Landroid/widget/ImageView;

.field private mTosAccepted:Z

.field private mTosText:Ljava/lang/String;

.field private mTosUrl:Ljava/lang/String;

.field private mTransactionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/vending/billing/BasePurchaseActivity;-><init>()V

    .line 74
    return-void
.end method

.method static synthetic access$002(Lcom/android/vending/billing/GermanDirectDebitActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/billing/GermanDirectDebitActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mTosAccepted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/vending/billing/GermanDirectDebitActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/billing/GermanDirectDebitActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/vending/billing/GermanDirectDebitActivity;->displayTosErrorMessage()V

    return-void
.end method

.method private addBillingInstrument()V
    .locals 5

    .prologue
    .line 380
    invoke-direct {p0}, Lcom/android/vending/billing/GermanDirectDebitActivity;->getDebitCardFromInput()Lcom/android/vending/model/DebitCard;

    move-result-object v0

    .line 381
    .local v0, "debitCard":Lcom/android/vending/model/DebitCard;
    sget-object v2, Lcom/android/vending/billing/GermanDirectDebitActivity$State;->SAVING_CARD:Lcom/android/vending/billing/GermanDirectDebitActivity$State;

    invoke-direct {p0, v2}, Lcom/android/vending/billing/GermanDirectDebitActivity;->setState(Lcom/android/vending/billing/GermanDirectDebitActivity$State;)V

    .line 384
    new-instance v1, Lcom/android/vending/model/PurchasePostRequest;

    sget-object v2, Lcom/android/vending/billing/GermanDirectDebitActivity;->sCheckoutToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mAssetId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mTransactionId:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/vending/model/PurchasePostRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/model/DebitCard;)V

    .line 385
    .local v1, "request":Lcom/android/vending/model/PurchasePostRequest;
    invoke-direct {p0}, Lcom/android/vending/billing/GermanDirectDebitActivity;->tosExplicitlyAccepted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 386
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/vending/model/PurchasePostRequest;->setTosAccepted(Z)V

    .line 388
    :cond_0
    iget-object v2, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mPurchasePostAction:Lcom/android/vending/billing/PurchasePostAction;

    invoke-virtual {v2, v1, p0, p0}, Lcom/android/vending/billing/PurchasePostAction;->executePostRequest(Lcom/android/vending/model/PurchasePostRequest;Lcom/android/vending/BaseActivity;Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;)V

    .line 389
    iget-object v2, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mAccessor:Lcom/android/vending/BaseActivity$ProgressDialogAccessor;

    invoke-virtual {p0, v2}, Lcom/android/vending/billing/GermanDirectDebitActivity;->displayDialog(Lcom/android/vending/controller/DialogAccessor;)V

    .line 390
    return-void
.end method

.method private displayAssetSnippet()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 527
    iget-boolean v2, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mDestroyed:Z

    if-eqz v2, :cond_0

    .line 535
    :goto_0
    return-void

    .line 530
    :cond_0
    const v2, 0x7f07003f

    invoke-virtual {p0, v2}, Lcom/android/vending/billing/GermanDirectDebitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 531
    .local v1, "snippetContainer":Landroid/widget/FrameLayout;
    iget-object v2, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3, v1}, Lcom/android/vending/AssetItemAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 532
    .local v0, "assetSnippet":Landroid/view/View;
    const v2, 0x7f070055

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 533
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 534
    const v2, 0x7f07001e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mThumbnailView:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method private displayCheckoutTosDialog()V
    .locals 7

    .prologue
    .line 298
    const v4, 0x7f030028

    invoke-static {v4, p0}, Lcom/android/vending/util/Util;->inflateView(ILandroid/content/Context;)Landroid/view/View;

    move-result-object v3

    .line 300
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f0700a4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    .line 301
    .local v2, "tosText":Landroid/webkit/WebView;
    iget-object v4, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mTosText:Ljava/lang/String;

    const-string v5, "text/html"

    const-string v6, "utf-8"

    invoke-virtual {v2, v4, v5, v6}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    new-instance v1, Lcom/android/vending/billing/GermanDirectDebitActivity$1;

    invoke-direct {v1, p0}, Lcom/android/vending/billing/GermanDirectDebitActivity$1;-><init>(Lcom/android/vending/billing/GermanDirectDebitActivity;)V

    .line 320
    .local v1, "onClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 321
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f030029

    invoke-static {v4, p0}, Lcom/android/vending/util/Util;->inflateView(ILandroid/content/Context;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 322
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 323
    const v4, 0x7f06002f

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 324
    const v4, 0x7f060030

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 325
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 326
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 327
    return-void
.end method

.method private displayTOSWidget()V
    .locals 6

    .prologue
    .line 284
    const v2, 0x7f07000b

    invoke-virtual {p0, v2}, Lcom/android/vending/billing/GermanDirectDebitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 285
    .local v0, "tosCheckBox":Landroid/widget/CheckBox;
    const/16 v1, 0x8

    .line 286
    .local v1, "tosCheckBoxVisibility":I
    iget-object v2, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mTosText:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mTosText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 287
    invoke-direct {p0}, Lcom/android/vending/billing/GermanDirectDebitActivity;->displayCheckoutTosDialog()V

    .line 294
    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 295
    return-void

    .line 288
    :cond_1
    iget-object v2, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mTosUrl:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mTosUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 289
    const v2, 0x7f0600fa

    invoke-virtual {p0, v2}, Lcom/android/vending/billing/GermanDirectDebitActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mTosUrl:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 291
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 292
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private displayTosErrorMessage()V
    .locals 3

    .prologue
    .line 252
    const v1, 0x7f06014a

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 253
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 254
    return-void
.end method

.method private displayWidgets()V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/android/vending/billing/GermanDirectDebitActivity;->displayTOSWidget()V

    .line 240
    return-void
.end method

.method private getDebitCardFromInput()Lcom/android/vending/model/DebitCard;
    .locals 13

    .prologue
    .line 335
    const v11, 0x7f0700d8

    invoke-virtual {p0, v11}, Lcom/android/vending/billing/GermanDirectDebitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 337
    .local v7, "bankNumber":Ljava/lang/String;
    const v11, 0x7f0700d9

    invoke-virtual {p0, v11}, Lcom/android/vending/billing/GermanDirectDebitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 339
    .local v8, "routingNumber":Ljava/lang/String;
    const v11, 0x7f07000f

    invoke-virtual {p0, v11}, Lcom/android/vending/billing/GermanDirectDebitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, "address1":Ljava/lang/String;
    const v11, 0x7f070011

    invoke-virtual {p0, v11}, Lcom/android/vending/billing/GermanDirectDebitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, "address2":Ljava/lang/String;
    const v11, 0x7f07005c

    invoke-virtual {p0, v11}, Lcom/android/vending/billing/GermanDirectDebitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 342
    .local v3, "city":Ljava/lang/String;
    const v11, 0x7f070016

    invoke-virtual {p0, v11}, Lcom/android/vending/billing/GermanDirectDebitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 343
    .local v4, "state":Ljava/lang/String;
    const v11, 0x7f070017

    invoke-virtual {p0, v11}, Lcom/android/vending/billing/GermanDirectDebitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 344
    .local v5, "zip":Ljava/lang/String;
    new-instance v0, Lcom/android/vending/model/Address;

    const-string v6, "DE"

    invoke-direct/range {v0 .. v6}, Lcom/android/vending/model/Address;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .local v0, "address":Lcom/android/vending/model/Address;
    const v11, 0x7f0700b7

    invoke-virtual {p0, v11}, Lcom/android/vending/billing/GermanDirectDebitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 347
    .local v9, "name":Ljava/lang/String;
    const v11, 0x7f070065

    invoke-virtual {p0, v11}, Lcom/android/vending/billing/GermanDirectDebitActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0    # "this":Lcom/android/vending/billing/GermanDirectDebitActivity;
    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 348
    .local v10, "phone":Ljava/lang/String;
    new-instance v6, Lcom/android/vending/model/DebitCard;

    const/4 v12, 0x1

    move-object v11, v0

    invoke-direct/range {v6 .. v12}, Lcom/android/vending/model/DebitCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/model/Address;Z)V

    .line 351
    .local v6, "debitCard":Lcom/android/vending/model/DebitCard;
    return-object v6
.end method

.method private handleSuccessfulPost(Lcom/android/vending/model/PurchasePostResponse;)V
    .locals 1
    .param p1, "postResponse"    # Lcom/android/vending/model/PurchasePostResponse;

    .prologue
    .line 498
    const-string v0, ""

    invoke-static {v0}, Lcom/android/vending/util/Log;->i(Ljava/lang/String;)V

    .line 499
    invoke-direct {p0}, Lcom/android/vending/billing/GermanDirectDebitActivity;->resetTosFields()V

    .line 501
    invoke-virtual {p1}, Lcom/android/vending/model/PurchasePostResponse;->hasTermsOfServiceText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    invoke-virtual {p1}, Lcom/android/vending/model/PurchasePostResponse;->getTermsOfServiceText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mTosText:Ljava/lang/String;

    .line 507
    :cond_0
    :goto_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/GermanDirectDebitActivity;->setResult(I)V

    .line 508
    invoke-virtual {p0}, Lcom/android/vending/billing/GermanDirectDebitActivity;->finish()V

    .line 509
    return-void

    .line 503
    :cond_1
    invoke-virtual {p1}, Lcom/android/vending/model/PurchasePostResponse;->hasTermsOfServiceUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {p1}, Lcom/android/vending/model/PurchasePostResponse;->getTermsOfServiceUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mTosUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method private initializeState()V
    .locals 3

    .prologue
    .line 397
    new-instance v0, Lcom/android/vending/model/AssetRequest;

    invoke-direct {v0}, Lcom/android/vending/model/AssetRequest;-><init>()V

    .line 398
    .local v0, "assetRequest":Lcom/android/vending/model/AssetRequest;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/vending/model/AssetRequest;->setRetrieveExtendedInfo(Z)V

    .line 399
    iget-object v1, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mAssetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/vending/model/AssetRequest;->addAssetId(Ljava/lang/String;)V

    .line 400
    iget-object v1, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mPurchasePostAction:Lcom/android/vending/billing/PurchasePostAction;

    iget-object v2, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v1, v0, v2}, Lcom/android/vending/billing/PurchasePostAction;->queueAssetRequest(Lcom/android/vending/model/AssetRequest;Lcom/android/vending/api/AssetService$GetAssetsReceiver;)V

    .line 402
    iget-object v1, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mPurchasePostAction:Lcom/android/vending/billing/PurchasePostAction;

    invoke-virtual {v1, p0, p0}, Lcom/android/vending/billing/PurchasePostAction;->start(Lcom/android/vending/BaseActivity;Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;)V

    .line 403
    return-void
.end method

.method private resetTosFields()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mTosAccepted:Z

    .line 244
    iput-object v1, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mTosUrl:Ljava/lang/String;

    .line 245
    iput-object v1, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mTosText:Ljava/lang/String;

    .line 246
    return-void
.end method

.method private setState(Lcom/android/vending/billing/GermanDirectDebitActivity$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/vending/billing/GermanDirectDebitActivity$State;

    .prologue
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/util/Log;->i(Ljava/lang/String;)V

    .line 203
    iput-object p1, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mCurrentState:Lcom/android/vending/billing/GermanDirectDebitActivity$State;

    .line 204
    sget-object v0, Lcom/android/vending/billing/GermanDirectDebitActivity$State;->ADD_CARD:Lcom/android/vending/billing/GermanDirectDebitActivity$State;

    if-ne p1, v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mSaveButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mSaveButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setupAddressWidget()V
    .locals 4

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/android/vending/billing/GermanDirectDebitActivity;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/vending/VendingApplication;->getLineNumber()Ljava/lang/String;

    move-result-object v1

    .line 363
    .local v1, "phoneNumberHint":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 364
    const v2, 0x7f070065

    invoke-virtual {p0, v2}, Lcom/android/vending/billing/GermanDirectDebitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 366
    .local v0, "phoneNumberEntry":Landroid/widget/EditText;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_0

    .line 367
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 369
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 370
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 373
    .end local v0    # "phoneNumberEntry":Landroid/widget/EditText;
    :cond_1
    return-void
.end method

.method private setupWidgets()V
    .locals 7

    .prologue
    .line 215
    const v6, 0x7f070062

    invoke-virtual {p0, v6}, Lcom/android/vending/billing/GermanDirectDebitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ScrollView;

    iput-object v6, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mScrollView:Landroid/widget/ScrollView;

    .line 216
    const v6, 0x7f07000d

    invoke-virtual {p0, v6}, Lcom/android/vending/billing/GermanDirectDebitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mSaveButton:Landroid/widget/Button;

    .line 217
    iget-object v6, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    const v6, 0x7f0700d8

    invoke-virtual {p0, v6}, Lcom/android/vending/billing/GermanDirectDebitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 221
    .local v0, "accountEntry":Landroid/widget/EditText;
    const v6, 0x7f0700d9

    invoke-virtual {p0, v6}, Lcom/android/vending/billing/GermanDirectDebitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 222
    .local v5, "routingEntry":Landroid/widget/EditText;
    const v6, 0x7f070059

    invoke-virtual {p0, v6}, Lcom/android/vending/billing/GermanDirectDebitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 223
    .local v2, "line1":Landroid/widget/EditText;
    const v6, 0x7f07005a

    invoke-virtual {p0, v6}, Lcom/android/vending/billing/GermanDirectDebitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 224
    .local v3, "line2":Landroid/widget/EditText;
    const v6, 0x7f070013

    invoke-virtual {p0, v6}, Lcom/android/vending/billing/GermanDirectDebitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 225
    .local v1, "cityEntry":Landroid/widget/EditText;
    const v6, 0x7f0700da

    invoke-virtual {p0, v6}, Lcom/android/vending/billing/GermanDirectDebitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 227
    .local v4, "postalEntry":Landroid/widget/EditText;
    const v6, 0x7f060138

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setHint(I)V

    .line 228
    const v6, 0x7f060139

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(I)V

    .line 229
    const v6, 0x7f0600eb

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setHint(I)V

    .line 230
    const v6, 0x7f0600ec

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setHint(I)V

    .line 231
    const v6, 0x7f0600ed

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setHint(I)V

    .line 232
    const v6, 0x7f0600f4

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setHint(I)V

    .line 233
    return-void
.end method

.method private tosExplicitlyAccepted()Z
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mTosText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 272
    iget-boolean v0, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mTosAccepted:Z

    .line 276
    .end local p0    # "this":Lcom/android/vending/billing/GermanDirectDebitActivity;
    :goto_0
    return v0

    .line 273
    .restart local p0    # "this":Lcom/android/vending/billing/GermanDirectDebitActivity;
    :cond_0
    iget-object v0, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mTosUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 274
    const v0, 0x7f07000b

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/GermanDirectDebitActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0    # "this":Lcom/android/vending/billing/GermanDirectDebitActivity;
    check-cast p0, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    goto :goto_0

    .line 276
    .restart local p0    # "this":Lcom/android/vending/billing/GermanDirectDebitActivity;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private tosUrlAccepted()Z
    .locals 2

    .prologue
    .line 261
    iget-object v1, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mTosUrl:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 262
    const/4 v1, 0x1

    .line 265
    :goto_0
    return v1

    .line 264
    :cond_0
    const v1, 0x7f07000b

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/GermanDirectDebitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 265
    .local v0, "tosView":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method protected createView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 151
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/GermanDirectDebitActivity;->requestWindowFeature(I)Z

    .line 152
    const v0, 0x7f03003a

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/GermanDirectDebitActivity;->setContentView(I)V

    .line 153
    const v0, 0x7f0700d5

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/GermanDirectDebitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onAssetLoaded()V
    .locals 2

    .prologue
    .line 539
    const-string v0, ""

    invoke-static {v0}, Lcom/android/vending/util/Log;->i(Ljava/lang/String;)V

    .line 540
    invoke-direct {p0}, Lcom/android/vending/billing/GermanDirectDebitActivity;->displayAssetSnippet()V

    .line 541
    iget-object v0, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 542
    const v0, 0x7f0700d3

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/GermanDirectDebitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 543
    return-void
.end method

.method protected onAuthTokenComplete(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V
    .locals 2
    .param p1, "service"    # Lcom/android/vending/BaseActivity$AuthService;
    .param p2, "authToken"    # Ljava/lang/String;

    .prologue
    .line 407
    const-string v0, ""

    invoke-static {v0}, Lcom/android/vending/util/Log;->i(Ljava/lang/String;)V

    .line 408
    iget-boolean v0, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 442
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 411
    :cond_1
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, v0}, Lcom/android/vending/billing/BasePurchaseActivity;->onAuthTokenComplete(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;Z)V

    .line 413
    sget-object v0, Lcom/android/vending/billing/GermanDirectDebitActivity;->sCheckoutService:Lcom/android/vending/BaseActivity$AuthService;

    if-ne p1, v0, :cond_2

    .line 414
    sput-object p2, Lcom/android/vending/billing/GermanDirectDebitActivity;->sCheckoutToken:Ljava/lang/String;

    .line 417
    :cond_2
    sget-object v0, Lcom/android/vending/BaseActivity$AuthService;->ANDROID:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/GermanDirectDebitActivity;->haveAuthToken(Lcom/android/vending/BaseActivity$AuthService;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/vending/billing/GermanDirectDebitActivity;->sCheckoutService:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/GermanDirectDebitActivity;->haveAuthToken(Lcom/android/vending/BaseActivity$AuthService;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/vending/billing/GermanDirectDebitActivity;->sCheckoutToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 422
    sget-object v0, Lcom/android/vending/billing/GermanDirectDebitActivity$2;->$SwitchMap$com$android$vending$billing$GermanDirectDebitActivity$State:[I

    iget-object v1, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mCurrentState:Lcom/android/vending/billing/GermanDirectDebitActivity$State;

    invoke-virtual {v1}, Lcom/android/vending/billing/GermanDirectDebitActivity$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 424
    :pswitch_1
    invoke-direct {p0}, Lcom/android/vending/billing/GermanDirectDebitActivity;->initializeState()V

    goto :goto_0

    .line 438
    :pswitch_2
    iget-object v0, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mPurchasePostAction:Lcom/android/vending/billing/PurchasePostAction;

    invoke-virtual {v0}, Lcom/android/vending/billing/PurchasePostAction;->cancel()V

    .line 439
    invoke-direct {p0}, Lcom/android/vending/billing/GermanDirectDebitActivity;->addBillingInstrument()V

    goto :goto_0

    .line 422
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
    .line 165
    iget-object v0, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mSaveButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mCurrentState:Lcom/android/vending/billing/GermanDirectDebitActivity$State;

    sget-object v1, Lcom/android/vending/billing/GermanDirectDebitActivity$State;->ADD_CARD:Lcom/android/vending/billing/GermanDirectDebitActivity$State;

    if-ne v0, v1, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/android/vending/billing/GermanDirectDebitActivity;->tosUrlAccepted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    invoke-direct {p0}, Lcom/android/vending/billing/GermanDirectDebitActivity;->addBillingInstrument()V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    invoke-direct {p0}, Lcom/android/vending/billing/GermanDirectDebitActivity;->displayTosErrorMessage()V

    goto :goto_0

    .line 174
    :cond_2
    invoke-super {p0, p1}, Lcom/android/vending/billing/BasePurchaseActivity;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/android/vending/billing/BasePurchaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/vending/billing/GermanDirectDebitActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060141

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "saving":Ljava/lang/String;
    new-instance v4, Lcom/android/vending/BaseActivity$ProgressDialogAccessor;

    invoke-direct {v4, p0, v1}, Lcom/android/vending/BaseActivity$ProgressDialogAccessor;-><init>(Lcom/android/vending/BaseActivity;Ljava/lang/CharSequence;)V

    iput-object v4, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mAccessor:Lcom/android/vending/BaseActivity$ProgressDialogAccessor;

    .line 119
    iget-object v4, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mAccessor:Lcom/android/vending/BaseActivity$ProgressDialogAccessor;

    invoke-virtual {p0, v4}, Lcom/android/vending/billing/GermanDirectDebitActivity;->registerDialog(Lcom/android/vending/controller/DialogAccessor;)V

    .line 121
    sget-object v2, Lcom/android/vending/billing/GermanDirectDebitActivity$State;->ADD_CARD:Lcom/android/vending/billing/GermanDirectDebitActivity$State;

    .line 122
    .local v2, "state":Lcom/android/vending/billing/GermanDirectDebitActivity$State;
    if-eqz p1, :cond_0

    .line 123
    const-string v4, "state"

    sget-object v5, Lcom/android/vending/billing/GermanDirectDebitActivity$State;->ADD_CARD:Lcom/android/vending/billing/GermanDirectDebitActivity$State;

    invoke-virtual {v5}, Lcom/android/vending/billing/GermanDirectDebitActivity$State;->ordinal()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 124
    .local v3, "value":I
    invoke-static {}, Lcom/android/vending/billing/GermanDirectDebitActivity$State;->values()[Lcom/android/vending/billing/GermanDirectDebitActivity$State;

    move-result-object v4

    aget-object v2, v4, v3

    .line 127
    .end local v3    # "value":I
    :cond_0
    invoke-direct {p0}, Lcom/android/vending/billing/GermanDirectDebitActivity;->setupWidgets()V

    .line 128
    invoke-direct {p0, v2}, Lcom/android/vending/billing/GermanDirectDebitActivity;->setState(Lcom/android/vending/billing/GermanDirectDebitActivity$State;)V

    .line 129
    invoke-direct {p0}, Lcom/android/vending/billing/GermanDirectDebitActivity;->resetTosFields()V

    .line 132
    invoke-virtual {p0}, Lcom/android/vending/billing/GermanDirectDebitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 133
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "transaction_id"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mTransactionId:Ljava/lang/String;

    .line 136
    iget-object v4, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mAssetId:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 137
    const-string v4, "asset id is null"

    invoke-static {v4}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    .line 138
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/vending/billing/GermanDirectDebitActivity;->setResult(I)V

    .line 139
    invoke-virtual {p0}, Lcom/android/vending/billing/GermanDirectDebitActivity;->finish()V

    .line 142
    :cond_1
    new-instance v4, Lcom/android/vending/billing/PurchasePostAction;

    iget-object v5, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-direct {v4, p0, v5}, Lcom/android/vending/billing/PurchasePostAction;-><init>(Lcom/android/vending/BaseActivity;Lcom/android/vending/api/RequestManager;)V

    iput-object v4, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mPurchasePostAction:Lcom/android/vending/billing/PurchasePostAction;

    .line 144
    new-instance v4, Lcom/android/vending/AssetItemAdapter;

    iget-object v5, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/vending/AssetItemAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    .line 145
    iget-object v4, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v4, p0}, Lcom/android/vending/AssetItemAdapter;->addImagesLoadedListener(Lcom/android/vending/AssetItemAdapter$OnImagesLoadedListener;)V

    .line 146
    iget-object v4, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    sget-object v5, Lcom/android/vending/AssetItemAdapter$ViewType;->SNIPPET_VIEW:Lcom/android/vending/AssetItemAdapter$ViewType;

    invoke-virtual {v4, v5}, Lcom/android/vending/AssetItemAdapter;->setViewType(Lcom/android/vending/AssetItemAdapter$ViewType;)V

    .line 147
    return-void
.end method

.method public onImageLoaded(ILcom/android/vending/model/Asset$AppImageUsage;I)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "imageUsage"    # Lcom/android/vending/model/Asset$AppImageUsage;
    .param p3, "imageId"    # I

    .prologue
    .line 516
    const-string v1, ""

    invoke-static {v1}, Lcom/android/vending/util/Log;->i(Ljava/lang/String;)V

    .line 517
    sget-object v1, Lcom/android/vending/model/Asset$AppImageUsage;->ICON:Lcom/android/vending/model/Asset$AppImageUsage;

    if-ne p2, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mDestroyed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mThumbnailView:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 521
    :cond_1
    iget-object v1, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/android/vending/AssetItemAdapter;->getBitmapAt(ILcom/android/vending/model/Asset$AppImageUsage;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 522
    .local v0, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v1, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 523
    iget-object v1, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0
.end method

.method public onPostResponse(Lcom/android/vending/model/PurchasePostResponse;)V
    .locals 7
    .param p1, "postResponse"    # Lcom/android/vending/model/PurchasePostResponse;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 450
    const-string v3, "PostResponse = {%s}"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 451
    iget-boolean v3, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mDestroyed:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_1

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    invoke-virtual {p1}, Lcom/android/vending/model/PurchasePostResponse;->getPurchaseResult()Lcom/android/vending/model/PurchaseResult$ResultCode;

    move-result-object v1

    .line 456
    .local v1, "purchaseResult":Lcom/android/vending/model/PurchaseResult$ResultCode;
    iget-object v3, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3, v5}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 457
    const v3, 0x7f0700d3

    invoke-virtual {p0, v3}, Lcom/android/vending/billing/GermanDirectDebitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 458
    invoke-direct {p0}, Lcom/android/vending/billing/GermanDirectDebitActivity;->setupAddressWidget()V

    .line 459
    invoke-direct {p0}, Lcom/android/vending/billing/GermanDirectDebitActivity;->displayWidgets()V

    .line 460
    iget-object v3, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mAccessor:Lcom/android/vending/BaseActivity$ProgressDialogAccessor;

    invoke-virtual {p0, v3}, Lcom/android/vending/billing/GermanDirectDebitActivity;->hideDialog(Lcom/android/vending/controller/DialogAccessor;)V

    .line 462
    sget-object v3, Lcom/android/vending/billing/GermanDirectDebitActivity$2;->$SwitchMap$com$android$vending$model$PurchaseResult$ResultCode:[I

    invoke-virtual {v1}, Lcom/android/vending/model/PurchaseResult$ResultCode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 486
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .line 487
    sget-object v3, Lcom/android/vending/billing/GermanDirectDebitActivity$State;->ADD_CARD:Lcom/android/vending/billing/GermanDirectDebitActivity$State;

    invoke-direct {p0, v3}, Lcom/android/vending/billing/GermanDirectDebitActivity;->setState(Lcom/android/vending/billing/GermanDirectDebitActivity$State;)V

    .line 488
    const v3, 0x7f060037

    invoke-virtual {p0, v3}, Lcom/android/vending/billing/GermanDirectDebitActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 489
    .local v2, "title":Ljava/lang/String;
    const v3, 0x7f060039

    invoke-virtual {p0, v3}, Lcom/android/vending/billing/GermanDirectDebitActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {p0, v2, v0, v6}, Lcom/android/vending/billing/GermanDirectDebitActivity;->displayAlertMessage(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 464
    .end local v0    # "message":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/vending/billing/GermanDirectDebitActivity;->handleSuccessfulPost(Lcom/android/vending/model/PurchasePostResponse;)V

    goto :goto_0

    .line 468
    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid checkout token: {"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/vending/billing/GermanDirectDebitActivity;->sCheckoutToken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    .line 469
    sget-object v3, Lcom/android/vending/billing/GermanDirectDebitActivity$State;->RETRY_SAVE_AFTER_AUTH:Lcom/android/vending/billing/GermanDirectDebitActivity$State;

    invoke-direct {p0, v3}, Lcom/android/vending/billing/GermanDirectDebitActivity;->setState(Lcom/android/vending/billing/GermanDirectDebitActivity$State;)V

    .line 470
    sget-object v3, Lcom/android/vending/billing/GermanDirectDebitActivity;->sCheckoutService:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0, v3}, Lcom/android/vending/billing/GermanDirectDebitActivity;->invalidateAuthToken(Lcom/android/vending/BaseActivity$AuthService;)V

    goto/16 :goto_0

    .line 462
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 547
    invoke-super {p0, p1}, Lcom/android/vending/billing/BasePurchaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 548
    const-string v0, "state"

    iget-object v1, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mCurrentState:Lcom/android/vending/billing/GermanDirectDebitActivity$State;

    invoke-virtual {v1}, Lcom/android/vending/billing/GermanDirectDebitActivity$State;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 549
    const-string v0, "assetid"

    iget-object v1, p0, Lcom/android/vending/billing/GermanDirectDebitActivity;->mAssetId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0}, Lcom/android/vending/billing/BasePurchaseActivity;->onStart()V

    .line 159
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/GermanDirectDebitActivity;->startSetupActionChain(Z)V

    .line 160
    invoke-direct {p0}, Lcom/android/vending/billing/GermanDirectDebitActivity;->displayWidgets()V

    .line 161
    return-void
.end method

.method protected startSetupActionChain(Z)V
    .locals 2
    .param p1, "firstrun"    # Z

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, "initiated":Z
    sget-object v1, Lcom/android/vending/billing/GermanDirectDebitActivity;->sCheckoutToken:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/vending/billing/GermanDirectDebitActivity;->sCheckoutService:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/GermanDirectDebitActivity;->haveAuthToken(Lcom/android/vending/BaseActivity$AuthService;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 182
    :cond_0
    const/4 v0, 0x1

    .line 183
    sget-object v1, Lcom/android/vending/billing/GermanDirectDebitActivity;->sCheckoutService:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/GermanDirectDebitActivity;->initiateGetAuthToken(Lcom/android/vending/BaseActivity$AuthService;)V

    .line 185
    :cond_1
    sget-object v1, Lcom/android/vending/BaseActivity$AuthService;->ANDROID:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/GermanDirectDebitActivity;->haveAuthToken(Lcom/android/vending/BaseActivity$AuthService;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    .line 186
    :cond_2
    sget-object v1, Lcom/android/vending/BaseActivity$AuthService;->ANDROID:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/GermanDirectDebitActivity;->initiateGetAuthToken(Lcom/android/vending/BaseActivity$AuthService;)V

    .line 188
    :cond_3
    return-void
.end method

.method public updateStateDependentUi(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
    .locals 0
    .param p1, "assetId"    # Ljava/lang/String;
    .param p2, "newState"    # Lcom/android/vending/model/LocalAssetInfo$AssetState;

    .prologue
    .line 194
    return-void
.end method
