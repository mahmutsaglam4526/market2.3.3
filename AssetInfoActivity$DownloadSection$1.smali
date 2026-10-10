.class Lcom/android/vending/AssetInfoActivity$DownloadSection$1;
.super Landroid/database/ContentObserver;
.source "AssetInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AssetInfoActivity$DownloadSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/vending/AssetInfoActivity$DownloadSection;


# direct methods
.method constructor <init>(Lcom/android/vending/AssetInfoActivity$DownloadSection;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 2033
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection$1;->this$1:Lcom/android/vending/AssetInfoActivity$DownloadSection;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 2036
    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    .line 2043
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection$1;->this$1:Lcom/android/vending/AssetInfoActivity$DownloadSection;

    iget-object v2, v2, Lcom/android/vending/AssetInfoActivity$DownloadSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v2, v2, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/vending/model/LocalAssetInfo$AssetState;

    const/4 v4, 0x0

    sget-object v5, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOADING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/vending/model/Asset;->findMatchingLocalAsset([Lcom/android/vending/model/LocalAssetInfo$AssetState;)Lcom/android/vending/model/LocalAsset;

    move-result-object v0

    .line 2044
    .local v0, "localAsset":Lcom/android/vending/model/LocalAsset;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/vending/model/LocalAsset;->getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-result-object v2

    sget-object v3, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOADING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-eq v2, v3, :cond_1

    .line 2060
    :cond_0
    :goto_0
    return-void

    .line 2048
    :cond_1
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection$1;->this$1:Lcom/android/vending/AssetInfoActivity$DownloadSection;

    iget-object v2, v2, Lcom/android/vending/AssetInfoActivity$DownloadSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v2, v2, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-static {v2}, Lcom/android/vending/model/DownloadProgressManager;->getCachedProgress(Lcom/android/vending/model/Asset;)Lcom/android/vending/model/DownloadProgress;

    move-result-object v1

    .line 2049
    .local v1, "progress":Lcom/android/vending/model/DownloadProgress;
    if-nez v1, :cond_2

    .line 2054
    if-eqz v0, :cond_0

    .line 2055
    sget-object v2, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOAD_CANCELLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    invoke-virtual {v0, v2}, Lcom/android/vending/model/LocalAsset;->setState(Lcom/android/vending/model/LocalAssetInfo$AssetState;)V

    goto :goto_0

    .line 2058
    :cond_2
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection$1;->this$1:Lcom/android/vending/AssetInfoActivity$DownloadSection;

    invoke-static {v2}, Lcom/android/vending/AssetInfoActivity$DownloadSection;->access$5100(Lcom/android/vending/AssetInfoActivity$DownloadSection;)Lcom/android/vending/adapters/MyDownloadsAdapter$DownloadingAssetViewUpdater;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection$1;->this$1:Lcom/android/vending/AssetInfoActivity$DownloadSection;

    invoke-static {v3}, Lcom/android/vending/AssetInfoActivity$DownloadSection;->access$5000(Lcom/android/vending/AssetInfoActivity$DownloadSection;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/vending/adapters/MyDownloadsAdapter$DownloadingAssetViewUpdater;->updateView(Landroid/view/View;Lcom/android/vending/model/DownloadProgress;)V

    goto :goto_0
.end method
