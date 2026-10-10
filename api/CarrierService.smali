.class public Lcom/android/vending/api/CarrierService;
.super Ljava/lang/Object;
.source "CarrierService.java"


# instance fields
.field private mBillingEventRecorder:Lcom/android/vending/BillingEventRecorder;

.field private mBillingParameter:Lcom/android/vending/model/BillingParameter;

.field private mContext:Landroid/content/Context;

.field private mRadioHttpClient:Lcom/android/vending/api/RadioHttpClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/vending/api/RadioHttpClient;Lcom/android/vending/model/BillingParameter;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "radioHttpClient"    # Lcom/android/vending/api/RadioHttpClient;
    .param p3, "billingParam"    # Lcom/android/vending/model/BillingParameter;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/vending/api/CarrierService;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/android/vending/api/CarrierService;->mRadioHttpClient:Lcom/android/vending/api/RadioHttpClient;

    .line 59
    iput-object p3, p0, Lcom/android/vending/api/CarrierService;->mBillingParameter:Lcom/android/vending/model/BillingParameter;

    .line 60
    new-instance v0, Lcom/android/vending/BillingEventRecorder;

    invoke-direct {v0}, Lcom/android/vending/BillingEventRecorder;-><init>()V

    iput-object v0, p0, Lcom/android/vending/api/CarrierService;->mBillingEventRecorder:Lcom/android/vending/BillingEventRecorder;

    .line 61
    return-void
.end method

.method private addSubscriberIdToJsonObject(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 304
    iget-object v3, p0, Lcom/android/vending/api/CarrierService;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 307
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "line1Number":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 309
    const-string v3, "line1Number"

    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 311
    :cond_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, "subscriberId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 313
    const-string v3, "subscriberId"

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    :cond_1
    return-void
.end method

.method private buildAddress(Lorg/json/JSONObject;)Lcom/android/vending/model/Address;
    .locals 7
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 167
    if-nez p1, :cond_0

    .line 168
    const/4 v0, 0x0

    .line 177
    :goto_0
    return-object v0

    .line 171
    :cond_0
    const-string v0, "address1"

    invoke-direct {p0, p1, v0}, Lcom/android/vending/api/CarrierService;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "address1":Ljava/lang/String;
    const-string v0, "address2"

    invoke-direct {p0, p1, v0}, Lcom/android/vending/api/CarrierService;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "address2":Ljava/lang/String;
    const-string v0, "city"

    invoke-direct {p0, p1, v0}, Lcom/android/vending/api/CarrierService;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "city":Ljava/lang/String;
    const-string v0, "state"

    invoke-direct {p0, p1, v0}, Lcom/android/vending/api/CarrierService;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 175
    .local v4, "state":Ljava/lang/String;
    const-string v0, "postalcode"

    invoke-direct {p0, p1, v0}, Lcom/android/vending/api/CarrierService;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, "postalCode":Ljava/lang/String;
    const-string v0, "country"

    invoke-direct {p0, p1, v0}, Lcom/android/vending/api/CarrierService;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 177
    .local v6, "country":Ljava/lang/String;
    new-instance v0, Lcom/android/vending/model/Address;

    invoke-direct/range {v0 .. v6}, Lcom/android/vending/model/Address;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private buildCredentialsResponse(Lorg/json/JSONObject;)Lcom/android/vending/model/CarrierCredentialsResponse;
    .locals 3
    .param p1, "jsonResult"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 158
    new-instance v0, Lcom/android/vending/model/CarrierCredentialsResponse;

    invoke-direct {v0}, Lcom/android/vending/model/CarrierCredentialsResponse;-><init>()V

    .line 159
    .local v0, "response":Lcom/android/vending/model/CarrierCredentialsResponse;
    const-string v1, "credential"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierCredentialsResponse;->setCredentials(Ljava/lang/String;)V

    .line 160
    const-string v1, "credentialexpirationtime"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/model/CarrierCredentialsResponse;->setExpirationTime(J)V

    .line 161
    const-string v1, "isprovisioned"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierCredentialsResponse;->setIsProvisioned(Z)V

    .line 162
    const-string v1, "passwordinvalid"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierCredentialsResponse;->setIsPasswordInvalid(Z)V

    .line 163
    return-object v0
.end method

.method private buildEncryptedSubscriberInfo(Lorg/json/JSONObject;)Lcom/android/vending/model/EncryptedSubscriberInfo;
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 182
    if-nez p1, :cond_0

    .line 183
    const/4 v0, 0x0

    .line 186
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;

    invoke-direct {v0}, Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;-><init>()V

    const-string v1, "message"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;->setMessage(Ljava/lang/String;)Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;

    move-result-object v0

    const-string v1, "encryptedkey"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;->setEncryptedKey(Ljava/lang/String;)Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;

    move-result-object v0

    const-string v1, "signature"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;->setSignature(Ljava/lang/String;)Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;

    move-result-object v0

    const-string v1, "initvector"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;->setInitVector(Ljava/lang/String;)Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;

    move-result-object v0

    const-string v1, "googlekeyversion"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;->setGoogleKeyVersion(I)Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;

    move-result-object v0

    const-string v1, "carrierkeyversion"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;->setCarrierKeyVersion(I)Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;->build()Lcom/android/vending/model/EncryptedSubscriberInfo;

    move-result-object v0

    goto :goto_0
.end method

.method private buildProvisioningResponse(Lorg/json/JSONObject;)Lcom/android/vending/model/CarrierProvisioningResponse;
    .locals 3
    .param p1, "jsonResult"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Lcom/android/vending/model/CarrierProvisioningResponse;

    invoke-direct {v0}, Lcom/android/vending/model/CarrierProvisioningResponse;-><init>()V

    .line 134
    .local v0, "response":Lcom/android/vending/model/CarrierProvisioningResponse;
    const-string v1, "version"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setApiVersion(I)V

    .line 135
    const-string v1, "isprovisioned"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setProvisioned(Z)V

    .line 136
    const-string v1, "provisioningid"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setProvisioningId(Ljava/lang/String;)V

    .line 137
    const-string v1, "tosurl"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setTosUrl(Ljava/lang/String;)V

    .line 138
    const-string v1, "tosversion"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setTosVersion(Ljava/lang/String;)V

    .line 139
    const-string v1, "subscribercurrency"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setSubscriberCurrency(Ljava/lang/String;)V

    .line 140
    const-string v1, "transactionlimit"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/model/CarrierProvisioningResponse;->setTransactionLimit(J)V

    .line 141
    const-string v1, "subscribername"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setSubscriberName(Ljava/lang/String;)V

    .line 142
    const-string v1, "subscriberidentifier"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setSubscriberIdentifier(Ljava/lang/String;)V

    .line 143
    const-string v1, "accounttype"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setAccountType(Ljava/lang/String;)V

    .line 144
    const-string v1, "subscriberaddress"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/vending/api/CarrierService;->buildAddress(Lorg/json/JSONObject;)Lcom/android/vending/model/Address;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setSubscriberAddress(Lcom/android/vending/model/Address;)V

    .line 145
    invoke-direct {p0, p1}, Lcom/android/vending/api/CarrierService;->buildCredentialsResponse(Lorg/json/JSONObject;)Lcom/android/vending/model/CarrierCredentialsResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setCredentialsResponse(Lcom/android/vending/model/CarrierCredentialsResponse;)V

    .line 146
    const-string v1, "passwordrequired"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setPasswordRequired(Z)V

    .line 147
    const-string v1, "passwordprompt"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setPasswordPrompt(Ljava/lang/String;)V

    .line 148
    const-string v1, "passwordforgoturl"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setPasswordForgotUrl(Ljava/lang/String;)V

    .line 149
    const-string v1, "encryptedsubscriberinfo"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/vending/api/CarrierService;->buildEncryptedSubscriberInfo(Lorg/json/JSONObject;)Lcom/android/vending/model/EncryptedSubscriberInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setEncryptedSubscriberInfo(Lcom/android/vending/model/EncryptedSubscriberInfo;)V

    .line 151
    const-string v1, "addresssnippet"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setAddressSnippet(Ljava/lang/String;)V

    .line 152
    const-string v1, "country"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setCountry(Ljava/lang/String;)V

    .line 153
    return-object v0
.end method

.method private getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 1
    .param p1, "jsonResult"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 228
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCredentialsParametersAsJsonObject(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "provisioningId"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 277
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 278
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "format"

    const-string v4, "json"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    iget-object v3, p0, Lcom/android/vending/api/CarrierService;->mBillingParameter:Lcom/android/vending/model/BillingParameter;

    invoke-virtual {v3}, Lcom/android/vending/model/BillingParameter;->getApiVersion()I

    move-result v0

    .line 281
    .local v0, "apiVersion":I
    if-gtz v0, :cond_0

    .line 282
    const/4 v0, 0x1

    .line 284
    :cond_0
    const-string v3, "version"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 286
    if-eqz p1, :cond_1

    .line 287
    const-string v3, "provisioningId"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 289
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 290
    const-string v3, "password"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 293
    :cond_2
    iget-object v3, p0, Lcom/android/vending/api/CarrierService;->mBillingParameter:Lcom/android/vending/model/BillingParameter;

    invoke-virtual {v3}, Lcom/android/vending/model/BillingParameter;->sendSubscriberIdWithCarrierBillingRequests()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 294
    invoke-direct {p0, v2}, Lcom/android/vending/api/CarrierService;->addSubscriberIdToJsonObject(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :cond_3
    return-object v2

    .line 298
    .end local v0    # "apiVersion":I
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 299
    .local v1, "e":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unexpected error building JSON object"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
    .locals 1
    .param p1, "jsonResult"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 204
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 207
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
    .locals 2
    .param p1, "jsonResult"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 211
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 214
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private getObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p1, "jsonResult"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 200
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getProvisioningParametersAsJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "acceptedTosVersion"    # Ljava/lang/String;

    .prologue
    .line 251
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 252
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "format"

    const-string v4, "json"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    iget-object v3, p0, Lcom/android/vending/api/CarrierService;->mBillingParameter:Lcom/android/vending/model/BillingParameter;

    invoke-virtual {v3}, Lcom/android/vending/model/BillingParameter;->getApiVersion()I

    move-result v0

    .line 255
    .local v0, "apiVersion":I
    if-gtz v0, :cond_0

    .line 256
    const/4 v0, 0x1

    .line 258
    :cond_0
    const-string v3, "version"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 260
    if-eqz p1, :cond_1

    .line 261
    const-string v3, "acceptedTosVersion"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    :cond_1
    iget-object v3, p0, Lcom/android/vending/api/CarrierService;->mBillingParameter:Lcom/android/vending/model/BillingParameter;

    invoke-virtual {v3}, Lcom/android/vending/model/BillingParameter;->sendSubscriberIdWithCarrierBillingRequests()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 265
    invoke-direct {p0, v2}, Lcom/android/vending/api/CarrierService;->addSubscriberIdToJsonObject(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :cond_2
    return-object v2

    .line 269
    .end local v0    # "apiVersion":I
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 270
    .local v1, "e":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unexpected error building JSON object"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "jsonResult"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performRequest(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 119
    :try_start_0
    iget-object v2, p0, Lcom/android/vending/api/CarrierService;->mRadioHttpClient:Lcom/android/vending/api/RadioHttpClient;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "application/json"

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/vending/api/RadioHttpClient;->execute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "content":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 125
    .end local v0    # "content":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 126
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException while performing request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    .line 127
    throw v1
.end method

.method private toLowerCase(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "input"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 235
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 236
    .local v0, "inputIter":Ljava/util/Iterator;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 237
    .local v3, "resultObj":Lorg/json/JSONObject;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 238
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 239
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 241
    .local v2, "o":Ljava/lang/Object;
    instance-of v4, v2, Lorg/json/JSONObject;

    if-eqz v4, :cond_0

    .line 242
    check-cast v2, Lorg/json/JSONObject;

    .end local v2    # "o":Ljava/lang/Object;
    invoke-direct {p0, v2}, Lcom/android/vending/api/CarrierService;->toLowerCase(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 244
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 246
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    return-object v3
.end method


# virtual methods
.method public getCredentials(Lcom/android/vending/model/CarrierProvisioningResponse;Ljava/lang/String;)Lcom/android/vending/model/CarrierCredentialsResponse;
    .locals 8
    .param p1, "provisioning"    # Lcom/android/vending/model/CarrierProvisioningResponse;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Lcom/android/vending/model/BillingEventRequest;

    invoke-direct {v0}, Lcom/android/vending/model/BillingEventRequest;-><init>()V

    .line 90
    .local v0, "billingEvent":Lcom/android/vending/model/BillingEventRequest;
    sget-object v5, Lcom/android/vending/model/BillingEventRequest$BillingEventType;->CARRIER_BILLING_GET_CREDENTIALS:Lcom/android/vending/model/BillingEventRequest$BillingEventType;

    invoke-virtual {v0, v5}, Lcom/android/vending/model/BillingEventRequest;->setEventType(Lcom/android/vending/model/BillingEventRequest$BillingEventType;)V

    .line 91
    iget-object v5, p0, Lcom/android/vending/api/CarrierService;->mBillingParameter:Lcom/android/vending/model/BillingParameter;

    invoke-virtual {v5}, Lcom/android/vending/model/BillingParameter;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/vending/model/BillingEventRequest;->setBillingParametersId(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Lcom/android/vending/model/CarrierProvisioningResponse;->getProvisioningId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, p2}, Lcom/android/vending/api/CarrierService;->getCredentialsParametersAsJsonObject(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 97
    .local v3, "params":Lorg/json/JSONObject;
    :try_start_0
    iget-object v5, p0, Lcom/android/vending/api/CarrierService;->mBillingParameter:Lcom/android/vending/model/BillingParameter;

    invoke-virtual {v5}, Lcom/android/vending/model/BillingParameter;->getCredentialsUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/android/vending/api/CarrierService;->performRequest(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 98
    .local v2, "jsonResult":Lorg/json/JSONObject;
    invoke-direct {p0, v2}, Lcom/android/vending/api/CarrierService;->toLowerCase(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 99
    invoke-direct {p0, v2}, Lcom/android/vending/api/CarrierService;->buildCredentialsResponse(Lorg/json/JSONObject;)Lcom/android/vending/model/CarrierCredentialsResponse;

    move-result-object v4

    .line 100
    .local v4, "response":Lcom/android/vending/model/CarrierCredentialsResponse;
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/vending/model/CarrierCredentialsResponse;->isValid(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/vending/model/BillingEventRequest;->setResultSuccess(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    iget-object v5, p0, Lcom/android/vending/api/CarrierService;->mBillingEventRecorder:Lcom/android/vending/BillingEventRecorder;

    invoke-virtual {v5, v0}, Lcom/android/vending/BillingEventRecorder;->record(Lcom/android/vending/model/BillingEventRequest;)V

    return-object v4

    .line 103
    .end local v2    # "jsonResult":Lorg/json/JSONObject;
    .end local v4    # "response":Lcom/android/vending/model/CarrierCredentialsResponse;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 104
    .local v1, "e":Lorg/json/JSONException;
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/android/vending/model/BillingEventRequest;->setExceptionOccurred(Ljava/lang/Exception;)V

    .line 105
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "JSON exception while getting credentials - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    .end local v1    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/android/vending/api/CarrierService;->mBillingEventRecorder:Lcom/android/vending/BillingEventRecorder;

    invoke-virtual {v6, v0}, Lcom/android/vending/BillingEventRecorder;->record(Lcom/android/vending/model/BillingEventRequest;)V

    throw v5

    .line 106
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 107
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-virtual {v0, v1}, Lcom/android/vending/model/BillingEventRequest;->setExceptionOccurred(Ljava/lang/Exception;)V

    .line 108
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getProvisioning(Ljava/lang/String;)Lcom/android/vending/model/CarrierProvisioningResponse;
    .locals 7
    .param p1, "acceptedTosVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Lcom/android/vending/model/BillingEventRequest;

    invoke-direct {v0}, Lcom/android/vending/model/BillingEventRequest;-><init>()V

    .line 66
    .local v0, "billingEvent":Lcom/android/vending/model/BillingEventRequest;
    sget-object v4, Lcom/android/vending/model/BillingEventRequest$BillingEventType;->CARRIER_BILLING_GET_PROVISIONING:Lcom/android/vending/model/BillingEventRequest$BillingEventType;

    invoke-virtual {v0, v4}, Lcom/android/vending/model/BillingEventRequest;->setEventType(Lcom/android/vending/model/BillingEventRequest$BillingEventType;)V

    .line 67
    iget-object v4, p0, Lcom/android/vending/api/CarrierService;->mBillingParameter:Lcom/android/vending/model/BillingParameter;

    invoke-virtual {v4}, Lcom/android/vending/model/BillingParameter;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/vending/model/BillingEventRequest;->setBillingParametersId(Ljava/lang/String;)V

    .line 70
    :try_start_0
    iget-object v4, p0, Lcom/android/vending/api/CarrierService;->mBillingParameter:Lcom/android/vending/model/BillingParameter;

    invoke-virtual {v4}, Lcom/android/vending/model/BillingParameter;->getProvisioningUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/android/vending/api/CarrierService;->getProvisioningParametersAsJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/vending/api/CarrierService;->performRequest(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 72
    .local v2, "jsonResult":Lorg/json/JSONObject;
    invoke-direct {p0, v2}, Lcom/android/vending/api/CarrierService;->toLowerCase(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 73
    invoke-direct {p0, v2}, Lcom/android/vending/api/CarrierService;->buildProvisioningResponse(Lorg/json/JSONObject;)Lcom/android/vending/model/CarrierProvisioningResponse;

    move-result-object v3

    .line 74
    .local v3, "response":Lcom/android/vending/model/CarrierProvisioningResponse;
    invoke-virtual {v3}, Lcom/android/vending/model/CarrierProvisioningResponse;->isProvisioned()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/vending/model/BillingEventRequest;->setResultSuccess(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    iget-object v4, p0, Lcom/android/vending/api/CarrierService;->mBillingEventRecorder:Lcom/android/vending/BillingEventRecorder;

    invoke-virtual {v4, v0}, Lcom/android/vending/BillingEventRecorder;->record(Lcom/android/vending/model/BillingEventRequest;)V

    return-object v3

    .line 76
    .end local v2    # "jsonResult":Lorg/json/JSONObject;
    .end local v3    # "response":Lcom/android/vending/model/CarrierProvisioningResponse;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 77
    .local v1, "e":Lorg/json/JSONException;
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/android/vending/model/BillingEventRequest;->setExceptionOccurred(Ljava/lang/Exception;)V

    .line 78
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JSON exception while provisioning - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .end local v1    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/android/vending/api/CarrierService;->mBillingEventRecorder:Lcom/android/vending/BillingEventRecorder;

    invoke-virtual {v5, v0}, Lcom/android/vending/BillingEventRecorder;->record(Lcom/android/vending/model/BillingEventRequest;)V

    throw v4

    .line 79
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 80
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-virtual {v0, v1}, Lcom/android/vending/model/BillingEventRequest;->setExceptionOccurred(Ljava/lang/Exception;)V

    .line 81
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
