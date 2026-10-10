.class Lcom/android/vending/billing/MarketBillingService$Stub;
.super Lcom/android/vending/billing/IMarketBillingService$Stub;
.source "MarketBillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/billing/MarketBillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Stub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/billing/MarketBillingService;


# direct methods
.method constructor <init>(Lcom/android/vending/billing/MarketBillingService;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/vending/billing/MarketBillingService$Stub;->this$0:Lcom/android/vending/billing/MarketBillingService;

    invoke-direct {p0}, Lcom/android/vending/billing/IMarketBillingService$Stub;-><init>()V

    return-void
.end method

.method private argumentsMatch(Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 8
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "requiredArguments"    # [Ljava/lang/String;
    .param p3, "optionalArguments"    # [Ljava/lang/String;

    .prologue
    .line 177
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 178
    .local v4, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 179
    .local v2, "expectedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 180
    .local v6, "optionalKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v7, "BILLING_REQUEST"

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    const-string v7, "API_VERSION"

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    move-object v1, p2

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v1, v3

    .line 184
    .local v0, "argument":Ljava/lang/String;
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 186
    .end local v0    # "argument":Ljava/lang/String;
    :cond_0
    move-object v1, p3

    array-length v5, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v0, v1, v3

    .line 187
    .restart local v0    # "argument":Ljava/lang/String;
    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 186
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 189
    .end local v0    # "argument":Ljava/lang/String;
    :cond_1
    invoke-interface {v4, v6}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 190
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    return v7
.end method

.method private varargs argumentsMatchExactly(Landroid/os/Bundle;[Ljava/lang/String;)Z
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "requiredArguments"    # [Ljava/lang/String;

    .prologue
    .line 168
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/vending/billing/MarketBillingService$Stub;->argumentsMatch(Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getNextInAppRequestId()J
    .locals 4

    .prologue
    .line 303
    invoke-static {}, Lcom/android/vending/billing/MarketBillingService;->access$000()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 316
    iget-object v3, p0, Lcom/android/vending/billing/MarketBillingService$Stub;->this$0:Lcom/android/vending/billing/MarketBillingService;

    iget-object v3, v3, Lcom/android/vending/billing/MarketBillingService;->mUidProvider:Lcom/android/vending/billing/MarketBillingService$UidProvider;

    invoke-virtual {v3}, Lcom/android/vending/billing/MarketBillingService$UidProvider;->getCallingUid()I

    move-result v2

    .line 319
    .local v2, "uid":I
    :try_start_0
    iget-object v3, p0, Lcom/android/vending/billing/MarketBillingService$Stub;->this$0:Lcom/android/vending/billing/MarketBillingService;

    iget-object v3, v3, Lcom/android/vending/billing/MarketBillingService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v4, 0x40

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 326
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v3, v2, :cond_0

    .line 327
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not match caller\'s uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    move-object v3, v5

    .line 331
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v3

    .line 321
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 322
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot find package name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    move-object v3, v5

    .line 323
    goto :goto_0

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    move-object v3, v1

    .line 331
    goto :goto_0
.end method

.method private isBillingEnabled()Z
    .locals 2

    .prologue
    .line 338
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/billing/MarketBillingService$Stub;->this$0:Lcom/android/vending/billing/MarketBillingService;

    invoke-virtual {v1}, Lcom/android/vending/billing/MarketBillingService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/VendingApplication;->getMetadata(Landroid/content/Context;)Lcom/android/vending/VendingApplicationMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/VendingApplicationMetadata;->getInAppBillingEnabled()Z

    move-result v0

    return v0
.end method

.method private updateWithRequestId(Landroid/os/Bundle;J)I
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "requestId"    # J

    .prologue
    .line 156
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 157
    sget-object v0, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_ERROR:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    invoke-virtual {v0}, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->ordinal()I

    move-result v0

    .line 160
    :goto_0
    return v0

    .line 159
    :cond_0
    const-string v0, "REQUEST_ID"

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 160
    sget-object v0, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_OK:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    invoke-virtual {v0}, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->ordinal()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public checkBillingSupported(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/android/vending/billing/MarketBillingService$Stub;->isBillingEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    sget-object v1, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    invoke-virtual {v1}, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->ordinal()I

    move-result v1

    .line 203
    :goto_0
    return v1

    .line 198
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/vending/billing/MarketBillingService$Stub;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 199
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_1

    .line 200
    sget-object v1, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_ERROR:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    invoke-virtual {v1}, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->ordinal()I

    move-result v1

    goto :goto_0

    .line 203
    :cond_1
    sget-object v1, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_OK:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    invoke-virtual {v1}, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->ordinal()I

    move-result v1

    goto :goto_0
.end method

.method public confirmNotifications(Ljava/lang/String;[Ljava/lang/String;)J
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "notifyIds"    # [Ljava/lang/String;

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lcom/android/vending/billing/MarketBillingService$Stub;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 261
    .local v7, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v7, :cond_0

    .line 262
    const-wide/16 v0, -0x1

    .line 275
    :goto_0
    return-wide v0

    .line 264
    :cond_0
    invoke-direct {p0}, Lcom/android/vending/billing/MarketBillingService$Stub;->getNextInAppRequestId()J

    move-result-wide v3

    .line 265
    .local v3, "requestId":J
    invoke-direct {p0}, Lcom/android/vending/billing/MarketBillingService$Stub;->isBillingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/android/vending/billing/MarketBillingService$Stub;->this$0:Lcom/android/vending/billing/MarketBillingService;

    iget-object v0, v0, Lcom/android/vending/billing/MarketBillingService;->mNotifier:Lcom/android/vending/billing/MarketBillingService$BillingNotifier;

    sget-object v1, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    invoke-virtual {v0, p1, v3, v4, v1}, Lcom/android/vending/billing/MarketBillingService$BillingNotifier;->sendResponseCode(Ljava/lang/String;JLcom/android/vending/billing/MarketBillingService$ResponseCode;)Z

    move-wide v0, v3

    .line 268
    goto :goto_0

    .line 271
    :cond_1
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getAsynchRequestRunner()Lcom/android/vending/AsynchRequestRunner;

    move-result-object v8

    new-instance v0, Lcom/android/vending/billing/MarketBillingService$AsynchInAppAckNotifications;

    iget-object v1, p0, Lcom/android/vending/billing/MarketBillingService$Stub;->this$0:Lcom/android/vending/billing/MarketBillingService;

    iget-object v2, p0, Lcom/android/vending/billing/MarketBillingService$Stub;->this$0:Lcom/android/vending/billing/MarketBillingService;

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/vending/billing/MarketBillingService$AsynchInAppAckNotifications;-><init>(Lcom/android/vending/billing/MarketBillingService;Landroid/content/Context;J[Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageInfo;)V

    invoke-virtual {v8, v0}, Lcom/android/vending/AsynchRequestRunner;->runRequest(Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;)V

    move-wide v0, v3

    .line 275
    goto :goto_0
.end method

.method public getPurchaseInformation(Ljava/lang/String;J[Ljava/lang/String;)J
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "nonce"    # J
    .param p4, "notifyIds"    # [Ljava/lang/String;

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lcom/android/vending/billing/MarketBillingService$Stub;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 243
    .local v9, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v9, :cond_0

    .line 244
    const-wide/16 v0, -0x1

    .line 256
    :goto_0
    return-wide v0

    .line 246
    :cond_0
    invoke-direct {p0}, Lcom/android/vending/billing/MarketBillingService$Stub;->getNextInAppRequestId()J

    move-result-wide v3

    .line 247
    .local v3, "requestId":J
    invoke-direct {p0}, Lcom/android/vending/billing/MarketBillingService$Stub;->isBillingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/android/vending/billing/MarketBillingService$Stub;->this$0:Lcom/android/vending/billing/MarketBillingService;

    iget-object v0, v0, Lcom/android/vending/billing/MarketBillingService;->mNotifier:Lcom/android/vending/billing/MarketBillingService$BillingNotifier;

    sget-object v1, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    invoke-virtual {v0, p1, v3, v4, v1}, Lcom/android/vending/billing/MarketBillingService$BillingNotifier;->sendResponseCode(Ljava/lang/String;JLcom/android/vending/billing/MarketBillingService$ResponseCode;)Z

    move-wide v0, v3

    .line 250
    goto :goto_0

    .line 253
    :cond_1
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getAsynchRequestRunner()Lcom/android/vending/AsynchRequestRunner;

    move-result-object v10

    new-instance v0, Lcom/android/vending/billing/MarketBillingService$AsynchPurchaseInformation;

    iget-object v1, p0, Lcom/android/vending/billing/MarketBillingService$Stub;->this$0:Lcom/android/vending/billing/MarketBillingService;

    iget-object v2, p0, Lcom/android/vending/billing/MarketBillingService$Stub;->this$0:Lcom/android/vending/billing/MarketBillingService;

    move-wide v5, p2

    move-object v7, p4

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/vending/billing/MarketBillingService$AsynchPurchaseInformation;-><init>(Lcom/android/vending/billing/MarketBillingService;Landroid/content/Context;JJ[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Lcom/android/vending/AsynchRequestRunner;->runRequest(Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;)V

    move-wide v0, v3

    .line 256
    goto :goto_0
.end method

.method public requestPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/android/vending/billing/MarketBillingService$Stub;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 213
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/vending/billing/MarketBillingService$Stub;->isBillingEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 214
    :cond_0
    const/4 v0, 0x0

    .line 235
    :goto_0
    return-object v0

    .line 217
    :cond_1
    invoke-direct {p0}, Lcom/android/vending/billing/MarketBillingService$Stub;->getNextInAppRequestId()J

    move-result-wide v1

    .line 221
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    iget-object v4, p0, Lcom/android/vending/billing/MarketBillingService$Stub;->this$0:Lcom/android/vending/billing/MarketBillingService;

    const-class v5, Lcom/android/vending/billing/InAppBuyPageActivity;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 223
    const-string v4, "assetid"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inapp:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string v4, "asset_package"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v4, "asset_version_code"

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    const-string v0, "request_id"

    invoke-virtual {v3, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 228
    if-eqz p3, :cond_2

    .line 229
    const-string v0, "developer_payload"

    invoke-virtual {v3, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    :cond_2
    iget-object v0, p0, Lcom/android/vending/billing/MarketBillingService$Stub;->this$0:Lcom/android/vending/billing/MarketBillingService;

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v0, v4, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 235
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0
.end method

.method public restoreTransactions(Ljava/lang/String;J)J
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "nonce"    # J

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/android/vending/billing/MarketBillingService$Stub;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 280
    .local v8, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v8, :cond_0

    .line 281
    const-wide/16 v0, -0x1

    .line 293
    :goto_0
    return-wide v0

    .line 283
    :cond_0
    invoke-direct {p0}, Lcom/android/vending/billing/MarketBillingService$Stub;->getNextInAppRequestId()J

    move-result-wide v3

    .line 284
    .local v3, "requestId":J
    invoke-direct {p0}, Lcom/android/vending/billing/MarketBillingService$Stub;->isBillingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/android/vending/billing/MarketBillingService$Stub;->this$0:Lcom/android/vending/billing/MarketBillingService;

    iget-object v0, v0, Lcom/android/vending/billing/MarketBillingService;->mNotifier:Lcom/android/vending/billing/MarketBillingService$BillingNotifier;

    sget-object v1, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    invoke-virtual {v0, p1, v3, v4, v1}, Lcom/android/vending/billing/MarketBillingService$BillingNotifier;->sendResponseCode(Ljava/lang/String;JLcom/android/vending/billing/MarketBillingService$ResponseCode;)Z

    move-wide v0, v3

    .line 287
    goto :goto_0

    .line 290
    :cond_1
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getAsynchRequestRunner()Lcom/android/vending/AsynchRequestRunner;

    move-result-object v9

    new-instance v0, Lcom/android/vending/billing/MarketBillingService$AsynchRestoreTransactions;

    iget-object v1, p0, Lcom/android/vending/billing/MarketBillingService$Stub;->this$0:Lcom/android/vending/billing/MarketBillingService;

    iget-object v2, p0, Lcom/android/vending/billing/MarketBillingService$Stub;->this$0:Lcom/android/vending/billing/MarketBillingService;

    move-wide v5, p2

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/vending/billing/MarketBillingService$AsynchRestoreTransactions;-><init>(Lcom/android/vending/billing/MarketBillingService;Landroid/content/Context;JJLjava/lang/String;)V

    invoke-virtual {v9, v0}, Lcom/android/vending/AsynchRequestRunner;->runRequest(Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;)V

    move-wide v0, v3

    .line 293
    goto :goto_0
.end method

.method public sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 20
    .param p1, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 105
    const-string v16, "BILLING_REQUEST"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 107
    .local v6, "billingRequest":Ljava/lang/String;
    const-string v16, "API_VERSION"

    const/16 v17, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 108
    .local v5, "billingApiVersion":I
    const-string v16, "PACKAGE_NAME"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 109
    .local v13, "packageName":Ljava/lang/String;
    const-string v16, "DEVELOPER_PAYLOAD"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 110
    .local v8, "developerPayload":Ljava/lang/String;
    const-string v16, "ITEM_ID"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 111
    .local v9, "itemId":Ljava/lang/String;
    const-string v16, "NONCE"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 112
    .local v10, "nonce":J
    const-string v16, "NOTIFY_IDS"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 114
    .local v12, "notifyIds":[Ljava/lang/String;
    sget-object v16, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    invoke-virtual/range {v16 .. v16}, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->ordinal()I

    move-result v15

    .line 115
    .local v15, "responseCode":I
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 116
    .local v7, "bundle":Landroid/os/Bundle;
    const/16 v16, 0x1

    move v0, v5

    move/from16 v1, v16

    if-ne v0, v1, :cond_5

    .line 117
    const-string v16, "CHECK_BILLING_SUPPORTED"

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "PACKAGE_NAME"

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/vending/billing/MarketBillingService$Stub;->argumentsMatchExactly(Landroid/os/Bundle;[Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 120
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/vending/billing/MarketBillingService$Stub;->checkBillingSupported(Ljava/lang/String;)I

    move-result v15

    .line 147
    .end local p0    # "this":Lcom/android/vending/billing/MarketBillingService$Stub;
    :cond_0
    :goto_0
    const-string v16, "RESPONSE_CODE"

    move-object v0, v7

    move-object/from16 v1, v16

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 148
    return-object v7

    .line 121
    .restart local p0    # "this":Lcom/android/vending/billing/MarketBillingService$Stub;
    :cond_1
    const-string v16, "REQUEST_PURCHASE"

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "PACKAGE_NAME"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const-string v18, "ITEM_ID"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "DEVELOPER_PAYLOAD"

    aput-object v19, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vending/billing/MarketBillingService$Stub;->argumentsMatch(Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 125
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/vending/billing/MarketBillingService$Stub;->checkBillingSupported(Ljava/lang/String;)I

    move-result v15

    .line 126
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v9

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/vending/billing/MarketBillingService$Stub;->requestPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v14

    .line 128
    .local v14, "requestIntentPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Landroid/app/PendingIntent;>;"
    const-string v16, "REQUEST_ID"

    move-object v0, v14

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0    # "this":Lcom/android/vending/billing/MarketBillingService$Stub;
    check-cast p0, Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    move-object v0, v7

    move-object/from16 v1, v16

    move-wide/from16 v2, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 129
    const-string v16, "PURCHASE_INTENT"

    move-object v0, v14

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 p0, v0

    check-cast p0, Landroid/os/Parcelable;

    move-object v0, v7

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 130
    .end local v14    # "requestIntentPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Landroid/app/PendingIntent;>;"
    .restart local p0    # "this":Lcom/android/vending/billing/MarketBillingService$Stub;
    :cond_2
    const-string v16, "GET_PURCHASE_INFORMATION"

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "PACKAGE_NAME"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const-string v18, "NONCE"

    aput-object v18, v16, v17

    const/16 v17, 0x2

    const-string v18, "NOTIFY_IDS"

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/vending/billing/MarketBillingService$Stub;->argumentsMatchExactly(Landroid/os/Bundle;[Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 133
    move-object/from16 v0, p0

    move-object v1, v13

    move-wide v2, v10

    move-object v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/vending/billing/MarketBillingService$Stub;->getPurchaseInformation(Ljava/lang/String;J[Ljava/lang/String;)J

    move-result-wide v16

    move-object/from16 v0, p0

    move-object v1, v7

    move-wide/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vending/billing/MarketBillingService$Stub;->updateWithRequestId(Landroid/os/Bundle;J)I

    move-result v15

    goto/16 :goto_0

    .line 135
    :cond_3
    const-string v16, "RESTORE_TRANSACTIONS"

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "PACKAGE_NAME"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const-string v18, "NONCE"

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/vending/billing/MarketBillingService$Stub;->argumentsMatchExactly(Landroid/os/Bundle;[Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 137
    move-object/from16 v0, p0

    move-object v1, v13

    move-wide v2, v10

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/vending/billing/MarketBillingService$Stub;->restoreTransactions(Ljava/lang/String;J)J

    move-result-wide v16

    move-object/from16 v0, p0

    move-object v1, v7

    move-wide/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vending/billing/MarketBillingService$Stub;->updateWithRequestId(Landroid/os/Bundle;J)I

    move-result v15

    goto/16 :goto_0

    .line 139
    :cond_4
    const-string v16, "CONFIRM_NOTIFICATIONS"

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "PACKAGE_NAME"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const-string v18, "NOTIFY_IDS"

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/vending/billing/MarketBillingService$Stub;->argumentsMatchExactly(Landroid/os/Bundle;[Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 141
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/billing/MarketBillingService$Stub;->confirmNotifications(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v16

    move-object/from16 v0, p0

    move-object v1, v7

    move-wide/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vending/billing/MarketBillingService$Stub;->updateWithRequestId(Landroid/os/Bundle;J)I

    move-result v15

    goto/16 :goto_0

    .line 144
    :cond_5
    const/16 v16, 0x1

    move v0, v5

    move/from16 v1, v16

    if-le v0, v1, :cond_0

    .line 145
    sget-object v16, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    invoke-virtual/range {v16 .. v16}, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->ordinal()I

    move-result v15

    goto/16 :goto_0
.end method
