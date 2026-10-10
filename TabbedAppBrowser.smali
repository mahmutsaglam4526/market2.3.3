.class public Lcom/android/vending/TabbedAppBrowser;
.super Landroid/app/ActivityGroup;
.source "TabbedAppBrowser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static sCurrentTab:Ljava/lang/String;


# instance fields
.field private mButtonStrip:Landroid/widget/RadioGroup;

.field private mMarketIcon:Landroid/view/View;

.field private mSearchButton:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string v0, "0"

    sput-object v0, Lcom/android/vending/TabbedAppBrowser;->sCurrentTab:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/TabbedAppBrowser;)Landroid/app/LocalActivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/TabbedAppBrowser;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/vending/TabbedAppBrowser;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 41
    sput-object p0, Lcom/android/vending/TabbedAppBrowser;->sCurrentTab:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/vending/TabbedAppBrowser;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/TabbedAppBrowser;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/vending/TabbedAppBrowser;->invalidateArcViewParent(Landroid/view/View;)V

    return-void
.end method

.method private createFilteredListLaunchIntent(Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/model/AssetRequest$ViewFilterType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/AssetTypeData;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 193
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 194
    const-class v1, Lcom/android/vending/FilteredAppListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 195
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const-string v1, "sort"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const-string v1, "asset_category"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string v1, "asset_category_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const-string v1, "view_filter"

    invoke-virtual {p3}, Lcom/android/vending/model/AssetRequest$ViewFilterType;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {p7, v2, p0}, Lcom/android/vending/AssetTypeData;->getString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/android/vending/model/AssetRequest$ViewFilterType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 205
    const-string v2, "referrer"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    if-eqz p5, :cond_0

    .line 208
    const-string v1, "ranking_type"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    :cond_0
    return-object v0

    :cond_1
    move-object v2, p2

    .line 202
    goto :goto_0
.end method

.method private initTab(Landroid/view/ViewGroup;Ljava/lang/String;ILandroid/content/Intent;)V
    .locals 4
    .param p1, "browseTabs"    # Landroid/view/ViewGroup;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "labelId"    # I
    .param p4, "tabIntent"    # Landroid/content/Intent;

    .prologue
    .line 129
    const v1, 0x7f03002e

    invoke-virtual {p0}, Lcom/android/vending/TabbedAppBrowser;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vending/TabbedAppBrowser;->mButtonStrip:Landroid/widget/RadioGroup;

    invoke-static {v1, v2, v3}, Lcom/android/vending/util/Util;->inflateView(ILandroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 131
    .local v0, "radioButton":Landroid/widget/RadioButton;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setId(I)V

    .line 132
    invoke-virtual {v0, p3}, Landroid/widget/RadioButton;->setText(I)V

    .line 134
    new-instance v1, Lcom/android/vending/TabbedAppBrowser$1;

    invoke-direct {v1, p0, v0, p2, p4}, Lcom/android/vending/TabbedAppBrowser$1;-><init>(Lcom/android/vending/TabbedAppBrowser;Landroid/widget/RadioButton;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 172
    new-instance v1, Lcom/android/vending/TabbedAppBrowser$2;

    invoke-direct {v1, p0}, Lcom/android/vending/TabbedAppBrowser$2;-><init>(Lcom/android/vending/TabbedAppBrowser;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 178
    new-instance v1, Lcom/android/vending/TabbedAppBrowser$3;

    invoke-direct {v1, p0}, Lcom/android/vending/TabbedAppBrowser$3;-><init>(Lcom/android/vending/TabbedAppBrowser;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 183
    iget-object v1, p0, Lcom/android/vending/TabbedAppBrowser;->mButtonStrip:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 184
    return-void
.end method

.method private invalidateArcViewParent(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 263
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 264
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_0

    .line 265
    instance-of v1, v0, Lcom/android/vending/velvet/ArcView;

    if-eqz v1, :cond_1

    .line 266
    check-cast v0, Lcom/android/vending/velvet/ArcView;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v0}, Lcom/android/vending/velvet/ArcView;->invalidate()V

    .line 271
    :cond_0
    return-void

    .line 269
    .restart local v0    # "parent":Landroid/view/ViewParent;
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/vending/TabbedAppBrowser;->mMarketIcon:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 215
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    const-class v1, Lcom/android/vending/AssetBrowserActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 217
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 218
    invoke-virtual {p0, v0}, Lcom/android/vending/TabbedAppBrowser;->startActivity(Landroid/content/Intent;)V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/android/vending/TabbedAppBrowser;->mSearchButton:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/android/vending/TabbedAppBrowser;->onSearchRequested()Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 28
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super/range {p0 .. p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/vending/TabbedAppBrowser;->requestWindowFeature(I)Z

    .line 67
    const v5, 0x7f030021

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/vending/TabbedAppBrowser;->setContentView(I)V

    .line 69
    const v5, 0x7f0700fa

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/vending/TabbedAppBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/vending/TabbedAppBrowser;->mMarketIcon:Landroid/view/View;

    .line 70
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/TabbedAppBrowser;->mMarketIcon:Landroid/view/View;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const v5, 0x7f0700fc

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/vending/TabbedAppBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/vending/TabbedAppBrowser;->mSearchButton:Landroid/view/View;

    .line 73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/TabbedAppBrowser;->mSearchButton:Landroid/view/View;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    sget-object v5, Lcom/android/vending/compat/VendingGservicesKeys;->VENDING_TAB_1_RANKING_TYPE:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v5}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 76
    .local v10, "popularRankingType":Ljava/lang/String;
    sget-object v5, Lcom/android/vending/compat/VendingGservicesKeys;->VENDING_TAB_2_RANKING_TYPE:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v5}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 78
    .local v18, "newestRankingType":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/TabbedAppBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v24

    .line 79
    .local v24, "intent":Landroid/content/Intent;
    const-string v5, "asset_category"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 80
    .local v6, "category":Ljava/lang/String;
    const-string v5, "asset_category_id"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 81
    .local v7, "categoryId":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v11

    .line 82
    .local v11, "intentCategory":Ljava/lang/String;
    invoke-static {v11}, Lcom/android/vending/AssetTypeData;->getAssetForMimeType(Ljava/lang/String;)Lcom/android/vending/AssetTypeData;

    move-result-object v12

    .line 84
    .local v12, "assetType":Lcom/android/vending/AssetTypeData;
    const v5, 0x7f0700fb

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/vending/TabbedAppBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 85
    .local v27, "titleTextView":Landroid/widget/TextView;
    move-object/from16 v0, v27

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    const v5, 0x7f090004

    const v8, 0x7f090002

    move-object/from16 v0, v27

    move v1, v5

    move v2, v8

    invoke-static {v0, v1, v2}, Lcom/android/vending/BaseActivity;->scaleAppearance(Landroid/widget/TextView;II)V

    .line 89
    const v5, 0x7f070085

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/vending/TabbedAppBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/view/ViewGroup;

    .line 90
    .local v21, "browseTabs":Landroid/view/ViewGroup;
    const v5, 0x7f070084

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/vending/TabbedAppBrowser;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1    # "icicle":Landroid/os/Bundle;
    check-cast p1, Landroid/widget/RadioGroup;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/vending/TabbedAppBrowser;->mButtonStrip:Landroid/widget/RadioGroup;

    .line 93
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/TabbedAppBrowser;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/vending/VendingApplication;->getMetadata(Landroid/content/Context;)Lcom/android/vending/VendingApplicationMetadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/vending/VendingApplicationMetadata;->getPaidAppsEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 95
    sget-object v8, Lcom/android/vending/model/AssetRequest$ViewFilterType;->PAID:Lcom/android/vending/model/AssetRequest$ViewFilterType;

    const-string v9, "popular"

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/android/vending/TabbedAppBrowser;->createFilteredListLaunchIntent(Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/model/AssetRequest$ViewFilterType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/AssetTypeData;)Landroid/content/Intent;

    move-result-object v26

    .line 99
    .local v26, "paidAppsIntent":Landroid/content/Intent;
    const-string v5, "0"

    const v8, 0x7f06014f

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object v2, v5

    move v3, v8

    move-object/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/vending/TabbedAppBrowser;->initTab(Landroid/view/ViewGroup;Ljava/lang/String;ILandroid/content/Intent;)V

    .line 103
    .end local v26    # "paidAppsIntent":Landroid/content/Intent;
    :cond_0
    sget-object v8, Lcom/android/vending/model/AssetRequest$ViewFilterType;->FREE:Lcom/android/vending/model/AssetRequest$ViewFilterType;

    const-string v9, "popular"

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/android/vending/TabbedAppBrowser;->createFilteredListLaunchIntent(Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/model/AssetRequest$ViewFilterType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/AssetTypeData;)Landroid/content/Intent;

    move-result-object v23

    .line 106
    .local v23, "freeAppsIntent":Landroid/content/Intent;
    const-string v5, "1"

    const v8, 0x7f060150

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object v2, v5

    move v3, v8

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/vending/TabbedAppBrowser;->initTab(Landroid/view/ViewGroup;Ljava/lang/String;ILandroid/content/Intent;)V

    .line 109
    sget-object v16, Lcom/android/vending/model/AssetRequest$ViewFilterType;->ALL:Lcom/android/vending/model/AssetRequest$ViewFilterType;

    const-string v17, "newest"

    move-object/from16 v13, p0

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    invoke-direct/range {v13 .. v20}, Lcom/android/vending/TabbedAppBrowser;->createFilteredListLaunchIntent(Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/model/AssetRequest$ViewFilterType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/AssetTypeData;)Landroid/content/Intent;

    move-result-object v25

    .line 112
    .local v25, "justInAppsIntent":Landroid/content/Intent;
    const-string v5, "2"

    const v6, 0x7f060151

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object v2, v5

    move v3, v6

    move-object/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/vending/TabbedAppBrowser;->initTab(Landroid/view/ViewGroup;Ljava/lang/String;ILandroid/content/Intent;)V

    .line 114
    .end local v6    # "category":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/TabbedAppBrowser;->mButtonStrip:Landroid/widget/RadioGroup;

    move-object v5, v0

    sget-object v6, Lcom/android/vending/TabbedAppBrowser;->sCurrentTab:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/RadioGroup;->check(I)V

    .line 121
    const v5, 0x7f070040

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/vending/TabbedAppBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 122
    .local v22, "carousel":Landroid/view/View;
    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/android/vending/velvet/LandscapeOverlappingLayout;

    move v5, v0

    if-eqz v5, :cond_1

    .line 123
    check-cast v22, Lcom/android/vending/velvet/OverlappingLayout;

    .end local v22    # "carousel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/TabbedAppBrowser;->mButtonStrip:Landroid/widget/RadioGroup;

    move-object v5, v0

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/vending/velvet/OverlappingLayout;->setCarouselPadder(Landroid/view/View;)V

    .line 125
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/android/vending/TabbedAppBrowser;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 280
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 282
    const v1, 0x7f070119

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    sget-object v2, Lcom/android/vending/compat/VendingGservicesKeys;->VENDING_ENABLE_DEBUG_INFO:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v2}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/android/vending/TabbedAppBrowser;
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 285
    const/4 v1, 0x1

    return v1
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 290
    invoke-static {p0, p1, p2}, Lcom/android/vending/BaseActivity;->onMenuItemSelected(Landroid/app/Activity;ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    const/4 v0, 0x1

    .line 294
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ActivityGroup;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 236
    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    .line 238
    const v1, 0x7f070041

    invoke-virtual {p0, v1}, Lcom/android/vending/TabbedAppBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/vending/velvet/CarouselView;

    .line 239
    .local v0, "carouselView":Lcom/android/vending/velvet/CarouselView;
    if-nez v0, :cond_0

    .line 243
    :goto_0
    return-void

    .line 242
    :cond_0
    invoke-virtual {v0}, Lcom/android/vending/velvet/CarouselView;->onPause()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 247
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 248
    iget-object v1, p0, Lcom/android/vending/TabbedAppBrowser;->mSearchButton:Landroid/view/View;

    const/high16 v2, 0x7f090000

    invoke-static {v1, v2}, Lcom/android/vending/BaseActivity;->addTouchDelegate(Landroid/view/View;I)V

    .line 250
    const v1, 0x7f070041

    invoke-virtual {p0, v1}, Lcom/android/vending/TabbedAppBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/vending/velvet/CarouselView;

    .line 251
    .local v0, "carouselView":Lcom/android/vending/velvet/CarouselView;
    if-nez v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 254
    :cond_0
    invoke-virtual {v0}, Lcom/android/vending/velvet/CarouselView;->onResume()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/android/vending/TabbedAppBrowser;->getChangingConfigurations()I

    move-result v0

    if-lez v0, :cond_0

    .line 228
    invoke-static {}, Lcom/android/vending/BaseActivity;->cancelMarketLeaving()V

    .line 231
    :cond_0
    invoke-super {p0}, Landroid/app/ActivityGroup;->onStop()V

    .line 232
    return-void
.end method
