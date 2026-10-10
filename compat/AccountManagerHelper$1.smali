.class final Lcom/android/vending/compat/AccountManagerHelper$1;
.super Ljava/lang/Object;
.source "AccountManagerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/compat/AccountManagerHelper;->initiateGetAuthToken(Lcom/android/vending/BaseActivity;ILcom/android/vending/BaseActivity$AuthService;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/AccountManagerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$addAccountCallback:Landroid/accounts/AccountManagerCallback;

.field final synthetic val$base:Lcom/android/vending/BaseActivity;

.field final synthetic val$requestCode:I

.field final synthetic val$selectAccountCallback:Landroid/accounts/AccountManagerCallback;

.field final synthetic val$service:Lcom/android/vending/BaseActivity$AuthService;

.field final synthetic val$uiHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/vending/BaseActivity;Lcom/android/vending/BaseActivity$AuthService;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;I)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/vending/compat/AccountManagerHelper$1;->val$base:Lcom/android/vending/BaseActivity;

    iput-object p2, p0, Lcom/android/vending/compat/AccountManagerHelper$1;->val$service:Lcom/android/vending/BaseActivity$AuthService;

    iput-object p3, p0, Lcom/android/vending/compat/AccountManagerHelper$1;->val$selectAccountCallback:Landroid/accounts/AccountManagerCallback;

    iput-object p4, p0, Lcom/android/vending/compat/AccountManagerHelper$1;->val$uiHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/android/vending/compat/AccountManagerHelper$1;->val$addAccountCallback:Landroid/accounts/AccountManagerCallback;

    iput p6, p0, Lcom/android/vending/compat/AccountManagerHelper$1;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 35
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/compat/AccountManagerHelper$1;->val$base:Lcom/android/vending/BaseActivity;

    move-object v7, v0

    invoke-static {v7}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    .line 36
    .local v5, "accountMgr":Landroid/accounts/AccountManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/compat/AccountManagerHelper$1;->val$service:Lcom/android/vending/BaseActivity$AuthService;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/vending/BaseActivity$AuthService;->getRequiredFeatureSets()[[Ljava/lang/String;

    move-result-object v19

    .line 40
    .local v19, "featureSet":[[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/compat/AccountManagerHelper$1;->val$service:Lcom/android/vending/BaseActivity$AuthService;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/vending/BaseActivity$AuthService;->getPreferredAccount()Landroid/accounts/Account;

    move-result-object v6

    .line 41
    .local v6, "preferredAccount":Landroid/accounts/Account;
    if-eqz v6, :cond_0

    .line 42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/compat/AccountManagerHelper$1;->val$service:Lcom/android/vending/BaseActivity$AuthService;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/vending/BaseActivity$AuthService;->getServiceName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/compat/AccountManagerHelper$1;->val$base:Lcom/android/vending/BaseActivity;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/compat/AccountManagerHelper$1;->val$selectAccountCallback:Landroid/accounts/AccountManagerCallback;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/compat/AccountManagerHelper$1;->val$uiHandler:Landroid/os/Handler;

    move-object v11, v0

    invoke-virtual/range {v5 .. v11}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 121
    .end local v5    # "accountMgr":Landroid/accounts/AccountManager;
    .end local v6    # "preferredAccount":Landroid/accounts/Account;
    .end local v19    # "featureSet":[[Ljava/lang/String;
    :goto_0
    return-void

    .line 50
    .restart local v5    # "accountMgr":Landroid/accounts/AccountManager;
    .restart local v6    # "preferredAccount":Landroid/accounts/Account;
    .restart local v19    # "featureSet":[[Ljava/lang/String;
    :cond_0
    const/16 v16, 0x0

    .line 51
    .local v16, "accounts":[Landroid/accounts/Account;
    const/4 v10, 0x0

    .line 52
    .local v10, "selectedFeatures":[Ljava/lang/String;
    move-object/from16 v18, v19

    .local v18, "arr$":[[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    .local v22, "len$":I
    const/16 v21, 0x0

    .local v21, "i$":I
    :goto_1
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    aget-object v20, v18, v21

    .line 53
    .local v20, "features":[Ljava/lang/String;
    move-object/from16 v10, v20

    .line 54
    const-string v7, "com.google"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, v20

    move-object v3, v8

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v7

    invoke-interface {v7}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "accounts":[Landroid/accounts/Account;
    check-cast v16, [Landroid/accounts/Account;

    .line 60
    .restart local v16    # "accounts":[Landroid/accounts/Account;
    move-object/from16 v0, v16

    array-length v0, v0

    move v7, v0

    if-lez v7, :cond_2

    .line 67
    .end local v20    # "features":[Ljava/lang/String;
    :cond_1
    move-object/from16 v0, v16

    array-length v0, v0

    move v7, v0

    if-nez v7, :cond_4

    .line 68
    new-instance v17, Lcom/android/vending/compat/AccountManagerHelper$1$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/vending/compat/AccountManagerHelper$1$1;-><init>(Lcom/android/vending/compat/AccountManagerHelper$1;Landroid/accounts/AccountManager;)V

    .line 80
    .local v17, "addAccountRunnable":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/compat/AccountManagerHelper$1;->val$service:Lcom/android/vending/BaseActivity$AuthService;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/vending/BaseActivity$AuthService;->isCheckout()Z

    move-result v7

    if-nez v7, :cond_3

    .line 81
    invoke-interface/range {v17 .. v17}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 111
    .end local v5    # "accountMgr":Landroid/accounts/AccountManager;
    .end local v6    # "preferredAccount":Landroid/accounts/Account;
    .end local v10    # "selectedFeatures":[Ljava/lang/String;
    .end local v16    # "accounts":[Landroid/accounts/Account;
    .end local v17    # "addAccountRunnable":Ljava/lang/Runnable;
    .end local v18    # "arr$":[[Ljava/lang/String;
    .end local v19    # "featureSet":[[Ljava/lang/String;
    .end local v21    # "i$":I
    .end local v22    # "len$":I
    :catch_0
    move-exception v7

    .line 116
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/compat/AccountManagerHelper$1;->val$uiHandler:Landroid/os/Handler;

    move-object v7, v0

    new-instance v8, Lcom/android/vending/compat/AccountManagerHelper$1$3;

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/vending/compat/AccountManagerHelper$1$3;-><init>(Lcom/android/vending/compat/AccountManagerHelper$1;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 52
    .restart local v5    # "accountMgr":Landroid/accounts/AccountManager;
    .restart local v6    # "preferredAccount":Landroid/accounts/Account;
    .restart local v10    # "selectedFeatures":[Ljava/lang/String;
    .restart local v16    # "accounts":[Landroid/accounts/Account;
    .restart local v18    # "arr$":[[Ljava/lang/String;
    .restart local v19    # "featureSet":[[Ljava/lang/String;
    .restart local v20    # "features":[Ljava/lang/String;
    .restart local v21    # "i$":I
    .restart local v22    # "len$":I
    :cond_2
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 86
    .end local v20    # "features":[Ljava/lang/String;
    .restart local v17    # "addAccountRunnable":Ljava/lang/Runnable;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/compat/AccountManagerHelper$1;->val$uiHandler:Landroid/os/Handler;

    move-object v7, v0

    new-instance v8, Lcom/android/vending/compat/AccountManagerHelper$1$2;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/vending/compat/AccountManagerHelper$1$2;-><init>(Lcom/android/vending/compat/AccountManagerHelper$1;Ljava/lang/Runnable;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 112
    .end local v5    # "accountMgr":Landroid/accounts/AccountManager;
    .end local v6    # "preferredAccount":Landroid/accounts/Account;
    .end local v10    # "selectedFeatures":[Ljava/lang/String;
    .end local v16    # "accounts":[Landroid/accounts/Account;
    .end local v17    # "addAccountRunnable":Ljava/lang/Runnable;
    .end local v18    # "arr$":[[Ljava/lang/String;
    .end local v19    # "featureSet":[[Ljava/lang/String;
    .end local v21    # "i$":I
    .end local v22    # "len$":I
    :catch_1
    move-exception v7

    goto :goto_2

    .line 97
    .restart local v5    # "accountMgr":Landroid/accounts/AccountManager;
    .restart local v6    # "preferredAccount":Landroid/accounts/Account;
    .restart local v10    # "selectedFeatures":[Ljava/lang/String;
    .restart local v16    # "accounts":[Landroid/accounts/Account;
    .restart local v18    # "arr$":[[Ljava/lang/String;
    .restart local v19    # "featureSet":[[Ljava/lang/String;
    .restart local v21    # "i$":I
    .restart local v22    # "len$":I
    :cond_4
    move-object/from16 v0, v16

    array-length v0, v0

    move v7, v0

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    .line 98
    const/4 v7, 0x0

    aget-object v8, v16, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/compat/AccountManagerHelper$1;->val$service:Lcom/android/vending/BaseActivity$AuthService;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/vending/BaseActivity$AuthService;->getServiceName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/compat/AccountManagerHelper$1;->val$base:Lcom/android/vending/BaseActivity;

    move-object v11, v0

    .end local v10    # "selectedFeatures":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/compat/AccountManagerHelper$1;->val$selectAccountCallback:Landroid/accounts/AccountManagerCallback;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/compat/AccountManagerHelper$1;->val$uiHandler:Landroid/os/Handler;

    move-object v13, v0

    move-object v7, v5

    invoke-virtual/range {v7 .. v13}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto/16 :goto_0

    .line 113
    .end local v5    # "accountMgr":Landroid/accounts/AccountManager;
    .end local v6    # "preferredAccount":Landroid/accounts/Account;
    .end local v16    # "accounts":[Landroid/accounts/Account;
    .end local v18    # "arr$":[[Ljava/lang/String;
    .end local v19    # "featureSet":[[Ljava/lang/String;
    .end local v21    # "i$":I
    .end local v22    # "len$":I
    :catch_2
    move-exception v7

    goto :goto_2

    .line 107
    .restart local v5    # "accountMgr":Landroid/accounts/AccountManager;
    .restart local v6    # "preferredAccount":Landroid/accounts/Account;
    .restart local v10    # "selectedFeatures":[Ljava/lang/String;
    .restart local v16    # "accounts":[Landroid/accounts/Account;
    .restart local v18    # "arr$":[[Ljava/lang/String;
    .restart local v19    # "featureSet":[[Ljava/lang/String;
    .restart local v21    # "i$":I
    .restart local v22    # "len$":I
    :cond_5
    const-string v8, "com.google"

    const-string v9, "sierra"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/compat/AccountManagerHelper$1;->val$base:Lcom/android/vending/BaseActivity;

    move-object v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/compat/AccountManagerHelper$1;->val$selectAccountCallback:Landroid/accounts/AccountManagerCallback;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/compat/AccountManagerHelper$1;->val$uiHandler:Landroid/os/Handler;

    move-object v15, v0

    move-object v7, v5

    invoke-virtual/range {v7 .. v15}, Landroid/accounts/AccountManager;->getAuthTokenByFeatures(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0
.end method
