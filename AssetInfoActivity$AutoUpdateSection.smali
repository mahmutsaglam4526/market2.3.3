.class Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;
.super Lcom/android/vending/AssetInfoActivity$Section;
.source "AssetInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AssetInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoUpdateSection"
.end annotation


# instance fields
.field private mAutoUpdateCheckBox:Landroid/widget/CheckBox;

.field private mAutoUpdateView:Landroid/view/View;

.field private mManualUpdateRequiredText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/vending/AssetInfoActivity;


# direct methods
.method private constructor <init>(Lcom/android/vending/AssetInfoActivity;)V
    .locals 1

    .prologue
    .line 2560
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/vending/AssetInfoActivity$Section;-><init>(Lcom/android/vending/AssetInfoActivity;Lcom/android/vending/AssetInfoActivity$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vending/AssetInfoActivity;Lcom/android/vending/AssetInfoActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/vending/AssetInfoActivity;
    .param p2, "x1"    # Lcom/android/vending/AssetInfoActivity$1;

    .prologue
    .line 2560
    invoke-direct {p0, p1}, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;-><init>(Lcom/android/vending/AssetInfoActivity;)V

    return-void
.end method


# virtual methods
.method public isVisible()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2583
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v2}, Lcom/android/vending/AssetInfoActivity;->access$3100(Lcom/android/vending/AssetInfoActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v2, v2, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    if-nez v2, :cond_1

    :cond_0
    move v2, v3

    .line 2592
    :goto_0
    return v2

    .line 2587
    :cond_1
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v2, v2, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v2}, Lcom/android/vending/model/Asset;->findMatchingLocalAsset()Lcom/android/vending/model/LocalAsset;

    move-result-object v0

    .line 2588
    .local v0, "localAsset":Lcom/android/vending/model/LocalAsset;
    const/4 v1, 0x0

    .line 2589
    .local v1, "state":Lcom/android/vending/model/LocalAssetInfo$AssetState;
    if-eqz v0, :cond_2

    .line 2590
    invoke-virtual {v0}, Lcom/android/vending/model/LocalAsset;->getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-result-object v1

    .line 2592
    :cond_2
    sget-object v2, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-eq v1, v2, :cond_3

    sget-object v2, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOAD_FAILED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-eq v1, v2, :cond_3

    sget-object v2, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALL_FAILED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-ne v1, v2, :cond_4

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method protected onAttach()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2567
    const v1, 0x7f0601ab

    const v2, 0x7f0601ac

    invoke-virtual {p0, v1, v2}, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;->addHeader(II)Landroid/widget/TwoLineListItem;

    move-result-object v0

    .line 2568
    .local v0, "header":Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2570
    const v1, 0x7f03000a

    invoke-virtual {p0, v1}, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;->inflateView(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;->mAutoUpdateView:Landroid/view/View;

    .line 2571
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;->mAutoUpdateView:Landroid/view/View;

    const v2, 0x7f070029

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;->mAutoUpdateCheckBox:Landroid/widget/CheckBox;

    .line 2573
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;->mAutoUpdateCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 2574
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;->mAutoUpdateCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 2575
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;->mAutoUpdateView:Landroid/view/View;

    const/16 v2, 0x12

    invoke-virtual {p0, v1, v2}, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;->setActionTag(Landroid/view/View;I)V

    .line 2576
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;->mAutoUpdateView:Landroid/view/View;

    const v2, 0x7f07002b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;->mManualUpdateRequiredText:Landroid/widget/TextView;

    .line 2578
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;->mAutoUpdateView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;->addView(Landroid/view/View;)V

    .line 2579
    return-void
.end method

.method public onRefresh()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2599
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v4, v4, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    iget-object v5, p0, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-virtual {v4, v5}, Lcom/android/vending/model/Asset;->isAutoUpdateEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 2600
    .local v0, "enabled":Z
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;->mAutoUpdateCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2602
    const/4 v2, 0x0

    .line 2603
    .local v2, "manualRequired":Z
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v4, v4, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v4}, Lcom/android/vending/model/Asset;->findMatchingLocalAsset()Lcom/android/vending/model/LocalAsset;

    move-result-object v1

    .line 2604
    .local v1, "localAsset":Lcom/android/vending/model/LocalAsset;
    const/4 v3, 0x0

    .line 2605
    .local v3, "state":Lcom/android/vending/model/LocalAssetInfo$AssetState;
    if-eqz v1, :cond_0

    .line 2606
    invoke-virtual {v1}, Lcom/android/vending/model/LocalAsset;->getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-result-object v3

    .line 2609
    :cond_0
    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v4, v4, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v4}, Lcom/android/vending/model/Asset;->isUpdate()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2611
    sget-object v4, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-ne v3, v4, :cond_1

    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v4, v4, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    iget-object v5, p0, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-virtual {v4, v5}, Lcom/android/vending/model/Asset;->canAutoUpdate(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_1
    const/4 v4, 0x1

    move v2, v4

    .line 2614
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;->mManualUpdateRequiredText:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    move v5, v6

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2616
    return-void

    :cond_3
    move v2, v6

    .line 2611
    goto :goto_0

    .line 2614
    :cond_4
    const/4 v5, 0x4

    goto :goto_1
.end method
