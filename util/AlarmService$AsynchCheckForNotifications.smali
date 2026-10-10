.class public Lcom/android/vending/util/AlarmService$AsynchCheckForNotifications;
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
    name = "AsynchCheckForNotifications"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doRequest(Lcom/android/vending/api/RequestManager;)V
    .locals 2
    .param p1, "manager"    # Lcom/android/vending/api/RequestManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vending/api/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    new-instance v0, Lcom/android/vending/model/CheckForNotificationsRequest;

    invoke-direct {v0}, Lcom/android/vending/model/CheckForNotificationsRequest;-><init>()V

    .line 238
    .local v0, "request":Lcom/android/vending/model/CheckForNotificationsRequest;
    invoke-static {p1}, Lcom/android/vending/api/InAppPurchaseService;->get(Lcom/android/vending/api/RequestManager;)Lcom/android/vending/api/InAppPurchaseService;

    move-result-object v1

    .line 239
    .local v1, "service":Lcom/android/vending/api/InAppPurchaseService;
    invoke-virtual {v1, v0}, Lcom/android/vending/api/InAppPurchaseService;->queueRequest(Lcom/android/vending/model/CheckForNotificationsRequest;)Lcom/android/vending/model/CheckForNotificationsResponse;

    .line 241
    invoke-virtual {p1}, Lcom/android/vending/api/RequestManager;->doRequests()V

    .line 246
    return-void
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Server error on CheckForNotificationsRequest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    .line 250
    return-void
.end method
