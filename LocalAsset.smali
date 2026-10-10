.class public Lcom/android/vending/model/LocalAsset;
.super Ljava/lang/Object;
.source "LocalAsset.java"


# instance fields
.field private mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageInfo;Lcom/android/vending/model/LocalAssetInfo;)V
    .locals 0
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "localInfo"    # Lcom/android/vending/model/LocalAssetInfo;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/vending/model/LocalAsset;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 30
    iput-object p2, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    .line 31
    return-void
.end method

.method public static addPendingDownload(Lcom/android/vending/model/DownloadInfo;)Lcom/android/vending/model/LocalAsset;
    .locals 10
    .param p0, "downloadInfo"    # Lcom/android/vending/model/DownloadInfo;

    .prologue
    .line 201
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vending/model/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/vending/VendingApplication;->getPackageReferrer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 204
    .local v7, "referrer":Ljava/lang/String;
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getLocalAssetDatabase()Lcom/android/vending/api/LocalAssetDatabase;

    move-result-object v0

    .line 205
    .local v0, "db":Lcom/android/vending/api/LocalAssetDatabase;
    invoke-virtual {p0}, Lcom/android/vending/model/DownloadInfo;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vending/model/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/vending/model/DownloadInfo;->getType()Lcom/android/vending/model/Asset$AssetType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/vending/model/Asset$AssetType;->getValue()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/vending/model/DownloadInfo;->isForwardLocked()Z

    move-result v5

    invoke-virtual {p0}, Lcom/android/vending/model/DownloadInfo;->getRefundTimeout()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/vending/model/DownloadInfo;->getSource()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Lcom/android/vending/api/LocalAssetDatabase;->insertDownloadPendingAsset(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IZLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lcom/android/vending/model/DownloadInfo;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/vending/model/LocalAsset;->getById(Ljava/lang/String;)Lcom/android/vending/model/LocalAsset;

    move-result-object v9

    .line 216
    .local v9, "newAsset":Lcom/android/vending/model/LocalAsset;
    if-nez v9, :cond_0

    .line 217
    const-string v1, "Didn\'t find LocalAsset after insert!"

    invoke-static {v1}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .line 220
    :cond_0
    return-object v9
.end method

.method public static getAll()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/vending/model/LocalAsset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    invoke-static {}, Lcom/android/vending/model/LocalAssetCache;->get()Lcom/android/vending/model/AbstractLocalAssetCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/vending/model/AbstractLocalAssetCache;->getAll()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static getAll(Lcom/android/vending/model/LocalAssetInfo$AssetState;)Ljava/util/Collection;
    .locals 1
    .param p0, "state"    # Lcom/android/vending/model/LocalAssetInfo$AssetState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/vending/model/LocalAssetInfo$AssetState;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/vending/model/LocalAsset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    invoke-static {}, Lcom/android/vending/model/LocalAssetCache;->get()Lcom/android/vending/model/AbstractLocalAssetCache;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/vending/model/AbstractLocalAssetCache;->getAll(Lcom/android/vending/model/LocalAssetInfo$AssetState;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static getById(Ljava/lang/String;)Lcom/android/vending/model/LocalAsset;
    .locals 1
    .param p0, "assetId"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {}, Lcom/android/vending/model/LocalAssetCache;->get()Lcom/android/vending/model/AbstractLocalAssetCache;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/vending/model/AbstractLocalAssetCache;->getById(Ljava/lang/String;)Lcom/android/vending/model/LocalAsset;

    move-result-object v0

    return-object v0
.end method

.method public static getByUri(Landroid/net/Uri;)Lcom/android/vending/model/LocalAsset;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 95
    invoke-static {}, Lcom/android/vending/model/LocalAssetCache;->get()Lcom/android/vending/model/AbstractLocalAssetCache;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/vending/model/AbstractLocalAssetCache;->getByUri(Landroid/net/Uri;)Lcom/android/vending/model/LocalAsset;

    move-result-object v0

    return-object v0
.end method

.method public static getIds(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/vending/model/LocalAsset;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "assets":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/vending/model/LocalAsset;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 193
    .local v4, "ids":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 194
    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/LocalAsset;

    .line 195
    .local v0, "asset":Lcom/android/vending/model/LocalAsset;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {v0}, Lcom/android/vending/model/LocalAsset;->getAssetId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 197
    .end local v0    # "asset":Lcom/android/vending/model/LocalAsset;
    :cond_0
    return-object v4
.end method

.method public static getMatchingLocalAsset(Ljava/util/Collection;Lcom/android/vending/model/LocalAssetInfo$AssetState;)Lcom/android/vending/model/LocalAsset;
    .locals 2
    .param p1, "state"    # Lcom/android/vending/model/LocalAssetInfo$AssetState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/vending/model/LocalAsset;",
            ">;",
            "Lcom/android/vending/model/LocalAssetInfo$AssetState;",
            ")",
            "Lcom/android/vending/model/LocalAsset;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "localAssets":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/vending/model/LocalAsset;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/vending/model/LocalAssetInfo$AssetState;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lcom/android/vending/model/LocalAsset;->getMatchingLocalAsset(Ljava/util/Collection;[Lcom/android/vending/model/LocalAssetInfo$AssetState;)Lcom/android/vending/model/LocalAsset;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getMatchingLocalAsset(Ljava/util/Collection;[Lcom/android/vending/model/LocalAssetInfo$AssetState;)Lcom/android/vending/model/LocalAsset;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/vending/model/LocalAsset;",
            ">;[",
            "Lcom/android/vending/model/LocalAssetInfo$AssetState;",
            ")",
            "Lcom/android/vending/model/LocalAsset;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 55
    if-nez p0, :cond_0

    move-object v0, v4

    .line 79
    :goto_0
    return-object v0

    .line 59
    :cond_0
    const-class v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 60
    array-length v1, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 61
    if-eqz v3, :cond_1

    .line 62
    invoke-virtual {v0, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 66
    :cond_2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v4

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/vending/model/LocalAsset;

    .line 67
    invoke-virtual {v0}, Ljava/util/EnumSet;->size()I

    move-result v3

    if-nez v3, :cond_5

    .line 70
    invoke-virtual {p0}, Lcom/android/vending/model/LocalAsset;->getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/vending/model/LocalAssetInfo$AssetState;->isDownloadingOrInstalling()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v0, p0

    .line 71
    goto :goto_0

    :cond_4
    move-object v2, p0

    .line 73
    goto :goto_2

    .line 74
    :cond_5
    invoke-virtual {p0}, Lcom/android/vending/model/LocalAsset;->getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, p0

    .line 76
    goto :goto_0

    :cond_6
    move-object v0, v2

    .line 79
    goto :goto_0
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 233
    new-instance v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 235
    .local v0, "packageInfoCopy":Landroid/content/pm/PackageInfo;
    iget-object v1, p0, Lcom/android/vending/model/LocalAsset;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 236
    iget-object v1, p0, Lcom/android/vending/model/LocalAsset;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 237
    iget-object v1, p0, Lcom/android/vending/model/LocalAsset;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 238
    iget-object v1, p0, Lcom/android/vending/model/LocalAsset;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 239
    iget-object v1, p0, Lcom/android/vending/model/LocalAsset;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget v1, v1, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iput v1, v0, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    .line 240
    iget-object v1, p0, Lcom/android/vending/model/LocalAsset;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 241
    iget-object v1, p0, Lcom/android/vending/model/LocalAsset;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->gids:[I

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->gids:[I

    .line 242
    iget-object v1, p0, Lcom/android/vending/model/LocalAsset;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 243
    iget-object v1, p0, Lcom/android/vending/model/LocalAsset;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 244
    iget-object v1, p0, Lcom/android/vending/model/LocalAsset;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 245
    iget-object v1, p0, Lcom/android/vending/model/LocalAsset;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 246
    iget-object v1, p0, Lcom/android/vending/model/LocalAsset;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    .line 247
    iget-object v1, p0, Lcom/android/vending/model/LocalAsset;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    .line 248
    iget-object v1, p0, Lcom/android/vending/model/LocalAsset;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 249
    iget-object v1, p0, Lcom/android/vending/model/LocalAsset;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 250
    iget-object v1, p0, Lcom/android/vending/model/LocalAsset;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    .line 252
    new-instance v1, Lcom/android/vending/model/LocalAsset;

    iget-object v2, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    invoke-virtual {v2}, Lcom/android/vending/model/LocalAssetInfo;->copy()Lcom/android/vending/model/LocalAssetInfo;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/vending/model/LocalAsset;-><init>(Landroid/content/pm/PackageInfo;Lcom/android/vending/model/LocalAssetInfo;)V

    return-object v1
.end method

.method public getAssetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    invoke-virtual {v0}, Lcom/android/vending/model/LocalAssetInfo;->getServerId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAutoUpdateState()Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;->DEFAULT:Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    invoke-virtual {v0}, Lcom/android/vending/model/LocalAssetInfo;->getAutoUpdateState()Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;

    move-result-object v0

    goto :goto_0
.end method

.method public getInstallTime()J
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    invoke-virtual {v0}, Lcom/android/vending/model/LocalAssetInfo;->getInstallTime()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getLocalInfo()Lcom/android/vending/model/LocalAssetInfo;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    return-object v0
.end method

.method public getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    invoke-virtual {v0}, Lcom/android/vending/model/LocalAssetInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getReferrer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    invoke-virtual {v0}, Lcom/android/vending/model/LocalAssetInfo;->getReferrer()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRefundTimeout()J
    .locals 3

    .prologue
    .line 135
    iget-object v1, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    invoke-virtual {v1}, Lcom/android/vending/model/LocalAssetInfo;->getRefundTimeout()Ljava/lang/Long;

    move-result-object v0

    .line 137
    .local v0, "timeout":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 141
    .end local v0    # "timeout":Ljava/lang/Long;
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getSignatureAndSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    invoke-virtual {v0}, Lcom/android/vending/model/LocalAssetInfo;->getSignatureAndSize()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    invoke-virtual {v0}, Lcom/android/vending/model/LocalAssetInfo;->getSource()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    invoke-virtual {v0}, Lcom/android/vending/model/LocalAssetInfo;->getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-result-object v0

    goto :goto_0
.end method

.method public getUninstallTime()J
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    invoke-virtual {v0}, Lcom/android/vending/model/LocalAssetInfo;->getUninstallTime()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    invoke-virtual {v0}, Lcom/android/vending/model/LocalAssetInfo;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    invoke-virtual {v0}, Lcom/android/vending/model/LocalAssetInfo;->getVersionCode()I

    move-result v0

    goto :goto_0
.end method

.method public isForwardLocked()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    invoke-virtual {v0}, Lcom/android/vending/model/LocalAssetInfo;->isForwardLocked()Z

    move-result v0

    goto :goto_0
.end method

.method public isSystemApp()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 149
    iget-object v1, p0, Lcom/android/vending/model/LocalAsset;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v1, :cond_0

    move v1, v3

    .line 154
    :goto_0
    return v1

    .line 153
    :cond_0
    invoke-static {}, Lcom/android/vending/model/LocalAssetCache;->get()Lcom/android/vending/model/AbstractLocalAssetCache;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vending/model/LocalAsset;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/vending/model/AbstractLocalAssetCache;->getAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 154
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_0
.end method

.method public setRefundTimeout(Ljava/lang/Long;)V
    .locals 1
    .param p1, "timeout"    # Ljava/lang/Long;

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/android/vending/model/LocalAsset;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/vending/model/Asset;->setRefundTimeoutByPackageName(Ljava/lang/String;Ljava/lang/Long;)V

    .line 181
    return-void
.end method

.method public setSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/android/vending/model/LocalAsset;->getAssetId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/vending/model/Asset;->setSizeById(Ljava/lang/String;I)V

    .line 185
    return-void
.end method

.method public setState(Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
    .locals 1
    .param p1, "state"    # Lcom/android/vending/model/LocalAssetInfo$AssetState;

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/android/vending/model/LocalAsset;->getAssetId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/vending/model/Asset;->setStateById(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V

    .line 169
    return-void
.end method

.method public setUri(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "signature"    # Ljava/lang/String;

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/android/vending/model/LocalAsset;->getAssetId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/vending/model/Asset;->setUriById(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public setVersionCode(I)V
    .locals 5
    .param p1, "versionCode"    # I

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/android/vending/model/LocalAsset;->getAssetId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vending/model/LocalAsset;->getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-result-object v1

    const/4 v2, 0x0

    int-to-long v3, p1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/vending/model/Asset;->setStateById(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 173
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 226
    const-string v0, "%s (%s:%d) [%s]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/vending/model/LocalAsset;->getAssetId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/vending/model/LocalAsset;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/android/vending/model/LocalAsset;->getVersionCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/vending/model/LocalAsset;->getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
