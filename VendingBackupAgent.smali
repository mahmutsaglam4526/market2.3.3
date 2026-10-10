.class public Lcom/android/vending/VendingBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "VendingBackupAgent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/VendingBackupAgent;Lcom/google/common/io/protocol/ProtoBuf;Lcom/android/vending/model/DownloadInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/VendingBackupAgent;
    .param p1, "x1"    # Lcom/google/common/io/protocol/ProtoBuf;
    .param p2, "x2"    # Lcom/android/vending/model/DownloadInfo;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/vending/VendingBackupAgent;->shouldRestore(Lcom/google/common/io/protocol/ProtoBuf;Lcom/android/vending/model/DownloadInfo;)Z

    move-result v0

    return v0
.end method

.method static registerWithBackup(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->BACKUP_STATE:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Landroid/app/backup/BackupManager;

    invoke-direct {v0, p0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 60
    :cond_0
    return-void
.end method

.method private shouldRestore(Lcom/google/common/io/protocol/ProtoBuf;Lcom/android/vending/model/DownloadInfo;)Z
    .locals 7
    .param p1, "installAsset"    # Lcom/google/common/io/protocol/ProtoBuf;
    .param p2, "parsed"    # Lcom/android/vending/model/DownloadInfo;

    .prologue
    const/16 v3, 0xc

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 204
    invoke-virtual {p1, v3}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    invoke-virtual {p1, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    .line 208
    .local v1, "restoreVersion":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/vending/VendingBackupAgent;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/vending/model/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 210
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v2, v1, :cond_0

    move v2, v6

    .line 215
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v1    # "restoreVersion":I
    :goto_0
    return v2

    .restart local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v1    # "restoreVersion":I
    :cond_0
    move v2, v5

    .line 210
    goto :goto_0

    .line 211
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .end local v1    # "restoreVersion":I
    :cond_1
    move v2, v6

    .line 215
    goto :goto_0
.end method


# virtual methods
.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 10
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v9, "vending"

    .line 66
    sget-object v7, Lcom/android/vending/util/VendingPreferences;->TOS_VERSION:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v7}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 68
    .local v4, "lastAcceptedTosVersion":Ljava/lang/String;
    sget-object v7, Lcom/android/vending/compat/VendingGservicesKeys;->ANDROID_ID:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v7}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/android/vending/VendingBackupAgent;
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 69
    .local v0, "aid":J
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 70
    .local v2, "bufStream":Ljava/io/ByteArrayOutputStream;
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 71
    .local v5, "outWriter":Ljava/io/DataOutputStream;
    invoke-virtual {v5, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 72
    invoke-virtual {v5, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 74
    .local v6, "vendingData":[B
    const-string v7, "vending"

    array-length v7, v6

    invoke-virtual {p2, v9, v7}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 75
    array-length v7, v6

    invoke-virtual {p2, v6, v7}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 78
    sget-object v7, Lcom/android/vending/util/VendingPreferences;->BACKUP_STATE:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v7}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 79
    .local v3, "currentState":Ljava/lang/String;
    const-string v7, "vending"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 80
    sget-object v7, Lcom/android/vending/util/VendingPreferences;->BACKUP_STATE:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    const-string v8, "vending"

    invoke-virtual {v7, v9}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 82
    :cond_0
    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 10
    .param p1, "data"    # Landroid/app/backup/BackupDataInput;
    .param p2, "appVersionCode"    # I
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    :cond_0
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 88
    const-string v8, "vending"

    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 89
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v4

    .line 90
    .local v4, "dataSize":I
    new-array v3, v4, [B

    .line 91
    .local v3, "dataBuf":[B
    const/4 v8, 0x0

    invoke-virtual {p1, v3, v8, v4}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 92
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 93
    .local v2, "baStream":Ljava/io/ByteArrayInputStream;
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 94
    .local v6, "in":Ljava/io/DataInputStream;
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    .line 95
    .local v0, "aid":J
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    .line 97
    .local v7, "tos":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v0, v1, v7}, Lcom/android/vending/VendingBackupAgent;->restoreApps(JLjava/lang/String;)V
    :try_end_0
    .catch Lcom/android/vending/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v0    # "aid":J
    .end local v2    # "baStream":Ljava/io/ByteArrayInputStream;
    .end local v3    # "dataBuf":[B
    .end local v4    # "dataSize":I
    .end local v6    # "in":Ljava/io/DataInputStream;
    .end local v7    # "tos":Ljava/lang/String;
    :cond_1
    return-void

    .line 98
    .restart local v0    # "aid":J
    .restart local v2    # "baStream":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "dataBuf":[B
    .restart local v4    # "dataSize":I
    .restart local v6    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "tos":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 99
    .local v5, "e":Lcom/android/vending/api/ApiException;
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Cannot call restore API."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0    # "this":Lcom/android/vending/VendingBackupAgent;
    check-cast p0, Ljava/io/IOException;

    throw p0
.end method

.method final restoreApps(JLjava/lang/String;)V
    .locals 10
    .param p1, "aid"    # J
    .param p3, "tos"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vending/api/ApiException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 108
    const-string v6, "restoring TOS=%s for aid=0x%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p3, v7, v8

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/android/vending/util/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v5

    .line 111
    .local v5, "vendingApplication":Lcom/android/vending/VendingApplication;
    invoke-virtual {v5, p3}, Lcom/android/vending/VendingApplication;->onStartRestore(Ljava/lang/String;)V

    .line 113
    new-instance v3, Lcom/android/vending/api/RequestManager;

    invoke-virtual {v5}, Lcom/android/vending/VendingApplication;->getApiClientContext()Lcom/android/vending/VendingApplication$ApiClientContext;

    move-result-object v6

    const v7, 0xea60

    invoke-static {v5, v7}, Lcom/android/vending/ServiceLocator;->createGoogleHttpClient(Landroid/app/Application;I)Lcom/android/vending/compat/GoogleHttpClient;

    move-result-object v7

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getCacheManager()Lcom/android/vending/cache/CacheManager;

    move-result-object v8

    invoke-direct {v3, v6, v7, v8}, Lcom/android/vending/api/RequestManager;-><init>(Lcom/android/vending/VendingApplication$ApiClientContext;Lcom/android/vending/compat/GoogleHttpClient;Lcom/android/vending/cache/CacheManager;)V

    .line 118
    .local v3, "requestManager":Lcom/android/vending/api/RequestManager;
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v9}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 120
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v4, Lcom/android/vending/VendingBackupAgent$1;

    invoke-direct {v4, p0, v3, v2, v5}, Lcom/android/vending/VendingBackupAgent$1;-><init>(Lcom/android/vending/VendingBackupAgent;Lcom/android/vending/api/RequestManager;Ljava/util/concurrent/CountDownLatch;Lcom/android/vending/VendingApplication;)V

    .line 192
    .local v4, "service":Lcom/android/vending/api/RestoreApplicationsService;
    invoke-virtual {v5}, Lcom/android/vending/VendingApplication;->getDeviceConfiguration()Lcom/android/vending/model/DeviceConfiguration;

    move-result-object v0

    .line 193
    .local v0, "configuration":Lcom/android/vending/model/DeviceConfiguration;
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, p3, v0}, Lcom/android/vending/api/RestoreApplicationsService;->queueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/model/DeviceConfiguration;)V

    .line 194
    invoke-virtual {v3}, Lcom/android/vending/api/RequestManager;->doRequests()V

    .line 196
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    return-void

    .line 197
    :catch_0
    move-exception v1

    .line 198
    .local v1, "e":Ljava/lang/InterruptedException;
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Request to API interrupted."

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0    # "this":Lcom/android/vending/VendingBackupAgent;
    check-cast p0, Ljava/io/IOException;

    throw p0
.end method
