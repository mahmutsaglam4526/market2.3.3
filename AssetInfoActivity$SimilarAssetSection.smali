.class Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;
.super Lcom/android/vending/AssetInfoActivity$Section;
.source "AssetInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AssetInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimilarAssetSection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/AssetInfoActivity$SimilarAssetSection$LoadSimilarAssetsAction;
    }
.end annotation


# instance fields
.field private mAssetsContainer:Landroid/widget/LinearLayout;

.field private mAssetsLoadingIndicator:Landroid/view/View;

.field private mMoreAssets:Landroid/widget/LinearLayout;

.field private mNoSimilarAssets:Landroid/widget/TextView;

.field private mSimilarAssetsAdapter:Lcom/android/vending/AssetItemAdapter;

.field private mSimilarLoaded:Z

.field final synthetic this$0:Lcom/android/vending/AssetInfoActivity;


# direct methods
.method public constructor <init>(Lcom/android/vending/AssetInfoActivity;)V
    .locals 2

    .prologue
    .line 2457
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/vending/AssetInfoActivity$Section;-><init>(Lcom/android/vending/AssetInfoActivity;Lcom/android/vending/AssetInfoActivity$1;)V

    .line 2458
    new-instance v0, Lcom/android/vending/AssetItemAdapter;

    iget-object v1, p1, Lcom/android/vending/AssetInfoActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Lcom/android/vending/AssetItemAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mSimilarAssetsAdapter:Lcom/android/vending/AssetItemAdapter;

    .line 2459
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mSimilarAssetsAdapter:Lcom/android/vending/AssetItemAdapter;

    new-instance v1, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection$1;

    invoke-direct {v1, p0, p1}, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection$1;-><init>(Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;Lcom/android/vending/AssetInfoActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/vending/AssetItemAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2465
    return-void
.end method

.method static synthetic access$5902(Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;
    .param p1, "x1"    # Z

    .prologue
    .line 2408
    iput-boolean p1, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mSimilarLoaded:Z

    return p1
.end method

.method static synthetic access$6000(Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;)Lcom/android/vending/AssetItemAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;

    .prologue
    .line 2408
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mSimilarAssetsAdapter:Lcom/android/vending/AssetItemAdapter;

    return-object v0
.end method


# virtual methods
.method public getLoadingAction()Lcom/android/vending/AssetInfoActivity$SimilarAssetSection$LoadSimilarAssetsAction;
    .locals 1

    .prologue
    .line 2556
    new-instance v0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection$LoadSimilarAssetsAction;

    invoke-direct {v0, p0}, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection$LoadSimilarAssetsAction;-><init>(Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;)V

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 2491
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v0}, Lcom/android/vending/AssetInfoActivity;->access$3100(Lcom/android/vending/AssetInfoActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttach()V
    .locals 2

    .prologue
    .line 2469
    const v0, 0x7f060154

    const v1, 0x7f0600c4

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->addHeader(II)Landroid/widget/TwoLineListItem;

    .line 2471
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mAssetsContainer:Landroid/widget/LinearLayout;

    .line 2472
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mAssetsContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2473
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mAssetsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->addViewWithoutPadding(Landroid/view/View;)V

    .line 2475
    const v0, 0x7f03003d

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->inflateView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mMoreAssets:Landroid/widget/LinearLayout;

    .line 2476
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mMoreAssets:Landroid/widget/LinearLayout;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 2477
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mMoreAssets:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/android/vending/AssetInfoActivity;->setViewOnClickListener(Landroid/view/View;)V

    .line 2478
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mMoreAssets:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->addViewWithoutPadding(Landroid/view/View;)V

    .line 2480
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->inflateView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mNoSimilarAssets:Landroid/widget/TextView;

    .line 2481
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mNoSimilarAssets:Landroid/widget/TextView;

    const v1, 0x7f060186

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2482
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mNoSimilarAssets:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2483
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mNoSimilarAssets:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->addView(Landroid/view/View;)V

    .line 2485
    const v0, 0x7f03003c

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->inflateView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mAssetsLoadingIndicator:Landroid/view/View;

    .line 2486
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mAssetsLoadingIndicator:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->addView(Landroid/view/View;)V

    .line 2487
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2543
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2544
    .local v2, "position":I
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mSimilarAssetsAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v4}, Lcom/android/vending/AssetItemAdapter;->getAssets()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 2545
    .local v0, "asset":Lcom/android/vending/model/Asset;
    const-string v4, "asset-similar"

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v6, v6, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v6}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v2}, Lcom/android/vending/AssetInfoActivity;->getReferrer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 2546
    .local v3, "referrerUrl":Landroid/net/Uri$Builder;
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v4, v4, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v4}, Lcom/android/vending/model/Asset;->getApplicationPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2548
    const-string v4, "originalPackage"

    iget-object v5, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v5, v5, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v5}, Lcom/android/vending/model/Asset;->getApplicationPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2551
    :cond_0
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/android/vending/model/Asset;->getViewInfoIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 2552
    .local v1, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-virtual {v4, v1}, Lcom/android/vending/AssetInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 2553
    return-void
.end method

.method public onRefresh()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 2496
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mAssetsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2497
    iget-boolean v4, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mSimilarLoaded:Z

    if-nez v4, :cond_1

    .line 2498
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mAssetsLoadingIndicator:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2499
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mAssetsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2500
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mMoreAssets:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2501
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mNoSimilarAssets:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2536
    :cond_0
    :goto_0
    return-void

    .line 2505
    :cond_1
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mSimilarAssetsAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v4}, Lcom/android/vending/AssetItemAdapter;->getCount()I

    move-result v0

    .line 2506
    .local v0, "count":I
    if-lez v0, :cond_3

    .line 2507
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-virtual {v4}, Lcom/android/vending/AssetInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v1, v4

    .line 2509
    .local v1, "horizontalPadding":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 2510
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mSimilarAssetsAdapter:Lcom/android/vending/AssetItemAdapter;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mAssetsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/vending/AssetItemAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2513
    .local v3, "v":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v3, v1, v4, v1, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 2518
    invoke-virtual {p0, v3}, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->makeFocusable(Landroid/view/View;)V

    .line 2519
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2520
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2521
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mAssetsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2509
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2523
    .end local v3    # "v":Landroid/view/View;
    :cond_2
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mAssetsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2524
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mMoreAssets:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2525
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mNoSimilarAssets:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2531
    .end local v1    # "horizontalPadding":I
    .end local v2    # "i":I
    :goto_2
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mAssetsLoadingIndicator:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2533
    invoke-virtual {p0}, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->isActivated()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2534
    invoke-virtual {p0}, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->deactivate()V

    goto :goto_0

    .line 2527
    :cond_3
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mAssetsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2528
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mMoreAssets:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2529
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mNoSimilarAssets:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method
