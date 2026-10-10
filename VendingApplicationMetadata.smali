.class public Lcom/android/vending/VendingApplicationMetadata;
.super Ljava/lang/Object;
.source "VendingApplicationMetadata.java"


# instance fields
.field protected mBillingEventsEnabled:Z

.field protected mCommentPostEnabled:Z

.field protected mInAppBillingEnabled:Z

.field protected mPaidAppsEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->PAID_APPS_ENABLED:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vending/VendingApplicationMetadata;->mPaidAppsEnabled:Z

    .line 33
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->COMMENT_POST_ENABLED:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vending/VendingApplicationMetadata;->mCommentPostEnabled:Z

    .line 34
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->BILLING_EVENTS_ENABLED:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vending/VendingApplicationMetadata;->mBillingEventsEnabled:Z

    .line 35
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->IN_APP_BILLING_ENABLED:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vending/VendingApplicationMetadata;->mInAppBillingEnabled:Z

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/android/vending/model/GetMarketMetadataResponse;)V
    .locals 1
    .param p1, "marketMetadataResponse"    # Lcom/android/vending/model/GetMarketMetadataResponse;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Lcom/android/vending/model/GetMarketMetadataResponse;->getPaidAppsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vending/VendingApplicationMetadata;->mPaidAppsEnabled:Z

    .line 44
    invoke-virtual {p1}, Lcom/android/vending/model/GetMarketMetadataResponse;->getCommentPostEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vending/VendingApplicationMetadata;->mCommentPostEnabled:Z

    .line 45
    invoke-virtual {p1}, Lcom/android/vending/model/GetMarketMetadataResponse;->getBillingEventsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vending/VendingApplicationMetadata;->mBillingEventsEnabled:Z

    .line 46
    invoke-virtual {p1}, Lcom/android/vending/model/GetMarketMetadataResponse;->getInAppBillingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vending/VendingApplicationMetadata;->mInAppBillingEnabled:Z

    .line 47
    return-void
.end method


# virtual methods
.method public getBillingEventsEnabled()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/vending/VendingApplicationMetadata;->mBillingEventsEnabled:Z

    return v0
.end method

.method public getCommentPostEnabled()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/vending/VendingApplicationMetadata;->mCommentPostEnabled:Z

    return v0
.end method

.method public getInAppBillingEnabled()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/vending/VendingApplicationMetadata;->mInAppBillingEnabled:Z

    return v0
.end method

.method public getPaidAppsEnabled()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/vending/VendingApplicationMetadata;->mPaidAppsEnabled:Z

    return v0
.end method

.method public persist()V
    .locals 2

    .prologue
    .line 53
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->PAID_APPS_ENABLED:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {p0}, Lcom/android/vending/VendingApplicationMetadata;->getPaidAppsEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 54
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->COMMENT_POST_ENABLED:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {p0}, Lcom/android/vending/VendingApplicationMetadata;->getCommentPostEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 55
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->BILLING_EVENTS_ENABLED:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {p0}, Lcom/android/vending/VendingApplicationMetadata;->getBillingEventsEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 56
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->IN_APP_BILLING_ENABLED:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {p0}, Lcom/android/vending/VendingApplicationMetadata;->getInAppBillingEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 57
    return-void
.end method
