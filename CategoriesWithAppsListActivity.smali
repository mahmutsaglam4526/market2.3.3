.class public Lcom/android/vending/CategoriesWithAppsListActivity;
.super Lcom/android/vending/BaseActivity;
.source "CategoriesWithAppsListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/CategoriesWithAppsListActivity$GetSubCategoriesAction;
    }
.end annotation


# instance fields
.field private mAssetTypeData:Lcom/android/vending/AssetTypeData;

.field private mListView:Landroid/widget/ListView;

.field private mNoSubCategoriesView:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/vending/BaseActivity;-><init>()V

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/CategoriesWithAppsListActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/CategoriesWithAppsListActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/vending/CategoriesWithAppsListActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/vending/CategoriesWithAppsListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/CategoriesWithAppsListActivity;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/vending/CategoriesWithAppsListActivity;->showMainContentView()V

    return-void
.end method

.method private showMainContentView()V
    .locals 2

    .prologue
    .line 125
    const v0, 0x7f070040

    invoke-virtual {p0, v0}, Lcom/android/vending/CategoriesWithAppsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 126
    const v0, 0x7f0700d3

    invoke-virtual {p0, v0}, Lcom/android/vending/CategoriesWithAppsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 127
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 47
    invoke-super {p0, p1}, Lcom/android/vending/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0, v6}, Lcom/android/vending/CategoriesWithAppsListActivity;->requestWindowFeature(I)Z

    .line 49
    const v4, 0x7f03001d

    invoke-virtual {p0, v4}, Lcom/android/vending/CategoriesWithAppsListActivity;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Lcom/android/vending/CategoriesWithAppsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/vending/AssetTypeData;->getAssetForMimeType(Ljava/lang/String;)Lcom/android/vending/AssetTypeData;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vending/CategoriesWithAppsListActivity;->mAssetTypeData:Lcom/android/vending/AssetTypeData;

    .line 52
    iget-object v4, p0, Lcom/android/vending/CategoriesWithAppsListActivity;->mAssetTypeData:Lcom/android/vending/AssetTypeData;

    invoke-virtual {v4}, Lcom/android/vending/AssetTypeData;->getAssetType()Lcom/android/vending/model/Asset$AssetType;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/vending/CategoriesWithAppsListActivity;->setAssetType(Lcom/android/vending/model/Asset$AssetType;)V

    .line 53
    iget-object v4, p0, Lcom/android/vending/CategoriesWithAppsListActivity;->mAssetTypeData:Lcom/android/vending/AssetTypeData;

    invoke-virtual {v4, v6, p0}, Lcom/android/vending/AssetTypeData;->getString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "title":Ljava/lang/String;
    invoke-virtual {p0, v3, v6}, Lcom/android/vending/CategoriesWithAppsListActivity;->setupSlimTitleBar(Ljava/lang/CharSequence;Z)V

    .line 57
    const v4, 0x7f070048

    invoke-virtual {p0, v4}, Lcom/android/vending/CategoriesWithAppsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/vending/CategoriesWithAppsListActivity;->mListView:Landroid/widget/ListView;

    .line 58
    const v4, 0x7f070040

    invoke-virtual {p0, v4}, Lcom/android/vending/CategoriesWithAppsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 59
    .local v1, "carousel":Landroid/view/View;
    instance-of v4, v1, Lcom/android/vending/velvet/OverlappingLayout;

    if-eqz v4, :cond_0

    .line 60
    check-cast v1, Lcom/android/vending/velvet/OverlappingLayout;

    .end local v1    # "carousel":Landroid/view/View;
    iget-object v4, p0, Lcom/android/vending/CategoriesWithAppsListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Lcom/android/vending/velvet/OverlappingLayout;->setEmptyListCarouselPadder(Landroid/widget/ListView;)V

    .line 63
    :cond_0
    iget-object v4, p0, Lcom/android/vending/CategoriesWithAppsListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 64
    const v4, 0x7f070049

    invoke-virtual {p0, v4}, Lcom/android/vending/CategoriesWithAppsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/android/vending/CategoriesWithAppsListActivity;->mNoSubCategoriesView:Landroid/widget/FrameLayout;

    .line 65
    iget-object v4, p0, Lcom/android/vending/CategoriesWithAppsListActivity;->mNoSubCategoriesView:Landroid/widget/FrameLayout;

    const v5, 0x7f07004a

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 66
    .local v2, "emptyText":Landroid/widget/TextView;
    const v4, 0x7f060175

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 67
    iget-object v4, p0, Lcom/android/vending/CategoriesWithAppsListActivity;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/vending/CategoriesWithAppsListActivity;->mNoSubCategoriesView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 69
    new-instance v0, Lcom/android/vending/CategoriesWithAppsListActivity$GetSubCategoriesAction;

    invoke-direct {v0, p0, p0}, Lcom/android/vending/CategoriesWithAppsListActivity$GetSubCategoriesAction;-><init>(Lcom/android/vending/CategoriesWithAppsListActivity;Lcom/android/vending/BaseActivity;)V

    .line 70
    .local v0, "action":Lcom/android/vending/CategoriesWithAppsListActivity$GetSubCategoriesAction;
    invoke-virtual {v0}, Lcom/android/vending/CategoriesWithAppsListActivity$GetSubCategoriesAction;->tryLoadFromCacheAndDisplay()V

    .line 71
    invoke-virtual {p0, v0}, Lcom/android/vending/CategoriesWithAppsListActivity;->setAutoStartAction(Lcom/android/vending/BaseActivity$BaseAction;)V

    .line 72
    if-nez p1, :cond_1

    move v4, v6

    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/vending/CategoriesWithAppsListActivity;->startSetupActionChain(Z)V

    .line 73
    return-void

    .line 72
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/GetCategoriesResponse$Category;

    .line 107
    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 111
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    const-class v2, Lcom/android/vending/TabbedAppBrowser;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 113
    iget-object v2, p0, Lcom/android/vending/CategoriesWithAppsListActivity;->mAssetType:Lcom/android/vending/model/Asset$AssetType;

    invoke-virtual {v2}, Lcom/android/vending/model/Asset$AssetType;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string v2, "asset_category"

    invoke-virtual {v0}, Lcom/android/vending/model/GetCategoriesResponse$Category;->getCategoryDisplay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    invoke-virtual {v0}, Lcom/android/vending/model/GetCategoriesResponse$Category;->getCategoryId()Ljava/lang/String;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_1

    .line 117
    const-string v2, "asset_category_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/vending/CategoriesWithAppsListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Lcom/android/vending/BaseActivity;->onPause()V

    .line 91
    const v1, 0x7f070041

    invoke-virtual {p0, v1}, Lcom/android/vending/CategoriesWithAppsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/vending/velvet/CarouselView;

    .line 92
    .local v0, "carouselView":Lcom/android/vending/velvet/CarouselView;
    if-nez v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-virtual {v0}, Lcom/android/vending/velvet/CarouselView;->onPause()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Lcom/android/vending/BaseActivity;->onResume()V

    .line 80
    const v1, 0x7f070041

    invoke-virtual {p0, v1}, Lcom/android/vending/CategoriesWithAppsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/vending/velvet/CarouselView;

    .line 81
    .local v0, "carouselView":Lcom/android/vending/velvet/CarouselView;
    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-virtual {v0}, Lcom/android/vending/velvet/CarouselView;->onResume()V

    goto :goto_0
.end method

.method public updateStateDependentUi(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
    .locals 0
    .param p1, "assetId"    # Ljava/lang/String;
    .param p2, "newState"    # Lcom/android/vending/model/LocalAssetInfo$AssetState;

    .prologue
    .line 103
    return-void
.end method
