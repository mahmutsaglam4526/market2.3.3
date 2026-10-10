.class public abstract Lcom/android/vending/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/vending/ChainAction;
.implements Lcom/android/vending/model/LocalAssetCache$AssetStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/BaseActivity$SnippetInitializer;,
        Lcom/android/vending/BaseActivity$ProgressDialogAccessor;,
        Lcom/android/vending/BaseActivity$BackgroundDataDialogAccessor;,
        Lcom/android/vending/BaseActivity$NoAccountsDialogAccessor;,
        Lcom/android/vending/BaseActivity$AssetInfoLoader;,
        Lcom/android/vending/BaseActivity$CacheCheckingBaseAction;,
        Lcom/android/vending/BaseActivity$BaseAction;,
        Lcom/android/vending/BaseActivity$BackgroundThread;,
        Lcom/android/vending/BaseActivity$BackendAction;,
        Lcom/android/vending/BaseActivity$GetAuthTokensCallback;,
        Lcom/android/vending/BaseActivity$AuthService;
    }
.end annotation


# static fields
.field private static sBackgroundRunnable:Ljava/lang/Runnable;

.field private static sForegroundRunnable:Ljava/lang/Runnable;

.field private static sMarketInForeground:Z

.field private static sMarketLeaving:Z


# instance fields
.field protected mApplication:Lcom/android/vending/VendingApplication;

.field protected mAssetType:Lcom/android/vending/model/Asset$AssetType;

.field private mAutoStartAction:Lcom/android/vending/BaseActivity$BaseAction;

.field protected mController:Lcom/android/vending/controller/Controller;

.field public mDestroyed:Z

.field private mDialogMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/vending/controller/DialogAccessor;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDialogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/controller/DialogAccessor;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayedDialogs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEndChainAction:Lcom/android/vending/ChainAction;

.field protected volatile mExecutingAction:Lcom/android/vending/BaseActivity$BackendAction;

.field private mFinishDialogAccessor:Lcom/android/vending/AlertUtil$MutableDialogAccessor;

.field private mFirstChainAction:Lcom/android/vending/ChainAction;

.field protected final mHandler:Landroid/os/Handler;

.field private mIntentMessageShown:Z

.field private mIsPaused:Z

.field protected mMarketIcon:Landroid/view/View;

.field protected mMutableDialogAccessor:Lcom/android/vending/AlertUtil$MutableDialogAccessor;

.field private mNonPersistedDialogs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/vending/controller/DialogAccessor;",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation
.end field

.field private mNumAuthAttempts:I

.field private mOutstandingAuthRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingDialogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/controller/DialogAccessor;",
            ">;"
        }
    .end annotation
.end field

.field protected mProgressDialogAccessor:Lcom/android/vending/BaseActivity$ProgressDialogAccessor;

.field protected mRequestManager:Lcom/android/vending/api/RequestManager;

.field private mRetryPanelAccessor:Lcom/android/vending/AlertUtil$MutableDialogAccessor;

.field protected mSavedRequestCode:I

.field protected mSavedResultCode:I

.field protected mSearchButton:Landroid/view/View;

.field private mSharedParameters:Lcom/android/vending/controller/RequestParameters;

.field private mTosActivityShown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 306
    sput-boolean v0, Lcom/android/vending/BaseActivity;->sMarketLeaving:Z

    .line 307
    sput-boolean v0, Lcom/android/vending/BaseActivity;->sMarketInForeground:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vending/BaseActivity;->mOutstandingAuthRequests:Ljava/util/ArrayList;

    .line 196
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/vending/BaseActivity;->mHandler:Landroid/os/Handler;

    .line 199
    iput-object v1, p0, Lcom/android/vending/BaseActivity;->mAssetType:Lcom/android/vending/model/Asset$AssetType;

    .line 261
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/vending/BaseActivity;->mSavedResultCode:I

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vending/BaseActivity;->mDialogs:Ljava/util/List;

    .line 269
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vending/BaseActivity;->mDialogMap:Ljava/util/Map;

    .line 271
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/vending/BaseActivity;->mDisplayedDialogs:Ljava/util/Set;

    .line 277
    iput-object v1, p0, Lcom/android/vending/BaseActivity;->mNonPersistedDialogs:Ljava/util/Map;

    .line 2192
    return-void
.end method

.method static addTouchDelegate(Landroid/view/View;I)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "resId"    # I

    .prologue
    .line 822
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 823
    .local v4, "res":Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v5, v6, Landroid/util/DisplayMetrics;->density:F

    .line 824
    .local v5, "scale":F
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 825
    .local v0, "dp":F
    neg-float v6, v0

    mul-float/2addr v6, v5

    float-to-int v3, v6

    .line 826
    .local v3, "px":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 827
    .local v1, "hitRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 828
    invoke-virtual {v1, v3, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 829
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 830
    .local v2, "parent":Landroid/view/View;
    new-instance v6, Landroid/view/TouchDelegate;

    invoke-direct {v6, v1, p0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 831
    return-void
.end method

.method public static cancelMarketLeaving()V
    .locals 1

    .prologue
    .line 737
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/vending/BaseActivity;->sMarketLeaving:Z

    .line 738
    return-void
.end method

.method private completeGetAuthToken(ILandroid/content/Intent;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1430
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1431
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1432
    if-eqz v0, :cond_1

    .line 1433
    const-string v1, "authtoken"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1440
    :goto_0
    return-object v0

    .line 1435
    :cond_0
    if-nez p1, :cond_1

    .line 1436
    invoke-virtual {p0, v1}, Lcom/android/vending/BaseActivity;->setResult(I)V

    .line 1437
    const-string v0, "auth result is RESULT_CANCELED"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1438
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity;->finish()V

    .line 1440
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static onMenuItemSelected(Landroid/app/Activity;ILandroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "android.intent.action.VIEW"

    .line 1252
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 1287
    :goto_0
    return v0

    .line 1254
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1255
    const-class v1, Lcom/android/vending/AssetBrowserActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1256
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1257
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    .line 1258
    goto :goto_0

    .line 1260
    :pswitch_2
    invoke-static {p0}, Lcom/android/vending/BaseActivity;->showDebugDialog(Landroid/content/Context;)V

    move v0, v2

    .line 1261
    goto :goto_0

    .line 1264
    :pswitch_3
    invoke-virtual {p0, v4, v1, v4, v1}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    move v0, v2

    .line 1265
    goto :goto_0

    .line 1268
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1269
    const-class v1, Lcom/android/vending/SettingsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1270
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    .line 1271
    goto :goto_0

    .line 1274
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1275
    const-class v1, Lcom/android/vending/MyDownloadsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1276
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1277
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    .line 1278
    goto :goto_0

    .line 1281
    :pswitch_6
    sget-object v0, Lcom/android/vending/compat/VendingGservicesKeys;->VENDING_SUPPORT_URL:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v0}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1282
    invoke-static {v0}, Lcom/android/vending/util/Util;->replaceLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1283
    invoke-static {p0, v0}, Lcom/android/vending/BaseActivity;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v2

    .line 1284
    goto :goto_0

    .line 1252
    :pswitch_data_0
    .packed-switch 0x7f070119
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_1
    .end packed-switch
.end method

.method protected static openUrl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1296
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1297
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1298
    const-string v0, "com.android.browser.application_id"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1299
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1300
    return-void
.end method

.method public static scaleAppearance(Landroid/widget/TextView;II)V
    .locals 5
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "maxTextSizeResId"    # I
    .param p2, "layoutWidthResId"    # I

    .prologue
    .line 793
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 794
    .local v2, "savedLp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 795
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 796
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .end local p1    # "maxTextSizeResId":I
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    div-float v0, p1, v0

    .line 797
    .local v0, "maxTextSize":F
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 798
    .local p1, "layoutWidth":F
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    .end local p2    # "layoutWidthResId":I
    const/4 v1, -0x2

    const/4 v3, -0x2

    invoke-direct {p2, v1, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 799
    .end local v1    # "res":Landroid/content/res/Resources;
    .local p2, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 800
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 801
    const/4 p2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Landroid/widget/TextView;->measure(II)V

    .line 802
    .end local p2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    .line 803
    .local p2, "width":F
    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    .end local p1    # "layoutWidth":F
    .end local p2    # "width":F
    move-result p2

    .line 804
    .local p2, "scale":F
    const/high16 p1, 0x41c80000    # 25.0f

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    mul-float/2addr p1, v1

    float-to-int p1, p1

    .line 808
    .local p1, "paddingTop":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p0, v1, p1, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 810
    mul-float p1, v0, p2

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 811
    .end local p1    # "paddingTop":I
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 812
    return-void
.end method

.method public static setBackgroundRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 741
    sget-boolean v0, Lcom/android/vending/BaseActivity;->sMarketInForeground:Z

    if-nez v0, :cond_0

    .line 743
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 747
    :goto_0
    return-void

    .line 745
    :cond_0
    sput-object p0, Lcom/android/vending/BaseActivity;->sBackgroundRunnable:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method private setMarketInForeground()V
    .locals 1

    .prologue
    .line 717
    sget-boolean v0, Lcom/android/vending/BaseActivity;->sMarketInForeground:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/vending/BaseActivity;->sForegroundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 718
    sget-object v0, Lcom/android/vending/BaseActivity;->sForegroundRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 719
    const/4 v0, 0x0

    sput-object v0, Lcom/android/vending/BaseActivity;->sForegroundRunnable:Ljava/lang/Runnable;

    .line 722
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/vending/BaseActivity;->sMarketLeaving:Z

    .line 723
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/vending/BaseActivity;->sMarketInForeground:Z

    .line 724
    return-void
.end method

.method private setMarketLeftForeground()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 727
    sget-boolean v0, Lcom/android/vending/BaseActivity;->sMarketInForeground:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/vending/BaseActivity;->sBackgroundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 728
    sget-object v0, Lcom/android/vending/BaseActivity;->sBackgroundRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 729
    const/4 v0, 0x0

    sput-object v0, Lcom/android/vending/BaseActivity;->sBackgroundRunnable:Ljava/lang/Runnable;

    .line 732
    :cond_0
    sput-boolean v1, Lcom/android/vending/BaseActivity;->sMarketLeaving:Z

    .line 733
    sput-boolean v1, Lcom/android/vending/BaseActivity;->sMarketInForeground:Z

    .line 734
    return-void
.end method

.method private static showDebugDialog(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 1143
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1145
    invoke-static {p0}, Lcom/android/vending/util/MarketDebug;->getBasicDebugInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1146
    const-string v1, "Quick summary"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1147
    const v1, 0x7f0601bd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1149
    const-string v1, "Send full"

    new-instance v2, Lcom/android/vending/BaseActivity$4;

    invoke-direct {v2, p0}, Lcom/android/vending/BaseActivity$4;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1165
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1166
    return-void
.end method


# virtual methods
.method protected clearChainActions()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 621
    iput-object v0, p0, Lcom/android/vending/BaseActivity;->mFirstChainAction:Lcom/android/vending/ChainAction;

    .line 622
    iput-object v0, p0, Lcom/android/vending/BaseActivity;->mEndChainAction:Lcom/android/vending/ChainAction;

    .line 623
    return-void
.end method

.method public createNoAccountsDialogAccessor(Ljava/lang/Runnable;)Lcom/android/vending/controller/DialogAccessor;
    .locals 1
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 1053
    new-instance v0, Lcom/android/vending/BaseActivity$NoAccountsDialogAccessor;

    invoke-direct {v0, p0, p1}, Lcom/android/vending/BaseActivity$NoAccountsDialogAccessor;-><init>(Lcom/android/vending/BaseActivity;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public deferResultHandling(II)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I

    .prologue
    .line 1376
    iput p1, p0, Lcom/android/vending/BaseActivity;->mSavedRequestCode:I

    .line 1377
    iput p2, p0, Lcom/android/vending/BaseActivity;->mSavedResultCode:I

    .line 1378
    return-void
.end method

.method public displayAlertMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 384
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/vending/BaseActivity;->displayAlertMessage(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 385
    return-void
.end method

.method public displayAlertMessage(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "finish"    # Z

    .prologue
    .line 397
    if-nez p3, :cond_0

    .line 398
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mMutableDialogAccessor:Lcom/android/vending/AlertUtil$MutableDialogAccessor;

    invoke-static {p0, v0, p1, p2}, Lcom/android/vending/AlertUtil;->displayTitleMessageDialog(Lcom/android/vending/BaseActivity;Lcom/android/vending/AlertUtil$MutableDialogAccessor;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 402
    :goto_0
    return-void

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mFinishDialogAccessor:Lcom/android/vending/AlertUtil$MutableDialogAccessor;

    invoke-static {p0, v0, p1, p2}, Lcom/android/vending/AlertUtil;->displayTitleMessageDialog(Lcom/android/vending/BaseActivity;Lcom/android/vending/AlertUtil$MutableDialogAccessor;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public displayDialog(Lcom/android/vending/controller/DialogAccessor;)V
    .locals 4
    .param p1, "dialogAccessor"    # Lcom/android/vending/controller/DialogAccessor;

    .prologue
    .line 429
    iget-object v2, p0, Lcom/android/vending/BaseActivity;->mDialogMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 430
    .local v1, "id":Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 431
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "registerDialog must be called before displayDialog"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 433
    :cond_0
    iget-boolean v2, p0, Lcom/android/vending/BaseActivity;->mIsPaused:Z

    if-eqz v2, :cond_2

    .line 436
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dialog (id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") was not shown as the application was paused. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Dialog will be shown onResume"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/vending/util/Log;->i(Ljava/lang/String;)V

    .line 438
    iget-object v2, p0, Lcom/android/vending/BaseActivity;->mPendingDialogs:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    :cond_1
    :goto_0
    return-void

    .line 441
    :cond_2
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 442
    iget-object v2, p0, Lcom/android/vending/BaseActivity;->mDialogMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 443
    .local v0, "dialogId":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/vending/BaseActivity;->showDialog(I)V

    .line 444
    iget-object v2, p0, Lcom/android/vending/BaseActivity;->mDisplayedDialogs:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public displayNonPersistedDialog(Lcom/android/vending/controller/DialogAccessor;)V
    .locals 3
    .param p1, "dialogAccessor"    # Lcom/android/vending/controller/DialogAccessor;

    .prologue
    .line 454
    iget-object v1, p0, Lcom/android/vending/BaseActivity;->mDialogMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "displayNonPersistentDialog() called for a registered dialog."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 459
    :cond_0
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 460
    invoke-interface {p1}, Lcom/android/vending/controller/DialogAccessor;->create()Landroid/app/Dialog;

    move-result-object v0

    .line 461
    .local v0, "dialog":Landroid/app/Dialog;
    iget-object v1, p0, Lcom/android/vending/BaseActivity;->mNonPersistedDialogs:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 462
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/vending/BaseActivity;->mNonPersistedDialogs:Ljava/util/Map;

    .line 464
    :cond_1
    iget-object v1, p0, Lcom/android/vending/BaseActivity;->mNonPersistedDialogs:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 467
    .end local v0    # "dialog":Landroid/app/Dialog;
    :cond_2
    return-void
.end method

.method public displayToast(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 410
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 411
    return-void
.end method

.method public displayToast(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 419
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 420
    return-void
.end method

.method protected doRetry()V
    .locals 2

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mExecutingAction:Lcom/android/vending/BaseActivity$BackendAction;

    if-eqz v0, :cond_0

    .line 1174
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mExecutingAction:Lcom/android/vending/BaseActivity$BackendAction;

    invoke-virtual {v0}, Lcom/android/vending/BaseActivity$BackendAction;->retry()V

    .line 1180
    :goto_0
    return-void

    .line 1175
    :cond_0
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mFirstChainAction:Lcom/android/vending/ChainAction;

    if-eqz v0, :cond_1

    .line 1176
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mFirstChainAction:Lcom/android/vending/ChainAction;

    invoke-interface {v0, p0}, Lcom/android/vending/ChainAction;->runAction(Lcom/android/vending/BaseActivity;)V

    goto :goto_0

    .line 1178
    :cond_1
    const-string v0, "No action to start or retry."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected forwardIfNeededToTosActivity()Z
    .locals 2

    .prologue
    .line 608
    invoke-static {}, Lcom/android/vending/TosActivity;->isTosAccepted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 609
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/vending/TosActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 610
    const/16 v1, 0x1ae

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 611
    const/4 v0, 0x1

    .line 613
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 366
    return-object p0
.end method

.method public getReferrerUri(I)Landroid/net/Uri;
    .locals 1
    .param p1, "rowIndex"    # I

    .prologue
    .line 2168
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequestManager()Lcom/android/vending/api/RequestManager;
    .locals 1

    .prologue
    .line 2180
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mRequestManager:Lcom/android/vending/api/RequestManager;

    return-object v0
.end method

.method public getSharedParameters()Lcom/android/vending/controller/RequestParameters;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mSharedParameters:Lcom/android/vending/controller/RequestParameters;

    return-object v0
.end method

.method public getVendingApplication()Lcom/android/vending/VendingApplication;
    .locals 1

    .prologue
    .line 976
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mApplication:Lcom/android/vending/VendingApplication;

    return-object v0
.end method

.method protected handleDeferredResultIfNecessary()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1388
    iget v0, p0, Lcom/android/vending/BaseActivity;->mSavedResultCode:I

    if-ne v0, v3, :cond_0

    .line 1397
    :goto_0
    return-void

    .line 1392
    :cond_0
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mController:Lcom/android/vending/controller/Controller;

    instance-of v0, v0, Lcom/android/vending/controller/ResultsController;

    if-eqz v0, :cond_1

    .line 1393
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mController:Lcom/android/vending/controller/Controller;

    check-cast v0, Lcom/android/vending/controller/ResultsController;

    iget v1, p0, Lcom/android/vending/BaseActivity;->mSavedRequestCode:I

    iget v2, p0, Lcom/android/vending/BaseActivity;->mSavedResultCode:I

    invoke-interface {v0, v1, v2, p0}, Lcom/android/vending/controller/ResultsController;->handleResult(IILcom/android/vending/BaseActivity;)V

    .line 1396
    :cond_1
    iput v3, p0, Lcom/android/vending/BaseActivity;->mSavedResultCode:I

    goto :goto_0
.end method

.method protected haveAuthToken(Lcom/android/vending/BaseActivity$AuthService;)Z
    .locals 1
    .param p1, "service"    # Lcom/android/vending/BaseActivity$AuthService;

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mApplication:Lcom/android/vending/VendingApplication;

    invoke-virtual {v0, p1}, Lcom/android/vending/VendingApplication;->getCachedAuthToken(Lcom/android/vending/BaseActivity$AuthService;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideDialog(Lcom/android/vending/controller/DialogAccessor;)V
    .locals 2
    .param p1, "dialogAccessor"    # Lcom/android/vending/controller/DialogAccessor;

    .prologue
    .line 476
    iget-object v1, p0, Lcom/android/vending/BaseActivity;->mDialogMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 477
    .local v0, "dialogId":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/vending/BaseActivity;->mDisplayedDialogs:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 483
    :goto_0
    return-void

    .line 481
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/vending/BaseActivity;->dismissDialog(I)V

    .line 482
    iget-object v1, p0, Lcom/android/vending/BaseActivity;->mDisplayedDialogs:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public hideIndeterminateProgress(Lcom/android/vending/BaseActivity$BackendAction;)V
    .locals 1
    .param p1, "backendAction"    # Lcom/android/vending/BaseActivity$BackendAction;

    .prologue
    .line 1405
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vending/BaseActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 1406
    return-void
.end method

.method public hideWaitPanel()V
    .locals 1

    .prologue
    .line 1363
    iget-boolean v0, p0, Lcom/android/vending/BaseActivity;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 1367
    :goto_0
    return-void

    .line 1366
    :cond_0
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mProgressDialogAccessor:Lcom/android/vending/BaseActivity$ProgressDialogAccessor;

    invoke-virtual {p0, v0}, Lcom/android/vending/BaseActivity;->hideDialog(Lcom/android/vending/controller/DialogAccessor;)V

    goto :goto_0
.end method

.method protected initiateGetAuthToken(Lcom/android/vending/BaseActivity$AuthService;)V
    .locals 9
    .param p1, "service"    # Lcom/android/vending/BaseActivity$AuthService;

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 1020
    const-string v0, "get_auth_token %s"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/vending/BaseActivity$AuthService;->getServiceName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lcom/android/vending/util/Log;->start(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1021
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mApplication:Lcom/android/vending/VendingApplication;

    invoke-virtual {v0, p1}, Lcom/android/vending/VendingApplication;->getCachedAuthToken(Lcom/android/vending/BaseActivity$AuthService;)Ljava/lang/String;

    move-result-object v6

    .line 1022
    .local v6, "cachedAuthToken":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 1023
    invoke-virtual {p0, p1, v6}, Lcom/android/vending/BaseActivity;->onAuthTokenComplete(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V

    .line 1050
    :cond_0
    :goto_0
    return-void

    .line 1027
    :cond_1
    iget v0, p0, Lcom/android/vending/BaseActivity;->mNumAuthAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/vending/BaseActivity;->mNumAuthAttempts:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    .line 1028
    const-string v0, "Too many login attempts."

    invoke-static {v0}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .line 1029
    invoke-virtual {p0, v8}, Lcom/android/vending/BaseActivity;->setResult(I)V

    .line 1030
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity;->finish()V

    goto :goto_0

    .line 1034
    :cond_2
    invoke-virtual {p1}, Lcom/android/vending/BaseActivity$AuthService;->getAuthCode()I

    move-result v7

    .line 1036
    .local v7, "requestCode":I
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mOutstandingAuthRequests:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Auth request already outstanding for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/vending/BaseActivity$AuthService;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1041
    :cond_3
    iget-boolean v0, p0, Lcom/android/vending/BaseActivity;->mTosActivityShown:Z

    if-nez v0, :cond_0

    .line 1042
    invoke-virtual {p1}, Lcom/android/vending/BaseActivity$AuthService;->getAuthCode()I

    move-result v1

    iget-object v3, p0, Lcom/android/vending/BaseActivity;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/vending/BaseActivity$GetAuthTokensCallback;

    invoke-direct {v4, p0, p1, v5}, Lcom/android/vending/BaseActivity$GetAuthTokensCallback;-><init>(Lcom/android/vending/BaseActivity;Lcom/android/vending/BaseActivity$AuthService;Z)V

    new-instance v5, Lcom/android/vending/BaseActivity$GetAuthTokensCallback;

    invoke-direct {v5, p0, p1, v8}, Lcom/android/vending/BaseActivity$GetAuthTokensCallback;-><init>(Lcom/android/vending/BaseActivity;Lcom/android/vending/BaseActivity$AuthService;Z)V

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/android/vending/compat/AccountManagerHelper;->initiateGetAuthToken(Lcom/android/vending/BaseActivity;ILcom/android/vending/BaseActivity$AuthService;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/AccountManagerCallback;)V

    goto :goto_0
.end method

.method protected invalidateAuthToken(Lcom/android/vending/BaseActivity$AuthService;)V
    .locals 3

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mApplication:Lcom/android/vending/VendingApplication;

    invoke-virtual {v0, p1}, Lcom/android/vending/VendingApplication;->getCachedAuthToken(Lcom/android/vending/BaseActivity$AuthService;)Ljava/lang/String;

    move-result-object v0

    .line 1193
    iget-object v1, p0, Lcom/android/vending/BaseActivity;->mApplication:Lcom/android/vending/VendingApplication;

    invoke-virtual {v1, p1}, Lcom/android/vending/VendingApplication;->invalidateCachedAuthToken(Lcom/android/vending/BaseActivity$AuthService;)V

    .line 1194
    invoke-virtual {p1}, Lcom/android/vending/BaseActivity$AuthService;->getInvalidateCode()I

    move-result v1

    .line 1195
    const-string v2, "com.google"

    invoke-static {p0, v2, p1, v0}, Lcom/android/vending/compat/AccountManagerHelper;->invalidateAuthToken(Landroid/content/Context;Ljava/lang/String;Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V

    .line 1200
    const/4 v0, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/vending/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1201
    return-void
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 834
    iget-boolean v0, p0, Lcom/android/vending/BaseActivity;->mIsPaused:Z

    return v0
.end method

.method protected maybeDisplayMessage(Landroid/content/Intent;)V
    .locals 2

    .prologue
    const-string v1, "message_title"

    .line 1419
    const-string v0, "message_title"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1420
    iget-boolean v0, p0, Lcom/android/vending/BaseActivity;->mIntentMessageShown:Z

    if-nez v0, :cond_0

    .line 1421
    const-string v0, "message_title"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1422
    const-string v1, "message_body"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1423
    invoke-virtual {p0, v0, v1}, Lcom/android/vending/BaseActivity;->displayAlertMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vending/BaseActivity;->mIntentMessageShown:Z

    .line 1427
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 911
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 914
    iget-object v1, p0, Lcom/android/vending/BaseActivity;->mOutstandingAuthRequests:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 916
    sget-object v1, Lcom/android/vending/BaseActivity$AuthService;->ANDROID:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {v1}, Lcom/android/vending/BaseActivity$AuthService;->getAuthCode()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 917
    invoke-direct {p0, p2, p3}, Lcom/android/vending/BaseActivity;->completeGetAuthToken(ILandroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 918
    .local v0, "authToken":Ljava/lang/String;
    sget-object v1, Lcom/android/vending/BaseActivity$AuthService;->ANDROID:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0, v1, v0}, Lcom/android/vending/BaseActivity;->onAuthTokenComplete(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V

    .line 973
    .end local v0    # "authToken":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 921
    :cond_1
    sget-object v1, Lcom/android/vending/BaseActivity$AuthService;->ANDROID_SECURE:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {v1}, Lcom/android/vending/BaseActivity$AuthService;->getAuthCode()I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 922
    invoke-direct {p0, p2, p3}, Lcom/android/vending/BaseActivity;->completeGetAuthToken(ILandroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 923
    .restart local v0    # "authToken":Ljava/lang/String;
    sget-object v1, Lcom/android/vending/BaseActivity$AuthService;->ANDROID_SECURE:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0, v1, v0}, Lcom/android/vending/BaseActivity;->onAuthTokenComplete(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V

    goto :goto_0

    .line 926
    .end local v0    # "authToken":Ljava/lang/String;
    :cond_2
    sget-object v1, Lcom/android/vending/BaseActivity$AuthService;->CHECKOUT:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {v1}, Lcom/android/vending/BaseActivity$AuthService;->getAuthCode()I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 927
    invoke-direct {p0, p2, p3}, Lcom/android/vending/BaseActivity;->completeGetAuthToken(ILandroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 928
    .restart local v0    # "authToken":Ljava/lang/String;
    sget-object v1, Lcom/android/vending/BaseActivity$AuthService;->CHECKOUT:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0, v1, v0}, Lcom/android/vending/BaseActivity;->onAuthTokenComplete(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V

    goto :goto_0

    .line 931
    .end local v0    # "authToken":Ljava/lang/String;
    :cond_3
    sget-object v1, Lcom/android/vending/BaseActivity$AuthService;->CHECKOUT_QA:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {v1}, Lcom/android/vending/BaseActivity$AuthService;->getAuthCode()I

    move-result v1

    if-ne p1, v1, :cond_4

    .line 932
    invoke-direct {p0, p2, p3}, Lcom/android/vending/BaseActivity;->completeGetAuthToken(ILandroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 933
    .restart local v0    # "authToken":Ljava/lang/String;
    sget-object v1, Lcom/android/vending/BaseActivity$AuthService;->CHECKOUT_QA:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0, v1, v0}, Lcom/android/vending/BaseActivity;->onAuthTokenComplete(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V

    goto :goto_0

    .line 936
    .end local v0    # "authToken":Ljava/lang/String;
    :cond_4
    sget-object v1, Lcom/android/vending/BaseActivity$AuthService;->CHECKOUT_SANDBOX:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {v1}, Lcom/android/vending/BaseActivity$AuthService;->getAuthCode()I

    move-result v1

    if-ne p1, v1, :cond_5

    .line 937
    invoke-direct {p0, p2, p3}, Lcom/android/vending/BaseActivity;->completeGetAuthToken(ILandroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 938
    .restart local v0    # "authToken":Ljava/lang/String;
    sget-object v1, Lcom/android/vending/BaseActivity$AuthService;->CHECKOUT_SANDBOX:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0, v1, v0}, Lcom/android/vending/BaseActivity;->onAuthTokenComplete(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V

    goto :goto_0

    .line 941
    .end local v0    # "authToken":Ljava/lang/String;
    :cond_5
    sget-object v1, Lcom/android/vending/BaseActivity$AuthService;->ANDROID:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {v1}, Lcom/android/vending/BaseActivity$AuthService;->getInvalidateCode()I

    move-result v1

    if-ne p1, v1, :cond_6

    .line 942
    sget-object v1, Lcom/android/vending/BaseActivity$AuthService;->ANDROID:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0, v1}, Lcom/android/vending/BaseActivity;->initiateGetAuthToken(Lcom/android/vending/BaseActivity$AuthService;)V

    goto :goto_0

    .line 945
    :cond_6
    sget-object v1, Lcom/android/vending/BaseActivity$AuthService;->ANDROID_SECURE:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {v1}, Lcom/android/vending/BaseActivity$AuthService;->getInvalidateCode()I

    move-result v1

    if-ne p1, v1, :cond_7

    .line 946
    sget-object v1, Lcom/android/vending/BaseActivity$AuthService;->ANDROID_SECURE:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0, v1}, Lcom/android/vending/BaseActivity;->initiateGetAuthToken(Lcom/android/vending/BaseActivity$AuthService;)V

    goto :goto_0

    .line 949
    :cond_7
    sget-object v1, Lcom/android/vending/BaseActivity$AuthService;->CHECKOUT:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {v1}, Lcom/android/vending/BaseActivity$AuthService;->getInvalidateCode()I

    move-result v1

    if-ne p1, v1, :cond_8

    .line 950
    sget-object v1, Lcom/android/vending/BaseActivity$AuthService;->CHECKOUT:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0, v1}, Lcom/android/vending/BaseActivity;->initiateGetAuthToken(Lcom/android/vending/BaseActivity$AuthService;)V

    goto :goto_0

    .line 953
    :cond_8
    sget-object v1, Lcom/android/vending/BaseActivity$AuthService;->CHECKOUT_QA:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {v1}, Lcom/android/vending/BaseActivity$AuthService;->getInvalidateCode()I

    move-result v1

    if-ne p1, v1, :cond_9

    .line 954
    sget-object v1, Lcom/android/vending/BaseActivity$AuthService;->CHECKOUT_QA:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0, v1}, Lcom/android/vending/BaseActivity;->initiateGetAuthToken(Lcom/android/vending/BaseActivity$AuthService;)V

    goto :goto_0

    .line 957
    :cond_9
    sget-object v1, Lcom/android/vending/BaseActivity$AuthService;->CHECKOUT_SANDBOX:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {v1}, Lcom/android/vending/BaseActivity$AuthService;->getInvalidateCode()I

    move-result v1

    if-ne p1, v1, :cond_a

    .line 958
    sget-object v1, Lcom/android/vending/BaseActivity$AuthService;->CHECKOUT_SANDBOX:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0, v1}, Lcom/android/vending/BaseActivity;->initiateGetAuthToken(Lcom/android/vending/BaseActivity$AuthService;)V

    goto/16 :goto_0

    .line 961
    :cond_a
    const/16 v1, 0x1ae

    if-ne p1, v1, :cond_b

    .line 962
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity;->finish()V

    .line 963
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 965
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/vending/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 970
    :cond_b
    iget-object v1, p0, Lcom/android/vending/BaseActivity;->mController:Lcom/android/vending/controller/Controller;

    instance-of v1, v1, Lcom/android/vending/controller/ResultsController;

    if-eqz v1, :cond_0

    .line 971
    iget-object v1, p0, Lcom/android/vending/BaseActivity;->mController:Lcom/android/vending/controller/Controller;

    check-cast v1, Lcom/android/vending/controller/ResultsController;

    invoke-interface {v1, p1, p2, p0}, Lcom/android/vending/controller/ResultsController;->handleResult(IILcom/android/vending/BaseActivity;)V

    goto/16 :goto_0
.end method

.method public onAssetStateChanged(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
    .locals 2
    .param p1, "serverAssetId"    # Ljava/lang/String;
    .param p2, "newState"    # Lcom/android/vending/model/LocalAssetInfo$AssetState;

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/vending/BaseActivity$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/vending/BaseActivity$5;-><init>(Lcom/android/vending/BaseActivity;Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1315
    return-void
.end method

.method protected onAuthTokenComplete(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1115
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/vending/BaseActivity;->onAuthTokenComplete(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;Z)V

    .line 1116
    const-string v0, "get_auth_token"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/vending/util/Log;->end(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1117
    return-void
.end method

.method protected final onAuthTokenComplete(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 1131
    if-eqz p2, :cond_1

    .line 1132
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mApplication:Lcom/android/vending/VendingApplication;

    invoke-virtual {v0, p1, p2}, Lcom/android/vending/VendingApplication;->setCachedAuthToken(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V

    .line 1133
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/android/vending/BaseActivity;->doRetry()V

    .line 1137
    :cond_0
    :goto_0
    return-void

    .line 1135
    :cond_1
    const-string v0, "null auth token."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mMarketIcon:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 333
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 334
    const-class v1, Lcom/android/vending/AssetBrowserActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 335
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 336
    invoke-virtual {p0, v0}, Lcom/android/vending/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 342
    :goto_0
    return-void

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mSearchButton:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 338
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity;->onSearchRequested()Z

    goto :goto_0

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mController:Lcom/android/vending/controller/Controller;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/android/vending/controller/Controller;->handleRequest(ILcom/android/vending/BaseActivity;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 537
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 542
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/android/vending/VendingApplication;

    iput-object v3, p0, Lcom/android/vending/BaseActivity;->mApplication:Lcom/android/vending/VendingApplication;

    .line 543
    new-instance v3, Lcom/android/vending/api/RequestManager;

    iget-object v4, p0, Lcom/android/vending/BaseActivity;->mApplication:Lcom/android/vending/VendingApplication;

    invoke-virtual {v4}, Lcom/android/vending/VendingApplication;->getApiClientContext()Lcom/android/vending/VendingApplication$ApiClientContext;

    move-result-object v4

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getGoogleHttpClient()Lcom/android/vending/compat/GoogleHttpClient;

    move-result-object v5

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getCacheManager()Lcom/android/vending/cache/CacheManager;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/android/vending/api/RequestManager;-><init>(Lcom/android/vending/VendingApplication$ApiClientContext;Lcom/android/vending/compat/GoogleHttpClient;Lcom/android/vending/cache/CacheManager;)V

    iput-object v3, p0, Lcom/android/vending/BaseActivity;->mRequestManager:Lcom/android/vending/api/RequestManager;

    .line 549
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/vending/BaseActivity;->setDefaultKeyMode(I)V

    .line 551
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/android/vending/BaseActivity;->requestWindowFeature(I)Z

    .line 552
    new-instance v3, Lcom/android/vending/controller/RequestParameters;

    invoke-direct {v3}, Lcom/android/vending/controller/RequestParameters;-><init>()V

    iput-object v3, p0, Lcom/android/vending/BaseActivity;->mSharedParameters:Lcom/android/vending/controller/RequestParameters;

    .line 554
    if-eqz p1, :cond_0

    .line 555
    const-string v3, "intent_message_shown"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/vending/BaseActivity;->mIntentMessageShown:Z

    .line 556
    const-string v3, "intent_outstanding_auths"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vending/BaseActivity;->mOutstandingAuthRequests:Ljava/util/ArrayList;

    .line 559
    :cond_0
    new-instance v1, Lcom/android/vending/InitializeMarketAction;

    invoke-direct {v1}, Lcom/android/vending/InitializeMarketAction;-><init>()V

    .line 560
    .local v1, "initializeMarketAction":Lcom/android/vending/InitializeMarketAction;
    new-instance v2, Lcom/android/vending/ParentalControlChecker;

    invoke-direct {v2}, Lcom/android/vending/ParentalControlChecker;-><init>()V

    .line 561
    .local v2, "parentalControlChecker":Lcom/android/vending/ParentalControlChecker;
    new-instance v0, Lcom/android/vending/CarrierProvisioningAction;

    invoke-direct {v0}, Lcom/android/vending/CarrierProvisioningAction;-><init>()V

    .line 562
    .local v0, "carrierProvisioningAction":Lcom/android/vending/CarrierProvisioningAction;
    iput-object v1, p0, Lcom/android/vending/BaseActivity;->mFirstChainAction:Lcom/android/vending/ChainAction;

    .line 563
    invoke-virtual {v1, v2}, Lcom/android/vending/InitializeMarketAction;->setNext(Lcom/android/vending/ChainAction;)V

    .line 564
    invoke-virtual {v2, v0}, Lcom/android/vending/ParentalControlChecker;->setNext(Lcom/android/vending/ChainAction;)V

    .line 565
    iput-object v0, p0, Lcom/android/vending/BaseActivity;->mEndChainAction:Lcom/android/vending/ChainAction;

    .line 567
    invoke-static {p0}, Lcom/android/vending/AlertUtil;->registerMutableDialogAccessor(Lcom/android/vending/BaseActivity;)Lcom/android/vending/AlertUtil$MutableDialogAccessor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vending/BaseActivity;->mMutableDialogAccessor:Lcom/android/vending/AlertUtil$MutableDialogAccessor;

    .line 568
    new-instance v3, Lcom/android/vending/BaseActivity$1;

    invoke-direct {v3, p0}, Lcom/android/vending/BaseActivity$1;-><init>(Lcom/android/vending/BaseActivity;)V

    new-instance v4, Lcom/android/vending/BaseActivity$2;

    invoke-direct {v4, p0}, Lcom/android/vending/BaseActivity$2;-><init>(Lcom/android/vending/BaseActivity;)V

    invoke-static {p0, v3, v4, v7}, Lcom/android/vending/AlertUtil;->registerMutableDialogAccessor(Lcom/android/vending/BaseActivity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/android/vending/AlertUtil$MutableDialogAccessor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vending/BaseActivity;->mRetryPanelAccessor:Lcom/android/vending/AlertUtil$MutableDialogAccessor;

    .line 580
    new-instance v3, Lcom/android/vending/BaseActivity$3;

    invoke-direct {v3, p0}, Lcom/android/vending/BaseActivity$3;-><init>(Lcom/android/vending/BaseActivity;)V

    invoke-static {p0, v3, v7, v7}, Lcom/android/vending/AlertUtil;->registerMutableDialogAccessor(Lcom/android/vending/BaseActivity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/android/vending/AlertUtil$MutableDialogAccessor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vending/BaseActivity;->mFinishDialogAccessor:Lcom/android/vending/AlertUtil$MutableDialogAccessor;

    .line 587
    new-instance v3, Lcom/android/vending/BaseActivity$ProgressDialogAccessor;

    invoke-direct {v3, p0}, Lcom/android/vending/BaseActivity$ProgressDialogAccessor;-><init>(Lcom/android/vending/BaseActivity;)V

    iput-object v3, p0, Lcom/android/vending/BaseActivity;->mProgressDialogAccessor:Lcom/android/vending/BaseActivity$ProgressDialogAccessor;

    .line 588
    iget-object v3, p0, Lcom/android/vending/BaseActivity;->mProgressDialogAccessor:Lcom/android/vending/BaseActivity$ProgressDialogAccessor;

    invoke-virtual {p0, v3}, Lcom/android/vending/BaseActivity;->registerDialog(Lcom/android/vending/controller/DialogAccessor;)V

    .line 590
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/vending/BaseActivity;->mIsPaused:Z

    .line 591
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/vending/BaseActivity;->mPendingDialogs:Ljava/util/List;

    .line 593
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity;->forwardIfNeededToTosActivity()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/vending/BaseActivity;->mTosActivityShown:Z

    .line 599
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mDialogs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/android/vending/BaseActivity;
    check-cast p0, Lcom/android/vending/controller/DialogAccessor;

    invoke-interface {p0}, Lcom/android/vending/controller/DialogAccessor;->create()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1219
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1220
    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1222
    instance-of v0, p0, Lcom/android/vending/AssetBrowserActivity;

    if-eqz v0, :cond_0

    .line 1223
    const v0, 0x7f07011f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1226
    :cond_0
    instance-of v0, p0, Lcom/android/vending/MyDownloadsActivity;

    if-eqz v0, :cond_1

    .line 1227
    const v0, 0x7f07011c

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1230
    :cond_1
    instance-of v0, p0, Lcom/android/vending/SettingsActivity;

    if-eqz v0, :cond_2

    .line 1231
    const v0, 0x7f07011d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1234
    :cond_2
    const v0, 0x7f070119

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sget-object v1, Lcom/android/vending/compat/VendingGservicesKeys;->VENDING_ENABLE_DEBUG_INFO:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v1}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1237
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 853
    iget-object v2, p0, Lcom/android/vending/BaseActivity;->mNonPersistedDialogs:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 854
    iget-object v2, p0, Lcom/android/vending/BaseActivity;->mNonPersistedDialogs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 855
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 856
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 860
    .end local v0    # "dialog":Landroid/app/Dialog;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 861
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/vending/BaseActivity;->mDestroyed:Z

    .line 862
    return-void
.end method

.method protected onDisplayErrorUi(Lcom/android/vending/BaseActivity$BaseAction$RequestErrorType;)V
    .locals 3

    .prologue
    .line 1925
    sget-object v0, Lcom/android/vending/BaseActivity$BaseAction$RequestErrorType;->NETWORK_ERROR:Lcom/android/vending/BaseActivity$BaseAction$RequestErrorType;

    if-ne p1, v0, :cond_0

    .line 1926
    const v0, 0x7f060034

    invoke-virtual {p0, v0}, Lcom/android/vending/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1927
    const v1, 0x7f060035

    invoke-virtual {p0, v1}, Lcom/android/vending/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    .line 1932
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/vending/BaseActivity;->showRetryPanel(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1933
    return-void

    .line 1929
    :cond_0
    const v0, 0x7f060037

    invoke-virtual {p0, v0}, Lcom/android/vending/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1930
    const v1, 0x7f060038

    invoke-virtual {p0, v1}, Lcom/android/vending/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1242
    invoke-static {p0, p1, p2}, Lcom/android/vending/BaseActivity;->onMenuItemSelected(Landroid/app/Activity;ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1243
    const/4 v0, 0x1

    .line 1246
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 839
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 845
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vending/BaseActivity;->mIntentMessageShown:Z

    .line 846
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 687
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 690
    sput-boolean v0, Lcom/android/vending/BaseActivity;->sMarketLeaving:Z

    .line 692
    iput-boolean v0, p0, Lcom/android/vending/BaseActivity;->mIsPaused:Z

    .line 697
    invoke-static {}, Lcom/android/vending/model/LocalAssetCache;->get()Lcom/android/vending/model/AbstractLocalAssetCache;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/vending/model/AbstractLocalAssetCache;->setListener(Lcom/android/vending/model/LocalAssetCache$AssetStateListener;)V

    .line 698
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mDialogs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/controller/DialogAccessor;

    invoke-interface {v0, p2}, Lcom/android/vending/controller/DialogAccessor;->prepare(Landroid/app/Dialog;)V

    .line 508
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 509
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 885
    iget-object v2, p0, Lcom/android/vending/BaseActivity;->mDialogs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "i":I
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 886
    iget-object v2, p0, Lcom/android/vending/BaseActivity;->mDialogs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vending/controller/DialogAccessor;

    invoke-interface {v2, p1, v0}, Lcom/android/vending/controller/DialogAccessor;->restoreState(Landroid/os/Bundle;I)V

    .line 888
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialog_visibility"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 889
    .local v1, "visibility":Z
    if-eqz v1, :cond_0

    .line 890
    iget-object v2, p0, Lcom/android/vending/BaseActivity;->mDisplayedDialogs:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 893
    .end local v1    # "visibility":Z
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 896
    const-string v2, "saved_request_code"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/vending/BaseActivity;->mSavedRequestCode:I

    .line 897
    const-string v2, "saved_result_code"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/vending/BaseActivity;->mSavedResultCode:I

    .line 903
    return-void
.end method

.method public onResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 906
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/vending/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 907
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 661
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 663
    const v3, 0x7f0700fc

    invoke-virtual {p0, v3}, Lcom/android/vending/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 664
    .local v2, "searchButton":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 665
    const/high16 v3, 0x7f090000

    invoke-static {v2, v3}, Lcom/android/vending/BaseActivity;->addTouchDelegate(Landroid/view/View;I)V

    .line 669
    :cond_0
    invoke-direct {p0}, Lcom/android/vending/BaseActivity;->setMarketInForeground()V

    .line 674
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/vending/BaseActivity;->mIsPaused:Z

    .line 675
    iget-object v3, p0, Lcom/android/vending/BaseActivity;->mPendingDialogs:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 676
    iget-object v3, p0, Lcom/android/vending/BaseActivity;->mPendingDialogs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/controller/DialogAccessor;

    .line 677
    .local v0, "dialog":Lcom/android/vending/controller/DialogAccessor;
    invoke-virtual {p0, v0}, Lcom/android/vending/BaseActivity;->displayDialog(Lcom/android/vending/controller/DialogAccessor;)V

    goto :goto_0

    .line 680
    .end local v0    # "dialog":Lcom/android/vending/controller/DialogAccessor;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/vending/BaseActivity;->mPendingDialogs:Ljava/util/List;

    .line 682
    invoke-static {}, Lcom/android/vending/model/LocalAssetCache;->get()Lcom/android/vending/model/AbstractLocalAssetCache;

    move-result-object v3

    invoke-interface {v3, p0}, Lcom/android/vending/model/AbstractLocalAssetCache;->setListener(Lcom/android/vending/model/LocalAssetCache$AssetStateListener;)V

    .line 683
    return-void
.end method

.method protected onRetryPanelCanceled()V
    .locals 1

    .prologue
    .line 531
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vending/BaseActivity;->setResult(I)V

    .line 532
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity;->finish()V

    .line 533
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 866
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 867
    const-string v1, "intent_message_shown"

    iget-boolean v2, p0, Lcom/android/vending/BaseActivity;->mIntentMessageShown:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 868
    const-string v1, "intent_outstanding_auths"

    iget-object v2, p0, Lcom/android/vending/BaseActivity;->mOutstandingAuthRequests:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 869
    iget-object v1, p0, Lcom/android/vending/BaseActivity;->mDialogs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 870
    iget-object v1, p0, Lcom/android/vending/BaseActivity;->mDialogs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vending/controller/DialogAccessor;

    invoke-interface {v1, p1, v0}, Lcom/android/vending/controller/DialogAccessor;->saveState(Landroid/os/Bundle;I)V

    .line 872
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialog_visibility"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vending/BaseActivity;->mDisplayedDialogs:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 877
    :cond_0
    iget v1, p0, Lcom/android/vending/BaseActivity;->mSavedResultCode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 878
    const-string v1, "saved_request_code"

    iget v2, p0, Lcom/android/vending/BaseActivity;->mSavedRequestCode:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 879
    const-string v1, "saved_result_code"

    iget v2, p0, Lcom/android/vending/BaseActivity;->mSavedResultCode:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 881
    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 643
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 646
    invoke-direct {p0}, Lcom/android/vending/BaseActivity;->setMarketInForeground()V

    .line 652
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/vending/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 654
    .local v0, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 655
    new-instance v1, Lcom/android/vending/BaseActivity$BackgroundDataDialogAccessor;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/vending/BaseActivity$BackgroundDataDialogAccessor;-><init>(Lcom/android/vending/BaseActivity;Lcom/android/vending/BaseActivity$1;)V

    invoke-virtual {p0, v1}, Lcom/android/vending/BaseActivity;->displayNonPersistedDialog(Lcom/android/vending/controller/DialogAccessor;)V

    .line 657
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 702
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 705
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity;->getChangingConfigurations()I

    move-result v0

    if-lez v0, :cond_0

    .line 706
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/vending/BaseActivity;->sMarketLeaving:Z

    .line 709
    :cond_0
    sget-boolean v0, Lcom/android/vending/BaseActivity;->sMarketLeaving:Z

    if-eqz v0, :cond_1

    .line 712
    invoke-direct {p0}, Lcom/android/vending/BaseActivity;->setMarketLeftForeground()V

    .line 714
    :cond_1
    return-void
.end method

.method public postOnHandler(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 2176
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2177
    return-void
.end method

.method public postRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1341
    return-void
.end method

.method public final registerDialog(Lcom/android/vending/controller/DialogAccessor;)V
    .locals 2
    .param p1, "dialogAccessor"    # Lcom/android/vending/controller/DialogAccessor;

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mDialogMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mDialogMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/vending/BaseActivity;->mDialogs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mDialogs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    :cond_0
    return-void
.end method

.method protected retryExecutingAction()V
    .locals 2

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mExecutingAction:Lcom/android/vending/BaseActivity$BackendAction;

    if-eqz v0, :cond_0

    .line 1003
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mExecutingAction:Lcom/android/vending/BaseActivity$BackendAction;

    invoke-virtual {v0}, Lcom/android/vending/BaseActivity$BackendAction;->retry()V

    .line 1007
    :goto_0
    return-void

    .line 1005
    :cond_0
    const-string v0, "No executing action."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public runAction(Lcom/android/vending/BaseActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/vending/BaseActivity;

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mAutoStartAction:Lcom/android/vending/BaseActivity$BaseAction;

    if-eqz v0, :cond_0

    .line 1450
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mAutoStartAction:Lcom/android/vending/BaseActivity$BaseAction;

    invoke-virtual {v0}, Lcom/android/vending/BaseActivity$BaseAction;->start()V

    .line 1452
    :cond_0
    return-void
.end method

.method public setAssetType(Lcom/android/vending/model/Asset$AssetType;)V
    .locals 0
    .param p1, "assetType"    # Lcom/android/vending/model/Asset$AssetType;

    .prologue
    .line 980
    iput-object p1, p0, Lcom/android/vending/BaseActivity;->mAssetType:Lcom/android/vending/model/Asset$AssetType;

    .line 981
    return-void
.end method

.method protected setAutoStartAction(Lcom/android/vending/BaseActivity$BaseAction;)V
    .locals 2
    .param p1, "action"    # Lcom/android/vending/BaseActivity$BaseAction;

    .prologue
    .line 984
    iput-object p1, p0, Lcom/android/vending/BaseActivity;->mAutoStartAction:Lcom/android/vending/BaseActivity$BaseAction;

    .line 987
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mFirstChainAction:Lcom/android/vending/ChainAction;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mEndChainAction:Lcom/android/vending/ChainAction;

    if-eqz v0, :cond_0

    .line 988
    const-string v0, "First action cannot be null if end action is not null"

    invoke-static {v0}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    .line 989
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to execute chain actions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 993
    :cond_0
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mFirstChainAction:Lcom/android/vending/ChainAction;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mEndChainAction:Lcom/android/vending/ChainAction;

    if-nez v0, :cond_1

    .line 994
    iput-object p0, p0, Lcom/android/vending/BaseActivity;->mFirstChainAction:Lcom/android/vending/ChainAction;

    .line 995
    iput-object p0, p0, Lcom/android/vending/BaseActivity;->mEndChainAction:Lcom/android/vending/ChainAction;

    .line 999
    :goto_0
    return-void

    .line 997
    :cond_1
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mEndChainAction:Lcom/android/vending/ChainAction;

    invoke-interface {v0, p0}, Lcom/android/vending/ChainAction;->setNext(Lcom/android/vending/ChainAction;)V

    goto :goto_0
.end method

.method public setNext(Lcom/android/vending/ChainAction;)V
    .locals 0
    .param p1, "nextAction"    # Lcom/android/vending/ChainAction;

    .prologue
    .line 1459
    return-void
.end method

.method protected setViewOnClickListener(I)V
    .locals 1
    .param p1, "viewId"    # I

    .prologue
    .line 349
    invoke-virtual {p0, p1}, Lcom/android/vending/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    return-void
.end method

.method protected setViewOnClickListener(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 357
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    return-void
.end method

.method protected setupSlimTitleBar(Ljava/lang/CharSequence;Z)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "enableSearch"    # Z

    .prologue
    .line 756
    const v1, 0x7f0700fa

    invoke-virtual {p0, v1}, Lcom/android/vending/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/BaseActivity;->mMarketIcon:Landroid/view/View;

    .line 757
    iget-object v1, p0, Lcom/android/vending/BaseActivity;->mMarketIcon:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 758
    iget-object v1, p0, Lcom/android/vending/BaseActivity;->mMarketIcon:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 761
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 762
    const v1, 0x7f0700fb

    invoke-virtual {p0, v1}, Lcom/android/vending/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 763
    .local v0, "tv":Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 764
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 765
    const v1, 0x7f090004

    const v2, 0x7f090002

    invoke-static {v0, v1, v2}, Lcom/android/vending/BaseActivity;->scaleAppearance(Landroid/widget/TextView;II)V

    .line 769
    .end local v0    # "tv":Landroid/widget/TextView;
    :cond_1
    const v1, 0x7f0700fc

    invoke-virtual {p0, v1}, Lcom/android/vending/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/BaseActivity;->mSearchButton:Landroid/view/View;

    .line 770
    iget-object v1, p0, Lcom/android/vending/BaseActivity;->mSearchButton:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 771
    if-eqz p2, :cond_3

    .line 772
    iget-object v1, p0, Lcom/android/vending/BaseActivity;->mSearchButton:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 773
    iget-object v1, p0, Lcom/android/vending/BaseActivity;->mSearchButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 778
    :cond_2
    :goto_0
    return-void

    .line 775
    :cond_3
    iget-object v1, p0, Lcom/android/vending/BaseActivity;->mSearchButton:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showIndeterminateProgress(Lcom/android/vending/BaseActivity$BackendAction;)V
    .locals 1
    .param p1, "backendAction"    # Lcom/android/vending/BaseActivity$BackendAction;

    .prologue
    .line 1400
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/vending/BaseActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 1402
    return-void
.end method

.method public showRetryPanel(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 6

    .prologue
    .line 1409
    iget-object v1, p0, Lcom/android/vending/BaseActivity;->mRetryPanelAccessor:Lcom/android/vending/AlertUtil$MutableDialogAccessor;

    const v0, 0x7f06002d

    invoke-virtual {p0, v0}, Lcom/android/vending/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f06002c

    invoke-virtual {p0, v0}, Lcom/android/vending/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/android/vending/AlertUtil;->displayTitleMessageDialog(Lcom/android/vending/BaseActivity;Lcom/android/vending/AlertUtil$MutableDialogAccessor;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1411
    return-void
.end method

.method public showSoftKeyboard()V
    .locals 2

    .prologue
    .line 2187
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 2189
    return-void
.end method

.method public showWaitPanel(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 1352
    iget-boolean v0, p0, Lcom/android/vending/BaseActivity;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 1357
    :goto_0
    return-void

    .line 1355
    :cond_0
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mProgressDialogAccessor:Lcom/android/vending/BaseActivity$ProgressDialogAccessor;

    invoke-virtual {v0, p1}, Lcom/android/vending/BaseActivity$ProgressDialogAccessor;->setMessage(Ljava/lang/CharSequence;)V

    .line 1356
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mProgressDialogAccessor:Lcom/android/vending/BaseActivity$ProgressDialogAccessor;

    invoke-virtual {p0, v0}, Lcom/android/vending/BaseActivity;->displayDialog(Lcom/android/vending/controller/DialogAccessor;)V

    goto :goto_0
.end method

.method public startAction(Lcom/android/vending/BaseActivity$BaseAction;)V
    .locals 0
    .param p1, "action"    # Lcom/android/vending/BaseActivity$BaseAction;

    .prologue
    .line 374
    invoke-virtual {p1}, Lcom/android/vending/BaseActivity$BaseAction;->start()V

    .line 375
    return-void
.end method

.method protected startSetupActionChain(Z)V
    .locals 1
    .param p1, "firstrun"    # Z

    .prologue
    .line 631
    if-nez p1, :cond_1

    .line 632
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity;->doRetry()V

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    iget-boolean v0, p0, Lcom/android/vending/BaseActivity;->mTosActivityShown:Z

    if-nez v0, :cond_0

    .line 637
    sget-object v0, Lcom/android/vending/BaseActivity$AuthService;->ANDROID:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0, v0}, Lcom/android/vending/BaseActivity;->initiateGetAuthToken(Lcom/android/vending/BaseActivity$AuthService;)V

    goto :goto_0
.end method

.method public updateActivity(I)V
    .locals 0
    .param p1, "messageId"    # I

    .prologue
    .line 1373
    return-void
.end method

.method public abstract updateStateDependentUi(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
.end method
