.class public Lcom/android/vending/VendingApplication;
.super Landroid/app/Application;
.source "VendingApplication.java"

# interfaces
.implements Lcom/android/vending/Authenticator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/VendingApplication$ApiClientContext;
    }
.end annotation


# static fields
.field private static sVendingApplication:Lcom/android/vending/VendingApplication;


# instance fields
.field private mAssetInfoActivity:Lcom/android/vending/AssetInfoActivity;

.field mAuthTokenCache:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentlyShownAsset:Ljava/lang/String;

.field private mDeviceConfiguration:Lcom/android/vending/model/DeviceConfiguration;

.field private mGTalkServiceHelper:Lcom/android/vending/GTalkServiceHelper;

.field private mLineNumber:Ljava/lang/String;

.field private mPackageReferrerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVendingApiClientContext:Lcom/android/vending/VendingApplication$ApiClientContext;

.field private mVendingAppMetadata:Lcom/android/vending/VendingApplicationMetadata;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 474
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/VendingApplication;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/VendingApplication;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/vending/VendingApplication;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/vending/VendingApplication;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/VendingApplication;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/vending/VendingApplication;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static getVendingApplication()Lcom/android/vending/VendingApplication;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/android/vending/VendingApplication;->sVendingApplication:Lcom/android/vending/VendingApplication;

    return-object v0
.end method

.method public static setVendingApplication(Lcom/android/vending/VendingApplication;)V
    .locals 0
    .param p0, "vendingApplication"    # Lcom/android/vending/VendingApplication;

    .prologue
    .line 123
    sput-object p0, Lcom/android/vending/VendingApplication;->sVendingApplication:Lcom/android/vending/VendingApplication;

    .line 124
    return-void
.end method

.method private syncLocalDatabaseIfNecessary()V
    .locals 2

    .prologue
    .line 359
    invoke-static {}, Lcom/android/vending/LocalDbSyncService;->isSyncRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 361
    const-class v1, Lcom/android/vending/LocalDbSyncService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 362
    invoke-virtual {p0, v0}, Lcom/android/vending/VendingApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 364
    :cond_0
    return-void
.end method


# virtual methods
.method public addPackageReferrer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "referrer"    # Ljava/lang/String;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/vending/VendingApplication;->mPackageReferrerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    return-void
.end method

.method public getApiClientContext()Lcom/android/vending/VendingApplication$ApiClientContext;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/vending/VendingApplication;->mVendingApiClientContext:Lcom/android/vending/VendingApplication$ApiClientContext;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/android/vending/VendingApplication$ApiClientContext;

    invoke-direct {v0, p0, p0}, Lcom/android/vending/VendingApplication$ApiClientContext;-><init>(Lcom/android/vending/VendingApplication;Lcom/android/vending/Authenticator;)V

    iput-object v0, p0, Lcom/android/vending/VendingApplication;->mVendingApiClientContext:Lcom/android/vending/VendingApplication$ApiClientContext;

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/vending/VendingApplication;->mVendingApiClientContext:Lcom/android/vending/VendingApplication$ApiClientContext;

    return-object v0
.end method

.method public getAssetInfoActivity(Ljava/lang/String;)Lcom/android/vending/AssetInfoActivity;
    .locals 1
    .param p1, "assetId"    # Ljava/lang/String;

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/vending/VendingApplication;->mCurrentlyShownAsset:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/VendingApplication;->mCurrentlyShownAsset:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/vending/VendingApplication;->mAssetInfoActivity:Lcom/android/vending/AssetInfoActivity;

    .line 310
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAuthTokenBlocking(Lcom/android/vending/BaseActivity$AuthService;)Ljava/lang/String;
    .locals 3
    .param p1, "authService"    # Lcom/android/vending/BaseActivity$AuthService;

    .prologue
    .line 258
    invoke-virtual {p0, p1}, Lcom/android/vending/VendingApplication;->getCachedAuthToken(Lcom/android/vending/BaseActivity$AuthService;)Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "cachedAuthToken":Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 267
    :goto_0
    return-object v2

    .line 262
    :cond_0
    invoke-static {p0, p1, v1}, Lcom/android/vending/compat/AccountManagerHelper;->getAuthTokenBlocking(Landroid/content/Context;Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "authToken":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {p0, p1, v0}, Lcom/android/vending/VendingApplication;->setCachedAuthToken(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V

    :cond_1
    move-object v2, v0

    .line 267
    goto :goto_0
.end method

.method public getCachedAuthToken(Lcom/android/vending/BaseActivity$AuthService;)Ljava/lang/String;
    .locals 2
    .param p1, "service"    # Lcom/android/vending/BaseActivity$AuthService;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/vending/VendingApplication;->mAuthTokenCache:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/vending/BaseActivity$AuthService;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public declared-synchronized getDeviceConfiguration()Lcom/android/vending/model/DeviceConfiguration;
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 409
    monitor-enter p0

    :try_start_0
    iget-object v11, p0, Lcom/android/vending/VendingApplication;->mDeviceConfiguration:Lcom/android/vending/model/DeviceConfiguration;

    if-nez v11, :cond_5

    .line 410
    new-instance v11, Lcom/android/vending/model/DeviceConfiguration;

    invoke-direct {v11}, Lcom/android/vending/model/DeviceConfiguration;-><init>()V

    iput-object v11, p0, Lcom/android/vending/VendingApplication;->mDeviceConfiguration:Lcom/android/vending/model/DeviceConfiguration;

    .line 412
    iget-object v11, p0, Lcom/android/vending/VendingApplication;->mContext:Landroid/content/Context;

    const-string v12, "activity"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 414
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v2

    .line 416
    .local v2, "ci":Landroid/content/pm/ConfigurationInfo;
    iget-object v11, p0, Lcom/android/vending/VendingApplication;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/vending/util/Util;->getScreenDimensions(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v10

    .line 418
    .local v10, "screenDimensions":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v11, p0, Lcom/android/vending/VendingApplication;->mDeviceConfiguration:Lcom/android/vending/model/DeviceConfiguration;

    iget v12, v2, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    invoke-static {v12}, Lcom/android/vending/model/DeviceConfiguration$TouchScreen;->fromConfigurationValue(I)Lcom/android/vending/model/DeviceConfiguration$TouchScreen;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/vending/model/DeviceConfiguration;->setTouchScreen(Lcom/android/vending/model/DeviceConfiguration$TouchScreen;)Lcom/android/vending/model/DeviceConfiguration;

    move-result-object v11

    iget v12, v2, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    invoke-static {v12}, Lcom/android/vending/model/DeviceConfiguration$Keyboard;->fromConfigurationValue(I)Lcom/android/vending/model/DeviceConfiguration$Keyboard;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/vending/model/DeviceConfiguration;->setKeyboard(Lcom/android/vending/model/DeviceConfiguration$Keyboard;)Lcom/android/vending/model/DeviceConfiguration;

    move-result-object v11

    iget v12, v2, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    invoke-static {v12}, Lcom/android/vending/model/DeviceConfiguration$Navigation;->fromConfigurationValue(I)Lcom/android/vending/model/DeviceConfiguration$Navigation;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/vending/model/DeviceConfiguration;->setNavigation(Lcom/android/vending/model/DeviceConfiguration$Navigation;)Lcom/android/vending/model/DeviceConfiguration;

    move-result-object v11

    iget v12, v2, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    invoke-virtual {v11, v12}, Lcom/android/vending/model/DeviceConfiguration;->setGlEsVersion(I)Lcom/android/vending/model/DeviceConfiguration;

    move-result-object v12

    iget-object v11, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v12, v11}, Lcom/android/vending/model/DeviceConfiguration;->setScreenWidth(I)Lcom/android/vending/model/DeviceConfiguration;

    move-result-object v12

    iget-object v11, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v12, v11}, Lcom/android/vending/model/DeviceConfiguration;->setScreenHeight(I)Lcom/android/vending/model/DeviceConfiguration;

    move-result-object v11

    sget v12, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {v11, v12}, Lcom/android/vending/model/DeviceConfiguration;->setScreenDensity(I)Lcom/android/vending/model/DeviceConfiguration;

    .line 427
    iget-object v11, p0, Lcom/android/vending/VendingApplication;->mDeviceConfiguration:Lcom/android/vending/model/DeviceConfiguration;

    iget v12, v2, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    and-int/lit8 v12, v12, 0x1

    if-lez v12, :cond_0

    move v12, v14

    :goto_0
    invoke-virtual {v11, v12}, Lcom/android/vending/model/DeviceConfiguration;->setHasHardKeyboard(Z)Lcom/android/vending/model/DeviceConfiguration;

    .line 429
    iget-object v11, p0, Lcom/android/vending/VendingApplication;->mDeviceConfiguration:Lcom/android/vending/model/DeviceConfiguration;

    iget v12, v2, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    and-int/lit8 v12, v12, 0x2

    if-lez v12, :cond_1

    move v12, v14

    :goto_1
    invoke-virtual {v11, v12}, Lcom/android/vending/model/DeviceConfiguration;->setHasFiveWayNavigation(Z)Lcom/android/vending/model/DeviceConfiguration;

    .line 432
    iget-object v11, p0, Lcom/android/vending/VendingApplication;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 433
    .local v3, "config":Landroid/content/res/Configuration;
    iget-object v11, p0, Lcom/android/vending/VendingApplication;->mDeviceConfiguration:Lcom/android/vending/model/DeviceConfiguration;

    iget v12, v3, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v12}, Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;->fromConfigurationValue(I)Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/vending/model/DeviceConfiguration;->setScreenLayoutSize(Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;)Lcom/android/vending/model/DeviceConfiguration;

    .line 436
    iget-object v11, p0, Lcom/android/vending/VendingApplication;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/pm/PackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_2
    if-ge v6, v7, :cond_2

    aget-object v8, v1, v6

    .line 437
    .local v8, "library":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/vending/VendingApplication;->mDeviceConfiguration:Lcom/android/vending/model/DeviceConfiguration;

    invoke-virtual {v11, v8}, Lcom/android/vending/model/DeviceConfiguration;->addSystemSharedLibrary(Ljava/lang/String;)Lcom/android/vending/model/DeviceConfiguration;

    .line 436
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "config":Landroid/content/res/Configuration;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "library":Ljava/lang/String;
    :cond_0
    move v12, v13

    .line 427
    goto :goto_0

    :cond_1
    move v12, v13

    .line 429
    goto :goto_1

    .line 440
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v3    # "config":Landroid/content/res/Configuration;
    .restart local v6    # "i$":I
    .restart local v7    # "len$":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/vending/VendingApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v1

    array-length v7, v1

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v7, :cond_3

    aget-object v9, v1, v6

    .line 441
    .local v9, "locale":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/vending/VendingApplication;->mDeviceConfiguration:Lcom/android/vending/model/DeviceConfiguration;

    invoke-virtual {v11, v9}, Lcom/android/vending/model/DeviceConfiguration;->addSystemLocale(Ljava/lang/String;)Lcom/android/vending/model/DeviceConfiguration;

    .line 440
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 444
    .end local v9    # "locale":Ljava/lang/String;
    :cond_3
    new-instance v5, Lcom/android/vending/util/GlExtensionReader;

    invoke-direct {v5}, Lcom/android/vending/util/GlExtensionReader;-><init>()V

    .line 445
    .local v5, "extensionReader":Lcom/android/vending/util/GlExtensionReader;
    invoke-virtual {v5}, Lcom/android/vending/util/GlExtensionReader;->getGlExtensions()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 446
    .local v4, "extension":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/vending/VendingApplication;->mDeviceConfiguration:Lcom/android/vending/model/DeviceConfiguration;

    invoke-virtual {v11, v4}, Lcom/android/vending/model/DeviceConfiguration;->addGlExtension(Ljava/lang/String;)Lcom/android/vending/model/DeviceConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 409
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "ci":Landroid/content/pm/ConfigurationInfo;
    .end local v3    # "config":Landroid/content/res/Configuration;
    .end local v4    # "extension":Ljava/lang/String;
    .end local v5    # "extensionReader":Lcom/android/vending/util/GlExtensionReader;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "len$":I
    .end local v10    # "screenDimensions":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 450
    .restart local v0    # "am":Landroid/app/ActivityManager;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "ci":Landroid/content/pm/ConfigurationInfo;
    .restart local v3    # "config":Landroid/content/res/Configuration;
    .restart local v5    # "extensionReader":Lcom/android/vending/util/GlExtensionReader;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "len$":I
    .restart local v10    # "screenDimensions":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_4
    :try_start_1
    iget-object v11, p0, Lcom/android/vending/VendingApplication;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/vending/VendingApplication;->mDeviceConfiguration:Lcom/android/vending/model/DeviceConfiguration;

    invoke-static {v11, v12}, Lcom/android/vending/compat/DeviceConfigurationHelper;->customizeDeviceConfiguration(Landroid/content/Context;Lcom/android/vending/model/DeviceConfiguration;)V

    .line 453
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "ci":Landroid/content/pm/ConfigurationInfo;
    .end local v3    # "config":Landroid/content/res/Configuration;
    .end local v5    # "extensionReader":Lcom/android/vending/util/GlExtensionReader;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "len$":I
    .end local v10    # "screenDimensions":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_5
    iget-object v11, p0, Lcom/android/vending/VendingApplication;->mDeviceConfiguration:Lcom/android/vending/model/DeviceConfiguration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v11
.end method

.method public getGTalkServiceHelper()Lcom/android/vending/GTalkServiceHelper;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/vending/VendingApplication;->mGTalkServiceHelper:Lcom/android/vending/GTalkServiceHelper;

    return-object v0
.end method

.method public getLineNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/vending/VendingApplication;->mLineNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/vending/VendingApplication;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/VendingApplication;->mLineNumber:Ljava/lang/String;

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/vending/VendingApplication;->mLineNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getMetadata(Landroid/content/Context;)Lcom/android/vending/VendingApplicationMetadata;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/vending/VendingApplication;->mVendingAppMetadata:Lcom/android/vending/VendingApplicationMetadata;

    if-nez v0, :cond_0

    .line 465
    new-instance v0, Lcom/android/vending/VendingApplicationMetadata;

    invoke-direct {v0}, Lcom/android/vending/VendingApplicationMetadata;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/vending/VendingApplication;->setMetadata(Lcom/android/vending/VendingApplicationMetadata;)V

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/android/vending/VendingApplication;->mVendingAppMetadata:Lcom/android/vending/VendingApplicationMetadata;

    return-object v0
.end method

.method public getPackageReferrer(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/vending/VendingApplication;->mPackageReferrerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/android/vending/VendingApplication;
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/vending/VendingApplication;->mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

    return-object v0
.end method

.method public getRestoreStartTime()J
    .locals 2

    .prologue
    .line 399
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->RESTORE_START_TIME:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/android/vending/VendingApplication;
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getVersionCode()I
    .locals 1

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/android/vending/VendingApplication;->getApiClientContext()Lcom/android/vending/VendingApplication$ApiClientContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/VendingApplication$ApiClientContext;->getVersionCode()I

    move-result v0

    return v0
.end method

.method public invalidateAuthTokenBlocking(Lcom/android/vending/BaseActivity$AuthService;)V
    .locals 4
    .param p1, "service"    # Lcom/android/vending/BaseActivity$AuthService;

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Lcom/android/vending/VendingApplication;->getCachedAuthToken(Lcom/android/vending/BaseActivity$AuthService;)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/android/vending/VendingApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.google"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/android/vending/compat/AccountManagerHelper;->invalidateAuthTokenBlocking(Landroid/content/Context;Ljava/lang/String;Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0, p1}, Lcom/android/vending/VendingApplication;->invalidateCachedAuthToken(Lcom/android/vending/BaseActivity$AuthService;)V

    .line 233
    :cond_0
    return-void
.end method

.method public invalidateCachedAuthToken(Lcom/android/vending/BaseActivity$AuthService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/vending/BaseActivity$AuthService;

    .prologue
    .line 212
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/vending/VendingApplication;->setCachedAuthToken(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 141
    sget-object v0, Lcom/android/vending/model/ApiDefsMessageTypes;->REQUEST_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0}, Lcom/google/common/io/protocol/ProtoBufType;->toString()Ljava/lang/String;

    .line 143
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 144
    invoke-static {p0}, Lcom/android/vending/util/GservicesValue;->init(Landroid/content/Context;)V

    .line 145
    invoke-static {p0}, Lcom/android/vending/util/PreferenceFile;->init(Landroid/content/Context;)V

    .line 147
    const-class v0, Lcom/android/vending/VendingApplication;

    monitor-enter v0

    .line 148
    :try_start_0
    const-string v1, "Resetting ServiceLocator from app"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    invoke-static {}, Lcom/android/vending/ServiceLocator;->reset()V

    .line 150
    invoke-static {p0}, Lcom/android/vending/ServiceLocator;->init(Lcom/android/vending/VendingApplication;)V

    .line 153
    invoke-static {}, Lcom/android/vending/LocalDbSyncService;->activateAfterTests()V

    .line 154
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    invoke-static {}, Lcom/android/vending/BaseActivity$AuthService;->values()[Lcom/android/vending/BaseActivity$AuthService;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/vending/VendingApplication;->mAuthTokenCache:[Ljava/lang/String;

    .line 156
    sput-object p0, Lcom/android/vending/VendingApplication;->sVendingApplication:Lcom/android/vending/VendingApplication;

    .line 157
    iput-object p0, p0, Lcom/android/vending/VendingApplication;->mContext:Landroid/content/Context;

    .line 158
    new-instance v0, Landroid/provider/SearchRecentSuggestions;

    const-string v1, "com.android.vending.SuggestionsProvider"

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/vending/VendingApplication;->mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

    .line 160
    invoke-direct {p0}, Lcom/android/vending/VendingApplication;->syncLocalDatabaseIfNecessary()V

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vending/VendingApplication;->mPackageReferrerMap:Ljava/util/Map;

    .line 162
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/vending/VendingApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/vending/VendingApplication;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 163
    new-instance v0, Lcom/android/vending/GTalkServiceHelper;

    invoke-direct {v0, p0}, Lcom/android/vending/GTalkServiceHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vending/VendingApplication;->mGTalkServiceHelper:Lcom/android/vending/GTalkServiceHelper;

    .line 164
    invoke-static {p0}, Lcom/android/vending/VendingBackupAgent;->registerWithBackup(Landroid/content/Context;)V

    .line 166
    invoke-static {p0}, Lcom/android/vending/CheckinUpdater;->updateIfNecessary(Landroid/content/Context;)V

    .line 167
    return-void

    .line 154
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onStartRestore(Ljava/lang/String;)V
    .locals 3
    .param p1, "tos"    # Ljava/lang/String;

    .prologue
    .line 375
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->RESTORE_START_TIME:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 376
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 377
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->TOS_VERSION:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v0, p1}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 379
    :cond_0
    return-void
.end method

.method public onStopRestore()V
    .locals 5

    .prologue
    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vending-applications restore finished in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/android/vending/VendingApplication;->getRestoreStartTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sec."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/util/Log;->i(Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/vending/VendingApplication;->mGTalkServiceHelper:Lcom/android/vending/GTalkServiceHelper;

    invoke-virtual {v0}, Lcom/android/vending/GTalkServiceHelper;->unbindService()V

    .line 172
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 173
    return-void
.end method

.method public registerAssetInfoScreen(Ljava/lang/String;Lcom/android/vending/AssetInfoActivity;)V
    .locals 0
    .param p1, "assetId"    # Ljava/lang/String;
    .param p2, "activity"    # Lcom/android/vending/AssetInfoActivity;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/vending/VendingApplication;->mCurrentlyShownAsset:Ljava/lang/String;

    .line 291
    iput-object p2, p0, Lcom/android/vending/VendingApplication;->mAssetInfoActivity:Lcom/android/vending/AssetInfoActivity;

    .line 292
    return-void
.end method

.method public setCachedAuthToken(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V
    .locals 2
    .param p1, "service"    # Lcom/android/vending/BaseActivity$AuthService;
    .param p2, "authToken"    # Ljava/lang/String;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/vending/VendingApplication;->mAuthTokenCache:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/vending/BaseActivity$AuthService;->ordinal()I

    move-result v1

    aput-object p2, v0, v1

    .line 243
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/vending/VendingApplication;->mContext:Landroid/content/Context;

    .line 129
    invoke-virtual {p0, p1}, Lcom/android/vending/VendingApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 130
    return-void
.end method

.method public setGTalkServiceHelper(Lcom/android/vending/GTalkServiceHelper;)V
    .locals 0
    .param p1, "gTalkServiceHelper"    # Lcom/android/vending/GTalkServiceHelper;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/vending/VendingApplication;->mGTalkServiceHelper:Lcom/android/vending/GTalkServiceHelper;

    .line 135
    return-void
.end method

.method public setMetadata(Lcom/android/vending/VendingApplicationMetadata;)V
    .locals 0
    .param p1, "metaData"    # Lcom/android/vending/VendingApplicationMetadata;

    .prologue
    .line 471
    iput-object p1, p0, Lcom/android/vending/VendingApplication;->mVendingAppMetadata:Lcom/android/vending/VendingApplicationMetadata;

    .line 472
    return-void
.end method
