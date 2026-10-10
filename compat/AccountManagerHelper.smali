.class public Lcom/android/vending/compat/AccountManagerHelper;
.super Ljava/lang/Object;
.source "AccountManagerHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccounts(Landroid/accounts/AccountManager;)Ljava/util/List;
    .locals 5
    .param p0, "accountManager"    # Landroid/accounts/AccountManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v1, "accounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    invoke-virtual {p0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v2

    .local v2, "arr$":[Landroid/accounts/Account;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 164
    .local v0, "account":Landroid/accounts/Account;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 166
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_0
    return-object v1
.end method

.method public static getAuthTokenBlocking(Landroid/content/Context;Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authService"    # Lcom/android/vending/BaseActivity$AuthService;
    .param p2, "cachedAuthToken"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const-string v9, "Could not get auth token: "

    .line 132
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 134
    .local v0, "accountManager":Landroid/accounts/AccountManager;
    const/4 v5, 0x1

    :try_start_0
    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "legacy_hosted_or_google"

    aput-object v6, v4, v5

    .line 136
    .local v4, "features":[Ljava/lang/String;
    const-string v5, "com.google"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v4, v6, v7}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v5

    invoke-interface {v5}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/accounts/Account;

    .line 138
    .local v1, "accounts":[Landroid/accounts/Account;
    array-length v5, v1

    if-nez v5, :cond_0

    .line 139
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no matching accounts for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    move-object v5, v8

    .line 158
    .end local v1    # "accounts":[Landroid/accounts/Account;
    .end local v4    # "features":[Ljava/lang/String;
    :goto_0
    return-object v5

    .line 143
    .restart local v1    # "accounts":[Landroid/accounts/Account;
    .restart local v4    # "features":[Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-virtual {p1}, Lcom/android/vending/BaseActivity$AuthService;->getServiceName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "authToken":Ljava/lang/String;
    if-eqz v2, :cond_1

    :goto_1
    move-object v5, v2

    .line 150
    goto :goto_0

    .line 148
    :cond_1
    const-string v5, "authentication failed"

    invoke-static {v5}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 151
    .end local v1    # "accounts":[Landroid/accounts/Account;
    .end local v2    # "authToken":Ljava/lang/String;
    .end local v4    # "features":[Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 152
    .local v3, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not get auth token: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .end local v3    # "e":Ljava/io/IOException;
    :goto_2
    move-object v5, v8

    .line 158
    goto :goto_0

    .line 153
    :catch_1
    move-exception v5

    move-object v3, v5

    .line 154
    .local v3, "e":Landroid/accounts/AuthenticatorException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not get auth token: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 155
    .end local v3    # "e":Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v5

    move-object v3, v5

    .line 156
    .local v3, "e":Landroid/accounts/OperationCanceledException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not get auth token: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static initiateGetAuthToken(Lcom/android/vending/BaseActivity;ILcom/android/vending/BaseActivity$AuthService;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/AccountManagerCallback;)V
    .locals 8
    .param p0, "base"    # Lcom/android/vending/BaseActivity;
    .param p1, "requestCode"    # I
    .param p2, "service"    # Lcom/android/vending/BaseActivity$AuthService;
    .param p3, "uiHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/vending/BaseActivity;",
            "I",
            "Lcom/android/vending/BaseActivity$AuthService;",
            "Landroid/os/Handler;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p4, "addAccountCallback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .local p5, "selectAccountCallback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/android/vending/compat/AccountManagerHelper$1;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p5

    move-object v4, p3

    move-object v5, p4

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/vending/compat/AccountManagerHelper$1;-><init>(Lcom/android/vending/BaseActivity;Lcom/android/vending/BaseActivity$AuthService;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;I)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 123
    return-void
.end method

.method public static invalidateAuthToken(Landroid/content/Context;Ljava/lang/String;Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "service"    # Lcom/android/vending/BaseActivity$AuthService;
    .param p3, "token"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public static invalidateAuthTokenBlocking(Landroid/content/Context;Ljava/lang/String;Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "service"    # Lcom/android/vending/BaseActivity$AuthService;
    .param p3, "token"    # Ljava/lang/String;

    .prologue
    .line 176
    invoke-static {p0, p1, p2, p3}, Lcom/android/vending/compat/AccountManagerHelper;->invalidateAuthToken(Landroid/content/Context;Ljava/lang/String;Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V

    .line 177
    return-void
.end method
