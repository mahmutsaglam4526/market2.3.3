.class Lcom/android/vending/AssetInfoActivity$DownloadSection;
.super Lcom/android/vending/AssetInfoActivity$Section;
.source "AssetInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AssetInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadSection"
.end annotation


# instance fields
.field private final mDownloadObserver:Landroid/database/ContentObserver;

.field private mDownloadProgressView:Landroid/view/View;

.field private mViewUpdater:Lcom/android/vending/adapters/MyDownloadsAdapter$DownloadingAssetViewUpdater;

.field final synthetic this$0:Lcom/android/vending/AssetInfoActivity;


# direct methods
.method private constructor <init>(Lcom/android/vending/AssetInfoActivity;)V
    .locals 2

    .prologue
    .line 2030
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/vending/AssetInfoActivity$Section;-><init>(Lcom/android/vending/AssetInfoActivity;Lcom/android/vending/AssetInfoActivity$1;)V

    .line 2033
    new-instance v0, Lcom/android/vending/AssetInfoActivity$DownloadSection$1;

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v1, v1, Lcom/android/vending/AssetInfoActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/vending/AssetInfoActivity$DownloadSection$1;-><init>(Lcom/android/vending/AssetInfoActivity$DownloadSection;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection;->mDownloadObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vending/AssetInfoActivity;Lcom/android/vending/AssetInfoActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/vending/AssetInfoActivity;
    .param p2, "x1"    # Lcom/android/vending/AssetInfoActivity$1;

    .prologue
    .line 2030
    invoke-direct {p0, p1}, Lcom/android/vending/AssetInfoActivity$DownloadSection;-><init>(Lcom/android/vending/AssetInfoActivity;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/vending/AssetInfoActivity$DownloadSection;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/AssetInfoActivity$DownloadSection;

    .prologue
    .line 2030
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection;->mDownloadProgressView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/vending/AssetInfoActivity$DownloadSection;)Lcom/android/vending/adapters/MyDownloadsAdapter$DownloadingAssetViewUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/AssetInfoActivity$DownloadSection;

    .prologue
    .line 2030
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection;->mViewUpdater:Lcom/android/vending/adapters/MyDownloadsAdapter$DownloadingAssetViewUpdater;

    return-object v0
.end method


# virtual methods
.method public isVisible()Z
    .locals 1

    .prologue
    .line 2075
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v0}, Lcom/android/vending/AssetInfoActivity;->access$3100(Lcom/android/vending/AssetInfoActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->isDownloadingOrInstalling()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->isUninstalling()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttach()V
    .locals 3

    .prologue
    .line 2065
    const v0, 0x7f03000c

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v2}, Lcom/android/vending/AssetInfoActivity;->access$2700(Lcom/android/vending/AssetInfoActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/vending/util/Util;->inflateView(ILandroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection;->mDownloadProgressView:Landroid/view/View;

    .line 2068
    new-instance v0, Lcom/android/vending/adapters/MyDownloadsAdapter$DownloadingAssetViewUpdater;

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-direct {v0, v1}, Lcom/android/vending/adapters/MyDownloadsAdapter$DownloadingAssetViewUpdater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection;->mViewUpdater:Lcom/android/vending/adapters/MyDownloadsAdapter$DownloadingAssetViewUpdater;

    .line 2070
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection;->mDownloadProgressView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity$DownloadSection;->addView(Landroid/view/View;)V

    .line 2071
    return-void
.end method

.method public onRefresh()V
    .locals 3

    .prologue
    .line 2081
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection;->mViewUpdater:Lcom/android/vending/adapters/MyDownloadsAdapter$DownloadingAssetViewUpdater;

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection;->mDownloadProgressView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v2, v2, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/adapters/MyDownloadsAdapter$DownloadingAssetViewUpdater;->updateView(Landroid/view/View;Lcom/android/vending/model/Asset;)V

    .line 2087
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v0}, Lcom/android/vending/AssetInfoActivity;->access$5200(Lcom/android/vending/AssetInfoActivity;)Lcom/android/vending/model/DownloadProgressManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2088
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2089
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v0}, Lcom/android/vending/AssetInfoActivity;->access$5200(Lcom/android/vending/AssetInfoActivity;)Lcom/android/vending/model/DownloadProgressManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection;->mDownloadObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Lcom/android/vending/model/DownloadProgressManager;->registerObserverOnce(Landroid/database/ContentObserver;)V

    .line 2092
    :cond_0
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection;->mDownloadObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->dispatchChange(Z)V

    .line 2094
    :cond_1
    return-void
.end method
