.class public Lcom/android/vending/ContentSyncProducer;
.super Ljava/lang/Object;
.source "ContentSyncProducer.java"


# instance fields
.field private mLastComputedSystemAppsHash:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/vending/ContentSyncProducer;->mLastComputedSystemAppsHash:I

    return-void
.end method

.method private addLocalAssetsToProto(Lcom/android/vending/model/ContentSyncRequest;)V
    .locals 14
    .param p1, "contentState"    # Lcom/android/vending/model/ContentSyncRequest;

    .prologue
    const-wide/16 v12, 0x0

    const/4 v11, 0x0

    .line 113
    new-instance v9, Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/vending/model/LocalAsset;->getAll()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 115
    .local v9, "assets":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/LocalAsset;>;"
    new-instance v0, Lcom/android/vending/ContentSyncProducer$1;

    invoke-direct {v0, p0}, Lcom/android/vending/ContentSyncProducer$1;-><init>(Lcom/android/vending/ContentSyncProducer;)V

    invoke-static {v9, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 123
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/vending/model/LocalAsset;

    .line 124
    .local v8, "asset":Lcom/android/vending/model/LocalAsset;
    invoke-virtual {v8}, Lcom/android/vending/model/LocalAsset;->getInstallTime()J

    move-result-wide v0

    cmp-long v0, v0, v12

    if-nez v0, :cond_0

    move-object v5, v11

    .line 126
    .local v5, "installTime":Ljava/lang/Long;
    :goto_1
    invoke-virtual {v8}, Lcom/android/vending/model/LocalAsset;->getUninstallTime()J

    move-result-wide v0

    cmp-long v0, v0, v12

    if-nez v0, :cond_1

    move-object v6, v11

    .line 128
    .local v6, "uninstallTime":Ljava/lang/Long;
    :goto_2
    invoke-virtual {v8}, Lcom/android/vending/model/LocalAsset;->getReferrer()Ljava/lang/String;

    move-result-object v7

    .line 129
    .local v7, "referrer":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/android/vending/model/LocalAsset;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/android/vending/model/LocalAsset;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/vending/model/LocalAsset;->getVersionCode()I

    move-result v3

    invoke-virtual {v8}, Lcom/android/vending/model/LocalAsset;->getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-result-object v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/vending/model/ContentSyncRequest;->addAssetState(Ljava/lang/String;Ljava/lang/String;ILcom/android/vending/model/LocalAssetInfo$AssetState;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    .end local v5    # "installTime":Ljava/lang/Long;
    .end local v6    # "uninstallTime":Ljava/lang/Long;
    .end local v7    # "referrer":Ljava/lang/String;
    :cond_0
    invoke-virtual {v8}, Lcom/android/vending/model/LocalAsset;->getInstallTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    .line 126
    .restart local v5    # "installTime":Ljava/lang/Long;
    :cond_1
    invoke-virtual {v8}, Lcom/android/vending/model/LocalAsset;->getUninstallTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v6, v0

    goto :goto_2

    .line 134
    .end local v5    # "installTime":Ljava/lang/Long;
    .end local v8    # "asset":Lcom/android/vending/model/LocalAsset;
    :cond_2
    return-void
.end method

.method private addSystemAppsToProto(Lcom/android/vending/model/ContentSyncRequest;Landroid/content/pm/PackageManager;)V
    .locals 11
    .param p1, "contentState"    # Lcom/android/vending/model/ContentSyncRequest;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 59
    invoke-virtual {p0, p2}, Lcom/android/vending/ContentSyncProducer;->getSystemPackages(Landroid/content/pm/PackageManager;)Ljava/util/SortedSet;

    move-result-object v6

    .line 61
    .local v6, "packages":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Landroid/content/pm/PackageInfo;>;"
    sget-object v9, Lcom/android/vending/util/VendingPreferences;->LAST_SYSTEM_APPS_HASH:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v9}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 62
    .local v5, "oldHash":I
    invoke-virtual {p0, v6}, Lcom/android/vending/ContentSyncProducer;->getSystemAppsHash(Ljava/util/SortedSet;)I

    move-result v9

    iput v9, p0, Lcom/android/vending/ContentSyncProducer;->mLastComputedSystemAppsHash:I

    .line 65
    iget v9, p0, Lcom/android/vending/ContentSyncProducer;->mLastComputedSystemAppsHash:I

    if-eq v9, v5, :cond_1

    .line 66
    invoke-interface {v6}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 67
    .local v3, "info":Landroid/content/pm/PackageInfo;
    new-instance v8, Ljava/util/TreeSet;

    invoke-direct {v8}, Ljava/util/TreeSet;-><init>()V

    .line 69
    .local v8, "signatureHashes":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v7, v0, v2

    .line 70
    .local v7, "signature":Landroid/content/pm/Signature;
    invoke-virtual {p0, v7}, Lcom/android/vending/ContentSyncProducer;->computeHash(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 73
    .end local v7    # "signature":Landroid/content/pm/Signature;
    :cond_0
    iget-object v9, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget v10, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p1, v9, v10, v8}, Lcom/android/vending/model/ContentSyncRequest;->addSystemApp(Ljava/lang/String;ILjava/util/Collection;)V

    goto :goto_0

    .line 76
    .end local v0    # "arr$":[Landroid/content/pm/Signature;
    .end local v2    # "i$":I
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    .end local v4    # "len$":I
    .end local v8    # "signatureHashes":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method protected computeHash(Landroid/content/pm/Signature;)Ljava/lang/String;
    .locals 1
    .param p1, "signature"    # Landroid/content/pm/Signature;

    .prologue
    .line 99
    if-nez p1, :cond_0

    .line 100
    const-string v0, ""

    .line 103
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/util/Sha1Util;->secureHash([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getContentSyncRequest(Landroid/content/pm/PackageManager;)Lcom/android/vending/model/ContentSyncRequest;
    .locals 1
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 46
    new-instance v0, Lcom/android/vending/model/ContentSyncRequest;

    invoke-direct {v0}, Lcom/android/vending/model/ContentSyncRequest;-><init>()V

    .line 49
    .local v0, "contentState":Lcom/android/vending/model/ContentSyncRequest;
    invoke-direct {p0, v0}, Lcom/android/vending/ContentSyncProducer;->addLocalAssetsToProto(Lcom/android/vending/model/ContentSyncRequest;)V

    .line 52
    invoke-direct {p0, v0, p1}, Lcom/android/vending/ContentSyncProducer;->addSystemAppsToProto(Lcom/android/vending/model/ContentSyncRequest;Landroid/content/pm/PackageManager;)V

    .line 54
    return-object v0
.end method

.method public getLastComputedSystemAppsHash()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/android/vending/ContentSyncProducer;->mLastComputedSystemAppsHash:I

    return v0
.end method

.method public getSystemAppsHash(Ljava/util/SortedSet;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "packages":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Landroid/content/pm/PackageInfo;>;"
    const/4 v0, 0x0

    .line 142
    .local v0, "hash":I
    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 143
    .local v2, "p":Landroid/content/pm/PackageInfo;
    mul-int/lit8 v3, v0, 0x1f

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int v0, v3, v4

    .line 144
    mul-int/lit8 v3, v0, 0x1f

    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    add-int v0, v3, v4

    goto :goto_0

    .line 147
    .end local v2    # "p":Landroid/content/pm/PackageInfo;
    :cond_0
    return v0
.end method

.method protected getSystemPackages(Landroid/content/pm/PackageManager;)Ljava/util/SortedSet;
    .locals 5
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/SortedSet",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    const/16 v4, 0x40

    invoke-virtual {p1, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 84
    .local v2, "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v3, Ljava/util/TreeSet;

    new-instance v4, Lcom/android/vending/PackageInfoComparator;

    invoke-direct {v4}, Lcom/android/vending/PackageInfoComparator;-><init>()V

    invoke-direct {v3, v4}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 86
    .local v3, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 87
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-lez v4, :cond_0

    .line 89
    invoke-interface {v3, v1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_1
    return-object v3
.end method
