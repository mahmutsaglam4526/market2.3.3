.class public Lcom/android/vending/VendingApplication$ApiClientContext;
.super Ljava/lang/Object;
.source "VendingApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/VendingApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ApiClientContext"
.end annotation


# instance fields
.field private mAid:Ljava/lang/String;

.field private final mAuthenticator:Lcom/android/vending/Authenticator;

.field private mCookieStore:Lorg/apache/http/client/CookieStore;

.field private mLoggingId:Ljava/lang/String;

.field private mServerVersion:I

.field private mVersionCode:I

.field final synthetic this$0:Lcom/android/vending/VendingApplication;


# direct methods
.method public constructor <init>(Lcom/android/vending/VendingApplication;Lcom/android/vending/Authenticator;)V
    .locals 1
    .param p2, "authenticator"    # Lcom/android/vending/Authenticator;

    .prologue
    .line 488
    iput-object p1, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->this$0:Lcom/android/vending/VendingApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    iput-object p2, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->mAuthenticator:Lcom/android/vending/Authenticator;

    .line 490
    new-instance v0, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v0}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    iput-object v0, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->mCookieStore:Lorg/apache/http/client/CookieStore;

    .line 491
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->mServerVersion:I

    .line 492
    return-void
.end method


# virtual methods
.method public getAid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 576
    iget-object v2, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->mAid:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 577
    sget-object v2, Lcom/android/vending/compat/VendingGservicesKeys;->ANDROID_ID:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v2}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 582
    .local v0, "aid":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 583
    const-string v2, "0"

    .line 589
    .end local v0    # "aid":J
    :goto_0
    return-object v2

    .line 587
    .restart local v0    # "aid":J
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->mAid:Ljava/lang/String;

    .line 589
    .end local v0    # "aid":J
    :cond_1
    iget-object v2, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->mAid:Ljava/lang/String;

    goto :goto_0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->this$0:Lcom/android/vending/VendingApplication;

    invoke-static {v0}, Lcom/android/vending/VendingApplication;->access$000(Lcom/android/vending/VendingApplication;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/compat/SettingsHelper;->getClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->this$0:Lcom/android/vending/VendingApplication;

    invoke-static {v0}, Lcom/android/vending/VendingApplication;->access$000(Lcom/android/vending/VendingApplication;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCookieStore()Lorg/apache/http/client/CookieStore;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->mCookieStore:Lorg/apache/http/client/CookieStore;

    return-object v0
.end method

.method public getLoggingId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->mLoggingId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->this$0:Lcom/android/vending/VendingApplication;

    invoke-static {v0}, Lcom/android/vending/VendingApplication;->access$000(Lcom/android/vending/VendingApplication;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/compat/SettingsHelper;->getLoggingId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->mLoggingId:Ljava/lang/String;

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->mLoggingId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestProperties(Z)Lcom/android/vending/model/RequestProperties;
    .locals 15
    .param p1, "useSecureAuthToken"    # Z

    .prologue
    .line 533
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/vending/BaseActivity$AuthService;->ANDROID_SECURE:Lcom/android/vending/BaseActivity$AuthService;

    move-object v14, v0

    .line 536
    .local v14, "authService":Lcom/android/vending/BaseActivity$AuthService;
    :goto_0
    iget-object v0, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->mAuthenticator:Lcom/android/vending/Authenticator;

    invoke-interface {v0, v14}, Lcom/android/vending/Authenticator;->getAuthTokenBlocking(Lcom/android/vending/BaseActivity$AuthService;)Ljava/lang/String;

    move-result-object v1

    .line 537
    .local v1, "authToken":Ljava/lang/String;
    new-instance v0, Lcom/android/vending/model/RequestProperties;

    invoke-virtual {p0}, Lcom/android/vending/VendingApplication$ApiClientContext;->getUserLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/vending/VendingApplication$ApiClientContext;->getAid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/vending/VendingApplication$ApiClientContext;->getVersionCode()I

    move-result v5

    iget-object v2, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->this$0:Lcom/android/vending/VendingApplication;

    invoke-static {v2}, Lcom/android/vending/VendingApplication;->access$100(Lcom/android/vending/VendingApplication;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->this$0:Lcom/android/vending/VendingApplication;

    invoke-static {v2}, Lcom/android/vending/VendingApplication;->access$100(Lcom/android/vending/VendingApplication;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v7

    iget-object v2, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->this$0:Lcom/android/vending/VendingApplication;

    invoke-static {v2}, Lcom/android/vending/VendingApplication;->access$100(Lcom/android/vending/VendingApplication;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v8

    iget-object v2, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->this$0:Lcom/android/vending/VendingApplication;

    invoke-static {v2}, Lcom/android/vending/VendingApplication;->access$100(Lcom/android/vending/VendingApplication;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/vending/VendingApplication$ApiClientContext;->getSdkVersion()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/vending/VendingApplication$ApiClientContext;->getClientId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/vending/VendingApplication$ApiClientContext;->getLoggingId()Ljava/lang/String;

    move-result-object v13

    move/from16 v2, p1

    invoke-direct/range {v0 .. v13}, Lcom/android/vending/model/RequestProperties;-><init>(Ljava/lang/String;ZLjava/util/Locale;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 533
    .end local v1    # "authToken":Ljava/lang/String;
    .end local v14    # "authService":Lcom/android/vending/BaseActivity$AuthService;
    :cond_0
    sget-object v0, Lcom/android/vending/BaseActivity$AuthService;->ANDROID:Lcom/android/vending/BaseActivity$AuthService;

    move-object v14, v0

    goto :goto_0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 568
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerVersion()I
    .locals 1

    .prologue
    .line 522
    iget v0, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->mServerVersion:I

    if-nez v0, :cond_0

    .line 523
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->SERVER_VERSION:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->mServerVersion:I

    .line 525
    :cond_0
    iget v0, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->mServerVersion:I

    return v0
.end method

.method public getUserLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 603
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getVersionCode()I
    .locals 5

    .prologue
    .line 611
    iget v3, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->mVersionCode:I

    if-nez v3, :cond_0

    .line 612
    iget-object v3, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->this$0:Lcom/android/vending/VendingApplication;

    invoke-virtual {v3}, Lcom/android/vending/VendingApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 615
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v3, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->this$0:Lcom/android/vending/VendingApplication;

    invoke-virtual {v3}, Lcom/android/vending/VendingApplication;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 616
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v3, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->mVersionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    iget v3, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->mVersionCode:I

    return v3

    .line 617
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 619
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Could not get application mVersion from Package Manager."

    invoke-static {v3}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setServerVersion(I)V
    .locals 2
    .param p1, "version"    # I

    .prologue
    .line 510
    iget v0, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->mServerVersion:I

    if-eq p1, v0, :cond_0

    .line 511
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->SERVER_VERSION:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 513
    :cond_0
    iput p1, p0, Lcom/android/vending/VendingApplication$ApiClientContext;->mServerVersion:I

    .line 514
    return-void
.end method
