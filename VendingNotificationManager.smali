.class public Lcom/android/vending/VendingNotificationManager;
.super Ljava/lang/Object;
.source "VendingNotificationManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createDefaultClickIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 197
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    const-class v1, Lcom/android/vending/AssetInfoActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 199
    const-string v1, "assetid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const v1, 0x14000004

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 204
    return-object v0
.end method

.method private static createMessageClickIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 209
    const-string v0, "notifications"

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v0, p5, v1, v2}, Lcom/android/vending/AssetInfoActivity;->getReferrer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/vending/model/Asset;->getViewAssetInfoIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 212
    if-eqz p4, :cond_0

    .line 213
    const-class v1, Lcom/android/vending/AssetBrowserActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 215
    :cond_0
    const-string v1, "message_title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const-string v1, "message_body"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const v1, 0x14000004

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 221
    return-object v0
.end method


# virtual methods
.method public bundleAssetNotifications(Landroid/content/Context;Ljava/util/List;Landroid/content/Intent;II)V
    .locals 16
    .param p1, "ctx"    # Landroid/content/Context;
    .param p3, "clickIntent"    # Landroid/content/Intent;
    .param p4, "titleResId"    # I
    .param p5, "messageResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Intent;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p2, "assetIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v13, "notification"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 163
    .local v9, "mgr":Landroid/app/NotificationManager;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    .line 164
    .local v10, "number":I
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p1

    move/from16 v1, p4

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 165
    .local v12, "title":Ljava/lang/String;
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p1

    move/from16 v1, p5

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 167
    .local v8, "message":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->hashCode()I

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    move-object/from16 v0, p1

    move v1, v13

    move-object/from16 v2, p3

    move v3, v14

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 170
    .local v11, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v6, Landroid/app/Notification;

    const v13, 0x7f020078

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-direct {v6, v13, v12, v14, v15}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 171
    .local v6, "bulk":Landroid/app/Notification;
    iput v10, v6, Landroid/app/Notification;->number:I

    .line 172
    iget v13, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v13, v13, 0x10

    iput v13, v6, Landroid/app/Notification;->flags:I

    .line 173
    move-object v0, v6

    move-object/from16 v1, p1

    move-object v2, v12

    move-object v3, v8

    move-object v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 174
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->hashCode()I

    move-result v13

    invoke-virtual {v9, v13, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 176
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 177
    .local v5, "assetId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/vending/VendingNotificationManager;->getNotificationIdForAsset(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v9, v13}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 179
    .end local v5    # "assetId":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected getNotificationIdForAsset(Ljava/lang/String;)I
    .locals 1
    .param p1, "assetId"    # Ljava/lang/String;

    .prologue
    .line 189
    if-nez p1, :cond_0

    .line 190
    const/4 v0, 0x0

    .line 193
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public hideNotification(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "assetId"    # Ljava/lang/String;

    .prologue
    .line 145
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 147
    .local v0, "mgr":Landroid/app/NotificationManager;
    invoke-virtual {p0, p2}, Lcom/android/vending/VendingNotificationManager;->getNotificationIdForAsset(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 148
    return-void
.end method

.method public showAssetError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "assetId"    # Ljava/lang/String;
    .param p2, "notificationStatus"    # Ljava/lang/String;
    .param p3, "notificationTitle"    # Ljava/lang/String;
    .param p4, "notificationMessage"    # Ljava/lang/String;
    .param p5, "dialogTitle"    # Ljava/lang/String;
    .param p6, "dialogMessage"    # Ljava/lang/String;
    .param p7, "referrerUriTrailingSegment"    # Ljava/lang/String;

    .prologue
    .line 26
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/vending/VendingNotificationManager;->showAssetError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 28
    return-void
.end method

.method public showAssetError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 15
    .param p1, "assetId"    # Ljava/lang/String;
    .param p2, "notificationStatus"    # Ljava/lang/String;
    .param p3, "notificationTitle"    # Ljava/lang/String;
    .param p4, "notificationMessage"    # Ljava/lang/String;
    .param p5, "dialogTitle"    # Ljava/lang/String;
    .param p6, "dialogMessage"    # Ljava/lang/String;
    .param p7, "showOnHomeScreen"    # Z
    .param p8, "referrerContent"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v5

    .line 44
    .local v5, "application":Lcom/android/vending/VendingApplication;
    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/vending/VendingApplication;->getAssetInfoActivity(Ljava/lang/String;)Lcom/android/vending/AssetInfoActivity;

    move-result-object v14

    .line 45
    .local v14, "assetInfoActivity":Lcom/android/vending/AssetInfoActivity;
    if-nez p7, :cond_0

    if-eqz v14, :cond_0

    .line 46
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v6

    move-object v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/VendingNotificationManager;->hideNotification(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    new-instance v6, Lcom/android/vending/VendingNotificationManager$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, v14

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/vending/VendingNotificationManager$1;-><init>(Lcom/android/vending/VendingNotificationManager;Lcom/android/vending/AssetInfoActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v6}, Lcom/android/vending/AssetInfoActivity;->postRunnable(Ljava/lang/Runnable;)V

    .line 58
    :goto_0
    return-void

    :cond_0
    move-object/from16 v6, p1

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    .line 53
    invoke-static/range {v5 .. v10}, Lcom/android/vending/VendingNotificationManager;->createMessageClickIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 55
    .local v8, "clickIntent":Landroid/content/Intent;
    const v13, 0x108008a

    move-object v6, p0

    move-object v7, v5

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-virtual/range {v6 .. v13}, Lcom/android/vending/VendingNotificationManager;->showNotification(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public showNotification(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 14
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "clickIntent"    # Landroid/content/Intent;
    .param p3, "assetId"    # Ljava/lang/String;
    .param p4, "statusText"    # Ljava/lang/String;
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "icon"    # I

    .prologue
    .line 109
    if-nez p2, :cond_0

    .line 110
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/vending/VendingNotificationManager;->createDefaultClickIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 117
    :cond_0
    if-nez p3, :cond_1

    .line 118
    const-string v9, ""

    .line 124
    .local v9, "pendingIntentIdStr":Ljava/lang/String;
    :goto_0
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    move-object v0, p1

    move v1, v10

    move-object/from16 v2, p2

    move v3, v11

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 126
    .local v8, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v6, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object v0, v6

    move/from16 v1, p7

    move-object/from16 v2, p4

    move-wide v3, v10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 127
    .local v6, "notification":Landroid/app/Notification;
    iget v10, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v10, v10, 0x10

    iput v10, v6, Landroid/app/Notification;->flags:I

    .line 128
    move-object v0, v6

    move-object v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 129
    const-string v10, "notification"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 131
    .local v5, "mgr":Landroid/app/NotificationManager;
    move-object v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/vending/VendingNotificationManager;->getNotificationIdForAsset(Ljava/lang/String;)I

    move-result v7

    .line 132
    .local v7, "notificationId":I
    move-object v0, v6

    move-object v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 133
    invoke-virtual {v5, v7, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 134
    const-string v10, "Showing notification: [AssetID=%s, NotificationID=%d, Title=%s, Message=%s]"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p3, v11, v12

    const/4 v12, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    aput-object p5, v11, v12

    const/4 v12, 0x3

    aput-object p6, v11, v12

    invoke-static {v10, v11}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    return-void

    .line 119
    .end local v5    # "mgr":Landroid/app/NotificationManager;
    .end local v6    # "notification":Landroid/app/Notification;
    .end local v7    # "notificationId":I
    .end local v8    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v9    # "pendingIntentIdStr":Ljava/lang/String;
    :cond_1
    const-string v10, "message_title"

    move-object/from16 v0, p2

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 120
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v10

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "message_title"

    move-object/from16 v0, p2

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "pendingIntentIdStr":Ljava/lang/String;
    goto/16 :goto_0

    .line 122
    .end local v9    # "pendingIntentIdStr":Ljava/lang/String;
    :cond_2
    move-object/from16 v9, p3

    .restart local v9    # "pendingIntentIdStr":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public showServerNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19
    .param p1, "assetId"    # Ljava/lang/String;
    .param p2, "notificationStatus"    # Ljava/lang/String;
    .param p3, "notificationTitle"    # Ljava/lang/String;
    .param p4, "notificationMessage"    # Ljava/lang/String;
    .param p5, "dialogTitle"    # Ljava/lang/String;
    .param p6, "dialogMessage"    # Ljava/lang/String;
    .param p7, "referrerContent"    # Ljava/lang/String;

    .prologue
    .line 75
    if-nez p1, :cond_0

    const/4 v6, 0x1

    move v9, v6

    .line 77
    .local v9, "showOnHomeScreen":Z
    :goto_0
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v5

    .line 78
    .local v5, "application":Lcom/android/vending/VendingApplication;
    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/vending/VendingApplication;->getAssetInfoActivity(Ljava/lang/String;)Lcom/android/vending/AssetInfoActivity;

    move-result-object v18

    .line 79
    .local v18, "assetInfoActivity":Lcom/android/vending/AssetInfoActivity;
    if-nez v9, :cond_1

    if-eqz v18, :cond_1

    .line 81
    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/VendingNotificationManager;->hideNotification(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    new-instance v6, Lcom/android/vending/VendingNotificationManager$2;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/vending/VendingNotificationManager$2;-><init>(Lcom/android/vending/VendingNotificationManager;Lcom/android/vending/AssetInfoActivity;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/vending/AssetInfoActivity;->postRunnable(Ljava/lang/Runnable;)V

    .line 94
    :goto_1
    return-void

    .line 75
    .end local v5    # "application":Lcom/android/vending/VendingApplication;
    .end local v9    # "showOnHomeScreen":Z
    .end local v18    # "assetInfoActivity":Lcom/android/vending/AssetInfoActivity;
    :cond_0
    const/4 v6, 0x0

    move v9, v6

    goto :goto_0

    .restart local v5    # "application":Lcom/android/vending/VendingApplication;
    .restart local v9    # "showOnHomeScreen":Z
    .restart local v18    # "assetInfoActivity":Lcom/android/vending/AssetInfoActivity;
    :cond_1
    move-object/from16 v6, p1

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v10, p7

    .line 89
    invoke-static/range {v5 .. v10}, Lcom/android/vending/VendingNotificationManager;->createMessageClickIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    .line 91
    .local v12, "clickIntent":Landroid/content/Intent;
    const v17, 0x108008a

    move-object/from16 v10, p0

    move-object v11, v5

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    invoke-virtual/range {v10 .. v17}, Lcom/android/vending/VendingNotificationManager;->showNotification(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1
.end method
