.class public Lcom/android/vending/AssetBrowserActivity;
.super Lcom/android/vending/AssetListActivity;
.source "AssetBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/AssetBrowserActivity$NetworkDataLoadAction;,
        Lcom/android/vending/AssetBrowserActivity$LoadFeaturedAssetsAction;,
        Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;
    }
.end annotation


# instance fields
.field private mAppsButton:Landroid/widget/Button;

.field private mCarrierButton:Landroid/widget/Button;

.field private mCarrierInfo:Lcom/android/vending/model/GetCarrierInfoResponse;

.field private mCarrierInfoService:Lcom/android/vending/api/GetCarrierInfoService;

.field private mCategories:Lcom/android/vending/model/GetCategoriesResponse;

.field private mCategoriesService:Lcom/android/vending/api/GetCategoriesService;

.field private mDoneDisplay:Z

.field private mDownloadsButton:Landroid/widget/Button;

.field private volatile mFeaturedAppsInitialized:Z

.field private mGamesButton:Landroid/widget/Button;

.field private mHasMoreAssets:Z

.field private mHeader:Ljava/lang/String;

.field private mListTitleView:Landroid/view/View;

.field private mListType:Ljava/lang/Integer;

.field private mNumAssetsBeforeRequest:I

.field private mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/vending/AssetListActivity;-><init>()V

    .line 405
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/AssetBrowserActivity;)Lcom/android/vending/api/GetCategoriesService;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/AssetBrowserActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/vending/AssetBrowserActivity;->mCategoriesService:Lcom/android/vending/api/GetCategoriesService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/vending/AssetBrowserActivity;)Lcom/android/vending/api/GetCarrierInfoService;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/AssetBrowserActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/vending/AssetBrowserActivity;->mCarrierInfoService:Lcom/android/vending/api/GetCarrierInfoService;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/vending/AssetBrowserActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/AssetBrowserActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/vending/AssetBrowserActivity;->startCarouselLoading()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/vending/AssetBrowserActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/AssetBrowserActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/vending/AssetBrowserActivity;->mListTitleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/vending/AssetBrowserActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/AssetBrowserActivity;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/vending/AssetBrowserActivity;->mHasMoreAssets:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/vending/AssetBrowserActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/AssetBrowserActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/vending/AssetBrowserActivity;->mHasMoreAssets:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/vending/AssetBrowserActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/AssetBrowserActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/vending/AssetBrowserActivity;->tryInitialize()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/vending/AssetBrowserActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/AssetBrowserActivity;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/vending/AssetBrowserActivity;->mFeaturedAppsInitialized:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/vending/AssetBrowserActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/AssetBrowserActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/vending/AssetBrowserActivity;->mFeaturedAppsInitialized:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/vending/AssetBrowserActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/AssetBrowserActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/vending/AssetBrowserActivity;->tryDisplayUI()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/vending/AssetBrowserActivity;)Lcom/android/vending/model/GetCategoriesResponse;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/AssetBrowserActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/vending/AssetBrowserActivity;->mCategories:Lcom/android/vending/model/GetCategoriesResponse;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/vending/AssetBrowserActivity;Lcom/android/vending/model/GetCategoriesResponse;)Lcom/android/vending/model/GetCategoriesResponse;
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/AssetBrowserActivity;
    .param p1, "x1"    # Lcom/android/vending/model/GetCategoriesResponse;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/vending/AssetBrowserActivity;->mCategories:Lcom/android/vending/model/GetCategoriesResponse;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/vending/AssetBrowserActivity;)Lcom/android/vending/model/GetCarrierInfoResponse;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/AssetBrowserActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/vending/AssetBrowserActivity;->mCarrierInfo:Lcom/android/vending/model/GetCarrierInfoResponse;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/vending/AssetBrowserActivity;Lcom/android/vending/model/GetCarrierInfoResponse;)Lcom/android/vending/model/GetCarrierInfoResponse;
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/AssetBrowserActivity;
    .param p1, "x1"    # Lcom/android/vending/model/GetCarrierInfoResponse;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/vending/AssetBrowserActivity;->mCarrierInfo:Lcom/android/vending/model/GetCarrierInfoResponse;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/vending/AssetBrowserActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/AssetBrowserActivity;

    .prologue
    .line 47
    iget v0, p0, Lcom/android/vending/AssetBrowserActivity;->mNumAssetsBeforeRequest:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/vending/AssetBrowserActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/AssetBrowserActivity;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/android/vending/AssetBrowserActivity;->mNumAssetsBeforeRequest:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/vending/AssetBrowserActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/vending/AssetBrowserActivity;

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/android/vending/AssetBrowserActivity;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/android/vending/AssetBrowserActivity;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/AssetBrowserActivity;
    .param p1, "x1"    # J

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/android/vending/AssetBrowserActivity;->mStartTime:J

    return-wide p1
.end method

.method private handleAssetListClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .line 225
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 226
    .local v0, "asset":Lcom/android/vending/model/Asset;
    if-nez v0, :cond_0

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-virtual {v0, p0, p3}, Lcom/android/vending/model/Asset;->getViewInfoIntent(Lcom/android/vending/BaseActivity;I)Landroid/content/Intent;

    move-result-object v1

    .line 230
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/vending/AssetBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private startCarouselLoading()V
    .locals 6

    .prologue
    .line 436
    const v5, 0x7f070041

    invoke-virtual {p0, v5}, Lcom/android/vending/AssetBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/vending/velvet/CarouselView;

    .line 438
    .local v1, "carouselView":Lcom/android/vending/velvet/CarouselView;
    new-instance v5, Lcom/android/vending/AssetBrowserActivity$1;

    invoke-direct {v5, p0, v1}, Lcom/android/vending/AssetBrowserActivity$1;-><init>(Lcom/android/vending/AssetBrowserActivity;Lcom/android/vending/velvet/CarouselView;)V

    invoke-virtual {v1, v5}, Lcom/android/vending/velvet/CarouselView;->post(Ljava/lang/Runnable;)Z

    .line 445
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .local v3, "promotedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/vending/AssetBrowserActivity;->mCategories:Lcom/android/vending/model/GetCategoriesResponse;

    invoke-virtual {v5}, Lcom/android/vending/model/GetCategoriesResponse;->getTopLevelCategories()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/vending/model/GetCategoriesResponse$Category;

    .line 447
    .local v4, "topLevelCategory":Lcom/android/vending/model/GetCategoriesResponse$Category;
    invoke-virtual {v4}, Lcom/android/vending/model/GetCategoriesResponse$Category;->getPromotedAssetsNew()Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 449
    .end local v4    # "topLevelCategory":Lcom/android/vending/model/GetCategoriesResponse$Category;
    :cond_0
    new-instance v0, Lcom/android/vending/GetPromotedBitmapsAction;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v1, v3, v5}, Lcom/android/vending/GetPromotedBitmapsAction;-><init>(Lcom/android/vending/BaseActivity;Lcom/android/vending/velvet/CarouselView;Ljava/util/List;I)V

    .line 451
    .local v0, "carouselAction":Lcom/android/vending/GetPromotedBitmapsAction;
    invoke-virtual {v0}, Lcom/android/vending/GetPromotedBitmapsAction;->start()V

    .line 452
    return-void
.end method

.method private tryDisplayUI()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 469
    iget-boolean v5, p0, Lcom/android/vending/AssetBrowserActivity;->mDoneDisplay:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/vending/AssetBrowserActivity;->mCategories:Lcom/android/vending/model/GetCategoriesResponse;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/vending/AssetBrowserActivity;->mCarrierInfo:Lcom/android/vending/model/GetCarrierInfoResponse;

    if-nez v5, :cond_1

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    iget-object v5, p0, Lcom/android/vending/AssetBrowserActivity;->mCarrierInfo:Lcom/android/vending/model/GetCarrierInfoResponse;

    invoke-virtual {v5}, Lcom/android/vending/model/GetCarrierInfoResponse;->getCarrierTitle()Ljava/lang/String;

    move-result-object v2

    .line 474
    .local v2, "carrierTitle":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/vending/AssetBrowserActivity;->mCarrierInfo:Lcom/android/vending/model/GetCarrierInfoResponse;

    invoke-virtual {v5}, Lcom/android/vending/model/GetCarrierInfoResponse;->isCarrierChannelEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v2, :cond_4

    .line 475
    iget-object v5, p0, Lcom/android/vending/AssetBrowserActivity;->mCarrierButton:Landroid/widget/Button;

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 478
    iget-object v5, p0, Lcom/android/vending/AssetBrowserActivity;->mCarrierInfo:Lcom/android/vending/model/GetCarrierInfoResponse;

    invoke-virtual {v5}, Lcom/android/vending/model/GetCarrierInfoResponse;->getCarrierLogoIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 479
    .local v1, "carrierLogo":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/vending/AssetBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v5

    .line 482
    .local v0, "carrierDrawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v0, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 484
    iget-object v5, p0, Lcom/android/vending/AssetBrowserActivity;->mCarrierButton:Landroid/widget/Button;

    invoke-virtual {v5, v9, v0, v9, v9}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 486
    iget-object v5, p0, Lcom/android/vending/AssetBrowserActivity;->mCarrierButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 487
    iget-object v5, p0, Lcom/android/vending/AssetBrowserActivity;->mDownloadsButton:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 493
    .end local v0    # "carrierDrawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "carrierLogo":Landroid/graphics/Bitmap;
    :goto_2
    const v5, 0x7f070040

    invoke-virtual {p0, v5}, Lcom/android/vending/AssetBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 494
    .local v4, "mainContentView":Landroid/view/View;
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 495
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 496
    const v5, 0x7f070047

    invoke-virtual {p0, v5}, Lcom/android/vending/AssetBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 497
    const v5, 0x7f0700d3

    invoke-virtual {p0, v5}, Lcom/android/vending/AssetBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 499
    iget-object v5, p0, Lcom/android/vending/AssetBrowserActivity;->mHeader:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/vending/util/Util;->isEmptyOrSpaces(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 501
    const v5, 0x7f0700bf

    invoke-virtual {p0, v5}, Lcom/android/vending/AssetBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 502
    .local v3, "headerView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/vending/AssetBrowserActivity;->mHeader:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    .end local v3    # "headerView":Landroid/widget/TextView;
    :cond_2
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/vending/AssetBrowserActivity;->mDoneDisplay:Z

    goto :goto_0

    .line 479
    .end local v4    # "mainContentView":Landroid/view/View;
    .restart local v1    # "carrierLogo":Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {p0}, Lcom/android/vending/AssetBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02005d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v0, v5

    goto :goto_1

    .line 489
    .end local v1    # "carrierLogo":Landroid/graphics/Bitmap;
    :cond_4
    iget-object v5, p0, Lcom/android/vending/AssetBrowserActivity;->mCarrierButton:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 490
    iget-object v5, p0, Lcom/android/vending/AssetBrowserActivity;->mDownloadsButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2
.end method

.method private tryInitialize()V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/vending/AssetBrowserActivity;->mCategoriesService:Lcom/android/vending/api/GetCategoriesService;

    invoke-virtual {v0}, Lcom/android/vending/api/GetCategoriesService;->getResponse()Lcom/android/vending/model/GetCategoriesResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AssetBrowserActivity;->mCategories:Lcom/android/vending/model/GetCategoriesResponse;

    .line 460
    iget-object v0, p0, Lcom/android/vending/AssetBrowserActivity;->mCarrierInfoService:Lcom/android/vending/api/GetCarrierInfoService;

    invoke-virtual {v0}, Lcom/android/vending/api/GetCarrierInfoService;->getResponse()Lcom/android/vending/model/GetCarrierInfoResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AssetBrowserActivity;->mCarrierInfo:Lcom/android/vending/model/GetCarrierInfoResponse;

    .line 461
    iget-object v0, p0, Lcom/android/vending/AssetBrowserActivity;->mAssetService:Lcom/android/vending/api/AssetService;

    invoke-virtual {v0}, Lcom/android/vending/api/AssetService;->getHeader()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AssetBrowserActivity;->mHeader:Ljava/lang/String;

    .line 462
    iget-object v0, p0, Lcom/android/vending/AssetBrowserActivity;->mAssetService:Lcom/android/vending/api/AssetService;

    invoke-virtual {v0}, Lcom/android/vending/api/AssetService;->getListType()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AssetBrowserActivity;->mListType:Ljava/lang/Integer;

    .line 463
    return-void
.end method


# virtual methods
.method protected createPaginationAwareAction()Lcom/android/vending/AssetListActivity$PaginationAwareAction;
    .locals 1

    .prologue
    .line 553
    new-instance v0, Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;

    invoke-direct {v0, p0, p0}, Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;-><init>(Lcom/android/vending/AssetBrowserActivity;Lcom/android/vending/AssetBrowserActivity;)V

    return-object v0
.end method

.method public getAssetRequest()Lcom/android/vending/model/AssetRequest;
    .locals 3

    .prologue
    .line 539
    iget-object v1, p0, Lcom/android/vending/AssetBrowserActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v1}, Lcom/android/vending/AssetItemAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/android/vending/AssetBrowserActivity;->mNumAssetsBeforeRequest:I

    .line 542
    new-instance v0, Lcom/android/vending/model/AssetRequest;

    invoke-direct {v0}, Lcom/android/vending/model/AssetRequest;-><init>()V

    .line 543
    .local v0, "assetRequest":Lcom/android/vending/model/AssetRequest;
    sget-object v1, Lcom/android/vending/model/AssetRequest$SortOrderType;->FEATURED:Lcom/android/vending/model/AssetRequest$SortOrderType;

    invoke-virtual {v0, v1}, Lcom/android/vending/model/AssetRequest;->setSortOrder(Lcom/android/vending/model/AssetRequest$SortOrderType;)V

    .line 544
    iget-object v1, p0, Lcom/android/vending/AssetBrowserActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v1}, Lcom/android/vending/AssetItemAdapter;->getCount()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/model/AssetRequest;->setStartIndex(J)V

    .line 545
    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/model/AssetRequest;->setNumEntries(J)V

    .line 546
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/AssetRequest;->setRetrieveExtendedInfo(Z)V

    .line 548
    return-object v0
.end method

.method public getReferrerUri(I)Landroid/net/Uri;
    .locals 4
    .param p1, "rowIndex"    # I

    .prologue
    const/4 v3, 0x0

    .line 212
    const-string v1, "home"

    const/4 v2, 0x1

    sub-int v2, p1, v2

    invoke-static {v1, v3, v3, v2}, Lcom/android/vending/AssetInfoActivity;->getReferrer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 214
    .local v0, "builder":Landroid/net/Uri$Builder;
    iget-object v1, p0, Lcom/android/vending/AssetBrowserActivity;->mListType:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 215
    const-string v1, "listtype"

    iget-object v2, p0, Lcom/android/vending/AssetBrowserActivity;->mListType:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 217
    :cond_0
    const-string v1, "sortorder"

    sget-object v2, Lcom/android/vending/model/AssetRequest$SortOrderType;->FEATURED:Lcom/android/vending/model/AssetRequest$SortOrderType;

    invoke-virtual {v2}, Lcom/android/vending/model/AssetRequest$SortOrderType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 218
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method protected isAlwaysShowListHeaders()Z
    .locals 2

    .prologue
    .line 528
    const v1, 0x7f070040

    invoke-virtual {p0, v1}, Lcom/android/vending/AssetBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 529
    .local v0, "carousel":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/FrameLayout;

    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const-class v3, Lcom/android/vending/CategoriesWithAppsListActivity;

    const-string v2, "android.intent.action.VIEW"

    .line 182
    iget-object v0, p0, Lcom/android/vending/AssetBrowserActivity;->mAppsButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 183
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    const-class v1, Lcom/android/vending/CategoriesWithAppsListActivity;

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 185
    const-string v1, "vnd.android.cursor.dir/vending_applications"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    invoke-virtual {p0, v0}, Lcom/android/vending/AssetBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 203
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/vending/AssetBrowserActivity;->mGamesButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 188
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    const-class v1, Lcom/android/vending/CategoriesWithAppsListActivity;

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 190
    const-string v1, "vnd.android.cursor.dir/vending_games"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    invoke-virtual {p0, v0}, Lcom/android/vending/AssetBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/android/vending/AssetBrowserActivity;->mCarrierButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 193
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    const-class v1, Lcom/android/vending/CarrierChannelActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 195
    invoke-virtual {p0, v0}, Lcom/android/vending/AssetBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/android/vending/AssetBrowserActivity;->mDownloadsButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 197
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    const-class v1, Lcom/android/vending/MyDownloadsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 199
    invoke-virtual {p0, v0}, Lcom/android/vending/AssetBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 201
    :cond_3
    invoke-super {p0, p1}, Lcom/android/vending/AssetListActivity;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 101
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/vending/AssetBrowserActivity;->mStartTime:J

    .line 102
    invoke-super {p0, p1}, Lcom/android/vending/AssetListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/vending/AssetBrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 106
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f070040

    invoke-virtual {p0, v3}, Lcom/android/vending/AssetBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 107
    .local v0, "carousel":Landroid/view/View;
    instance-of v3, v0, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_0

    .line 108
    const v3, 0x7f030020

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 109
    .local v1, "carouselHeaderView":Landroid/view/View;
    const v3, 0x7f0700bf

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vending/AssetBrowserActivity;->mListTitleView:Landroid/view/View;

    .line 110
    iget-object v3, p0, Lcom/android/vending/AssetBrowserActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1, v5, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 119
    .end local v0    # "carousel":Landroid/view/View;
    .end local v1    # "carouselHeaderView":Landroid/view/View;
    :goto_0
    const v3, 0x7f0601a4

    invoke-virtual {p0, v3}, Lcom/android/vending/AssetBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3, v7}, Lcom/android/vending/AssetBrowserActivity;->setupSlimTitleBar(Ljava/lang/CharSequence;Z)V

    .line 121
    iget-object v3, p0, Lcom/android/vending/AssetBrowserActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 123
    const v3, 0x7f07007d

    invoke-virtual {p0, v3}, Lcom/android/vending/AssetBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/vending/AssetBrowserActivity;->mAppsButton:Landroid/widget/Button;

    .line 124
    iget-object v3, p0, Lcom/android/vending/AssetBrowserActivity;->mAppsButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v3, 0x7f07007e

    invoke-virtual {p0, v3}, Lcom/android/vending/AssetBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/vending/AssetBrowserActivity;->mGamesButton:Landroid/widget/Button;

    .line 127
    iget-object v3, p0, Lcom/android/vending/AssetBrowserActivity;->mGamesButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    const v3, 0x7f07007f

    invoke-virtual {p0, v3}, Lcom/android/vending/AssetBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/vending/AssetBrowserActivity;->mCarrierButton:Landroid/widget/Button;

    .line 130
    iget-object v3, p0, Lcom/android/vending/AssetBrowserActivity;->mCarrierButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    const v3, 0x7f070080

    invoke-virtual {p0, v3}, Lcom/android/vending/AssetBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/vending/AssetBrowserActivity;->mDownloadsButton:Landroid/widget/Button;

    .line 133
    iget-object v3, p0, Lcom/android/vending/AssetBrowserActivity;->mDownloadsButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    invoke-virtual {p0}, Lcom/android/vending/AssetBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/vending/AssetBrowserActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 138
    new-instance v3, Lcom/android/vending/api/GetCarrierInfoService;

    iget-object v4, p0, Lcom/android/vending/AssetBrowserActivity;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-direct {v3, v4}, Lcom/android/vending/api/GetCarrierInfoService;-><init>(Lcom/android/vending/api/RequestManager;)V

    iput-object v3, p0, Lcom/android/vending/AssetBrowserActivity;->mCarrierInfoService:Lcom/android/vending/api/GetCarrierInfoService;

    .line 139
    new-instance v3, Lcom/android/vending/api/GetCategoriesService;

    iget-object v4, p0, Lcom/android/vending/AssetBrowserActivity;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-direct {v3, v4}, Lcom/android/vending/api/GetCategoriesService;-><init>(Lcom/android/vending/api/RequestManager;)V

    iput-object v3, p0, Lcom/android/vending/AssetBrowserActivity;->mCategoriesService:Lcom/android/vending/api/GetCategoriesService;

    .line 141
    invoke-super {p0}, Lcom/android/vending/AssetListActivity;->finishSetup()V

    .line 143
    iput-boolean v7, p0, Lcom/android/vending/AssetBrowserActivity;->mHasMoreAssets:Z

    .line 144
    new-instance v3, Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;

    invoke-direct {v3, p0, p0}, Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;-><init>(Lcom/android/vending/AssetBrowserActivity;Lcom/android/vending/AssetBrowserActivity;)V

    invoke-virtual {p0, v3}, Lcom/android/vending/AssetBrowserActivity;->setAutoStartAction(Lcom/android/vending/BaseActivity$BaseAction;)V

    .line 145
    if-nez p1, :cond_1

    move v3, v7

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/vending/AssetBrowserActivity;->startSetupActionChain(Z)V

    .line 146
    return-void

    .line 114
    .restart local v0    # "carousel":Landroid/view/View;
    :cond_0
    const v3, 0x7f030034

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vending/AssetBrowserActivity;->mListTitleView:Landroid/view/View;

    .line 115
    iget-object v3, p0, Lcom/android/vending/AssetBrowserActivity;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/vending/AssetBrowserActivity;->mListTitleView:Landroid/view/View;

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 116
    check-cast v0, Lcom/android/vending/velvet/OverlappingLayout;

    .end local v0    # "carousel":Landroid/view/View;
    iget-object v3, p0, Lcom/android/vending/AssetBrowserActivity;->mListTitleView:Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/android/vending/velvet/OverlappingLayout;->setCarouselPadder(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_1
    move v3, v6

    .line 145
    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 206
    invoke-direct/range {p0 .. p5}, Lcom/android/vending/AssetBrowserActivity;->handleAssetListClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 207
    return-void
.end method

.method public onLookupAssetsComplete()V
    .locals 0

    .prologue
    .line 534
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 155
    invoke-super {p0, p1}, Lcom/android/vending/AssetListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 156
    invoke-virtual {p0, p1}, Lcom/android/vending/AssetBrowserActivity;->setIntent(Landroid/content/Intent;)V

    .line 158
    invoke-virtual {p0, p1}, Lcom/android/vending/AssetBrowserActivity;->maybeDisplayMessage(Landroid/content/Intent;)V

    .line 159
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 172
    invoke-super {p0}, Lcom/android/vending/AssetListActivity;->onPause()V

    .line 174
    const v1, 0x7f070041

    invoke-virtual {p0, v1}, Lcom/android/vending/AssetBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/vending/velvet/CarouselView;

    .line 175
    .local v0, "carouselView":Lcom/android/vending/velvet/CarouselView;
    invoke-virtual {v0}, Lcom/android/vending/velvet/CarouselView;->onPause()V

    .line 176
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 163
    invoke-super {p0}, Lcom/android/vending/AssetListActivity;->onResume()V

    .line 166
    const v1, 0x7f070041

    invoke-virtual {p0, v1}, Lcom/android/vending/AssetBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/vending/velvet/CarouselView;

    .line 167
    .local v0, "carouselView":Lcom/android/vending/velvet/CarouselView;
    invoke-virtual {v0}, Lcom/android/vending/velvet/CarouselView;->onResume()V

    .line 168
    return-void
.end method

.method protected setupContentView()V
    .locals 1

    .prologue
    .line 150
    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetBrowserActivity;->setContentView(I)V

    .line 151
    return-void
.end method
