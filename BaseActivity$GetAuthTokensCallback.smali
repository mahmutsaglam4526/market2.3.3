.class public Lcom/android/vending/BaseActivity$GetAuthTokensCallback;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetAuthTokensCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private mAddAccount:Z

.field private mRequestCode:I

.field private mService:Lcom/android/vending/BaseActivity$AuthService;

.field final synthetic this$0:Lcom/android/vending/BaseActivity;


# direct methods
.method public constructor <init>(Lcom/android/vending/BaseActivity;Lcom/android/vending/BaseActivity$AuthService;Z)V
    .locals 1
    .param p2, "service"    # Lcom/android/vending/BaseActivity$AuthService;
    .param p3, "addAccount"    # Z

    .prologue
    .line 1061
    iput-object p1, p0, Lcom/android/vending/BaseActivity$GetAuthTokensCallback;->this$0:Lcom/android/vending/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1062
    iput-object p2, p0, Lcom/android/vending/BaseActivity$GetAuthTokensCallback;->mService:Lcom/android/vending/BaseActivity$AuthService;

    .line 1063
    invoke-virtual {p2}, Lcom/android/vending/BaseActivity$AuthService;->getAuthCode()I

    move-result v0

    iput v0, p0, Lcom/android/vending/BaseActivity$GetAuthTokensCallback;->mRequestCode:I

    .line 1064
    iput-boolean p3, p0, Lcom/android/vending/BaseActivity$GetAuthTokensCallback;->mAddAccount:Z

    .line 1065
    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1068
    .local p1, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    iget-object v2, p0, Lcom/android/vending/BaseActivity$GetAuthTokensCallback;->this$0:Lcom/android/vending/BaseActivity;

    invoke-virtual {v2}, Lcom/android/vending/BaseActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1100
    :cond_0
    :goto_0
    return-void

    .line 1069
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1071
    .local v0, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1075
    .local v1, "result":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/vending/BaseActivity$GetAuthTokensCallback;->mService:Lcom/android/vending/BaseActivity$AuthService;

    const-string v3, "authAccount"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "accountType"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/vending/BaseActivity$AuthService;->setPreferredAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    iget-boolean v2, p0, Lcom/android/vending/BaseActivity$GetAuthTokensCallback;->mAddAccount:Z

    if-nez v2, :cond_0

    .line 1089
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1090
    iget-object v2, p0, Lcom/android/vending/BaseActivity$GetAuthTokensCallback;->this$0:Lcom/android/vending/BaseActivity;

    iget v3, p0, Lcom/android/vending/BaseActivity$GetAuthTokensCallback;->mRequestCode:I

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/vending/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1092
    .end local v1    # "result":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 1099
    :goto_1
    iget-object v2, p0, Lcom/android/vending/BaseActivity$GetAuthTokensCallback;->this$0:Lcom/android/vending/BaseActivity;

    iget v3, p0, Lcom/android/vending/BaseActivity$GetAuthTokensCallback;->mRequestCode:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/vending/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 1096
    :catch_1
    move-exception v2

    goto :goto_1

    .line 1094
    :catch_2
    move-exception v2

    goto :goto_1
.end method
