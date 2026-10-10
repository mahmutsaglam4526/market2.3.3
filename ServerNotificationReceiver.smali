.class public Lcom/android/vending/ServerNotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ServerNotificationReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v11, "server_notification_title"

    const-string v10, "server_notification_status"

    const-string v9, "server_dialog_title"

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "google.com"

    const-string v8, "from"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v7

    const-string v8, "SERVER_NOTIFICATION"

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    const/4 v7, -0x1

    invoke-virtual {p0, v7}, Lcom/android/vending/ServerNotificationReceiver;->setResultCode(I)V

    .line 37
    const-string v7, "server_notification_message"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 38
    .local v4, "notificationMessage":Ljava/lang/String;
    const-string v7, "server_dialog_message"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 39
    .local v6, "dialogMessage":Ljava/lang/String;
    if-eqz v4, :cond_0

    if-eqz v6, :cond_0

    .line 45
    const-string v7, "assetid"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "assetId":Ljava/lang/String;
    const-string v7, "server_notification_status"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "server_notification_status"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 49
    .local v2, "notificationStatus":Ljava/lang/String;
    :goto_1
    const-string v7, "server_notification_title"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "server_notification_title"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 52
    .local v3, "notificationTitle":Ljava/lang/String;
    :goto_2
    const-string v7, "server_dialog_title"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "server_dialog_title"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 57
    .local v5, "dialogTitle":Ljava/lang/String;
    :goto_3
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getVendingNotificationManager()Lcom/android/vending/VendingNotificationManager;

    move-result-object v0

    .line 58
    .local v0, "notificationMgr":Lcom/android/vending/VendingNotificationManager;
    const-string v7, "serverNotification"

    invoke-virtual/range {v0 .. v7}, Lcom/android/vending/VendingNotificationManager;->showServerNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 46
    .end local v0    # "notificationMgr":Lcom/android/vending/VendingNotificationManager;
    .end local v2    # "notificationStatus":Ljava/lang/String;
    .end local v3    # "notificationTitle":Ljava/lang/String;
    .end local v5    # "dialogTitle":Ljava/lang/String;
    :cond_2
    const v7, 0x7f060050

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    goto :goto_1

    .line 49
    .restart local v2    # "notificationStatus":Ljava/lang/String;
    :cond_3
    const v7, 0x7f060051

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    goto :goto_2

    .line 52
    .restart local v3    # "notificationTitle":Ljava/lang/String;
    :cond_4
    const v7, 0x7f06007b

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    goto :goto_3
.end method
