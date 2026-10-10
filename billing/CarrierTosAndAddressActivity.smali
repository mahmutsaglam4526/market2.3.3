.class public Lcom/android/vending/billing/CarrierTosAndAddressActivity;
.super Lcom/android/vending/billing/BaseBilling;
.source "CarrierTosAndAddressActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosLoadAction;,
        Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosWebViewClient;
    }
.end annotation


# instance fields
.field private mAddressData:Lcom/android/i18n/addressinput/AddressData;

.field private mAddressSnippet:Ljava/lang/String;

.field private mAddressView:Landroid/widget/TextView;

.field private mApiVersion:I

.field protected mBillingDatabase:Lcom/android/vending/api/BillingDatabase;

.field protected mCarrierInstrument:Lcom/android/vending/model/CarrierBillingInstrument;

.field private mCarrierService:Lcom/android/vending/api/CarrierService;

.field private mCarrierTosLoadAction:Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosLoadAction;

.field private mDialog:Landroid/app/Dialog;

.field private mEditButton:Landroid/widget/ImageButton;

.field private mEditedAddress:Landroid/content/Intent;

.field protected mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

.field private mPhoneNumber:Ljava/lang/String;

.field private mPhoneNumberView:Landroid/widget/TextView;

.field protected mProvisioningData:Lcom/android/vending/model/CarrierProvisioningResponse;

.field private mShowAddress:Ljava/lang/Boolean;

.field private mShowTos:Ljava/lang/Boolean;

.field private mTosWebViewclient:Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosWebViewClient;

.field private mTransactionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/vending/billing/BaseBilling;-><init>()V

    .line 678
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/billing/CarrierTosAndAddressActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/billing/CarrierTosAndAddressActivity;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->getCarrierTosVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/vending/billing/CarrierTosAndAddressActivity;)Lcom/android/vending/api/CarrierService;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/billing/CarrierTosAndAddressActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mCarrierService:Lcom/android/vending/api/CarrierService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/vending/billing/CarrierTosAndAddressActivity;Lcom/android/vending/model/CarrierProvisioningResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/billing/CarrierTosAndAddressActivity;
    .param p1, "x1"    # Lcom/android/vending/model/CarrierProvisioningResponse;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->finishGetProvisioning(Lcom/android/vending/model/CarrierProvisioningResponse;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/vending/billing/CarrierTosAndAddressActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/billing/CarrierTosAndAddressActivity;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->displayErrorAlertAndFinish()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/vending/billing/CarrierTosAndAddressActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/billing/CarrierTosAndAddressActivity;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->getCarrierTosUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/vending/billing/CarrierTosAndAddressActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/billing/CarrierTosAndAddressActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private changeAddressSectionVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 265
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    const v2, 0x7f070087

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 266
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f070099

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 267
    const v1, 0x7f070060

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 268
    const v1, 0x7f07009a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 269
    const v1, 0x7f07009b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 270
    const v1, 0x7f07009c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 271
    const v1, 0x7f07009d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 272
    return-void
.end method

.method private changeTosSectionVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 281
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    const v2, 0x7f070087

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 282
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f070096

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 283
    return-void
.end method

.method private createCarrierBillingInstrument()Lcom/android/vending/model/CarrierBillingInstrument;
    .locals 3

    .prologue
    .line 749
    iget v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mApiVersion:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mProvisioningData:Lcom/android/vending/model/CarrierProvisioningResponse;

    invoke-virtual {v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->getEncryptedSubscriberInfo()Lcom/android/vending/model/EncryptedSubscriberInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 750
    const-string v1, "Tried to create carrier billing instrument without required field: EncryptedSubscriberInfo"

    invoke-static {v1}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .line 752
    invoke-direct {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->displayErrorAlertAndFinish()V

    .line 753
    const/4 v1, 0x0

    .line 775
    :goto_0
    return-object v1

    .line 756
    :cond_0
    new-instance v0, Lcom/android/vending/model/CarrierBillingInstrument;

    invoke-direct {v0}, Lcom/android/vending/model/CarrierBillingInstrument;-><init>()V

    .line 757
    .local v0, "instrument":Lcom/android/vending/model/CarrierBillingInstrument;
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v1}, Lcom/android/vending/model/LocalBillingData;->getSimIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierBillingInstrument;->setInstrumentKey(Ljava/lang/String;)V

    .line 758
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mProvisioningData:Lcom/android/vending/model/CarrierProvisioningResponse;

    invoke-virtual {v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->getAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierBillingInstrument;->setAccountType(Ljava/lang/String;)V

    .line 760
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressData:Lcom/android/i18n/addressinput/AddressData;

    if-eqz v1, :cond_1

    .line 761
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressData:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/AddressData;->getRecipient()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierBillingInstrument;->setSubscriberName(Ljava/lang/String;)V

    .line 762
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressData:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/AddressData;->getAddressLine1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierBillingInstrument;->setAddress1(Ljava/lang/String;)V

    .line 763
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressData:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/AddressData;->getAddressLine2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierBillingInstrument;->setAddress2(Ljava/lang/String;)V

    .line 764
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressData:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/AddressData;->getLocality()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierBillingInstrument;->setCity(Ljava/lang/String;)V

    .line 765
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressData:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/AddressData;->getPostalCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierBillingInstrument;->setCountry(Ljava/lang/String;)V

    .line 766
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressData:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/AddressData;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierBillingInstrument;->setPostalCode(Ljava/lang/String;)V

    .line 767
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressData:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/AddressData;->getAdministrativeArea()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierBillingInstrument;->setState(Ljava/lang/String;)V

    .line 769
    :cond_1
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mProvisioningData:Lcom/android/vending/model/CarrierProvisioningResponse;

    invoke-virtual {v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->getEncryptedSubscriberInfo()Lcom/android/vending/model/EncryptedSubscriberInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 770
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mProvisioningData:Lcom/android/vending/model/CarrierProvisioningResponse;

    invoke-virtual {v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->getEncryptedSubscriberInfo()Lcom/android/vending/model/EncryptedSubscriberInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierBillingInstrument;->setEncryptedSubscriberInfo(Lcom/android/vending/model/EncryptedSubscriberInfo;)V

    .line 772
    :cond_2
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mProvisioningData:Lcom/android/vending/model/CarrierProvisioningResponse;

    invoke-virtual {v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->getSubscriberCurrency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierBillingInstrument;->setSubscriberCurrency(Ljava/lang/String;)V

    .line 773
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierBillingInstrument;->setSubscriberIdentifier(Ljava/lang/String;)V

    .line 774
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mProvisioningData:Lcom/android/vending/model/CarrierProvisioningResponse;

    invoke-virtual {v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->getTransactionLimit()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/model/CarrierBillingInstrument;->setTransactionLimit(J)V

    move-object v1, v0

    .line 775
    goto/16 :goto_0
.end method

.method private displayErrorAlertAndFinish()V
    .locals 4

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060037

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 668
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f06003c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 669
    .local v0, "message":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->setResult(I)V

    .line 670
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->displayAlertMessage(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 671
    return-void
.end method

.method private fetchProvisioning()V
    .locals 3

    .prologue
    .line 440
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 442
    .local v0, "carrierServiceHandler":Landroid/os/Handler;
    new-instance v1, Lcom/android/vending/billing/CarrierTosAndAddressActivity$1;

    const-string v2, "GetProvisioningThread"

    invoke-direct {v1, p0, v2, v0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity$1;-><init>(Lcom/android/vending/billing/CarrierTosAndAddressActivity;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {v1}, Lcom/android/vending/billing/CarrierTosAndAddressActivity$1;->start()V

    .line 461
    return-void
.end method

.method private fillFullAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "line1"    # Ljava/lang/String;
    .param p3, "line2"    # Ljava/lang/String;
    .param p4, "city"    # Ljava/lang/String;
    .param p5, "state"    # Ljava/lang/String;
    .param p6, "zipCode"    # Ljava/lang/String;
    .param p7, "country"    # Ljava/lang/String;
    .param p8, "carrierName"    # Ljava/lang/String;

    .prologue
    .line 354
    const v4, 0x7f060129

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p8, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "description":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    const v5, 0x7f070099

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 356
    .local v3, "textView":Landroid/widget/TextView;
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    new-instance v4, Lcom/android/i18n/addressinput/AddressData$Builder;

    invoke-direct {v4}, Lcom/android/i18n/addressinput/AddressData$Builder;-><init>()V

    invoke-virtual {v4, p1}, Lcom/android/i18n/addressinput/AddressData$Builder;->setRecipient(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/i18n/addressinput/AddressData$Builder;->setAddressLine1(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/android/i18n/addressinput/AddressData$Builder;->setAddressLine2(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v4

    invoke-virtual {v4, p4}, Lcom/android/i18n/addressinput/AddressData$Builder;->setLocality(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v4

    invoke-virtual {v4, p5}, Lcom/android/i18n/addressinput/AddressData$Builder;->setAdminArea(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v4

    invoke-virtual {v4, p6}, Lcom/android/i18n/addressinput/AddressData$Builder;->setPostalCode(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v4

    invoke-virtual {v4, p7}, Lcom/android/i18n/addressinput/AddressData$Builder;->setCountry(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/i18n/addressinput/AddressData$Builder;->build()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressData:Lcom/android/i18n/addressinput/AddressData;

    .line 370
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 373
    :cond_0
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 374
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressData:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/i18n/addressinput/AddressWidget;->getFullEnvelopeAddress(Lcom/android/i18n/addressinput/AddressData;Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 376
    .local v2, "formattedAddress":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressView:Landroid/widget/TextView;

    const-string v5, "\n"

    invoke-static {v5, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    .end local v2    # "formattedAddress":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 383
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mPhoneNumberView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 384
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mPhoneNumberView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    :goto_1
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    const v5, 0x7f07009d

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 390
    .local v1, "editView":Landroid/widget/TextView;
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 391
    return-void

    .line 378
    .end local v1    # "editView":Landroid/widget/TextView;
    :cond_1
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 386
    :cond_2
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mPhoneNumberView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private fillSnippetAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "snippet"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "carrierName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 335
    const v3, 0x7f06012a

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p3, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "description":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    const v4, 0x7f070099

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 339
    .local v1, "descriptionView":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    new-instance v3, Lcom/android/i18n/addressinput/AddressData$Builder;

    invoke-direct {v3}, Lcom/android/i18n/addressinput/AddressData$Builder;-><init>()V

    invoke-virtual {v3, p2}, Lcom/android/i18n/addressinput/AddressData$Builder;->setCountry(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/i18n/addressinput/AddressData$Builder;->build()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressData:Lcom/android/i18n/addressinput/AddressData;

    .line 342
    iput-object p1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressSnippet:Ljava/lang/String;

    .line 343
    iget-object v3, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressSnippet:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v3, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    const v4, 0x7f07009d

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 346
    .local v2, "editView":Landroid/widget/TextView;
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    iget-object v3, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mPhoneNumberView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 350
    return-void
.end method

.method private finishGetProvisioning(Lcom/android/vending/model/CarrierProvisioningResponse;)V
    .locals 3
    .param p1, "provisioningData"    # Lcom/android/vending/model/CarrierProvisioningResponse;

    .prologue
    .line 402
    if-nez p1, :cond_0

    .line 403
    invoke-direct {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->displayErrorAlertAndFinish()V

    .line 406
    :cond_0
    iput-object p1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mProvisioningData:Lcom/android/vending/model/CarrierProvisioningResponse;

    .line 408
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mProvisioningData:Lcom/android/vending/model/CarrierProvisioningResponse;

    invoke-virtual {v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->getEncryptedSubscriberInfo()Lcom/android/vending/model/EncryptedSubscriberInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 409
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mShowAddress:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mShowTos:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 412
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAssetId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mTransactionId:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->addAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :goto_0
    return-void

    .line 416
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 417
    .local v0, "displaySnippetData":Landroid/content/Intent;
    const-string v1, "carrier_billing_api_version"

    iget v2, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mApiVersion:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 418
    const-string v1, "billing_address_snippet"

    iget-object v2, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mProvisioningData:Lcom/android/vending/model/CarrierProvisioningResponse;

    invoke-virtual {v2}, Lcom/android/vending/model/CarrierProvisioningResponse;->getAddressSnippet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    const-string v1, "billing_address_country"

    iget-object v2, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mProvisioningData:Lcom/android/vending/model/CarrierProvisioningResponse;

    invoke-virtual {v2}, Lcom/android/vending/model/CarrierProvisioningResponse;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->setResult(ILandroid/content/Intent;)V

    .line 423
    invoke-virtual {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->finish()V

    goto :goto_0

    .line 427
    .end local v0    # "displaySnippetData":Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mShowAddress:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 428
    invoke-direct {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->displayErrorAlertAndFinish()V

    goto :goto_0

    .line 432
    :cond_3
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mShowTos:Ljava/lang/Boolean;

    .line 433
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mShowAddress:Ljava/lang/Boolean;

    .line 434
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->startCarrierBillingEditActivity(Ljava/util/List;)V

    goto :goto_0
.end method

.method private getCarrierTosUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v0}, Lcom/android/vending/model/LocalBillingData;->getTosUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCarrierTosVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v0}, Lcom/android/vending/model/LocalBillingData;->getTosVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hideAddressSection()V
    .locals 1

    .prologue
    .line 262
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->changeAddressSectionVisibility(I)V

    .line 263
    return-void
.end method

.method private hideTosSection()V
    .locals 1

    .prologue
    .line 278
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->changeTosSectionVisibility(I)V

    .line 279
    return-void
.end method

.method private initDialogViews()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 178
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v4}, Lcom/android/vending/model/LocalBillingData;->getCarrierName()Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "carrierName":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->makeDialog(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    .line 180
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 182
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    const v5, 0x7f070094

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 183
    .local v0, "acceptButton":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 185
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    const v5, 0x7f070095

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    const v5, 0x7f070096

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    .line 187
    .local v3, "webView":Landroid/webkit/WebView;
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    const v5, 0x7f070097

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    const v6, 0x7f070092

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->getCarrierTosWebViewClient(Landroid/view/View;Landroid/view/View;Landroid/widget/Button;)Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosWebViewClient;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mTosWebViewclient:Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosWebViewClient;

    .line 190
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mTosWebViewclient:Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosWebViewClient;

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 191
    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 193
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    const v5, 0x7f070060

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mEditButton:Landroid/widget/ImageButton;

    .line 194
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mEditButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    const v5, 0x7f070087

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 198
    .local v2, "view":Landroid/view/View;
    const v4, 0x7f07009b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressView:Landroid/widget/TextView;

    .line 199
    const v4, 0x7f07009c

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mPhoneNumberView:Landroid/widget/TextView;

    .line 201
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mEditedAddress:Landroid/content/Intent;

    if-eqz v4, :cond_0

    .line 202
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mEditedAddress:Landroid/content/Intent;

    invoke-direct {p0, v4}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->setupViewFromIntent(Landroid/content/Intent;)V

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->setupViewFromIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private makeDialog(Ljava/lang/String;)Landroid/app/Dialog;
    .locals 8
    .param p1, "carrierName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 209
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 211
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v4, 0x103000c

    invoke-direct {v1, p0, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 212
    .local v1, "lightTheme":Landroid/view/ContextThemeWrapper;
    const v4, 0x7f030026

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 213
    .local v3, "v":Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 215
    const v4, 0x7f060125

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, "title":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 217
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 218
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 220
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method

.method private setupViewFromIntent(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 286
    const-string v0, "carrier_billing_api_version"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mApiVersion:I

    .line 287
    const-string v0, "billing_phone_number"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mPhoneNumber:Ljava/lang/String;

    .line 289
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mShowTos:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mShowAddress:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    const v1, 0x7f070087

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f07009e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 297
    :goto_0
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mShowTos:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 298
    invoke-direct {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->showTosSection()V

    .line 308
    :goto_1
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mShowAddress:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 309
    invoke-direct {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->showAddressSection()V

    .line 315
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v0}, Lcom/android/vending/model/LocalBillingData;->getCarrierName()Ljava/lang/String;

    move-result-object v8

    .line 316
    .local v8, "carrierName":Ljava/lang/String;
    iget v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mApiVersion:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_4

    .line 317
    const-string v0, "billing_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "name":Ljava/lang/String;
    const-string v0, "billing_address_line1"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 319
    .local v2, "line1":Ljava/lang/String;
    const-string v0, "billing_address_line2"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 320
    .local v3, "line2":Ljava/lang/String;
    const-string v0, "billing_address_city"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 321
    .local v4, "city":Ljava/lang/String;
    const-string v0, "billing_address_state"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 322
    .local v5, "state":Ljava/lang/String;
    const-string v0, "billing_address_zip_code"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 323
    .local v6, "zipCode":Ljava/lang/String;
    const-string v0, "billing_address_country"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "country":Ljava/lang/String;
    move-object v0, p0

    .line 325
    invoke-direct/range {v0 .. v8}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->fillFullAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "line1":Ljava/lang/String;
    .end local v3    # "line2":Ljava/lang/String;
    .end local v4    # "city":Ljava/lang/String;
    .end local v5    # "state":Ljava/lang/String;
    .end local v6    # "zipCode":Ljava/lang/String;
    .end local v7    # "country":Ljava/lang/String;
    .end local v8    # "carrierName":Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    const v1, 0x7f070087

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f07009e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 300
    :cond_2
    invoke-direct {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->hideTosSection()V

    .line 303
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    const v1, 0x7f070092

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    const v1, 0x7f070094

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 305
    .local v9, "acceptButton":Landroid/widget/Button;
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 306
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    const v1, 0x7f070097

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 311
    .end local v9    # "acceptButton":Landroid/widget/Button;
    :cond_3
    invoke-direct {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->hideAddressSection()V

    goto :goto_2

    .line 326
    .restart local v8    # "carrierName":Ljava/lang/String;
    :cond_4
    iget v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mApiVersion:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 327
    const-string v0, "billing_address_snippet"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 328
    .local v10, "addressSnippet":Ljava/lang/String;
    const-string v0, "billing_address_country"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 330
    .restart local v7    # "country":Ljava/lang/String;
    invoke-direct {p0, v10, v7, v8}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->fillSnippetAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private showAddressSection()V
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->changeAddressSectionVisibility(I)V

    .line 260
    return-void
.end method

.method private showTosSection()V
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->changeTosSectionVisibility(I)V

    .line 276
    return-void
.end method

.method private startCarrierBillingEditActivity(Ljava/util/List;)V
    .locals 9
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
    .line 543
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.EDIT"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 544
    const-class v0, Lcom/android/vending/billing/CarrierBillingAddressEditActivity;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 546
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressData:Lcom/android/i18n/addressinput/AddressData;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressData:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getRecipient()Ljava/lang/String;

    move-result-object v0

    .line 548
    iget-object v2, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressData:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v2}, Lcom/android/i18n/addressinput/AddressData;->getAddressLine1()Ljava/lang/String;

    move-result-object v2

    .line 549
    iget-object v3, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressData:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v3}, Lcom/android/i18n/addressinput/AddressData;->getAddressLine2()Ljava/lang/String;

    move-result-object v3

    .line 550
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressData:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v4}, Lcom/android/i18n/addressinput/AddressData;->getLocality()Ljava/lang/String;

    move-result-object v4

    .line 551
    iget-object v5, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressData:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v5}, Lcom/android/i18n/addressinput/AddressData;->getAdministrativeArea()Ljava/lang/String;

    move-result-object v5

    .line 552
    iget-object v6, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressData:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v6}, Lcom/android/i18n/addressinput/AddressData;->getPostalCode()Ljava/lang/String;

    move-result-object v6

    .line 553
    iget-object v7, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressData:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v7}, Lcom/android/i18n/addressinput/AddressData;->getPostalCountry()Ljava/lang/String;

    move-result-object v7

    .line 555
    const-string v8, "billing_name"

    invoke-virtual {v1, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    const-string v0, "billing_address_line1"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    const-string v0, "billing_address_line2"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 558
    const-string v0, "billing_address_city"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    const-string v0, "billing_address_state"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    const-string v0, "billing_address_zip_code"

    invoke-virtual {v1, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 561
    const-string v0, "billing_address_country"

    invoke-virtual {v1, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 563
    :cond_0
    const-string v0, "billing_phone_number"

    iget-object v2, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 566
    if-eqz p1, :cond_2

    .line 569
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 570
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/InputField;

    .line 571
    invoke-virtual {v0}, Lcom/android/vending/model/InputField;->toProtoInputField()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 573
    :cond_1
    const-string v0, "billing_errors"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 576
    :cond_2
    const/16 v0, 0x1f8

    invoke-virtual {p0, v1, v0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 577
    return-void
.end method

.method private updateAcceptedTosVersion()V
    .locals 2

    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mBillingDatabase:Lcom/android/vending/api/BillingDatabase;

    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v1}, Lcom/android/vending/model/LocalBillingData;->getTosVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/api/BillingDatabase;->setTosAcceptedVersion(Ljava/lang/String;)V

    .line 600
    return-void
.end method


# virtual methods
.method protected addAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "assetId"    # Ljava/lang/String;
    .param p2, "transactionId"    # Ljava/lang/String;

    .prologue
    .line 727
    sget-object v1, Lcom/android/vending/billing/BaseBilling$State;->SAVING_ADDRESS:Lcom/android/vending/billing/BaseBilling$State;

    iput-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mCurrentState:Lcom/android/vending/billing/BaseBilling$State;

    .line 728
    invoke-direct {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->createCarrierBillingInstrument()Lcom/android/vending/model/CarrierBillingInstrument;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mCarrierInstrument:Lcom/android/vending/model/CarrierBillingInstrument;

    .line 729
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mCarrierInstrument:Lcom/android/vending/model/CarrierBillingInstrument;

    if-nez v1, :cond_0

    .line 744
    :goto_0
    return-void

    .line 735
    :cond_0
    new-instance v0, Lcom/android/vending/model/PurchasePostRequest;

    sget-object v1, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->sCheckoutToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mCarrierInstrument:Lcom/android/vending/model/CarrierBillingInstrument;

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/android/vending/model/PurchasePostRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/model/CarrierBillingInstrument;)V

    .line 737
    .local v0, "request":Lcom/android/vending/model/PurchasePostRequest;
    iget-boolean v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mIsInAppPurchase:Z

    if-eqz v1, :cond_1

    .line 738
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mVersionCode:I

    iget-object v3, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->computeSignatureHash(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/vending/model/PurchasePostRequest;->setPackageParams(Ljava/lang/String;I[B)V

    .line 740
    sget-object v1, Lcom/android/vending/model/PurchaseInfo$ProductType;->MARKET_IN_APP_PRODUCT:Lcom/android/vending/model/PurchaseInfo$ProductType;

    invoke-virtual {v0, v1}, Lcom/android/vending/model/PurchasePostRequest;->setProductType(Lcom/android/vending/model/PurchaseInfo$ProductType;)V

    .line 742
    :cond_1
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mPurchasePostAction:Lcom/android/vending/billing/PurchasePostAction;

    invoke-virtual {v1, v0, p0, p0}, Lcom/android/vending/billing/PurchasePostAction;->executePostRequest(Lcom/android/vending/model/PurchasePostRequest;Lcom/android/vending/BaseActivity;Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;)V

    .line 743
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAccessor:Lcom/android/vending/BaseActivity$ProgressDialogAccessor;

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->displayDialog(Lcom/android/vending/controller/DialogAccessor;)V

    goto :goto_0
.end method

.method protected createViewOnStart()Landroid/view/View;
    .locals 3

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->initDialogViews()V

    .line 164
    invoke-virtual {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 165
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->setupViewFromIntent(Landroid/content/Intent;)V

    .line 166
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    const v2, 0x7f070098

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method getCarrierTosWebViewClient(Landroid/view/View;Landroid/view/View;Landroid/widget/Button;)Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosWebViewClient;
    .locals 1
    .param p1, "progress"    # Landroid/view/View;
    .param p2, "tosDisplayView"    # Landroid/view/View;
    .param p3, "acceptButton"    # Landroid/widget/Button;

    .prologue
    .line 620
    new-instance v0, Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosWebViewClient;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosWebViewClient;-><init>(Lcom/android/vending/billing/CarrierTosAndAddressActivity;Landroid/view/View;Landroid/view/View;Landroid/widget/Button;)V

    return-object v0
.end method

.method protected handleBadBillingAddress(Ljava/util/List;)V
    .locals 0
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
    .line 722
    .local p1, "errors":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/InputField;>;"
    invoke-direct {p0, p1}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->startCarrierBillingEditActivity(Ljava/util/List;)V

    .line 723
    return-void
.end method

.method protected handleGoodBillingAddress()V
    .locals 2

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mBillingDatabase:Lcom/android/vending/api/BillingDatabase;

    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mCarrierInstrument:Lcom/android/vending/model/CarrierBillingInstrument;

    invoke-virtual {v0, v1}, Lcom/android/vending/api/BillingDatabase;->saveServerPost(Lcom/android/vending/model/CarrierBillingInstrument;)V

    .line 715
    invoke-direct {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->updateAcceptedTosVersion()V

    .line 716
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->setResult(I)V

    .line 717
    invoke-virtual {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->finish()V

    .line 718
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 581
    const/16 v0, 0x1f8

    if-ne p1, v0, :cond_2

    .line 582
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 583
    invoke-direct {p0, p3}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->setupViewFromIntent(Landroid/content/Intent;)V

    .line 586
    iput-object p3, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mEditedAddress:Landroid/content/Intent;

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    if-nez p2, :cond_0

    .line 588
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->setResult(I)V

    .line 589
    invoke-virtual {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->finish()V

    goto :goto_0

    .line 593
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/android/vending/billing/BaseBilling;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onAuthTokenComplete(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V
    .locals 2
    .param p1, "service"    # Lcom/android/vending/BaseActivity$AuthService;
    .param p2, "authToken"    # Ljava/lang/String;

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, v0}, Lcom/android/vending/billing/BaseBilling;->onAuthTokenComplete(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;Z)V

    .line 230
    sget-object v0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->sCheckoutService:Lcom/android/vending/BaseActivity$AuthService;

    if-ne p1, v0, :cond_2

    .line 231
    sput-object p2, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->sCheckoutToken:Ljava/lang/String;

    .line 234
    :cond_2
    sget-object v0, Lcom/android/vending/BaseActivity$AuthService;->ANDROID:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->haveAuthToken(Lcom/android/vending/BaseActivity$AuthService;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->sCheckoutService:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->haveAuthToken(Lcom/android/vending/BaseActivity$AuthService;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->sCheckoutToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mCurrentState:Lcom/android/vending/billing/BaseBilling$State;

    sget-object v1, Lcom/android/vending/billing/BaseBilling$State;->SAVING_ADDRESS:Lcom/android/vending/billing/BaseBilling$State;

    if-ne v0, v1, :cond_3

    .line 250
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAssetId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mTransactionId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->addAccount(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 252
    :cond_3
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mShowTos:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mCarrierTosLoadAction:Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosLoadAction;

    invoke-virtual {v0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosLoadAction;->start()V

    goto :goto_0
.end method

.method onClick(I)V
    .locals 5
    .param p1, "viewId"    # I

    .prologue
    .line 475
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v1}, Lcom/android/vending/model/LocalBillingData;->getProvisioningData()Lcom/android/vending/model/CarrierProvisioningResponse;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mProvisioningData:Lcom/android/vending/model/CarrierProvisioningResponse;

    .line 476
    sparse-switch p1, :sswitch_data_0

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 478
    :sswitch_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->startCarrierBillingEditActivity(Ljava/util/List;)V

    goto :goto_0

    .line 482
    :sswitch_1
    iget v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mApiVersion:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_4

    .line 483
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mShowAddress:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 486
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 487
    .local v0, "errorList":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/InputField;>;"
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressData:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/AddressData;->getRecipient()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mPhoneNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressData:Lcom/android/i18n/addressinput/AddressData;

    new-instance v4, Lcom/android/vending/billing/AddressMetadataCacheManager;

    invoke-direct {v4}, Lcom/android/vending/billing/AddressMetadataCacheManager;-><init>()V

    invoke-static {v3, v4}, Lcom/android/i18n/addressinput/AddressWidget;->getAddressProblems(Lcom/android/i18n/addressinput/AddressData;Lcom/android/i18n/addressinput/ClientCacheManager;)Lcom/android/i18n/addressinput/AddressProblems;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->checkBillingInformation(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/addressinput/AddressProblems;Ljava/util/List;)V

    .line 492
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 493
    invoke-direct {p0, v0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->startCarrierBillingEditActivity(Ljava/util/List;)V

    goto :goto_0

    .line 499
    :cond_1
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAssetId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mTransactionId:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->addAccount(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 501
    .end local v0    # "errorList":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/InputField;>;"
    :cond_2
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mShowTos:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 502
    invoke-direct {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->updateAcceptedTosVersion()V

    .line 504
    :cond_3
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->setResult(I)V

    .line 505
    invoke-virtual {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->finish()V

    goto :goto_0

    .line 507
    :cond_4
    iget v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mApiVersion:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 509
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mShowAddress:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 510
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mShowTos:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 514
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mProvisioningData:Lcom/android/vending/model/CarrierProvisioningResponse;

    invoke-virtual {v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->getEncryptedSubscriberInfo()Lcom/android/vending/model/EncryptedSubscriberInfo;

    move-result-object v1

    if-nez v1, :cond_5

    .line 515
    invoke-direct {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->fetchProvisioning()V

    goto :goto_0

    .line 517
    :cond_5
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAssetId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mTransactionId:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->addAccount(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 522
    :cond_6
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAssetId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mTransactionId:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->addAccount(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 525
    :cond_7
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mShowTos:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 528
    invoke-direct {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->fetchProvisioning()V

    .line 529
    invoke-direct {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->updateAcceptedTosVersion()V

    goto/16 :goto_0

    .line 536
    :sswitch_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->setResult(I)V

    .line 537
    invoke-virtual {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->finish()V

    goto/16 :goto_0

    .line 476
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f070060 -> :sswitch_0
        0x7f070094 -> :sswitch_1
        0x7f070095 -> :sswitch_2
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 470
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->onClick(I)V

    .line 471
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 110
    invoke-super {p0, p1}, Lcom/android/vending/billing/BaseBilling;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getBillingDatabase()Lcom/android/vending/api/BillingDatabase;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mBillingDatabase:Lcom/android/vending/api/BillingDatabase;

    .line 113
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mBillingDatabase:Lcom/android/vending/api/BillingDatabase;

    invoke-virtual {v4}, Lcom/android/vending/api/BillingDatabase;->getLocalBillingData()Lcom/android/vending/model/LocalBillingData;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    .line 114
    new-instance v0, Lcom/android/vending/api/BillingParametersService;

    invoke-direct {v0}, Lcom/android/vending/api/BillingParametersService;-><init>()V

    .line 115
    .local v0, "billingParametersService":Lcom/android/vending/api/BillingParametersService;
    new-instance v4, Lcom/android/vending/api/CarrierService;

    invoke-virtual {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getRadioHttpClient()Lcom/android/vending/api/RadioHttpClient;

    move-result-object v6

    invoke-virtual {v0, p0}, Lcom/android/vending/api/BillingParametersService;->getBillingParameter(Landroid/content/Context;)Lcom/android/vending/model/BillingParameter;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/android/vending/api/CarrierService;-><init>(Landroid/content/Context;Lcom/android/vending/api/RadioHttpClient;Lcom/android/vending/model/BillingParameter;)V

    iput-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mCarrierService:Lcom/android/vending/api/CarrierService;

    .line 122
    invoke-virtual {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 123
    .local v3, "window":Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 124
    .local v2, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 125
    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 126
    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 129
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "show_address"

    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mShowAddress:Ljava/lang/Boolean;

    .line 130
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mShowAddress:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 131
    const-string v4, "transaction_id"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mTransactionId:Ljava/lang/String;

    .line 133
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAssetId:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 134
    const-string v4, "asset id is null"

    invoke-static {v4}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0, v8}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->setResult(I)V

    .line 136
    invoke-virtual {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->finish()V

    .line 139
    :cond_0
    const-string v4, "show_tos"

    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mShowTos:Ljava/lang/Boolean;

    .line 141
    if-eqz p1, :cond_1

    .line 142
    const-string v4, "edited_address"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    iput-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mEditedAddress:Landroid/content/Intent;

    .line 144
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 608
    const/4 v0, 0x0

    return v0
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 779
    packed-switch p2, :pswitch_data_0

    .line 793
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 788
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 789
    invoke-virtual {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->finish()V

    :cond_0
    move v0, v1

    .line 791
    goto :goto_0

    .line 779
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onPostResponse(Lcom/android/vending/model/PurchasePostResponse;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/vending/model/PurchasePostResponse;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/android/vending/billing/BaseBilling;->onPostResponse(Lcom/android/vending/model/PurchasePostResponse;)V

    return-void
.end method

.method public bridge synthetic onPurchasePostError()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Lcom/android/vending/billing/BaseBilling;->onPurchasePostError()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/android/vending/billing/BaseBilling;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 172
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mEditedAddress:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 173
    const-string v0, "edited_address"

    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mEditedAddress:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 175
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Lcom/android/vending/billing/BaseBilling;->onStart()V

    .line 149
    new-instance v0, Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosLoadAction;

    invoke-direct {v0, p0, p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosLoadAction;-><init>(Lcom/android/vending/billing/CarrierTosAndAddressActivity;Lcom/android/vending/BaseActivity;)V

    iput-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mCarrierTosLoadAction:Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosLoadAction;

    .line 150
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mCarrierTosLoadAction:Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosLoadAction;

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->setAutoStartAction(Lcom/android/vending/BaseActivity$BaseAction;)V

    .line 151
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->startSetupActionChain(Z)V

    .line 152
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 156
    invoke-super {p0}, Lcom/android/vending/billing/BaseBilling;->onStop()V

    .line 157
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    .line 159
    return-void
.end method
