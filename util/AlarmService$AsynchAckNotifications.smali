.class public Lcom/android/vending/util/AlarmService$AsynchAckNotifications;
.super Ljava/lang/Object;
.source "AlarmService.java"

# interfaces
.implements Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/util/AlarmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsynchAckNotifications"
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mNotifications:[Ljava/lang/String;

.field protected final mPackageInfo:Landroid/content/pm/PackageInfo;

.field protected final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageInfo;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notifications"    # [Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object p1, p0, Lcom/android/vending/util/AlarmService$AsynchAckNotifications;->mContext:Landroid/content/Context;

    .line 266
    iput-object p2, p0, Lcom/android/vending/util/AlarmService$AsynchAckNotifications;->mNotifications:[Ljava/lang/String;

    .line 267
    iput-object p3, p0, Lcom/android/vending/util/AlarmService$AsynchAckNotifications;->mPackageName:Ljava/lang/String;

    .line 268
    iput-object p4, p0, Lcom/android/vending/util/AlarmService$AsynchAckNotifications;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 269
    return-void
.end method


# virtual methods
.method public doRequest(Lcom/android/vending/api/RequestManager;)V
    .locals 7
    .param p1, "manager"    # Lcom/android/vending/api/RequestManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vending/api/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    new-instance v2, Lcom/android/vending/model/AckNotificationsRequest;

    invoke-direct {v2}, Lcom/android/vending/model/AckNotificationsRequest;-><init>()V

    .line 273
    .local v2, "request":Lcom/android/vending/model/AckNotificationsRequest;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/vending/util/AlarmService$AsynchAckNotifications;->mNotifications:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 274
    iget-object v4, p0, Lcom/android/vending/util/AlarmService$AsynchAckNotifications;->mNotifications:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Lcom/android/vending/model/AckNotificationsRequest;->addNotificationId(Ljava/lang/String;)V

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 276
    :cond_0
    iget-object v4, p0, Lcom/android/vending/util/AlarmService$AsynchAckNotifications;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v4, :cond_1

    .line 277
    iget-object v4, p0, Lcom/android/vending/util/AlarmService$AsynchAckNotifications;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    .line 278
    .local v0, "bytes":[B
    iget-object v4, p0, Lcom/android/vending/util/AlarmService$AsynchAckNotifications;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/vending/util/AlarmService$AsynchAckNotifications;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget v5, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Lcom/android/vending/util/Md5Util;->secureHashBytes([B)[B

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/vending/model/AckNotificationsRequest;->setPackageParams(Ljava/lang/String;I[B)V

    .line 280
    invoke-static {p1}, Lcom/android/vending/api/InAppPurchaseService;->get(Lcom/android/vending/api/RequestManager;)Lcom/android/vending/api/InAppPurchaseService;

    move-result-object v3

    .line 281
    .local v3, "service":Lcom/android/vending/api/InAppPurchaseService;
    invoke-virtual {v3, v2}, Lcom/android/vending/api/InAppPurchaseService;->queueRequest(Lcom/android/vending/model/AckNotificationsRequest;)Lcom/android/vending/model/AckNotificationsResponse;

    .line 282
    invoke-virtual {p1}, Lcom/android/vending/api/RequestManager;->doRequests()V

    .line 286
    .end local v0    # "bytes":[B
    .end local v3    # "service":Lcom/android/vending/api/InAppPurchaseService;
    :goto_1
    return-void

    .line 284
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package name not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/vending/util/AlarmService$AsynchAckNotifications;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Server error on AckNotificationsRequest:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    .line 290
    return-void
.end method
