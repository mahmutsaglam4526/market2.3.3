.class public Lcom/android/vending/CheckinUpdater;
.super Ljava/lang/Object;
.source "CheckinUpdater.java"


# static fields
.field private static sInstance:Lcom/android/vending/CheckinUpdater;


# instance fields
.field private final mCacheManager:Lcom/android/vending/cache/CacheManager;

.field private volatile mCheckinEnabled:Z

.field private volatile mCheckinOnEnable:Z

.field private final mContentSyncProducer:Lcom/android/vending/ContentSyncProducer;

.field private final mContext:Landroid/content/Context;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mRequestManager:Lcom/android/vending/api/RequestManager;

.field private final mWorkService:Lcom/android/vending/util/WorkService$Facade;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/android/vending/CheckinUpdater;->sInstance:Lcom/android/vending/CheckinUpdater;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/vending/cache/CacheManager;Lcom/android/vending/api/RequestManager;Lcom/android/vending/util/WorkService$Facade;Lcom/android/vending/ContentSyncProducer;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p3, "cacheManager"    # Lcom/android/vending/cache/CacheManager;
    .param p4, "requestManager"    # Lcom/android/vending/api/RequestManager;
    .param p5, "workService"    # Lcom/android/vending/util/WorkService$Facade;
    .param p6, "contentSyncProducer"    # Lcom/android/vending/ContentSyncProducer;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vending/CheckinUpdater;->mCheckinEnabled:Z

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vending/CheckinUpdater;->mCheckinOnEnable:Z

    .line 74
    iput-object p1, p0, Lcom/android/vending/CheckinUpdater;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/android/vending/CheckinUpdater;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 76
    iput-object p3, p0, Lcom/android/vending/CheckinUpdater;->mCacheManager:Lcom/android/vending/cache/CacheManager;

    .line 77
    iput-object p4, p0, Lcom/android/vending/CheckinUpdater;->mRequestManager:Lcom/android/vending/api/RequestManager;

    .line 78
    iput-object p5, p0, Lcom/android/vending/CheckinUpdater;->mWorkService:Lcom/android/vending/util/WorkService$Facade;

    .line 79
    iput-object p6, p0, Lcom/android/vending/CheckinUpdater;->mContentSyncProducer:Lcom/android/vending/ContentSyncProducer;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/CheckinUpdater;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/CheckinUpdater;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/vending/CheckinUpdater;->performCheckin()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/vending/CheckinUpdater;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/CheckinUpdater;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/vending/CheckinUpdater;->performUpdateCheck()V

    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/android/vending/CheckinUpdater;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const-class v7, Lcom/android/vending/CheckinUpdater;

    monitor-enter v7

    :try_start_0
    sget-object v0, Lcom/android/vending/CheckinUpdater;->sInstance:Lcom/android/vending/CheckinUpdater;

    if-nez v0, :cond_0

    .line 44
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getCacheManager()Lcom/android/vending/cache/CacheManager;

    move-result-object v3

    .line 46
    .local v3, "cacheManager":Lcom/android/vending/cache/CacheManager;
    new-instance v4, Lcom/android/vending/api/RequestManager;

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/VendingApplication;->getApiClientContext()Lcom/android/vending/VendingApplication$ApiClientContext;

    move-result-object v0

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getGoogleHttpClient()Lcom/android/vending/compat/GoogleHttpClient;

    move-result-object v1

    invoke-direct {v4, v0, v1, v3}, Lcom/android/vending/api/RequestManager;-><init>(Lcom/android/vending/VendingApplication$ApiClientContext;Lcom/android/vending/compat/GoogleHttpClient;Lcom/android/vending/cache/CacheManager;)V

    .line 51
    .local v4, "requestManager":Lcom/android/vending/api/RequestManager;
    new-instance v6, Lcom/android/vending/ContentSyncProducer;

    invoke-direct {v6}, Lcom/android/vending/ContentSyncProducer;-><init>()V

    .line 53
    .local v6, "contentSyncProducer":Lcom/android/vending/ContentSyncProducer;
    new-instance v0, Lcom/android/vending/CheckinUpdater;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Lcom/android/vending/util/WorkService;->get()Lcom/android/vending/util/WorkService$Facade;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/vending/CheckinUpdater;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/vending/cache/CacheManager;Lcom/android/vending/api/RequestManager;Lcom/android/vending/util/WorkService$Facade;Lcom/android/vending/ContentSyncProducer;)V

    sput-object v0, Lcom/android/vending/CheckinUpdater;->sInstance:Lcom/android/vending/CheckinUpdater;

    .line 56
    .end local v3    # "cacheManager":Lcom/android/vending/cache/CacheManager;
    .end local v4    # "requestManager":Lcom/android/vending/api/RequestManager;
    .end local v6    # "contentSyncProducer":Lcom/android/vending/ContentSyncProducer;
    :cond_0
    sget-object v0, Lcom/android/vending/CheckinUpdater;->sInstance:Lcom/android/vending/CheckinUpdater;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method private static notifyUpdatesAvailable(Landroid/content/Context;I)V
    .locals 8

    .prologue
    .line 303
    if-lez p1, :cond_0

    sget-object v0, Lcom/android/vending/util/VendingPreferences;->NOTIFY_UPDATES:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    const v0, 0x7f06005a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 305
    const v0, 0x7f06005b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 307
    const v0, 0x7f06005c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 308
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    const-class v0, Lcom/android/vending/MyDownloadsActivity;

    invoke-virtual {v2, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 311
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getVendingNotificationManager()Lcom/android/vending/VendingNotificationManager;

    move-result-object v0

    const-string v3, "mydownloads"

    const v7, 0x7f020077

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/vending/VendingNotificationManager;->showNotification(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 315
    :cond_0
    return-void
.end method

.method private performCheckin()V
    .locals 14

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v13, "direct"

    const-string v12, "%s: %s"

    .line 147
    iget-object v7, p0, Lcom/android/vending/CheckinUpdater;->mContentSyncProducer:Lcom/android/vending/ContentSyncProducer;

    iget-object v8, p0, Lcom/android/vending/CheckinUpdater;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v8}, Lcom/android/vending/ContentSyncProducer;->getContentSyncRequest(Landroid/content/pm/PackageManager;)Lcom/android/vending/model/ContentSyncRequest;

    move-result-object v5

    .line 148
    .local v5, "request":Lcom/android/vending/model/ContentSyncRequest;
    iget-object v7, p0, Lcom/android/vending/CheckinUpdater;->mContentSyncProducer:Lcom/android/vending/ContentSyncProducer;

    invoke-virtual {v7}, Lcom/android/vending/ContentSyncProducer;->getLastComputedSystemAppsHash()I

    move-result v3

    .line 151
    .local v3, "newSystemAppsHash":I
    if-nez v5, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    invoke-virtual {v5}, Lcom/android/vending/model/ContentSyncRequest;->hashCode()I

    move-result v6

    .line 160
    .local v6, "thisCheckinHash":I
    sget-object v7, Lcom/android/vending/util/VendingPreferences;->LAST_CHECKIN_HASH:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v7}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 161
    sget-object v7, Lcom/android/vending/util/VendingPreferences;->LAST_CHECKIN_HASH:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v7}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 162
    .local v2, "lastCheckinHash":I
    if-ne v2, v6, :cond_2

    .line 163
    const-string v7, "Suppressing duplicate checkin"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 168
    .end local v2    # "lastCheckinHash":I
    :cond_2
    sget-object v7, Lcom/android/vending/compat/VendingGservicesKeys;->VENDING_DIRECT_CHECKIN:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v7}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 169
    .local v0, "directCheckin":Z
    const/4 v4, 0x0

    .line 172
    .local v4, "numAvailableUpdates":I
    if-eqz v0, :cond_3

    .line 173
    :try_start_0
    invoke-direct {p0, v5}, Lcom/android/vending/CheckinUpdater;->sendContentSyncRequest(Lcom/android/vending/model/ContentSyncRequest;)I
    :try_end_0
    .catch Lcom/android/vending/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 187
    :goto_1
    sget-object v7, Lcom/android/vending/util/VendingPreferences;->CHECKIN_NEEDED:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 189
    sget-object v7, Lcom/android/vending/util/VendingPreferences;->LAST_CHECKIN_HASH:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 191
    sget-object v7, Lcom/android/vending/util/VendingPreferences;->LAST_SYSTEM_APPS_HASH:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 194
    if-lez v4, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/android/vending/CheckinUpdater;->performUpdateCheck()V

    goto :goto_0

    .line 176
    :cond_3
    :try_start_1
    invoke-direct {p0, v5}, Lcom/android/vending/CheckinUpdater;->sendContentSyncViaCheckin(Lcom/android/vending/model/ContentSyncRequest;)V
    :try_end_1
    .catch Lcom/android/vending/api/ApiException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 178
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 179
    .local v1, "e":Lcom/android/vending/api/ApiException;
    const-string v7, "%s: %s"

    new-array v7, v11, [Ljava/lang/Object;

    if-eqz v0, :cond_4

    const-string v8, "direct"

    move-object v8, v13

    :goto_2
    aput-object v8, v7, v9

    invoke-virtual {v1}, Lcom/android/vending/api/ApiException;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v12, v7}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string v8, "indirect"

    goto :goto_2

    .line 181
    .end local v1    # "e":Lcom/android/vending/api/ApiException;
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 182
    .local v1, "e":Ljava/io/IOException;
    const-string v7, "%s: %s"

    new-array v7, v11, [Ljava/lang/Object;

    if-eqz v0, :cond_5

    const-string v8, "direct"

    move-object v8, v13

    :goto_3
    aput-object v8, v7, v9

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v12, v7}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    const-string v8, "indirect"

    goto :goto_3
.end method

.method private performUpdateCheck()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 258
    new-instance v6, Lcom/android/vending/api/AssetService;

    iget-object v7, p0, Lcom/android/vending/CheckinUpdater;->mRequestManager:Lcom/android/vending/api/RequestManager;

    iget-object v8, p0, Lcom/android/vending/CheckinUpdater;->mCacheManager:Lcom/android/vending/cache/CacheManager;

    invoke-direct {v6, v7, v8}, Lcom/android/vending/api/AssetService;-><init>(Lcom/android/vending/api/RequestManager;Lcom/android/vending/cache/CacheManager;)V

    .line 259
    .local v6, "service":Lcom/android/vending/api/AssetService;
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 260
    .local v4, "myDownloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    new-instance v7, Lcom/android/vending/CheckinUpdater$3;

    invoke-direct {v7, p0, v4}, Lcom/android/vending/CheckinUpdater$3;-><init>(Lcom/android/vending/CheckinUpdater;Ljava/util/List;)V

    invoke-virtual {v6, v7, v10}, Lcom/android/vending/api/AssetService;->queueGetMyDownloads(Lcom/android/vending/api/AssetService$GetAssetsReceiver;[Ljava/lang/String;)V

    .line 268
    :try_start_0
    iget-object v7, p0, Lcom/android/vending/CheckinUpdater;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-virtual {v7}, Lcom/android/vending/api/RequestManager;->doRequests()V
    :try_end_0
    .catch Lcom/android/vending/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 278
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 279
    .local v1, "autoUpdates":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    const/4 v5, 0x0

    .line 280
    .local v5, "nonAutoUpdates":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 281
    .local v0, "asset":Lcom/android/vending/model/Asset;
    iget-object v7, p0, Lcom/android/vending/CheckinUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Lcom/android/vending/model/Asset;->canAutoUpdate(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 282
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 269
    .end local v0    # "asset":Lcom/android/vending/model/Asset;
    .end local v1    # "autoUpdates":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "nonAutoUpdates":I
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 270
    .local v2, "e":Lcom/android/vending/api/ApiException;
    invoke-virtual {v2}, Lcom/android/vending/api/ApiException;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    .end local v2    # "e":Lcom/android/vending/api/ApiException;
    :goto_1
    return-void

    .line 272
    :catch_1
    move-exception v7

    move-object v2, v7

    .line 273
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 283
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "asset":Lcom/android/vending/model/Asset;
    .restart local v1    # "autoUpdates":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "nonAutoUpdates":I
    :cond_1
    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->isUpdate()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 284
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 289
    .end local v0    # "asset":Lcom/android/vending/model/Asset;
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 290
    .restart local v0    # "asset":Lcom/android/vending/model/Asset;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Auto updating "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->getApplicationPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/vending/util/Log;->i(Ljava/lang/String;)V

    .line 291
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getAsynchRequestRunner()Lcom/android/vending/AsynchRequestRunner;

    move-result-object v7

    new-instance v8, Lcom/android/vending/GetAssetAsynchRequest;

    invoke-direct {v8, v0, v10}, Lcom/android/vending/GetAssetAsynchRequest;-><init>(Lcom/android/vending/model/Asset;Lcom/android/vending/BaseActivity;)V

    invoke-virtual {v7, v8}, Lcom/android/vending/AsynchRequestRunner;->runRequest(Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;)V

    goto :goto_2

    .line 296
    .end local v0    # "asset":Lcom/android/vending/model/Asset;
    :cond_3
    iget-object v7, p0, Lcom/android/vending/CheckinUpdater;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/android/vending/CheckinUpdater;->notifyUpdatesAvailable(Landroid/content/Context;I)V

    .line 299
    sget-object v7, Lcom/android/vending/util/VendingPreferences;->LAST_UPDATE_CHECK_TIME:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private sendContentSyncRequest(Lcom/android/vending/model/ContentSyncRequest;)I
    .locals 3
    .param p1, "request"    # Lcom/android/vending/model/ContentSyncRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vending/api/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    new-instance v1, Lcom/android/vending/api/ContentSyncService;

    iget-object v2, p0, Lcom/android/vending/CheckinUpdater;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-direct {v1, v2}, Lcom/android/vending/api/ContentSyncService;-><init>(Lcom/android/vending/api/RequestManager;)V

    .line 232
    .local v1, "service":Lcom/android/vending/api/ContentSyncService;
    invoke-virtual {v1, p1}, Lcom/android/vending/api/ContentSyncService;->queueContentSync(Lcom/android/vending/model/ContentSyncRequest;)V

    .line 235
    iget-object v2, p0, Lcom/android/vending/CheckinUpdater;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-virtual {v2}, Lcom/android/vending/api/RequestManager;->doRequests()V

    .line 238
    invoke-virtual {v1}, Lcom/android/vending/api/ContentSyncService;->getContentSyncResponse()Lcom/android/vending/model/ContentSyncResponse;

    move-result-object v0

    .line 239
    .local v0, "response":Lcom/android/vending/model/ContentSyncResponse;
    invoke-virtual {v0}, Lcom/android/vending/model/ContentSyncResponse;->getNumUpdatesAvailable()I

    move-result v2

    return v2
.end method

.method private sendContentSyncViaCheckin(Lcom/android/vending/model/ContentSyncRequest;)V
    .locals 9
    .param p1, "request"    # Lcom/android/vending/model/ContentSyncRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 204
    new-instance v4, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v5, Lcom/android/vending/model/ApiDefsMessageTypes;->REQUEST_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v4, v5}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 205
    .local v4, "wrapper":Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v4, v8}, Lcom/google/common/io/protocol/ProtoBuf;->createGroup(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 206
    .local v2, "requestGroup":Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v5, 0x9

    invoke-virtual {p1}, Lcom/android/vending/model/ContentSyncRequest;->getRequestProto()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 208
    invoke-virtual {v4, v8, v2}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 209
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/vending/VendingApplication;->getApiClientContext()Lcom/android/vending/VendingApplication$ApiClientContext;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/vending/VendingApplication$ApiClientContext;->getRequestProperties(Z)Lcom/android/vending/model/RequestProperties;

    move-result-object v3

    .line 211
    .local v3, "requestProperties":Lcom/android/vending/model/RequestProperties;
    invoke-virtual {v3}, Lcom/android/vending/model/RequestProperties;->getProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 214
    invoke-virtual {v4}, Lcom/google/common/io/protocol/ProtoBuf;->toByteArray()[B

    move-result-object v1

    .line 215
    .local v1, "protoBytes":[B
    const/16 v5, 0xb

    invoke-static {v1, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "checkinData":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/vending/CheckinUpdater;->mContext:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/android/vending/compat/MarketCheckinHelper;->updateCheckinDatabase(Landroid/content/Context;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public static updateIfNecessary(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->CHECKIN_NEEDED:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-static {p0}, Lcom/android/vending/CheckinUpdater;->get(Landroid/content/Context;)Lcom/android/vending/CheckinUpdater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/vending/CheckinUpdater;->update(Z)V

    .line 125
    :cond_0
    return-void
.end method


# virtual methods
.method public checkForUpdates()V
    .locals 3

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/vending/CheckinUpdater;->mWorkService:Lcom/android/vending/util/WorkService$Facade;

    iget-object v1, p0, Lcom/android/vending/CheckinUpdater;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/vending/CheckinUpdater$2;

    invoke-direct {v2, p0}, Lcom/android/vending/CheckinUpdater$2;-><init>(Lcom/android/vending/CheckinUpdater;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/util/WorkService$Facade;->submit(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 251
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 132
    iget-boolean v0, p0, Lcom/android/vending/CheckinUpdater;->mCheckinEnabled:Z

    .line 133
    .local v0, "wasEnabled":Z
    iput-boolean p1, p0, Lcom/android/vending/CheckinUpdater;->mCheckinEnabled:Z

    .line 135
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/android/vending/CheckinUpdater;->mCheckinOnEnable:Z

    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {p0, v2}, Lcom/android/vending/CheckinUpdater;->update(Z)V

    .line 139
    :cond_0
    iput-boolean v2, p0, Lcom/android/vending/CheckinUpdater;->mCheckinOnEnable:Z

    .line 140
    return-void
.end method

.method public update(Z)V
    .locals 3
    .param p1, "force"    # Z

    .prologue
    const/4 v2, 0x1

    .line 91
    if-eqz p1, :cond_0

    .line 92
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->LAST_CHECKIN_HASH:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->remove()V

    .line 97
    :cond_0
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->CHECKIN_NEEDED:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 100
    iget-boolean v0, p0, Lcom/android/vending/CheckinUpdater;->mCheckinEnabled:Z

    if-nez v0, :cond_1

    .line 101
    iput-boolean v2, p0, Lcom/android/vending/CheckinUpdater;->mCheckinOnEnable:Z

    .line 113
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/android/vending/CheckinUpdater;->mWorkService:Lcom/android/vending/util/WorkService$Facade;

    iget-object v1, p0, Lcom/android/vending/CheckinUpdater;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/vending/CheckinUpdater$1;

    invoke-direct {v2, p0}, Lcom/android/vending/CheckinUpdater$1;-><init>(Lcom/android/vending/CheckinUpdater;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/util/WorkService$Facade;->submit(Landroid/content/Context;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
