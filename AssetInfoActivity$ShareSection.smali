.class Lcom/android/vending/AssetInfoActivity$ShareSection;
.super Lcom/android/vending/AssetInfoActivity$Section;
.source "AssetInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AssetInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShareSection"
.end annotation


# instance fields
.field private mShareAppView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/vending/AssetInfoActivity;


# direct methods
.method private constructor <init>(Lcom/android/vending/AssetInfoActivity;)V
    .locals 1

    .prologue
    .line 2178
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$ShareSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/vending/AssetInfoActivity$Section;-><init>(Lcom/android/vending/AssetInfoActivity;Lcom/android/vending/AssetInfoActivity$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vending/AssetInfoActivity;Lcom/android/vending/AssetInfoActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/vending/AssetInfoActivity;
    .param p2, "x1"    # Lcom/android/vending/AssetInfoActivity$1;

    .prologue
    .line 2178
    invoke-direct {p0, p1}, Lcom/android/vending/AssetInfoActivity$ShareSection;-><init>(Lcom/android/vending/AssetInfoActivity;)V

    return-void
.end method


# virtual methods
.method public isVisible()Z
    .locals 1

    .prologue
    .line 2194
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$ShareSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v0}, Lcom/android/vending/AssetInfoActivity;->access$3100(Lcom/android/vending/AssetInfoActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$ShareSection;->this$0:Lcom/android/vending/AssetInfoActivity;

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
    .line 2183
    const v0, 0x7f060196

    const v1, 0x7f060197

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/AssetInfoActivity$ShareSection;->addHeader(II)Landroid/widget/TwoLineListItem;

    .line 2184
    const v0, 0x7f030012

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$ShareSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v0, v1}, Lcom/android/vending/util/Util;->inflateView(ILandroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity$ShareSection;->mShareAppView:Landroid/view/View;

    .line 2186
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$ShareSection;->mShareAppView:Landroid/view/View;

    const v1, 0x1020014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f060198

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2188
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$ShareSection;->mShareAppView:Landroid/view/View;

    const/16 v1, 0x13

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/AssetInfoActivity$ShareSection;->setActionTag(Landroid/view/View;I)V

    .line 2189
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$ShareSection;->mShareAppView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity$ShareSection;->addView(Landroid/view/View;)V

    .line 2190
    return-void
.end method

.method public onRefresh()V
    .locals 0

    .prologue
    .line 2200
    return-void
.end method
