.class public Lcom/android/vending/TosActivity;
.super Lcom/android/vending/BaseActivity;
.source "TosActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/TosActivity$TosLoadAction;,
        Lcom/android/vending/TosActivity$TosWebViewClient;
    }
.end annotation


# static fields
.field private static sAlreadyAccepted:Z

.field private static sDisplayedTosVersion:Ljava/lang/String;


# instance fields
.field private mBackupManager:Landroid/app/backup/BackupManager;

.field private mTosWebViewClient:Lcom/android/vending/TosActivity$TosWebViewClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/vending/BaseActivity;-><init>()V

    .line 271
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/TosActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/TosActivity;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/vending/TosActivity;->displayErrorAlertAndFinish()V

    return-void
.end method

.method static synthetic access$100(Z)Z
    .locals 1
    .param p0, "x0"    # Z

    .prologue
    .line 32
    invoke-static {p0}, Lcom/android/vending/TosActivity;->isTosAccepted(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/vending/TosActivity;->sDisplayedTosVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/vending/TosActivity;)Lcom/android/vending/TosActivity$TosWebViewClient;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/TosActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/vending/TosActivity;->mTosWebViewClient:Lcom/android/vending/TosActivity$TosWebViewClient;

    return-object v0
.end method

.method private displayErrorAlertAndFinish()V
    .locals 4

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/android/vending/TosActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060037

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/vending/TosActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f06003c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "message":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/vending/TosActivity;->setResult(I)V

    .line 263
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/vending/TosActivity;->displayAlertMessage(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 264
    return-void
.end method

.method public static isTosAccepted()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/vending/TosActivity;->isTosAccepted(Z)Z

    move-result v0

    return v0
.end method

.method private static isTosAccepted(Z)Z
    .locals 4
    .param p0, "storeDisplayVersion"    # Z

    .prologue
    const/4 v3, 0x1

    .line 103
    sget-boolean v2, Lcom/android/vending/TosActivity;->sAlreadyAccepted:Z

    if-eqz v2, :cond_0

    move v2, v3

    .line 115
    :goto_0
    return v2

    .line 106
    :cond_0
    sget-object v2, Lcom/android/vending/compat/VendingGservicesKeys;->VENDING_TOS_VERSION:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v2}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 107
    .local v0, "currentTosVersion":Ljava/lang/String;
    sget-object v2, Lcom/android/vending/util/VendingPreferences;->TOS_VERSION:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v2}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 108
    .local v1, "lastAcceptedTosVersion":Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    sput-boolean v3, Lcom/android/vending/TosActivity;->sAlreadyAccepted:Z

    move v2, v3

    .line 110
    goto :goto_0

    .line 112
    :cond_1
    if-eqz p0, :cond_2

    .line 113
    sput-object v0, Lcom/android/vending/TosActivity;->sDisplayedTosVersion:Ljava/lang/String;

    .line 115
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static reset()V
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/vending/TosActivity;->sAlreadyAccepted:Z

    .line 168
    const/4 v0, 0x0

    sput-object v0, Lcom/android/vending/TosActivity;->sDisplayedTosVersion:Ljava/lang/String;

    .line 169
    return-void
.end method


# virtual methods
.method protected forwardIfNeededToTosActivity()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method getTosWebViewClient(Landroid/view/View;Landroid/view/View;Landroid/widget/Button;)Lcom/android/vending/TosActivity$TosWebViewClient;
    .locals 1
    .param p1, "progress"    # Landroid/view/View;
    .param p2, "tosDisplayView"    # Landroid/view/View;
    .param p3, "acceptButton"    # Landroid/widget/Button;

    .prologue
    .line 179
    new-instance v0, Lcom/android/vending/TosActivity$TosWebViewClient;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/vending/TosActivity$TosWebViewClient;-><init>(Lcom/android/vending/TosActivity;Landroid/view/View;Landroid/view/View;Landroid/widget/Button;)V

    return-object v0
.end method

.method onClick(I)V
    .locals 1
    .param p1, "viewId"    # I

    .prologue
    .line 132
    packed-switch p1, :pswitch_data_0

    .line 145
    :goto_0
    return-void

    .line 134
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/vending/TosActivity;->updateAcceptedTosVersion()V

    .line 135
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/vending/TosActivity;->sAlreadyAccepted:Z

    .line 136
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/vending/TosActivity;->setResult(I)V

    .line 137
    invoke-virtual {p0}, Lcom/android/vending/TosActivity;->finish()V

    goto :goto_0

    .line 141
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vending/TosActivity;->setResult(I)V

    .line 142
    invoke-virtual {p0}, Lcom/android/vending/TosActivity;->finish()V

    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x7f070100
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/vending/TosActivity;->onClick(I)V

    .line 128
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 44
    invoke-super {p0, p1}, Lcom/android/vending/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v2, 0x7f030050

    invoke-virtual {p0, v2}, Lcom/android/vending/TosActivity;->setContentView(I)V

    .line 46
    const v2, 0x7f070100

    invoke-virtual {p0, v2}, Lcom/android/vending/TosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 47
    .local v0, "acceptButton":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 49
    const v2, 0x7f070101

    invoke-virtual {p0, v2}, Lcom/android/vending/TosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const v2, 0x7f0700a4

    invoke-virtual {p0, v2}, Lcom/android/vending/TosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 51
    .local v1, "webView":Landroid/webkit/WebView;
    const v2, 0x7f070102

    invoke-virtual {p0, v2}, Lcom/android/vending/TosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0700fe

    invoke-virtual {p0, v3}, Lcom/android/vending/TosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v0}, Lcom/android/vending/TosActivity;->getTosWebViewClient(Landroid/view/View;Landroid/view/View;Landroid/widget/Button;)Lcom/android/vending/TosActivity$TosWebViewClient;

    move-result-object v2

    iput-object v2, p0, Lcom/android/vending/TosActivity;->mTosWebViewClient:Lcom/android/vending/TosActivity$TosWebViewClient;

    .line 53
    iget-object v2, p0, Lcom/android/vending/TosActivity;->mTosWebViewClient:Lcom/android/vending/TosActivity$TosWebViewClient;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 54
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 57
    invoke-virtual {p0}, Lcom/android/vending/TosActivity;->clearChainActions()V

    .line 60
    new-instance v2, Lcom/android/vending/TosActivity$TosLoadAction;

    invoke-direct {v2, p0}, Lcom/android/vending/TosActivity$TosLoadAction;-><init>(Lcom/android/vending/TosActivity;)V

    invoke-virtual {p0, v2}, Lcom/android/vending/TosActivity;->setAutoStartAction(Lcom/android/vending/BaseActivity$BaseAction;)V

    .line 61
    if-nez p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/vending/TosActivity;->startSetupActionChain(Z)V

    .line 64
    new-instance v2, Landroid/app/backup/BackupManager;

    invoke-virtual {p0}, Lcom/android/vending/TosActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/vending/TosActivity;->mBackupManager:Landroid/app/backup/BackupManager;

    .line 66
    return-void

    :cond_0
    move v2, v4

    .line 61
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method protected startSetupActionChain(Z)V
    .locals 1
    .param p1, "firstrun"    # Z

    .prologue
    .line 70
    sget-object v0, Lcom/android/vending/BaseActivity$AuthService;->ANDROID:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0, v0}, Lcom/android/vending/TosActivity;->haveAuthToken(Lcom/android/vending/BaseActivity$AuthService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    sget-object v0, Lcom/android/vending/BaseActivity$AuthService;->ANDROID:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0, v0}, Lcom/android/vending/TosActivity;->initiateGetAuthToken(Lcom/android/vending/BaseActivity$AuthService;)V

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/android/vending/TosActivity;->doRetry()V

    .line 75
    return-void
.end method

.method updateAcceptedTosVersion()V
    .locals 2

    .prologue
    .line 149
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->TOS_VERSION:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    sget-object v1, Lcom/android/vending/TosActivity;->sDisplayedTosVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lcom/android/vending/TosActivity;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 151
    return-void
.end method

.method public updateStateDependentUi(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
    .locals 0
    .param p1, "assetId"    # Ljava/lang/String;
    .param p2, "newState"    # Lcom/android/vending/model/LocalAssetInfo$AssetState;

    .prologue
    .line 86
    return-void
.end method
