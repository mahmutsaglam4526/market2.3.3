.class public Lcom/android/vending/CarrierChannelActivity;
.super Lcom/android/vending/AssetListActivity;
.source "CarrierChannelActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/CarrierChannelActivity$GetCarrierAppsAction;,
        Lcom/android/vending/CarrierChannelActivity$GetCarrierInfoAction;
    }
.end annotation


# instance fields
.field private mCarrierBanner:Landroid/widget/ImageView;

.field private mCarrierTitle:Ljava/lang/String;

.field private mHasMoreAssets:Z

.field private mNumAssetsBeforeRequest:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/vending/AssetListActivity;-><init>()V

    .line 183
    return-void
.end method

.method static synthetic access$100(Lcom/android/vending/CarrierChannelActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/CarrierChannelActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/vending/CarrierChannelActivity;->mCarrierBanner:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/vending/CarrierChannelActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/CarrierChannelActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/vending/CarrierChannelActivity;->mCarrierTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/vending/CarrierChannelActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/CarrierChannelActivity;

    .prologue
    .line 27
    iget v0, p0, Lcom/android/vending/CarrierChannelActivity;->mNumAssetsBeforeRequest:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/vending/CarrierChannelActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/CarrierChannelActivity;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/android/vending/CarrierChannelActivity;->mNumAssetsBeforeRequest:I

    return p1
.end method

.method static synthetic access$402(Lcom/android/vending/CarrierChannelActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/CarrierChannelActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/vending/CarrierChannelActivity;->mHasMoreAssets:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/vending/CarrierChannelActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/CarrierChannelActivity;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/vending/CarrierChannelActivity;->showListView()V

    return-void
.end method

.method private showListView()V
    .locals 3

    .prologue
    .line 265
    const v1, 0x7f070047

    invoke-virtual {p0, v1}, Lcom/android/vending/CarrierChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 266
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 267
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 268
    const v1, 0x7f0700d3

    invoke-virtual {p0, v1}, Lcom/android/vending/CarrierChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 269
    return-void
.end method


# virtual methods
.method protected checkToLoadMore(II)V
    .locals 6
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I

    .prologue
    .line 257
    add-int v0, p1, p2

    int-to-long v0, v0

    iget-object v2, p0, Lcom/android/vending/CarrierChannelActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v2}, Lcom/android/vending/AssetItemAdapter;->getCount()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x7fffffff

    invoke-static/range {v0 .. v5}, Lcom/android/vending/util/Util;->needLoadMore(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/vending/CarrierChannelActivity;->mHasMoreAssets:Z

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/vending/CarrierChannelActivity;->mAssetPageLoader:Lcom/android/vending/AssetListActivity$PaginationAwareAction;

    invoke-virtual {v0}, Lcom/android/vending/AssetListActivity$PaginationAwareAction;->loadMore()V

    .line 262
    :cond_0
    return-void
.end method

.method protected createPaginationAwareAction()Lcom/android/vending/AssetListActivity$PaginationAwareAction;
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcom/android/vending/CarrierChannelActivity$GetCarrierInfoAction;

    invoke-direct {v0, p0, p0}, Lcom/android/vending/CarrierChannelActivity$GetCarrierInfoAction;-><init>(Lcom/android/vending/CarrierChannelActivity;Lcom/android/vending/BaseActivity;)V

    return-object v0
.end method

.method public getAssetRequest()Lcom/android/vending/model/AssetRequest;
    .locals 3

    .prologue
    .line 106
    new-instance v0, Lcom/android/vending/model/AssetRequest;

    invoke-direct {v0}, Lcom/android/vending/model/AssetRequest;-><init>()V

    .line 107
    .local v0, "assetRequest":Lcom/android/vending/model/AssetRequest;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/AssetRequest;->setRetrieveCarrierChannel(Z)V

    .line 108
    iget-object v1, p0, Lcom/android/vending/CarrierChannelActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v1}, Lcom/android/vending/AssetItemAdapter;->getCount()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/model/AssetRequest;->setStartIndex(J)V

    .line 109
    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/model/AssetRequest;->setNumEntries(J)V

    .line 110
    return-object v0
.end method

.method public getReferrerUri(I)Landroid/net/Uri;
    .locals 3
    .param p1, "rowIndex"    # I

    .prologue
    const/4 v2, 0x0

    .line 96
    const-string v1, "carrierchannel"

    invoke-static {v1, v2, v2, p1}, Lcom/android/vending/AssetInfoActivity;->getReferrer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 98
    .local v0, "builder":Landroid/net/Uri$Builder;
    iget-object v1, p0, Lcom/android/vending/CarrierChannelActivity;->mCarrierTitle:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/vending/util/Util;->isEmptyOrSpaces(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    const-string v1, "carriertitle"

    iget-object v2, p0, Lcom/android/vending/CarrierChannelActivity;->mCarrierTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 101
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method protected isAlwaysShowListHeaders()Z
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/vending/CarrierChannelActivity;->mCarrierBanner:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    const-class v1, Lcom/android/vending/AssetBrowserActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 80
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0, v0}, Lcom/android/vending/CarrierChannelActivity;->startActivity(Landroid/content/Intent;)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-super {p0, p1}, Lcom/android/vending/AssetListActivity;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 44
    invoke-super {p0, p1}, Lcom/android/vending/AssetListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/vending/CarrierChannelActivity;->setupSlimTitleBar(Ljava/lang/CharSequence;Z)V

    .line 48
    const v2, 0x7f0700fd

    invoke-virtual {p0, v2}, Lcom/android/vending/CarrierChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/vending/CarrierChannelActivity;->mCarrierBanner:Landroid/widget/ImageView;

    .line 49
    iget-object v2, p0, Lcom/android/vending/CarrierChannelActivity;->mCarrierBanner:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v2, 0x7f070049

    invoke-virtual {p0, v2}, Lcom/android/vending/CarrierChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 52
    .local v0, "emptyListView":Landroid/widget/FrameLayout;
    const v2, 0x7f07004a

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 53
    .local v1, "emptyText":Landroid/widget/TextView;
    const v2, 0x7f060174

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 54
    iget-object v2, p0, Lcom/android/vending/CarrierChannelActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 56
    invoke-super {p0}, Lcom/android/vending/AssetListActivity;->finishSetup()V

    .line 58
    iget-object v2, p0, Lcom/android/vending/CarrierChannelActivity;->mAssetPageLoader:Lcom/android/vending/AssetListActivity$PaginationAwareAction;

    check-cast v2, Lcom/android/vending/CarrierChannelActivity$GetCarrierInfoAction;

    invoke-static {v2}, Lcom/android/vending/CarrierChannelActivity$GetCarrierInfoAction;->access$000(Lcom/android/vending/CarrierChannelActivity$GetCarrierInfoAction;)V

    .line 59
    if-nez p1, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/vending/CarrierChannelActivity;->startSetupActionChain(Z)V

    .line 60
    return-void

    .line 59
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onLookupAssetsComplete()V
    .locals 0

    .prologue
    .line 253
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0}, Lcom/android/vending/AssetListActivity;->onRestart()V

    .line 72
    iget-object v0, p0, Lcom/android/vending/CarrierChannelActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/vending/AssetItemAdapter;->reloadLocalAssetInfo(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method protected setupContentView()V
    .locals 1

    .prologue
    .line 64
    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lcom/android/vending/CarrierChannelActivity;->setContentView(I)V

    .line 65
    return-void
.end method

.method public updateStateDependentUi(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
    .locals 0
    .param p1, "assetId"    # Ljava/lang/String;
    .param p2, "newState"    # Lcom/android/vending/model/LocalAssetInfo$AssetState;

    .prologue
    .line 92
    return-void
.end method
