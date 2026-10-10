.class Lcom/android/vending/AssetInfoActivity$MarketContentSection;
.super Lcom/android/vending/AssetInfoActivity$Section;
.source "AssetInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AssetInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarketContentSection"
.end annotation


# instance fields
.field private mFlagAppView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/vending/AssetInfoActivity;


# direct methods
.method private constructor <init>(Lcom/android/vending/AssetInfoActivity;)V
    .locals 1

    .prologue
    .line 2203
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$MarketContentSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/vending/AssetInfoActivity$Section;-><init>(Lcom/android/vending/AssetInfoActivity;Lcom/android/vending/AssetInfoActivity$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vending/AssetInfoActivity;Lcom/android/vending/AssetInfoActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/vending/AssetInfoActivity;
    .param p2, "x1"    # Lcom/android/vending/AssetInfoActivity$1;

    .prologue
    .line 2203
    invoke-direct {p0, p1}, Lcom/android/vending/AssetInfoActivity$MarketContentSection;-><init>(Lcom/android/vending/AssetInfoActivity;)V

    return-void
.end method


# virtual methods
.method public isVisible()Z
    .locals 1

    .prologue
    .line 2223
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$MarketContentSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v0}, Lcom/android/vending/AssetInfoActivity;->access$3100(Lcom/android/vending/AssetInfoActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$MarketContentSection;->this$0:Lcom/android/vending/AssetInfoActivity;

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
    .locals 5

    .prologue
    .line 2209
    const v2, 0x7f0601a2

    const v3, 0x7f0601a3

    invoke-virtual {p0, v2, v3}, Lcom/android/vending/AssetInfoActivity$MarketContentSection;->addHeader(II)Landroid/widget/TwoLineListItem;

    .line 2210
    const v2, 0x7f030013

    iget-object v3, p0, Lcom/android/vending/AssetInfoActivity$MarketContentSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$MarketContentSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v4}, Lcom/android/vending/AssetInfoActivity;->access$2700(Lcom/android/vending/AssetInfoActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/vending/util/Util;->inflateView(ILandroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/vending/AssetInfoActivity$MarketContentSection;->mFlagAppView:Landroid/view/View;

    .line 2212
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$MarketContentSection;->mFlagAppView:Landroid/view/View;

    const v3, 0x1020014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2213
    .local v1, "label":Landroid/widget/TextView;
    const v2, 0x7f0601a5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2214
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$MarketContentSection;->mFlagAppView:Landroid/view/View;

    const v3, 0x1020015

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2215
    .local v0, "description":Landroid/widget/TextView;
    const v2, 0x7f0601a6

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2216
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 2217
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$MarketContentSection;->mFlagAppView:Landroid/view/View;

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v3}, Lcom/android/vending/AssetInfoActivity$MarketContentSection;->setActionTag(Landroid/view/View;I)V

    .line 2218
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$MarketContentSection;->mFlagAppView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/vending/AssetInfoActivity$MarketContentSection;->addView(Landroid/view/View;)V

    .line 2219
    return-void
.end method

.method public onRefresh()V
    .locals 0

    .prologue
    .line 2229
    return-void
.end method
