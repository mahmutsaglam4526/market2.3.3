.class Lcom/android/vending/CarrierChannelActivity$GetCarrierAppsAction;
.super Lcom/android/vending/AssetListActivity$PaginationAwareAction;
.source "CarrierChannelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/CarrierChannelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetCarrierAppsAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/CarrierChannelActivity;


# direct methods
.method public constructor <init>(Lcom/android/vending/CarrierChannelActivity;Lcom/android/vending/BaseActivity;)V
    .locals 0
    .param p2, "activity"    # Lcom/android/vending/BaseActivity;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/vending/CarrierChannelActivity$GetCarrierAppsAction;->this$0:Lcom/android/vending/CarrierChannelActivity;

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/android/vending/AssetListActivity$PaginationAwareAction;-><init>(Lcom/android/vending/AssetListActivity;Lcom/android/vending/BaseActivity;)V

    .line 186
    return-void
.end method


# virtual methods
.method protected displayErrorUi(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/vending/CarrierChannelActivity$GetCarrierAppsAction;->this$0:Lcom/android/vending/CarrierChannelActivity;

    iget-object v0, v0, Lcom/android/vending/CarrierChannelActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v0}, Lcom/android/vending/AssetItemAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 225
    invoke-super {p0, p1}, Lcom/android/vending/AssetListActivity$PaginationAwareAction;->displayErrorUi(Ljava/lang/Throwable;)V

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/vending/CarrierChannelActivity$GetCarrierAppsAction;->this$0:Lcom/android/vending/CarrierChannelActivity;

    invoke-virtual {v0}, Lcom/android/vending/CarrierChannelActivity;->showErrorFooter()V

    goto :goto_0
.end method

.method protected displayResults()V
    .locals 3

    .prologue
    .line 202
    iget-object v1, p0, Lcom/android/vending/CarrierChannelActivity$GetCarrierAppsAction;->this$0:Lcom/android/vending/CarrierChannelActivity;

    iget-object v1, v1, Lcom/android/vending/CarrierChannelActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v1}, Lcom/android/vending/AssetItemAdapter;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/android/vending/CarrierChannelActivity$GetCarrierAppsAction;->this$0:Lcom/android/vending/CarrierChannelActivity;

    invoke-static {v2}, Lcom/android/vending/CarrierChannelActivity;->access$300(Lcom/android/vending/CarrierChannelActivity;)I

    move-result v2

    sub-int v0, v1, v2

    .line 203
    .local v0, "assetsLoaded":I
    iget-object v1, p0, Lcom/android/vending/CarrierChannelActivity$GetCarrierAppsAction;->this$0:Lcom/android/vending/CarrierChannelActivity;

    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v1, v2}, Lcom/android/vending/CarrierChannelActivity;->access$402(Lcom/android/vending/CarrierChannelActivity;Z)Z

    .line 205
    iget-object v1, p0, Lcom/android/vending/CarrierChannelActivity$GetCarrierAppsAction;->this$0:Lcom/android/vending/CarrierChannelActivity;

    iget-object v1, v1, Lcom/android/vending/CarrierChannelActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v1}, Lcom/android/vending/AssetItemAdapter;->notifyDataSetChanged()V

    .line 206
    iget-object v1, p0, Lcom/android/vending/CarrierChannelActivity$GetCarrierAppsAction;->this$0:Lcom/android/vending/CarrierChannelActivity;

    invoke-static {v1}, Lcom/android/vending/CarrierChannelActivity;->access$500(Lcom/android/vending/CarrierChannelActivity;)V

    .line 207
    return-void

    .line 203
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected displayWaitingUi()V
    .locals 1

    .prologue
    .line 211
    invoke-super {p0}, Lcom/android/vending/AssetListActivity$PaginationAwareAction;->displayWaitingUi()V

    .line 212
    iget-object v0, p0, Lcom/android/vending/CarrierChannelActivity$GetCarrierAppsAction;->this$0:Lcom/android/vending/CarrierChannelActivity;

    invoke-virtual {v0}, Lcom/android/vending/CarrierChannelActivity;->showLoadingFooter()V

    .line 213
    return-void
.end method

.method protected hideErrorUi()V
    .locals 1

    .prologue
    .line 234
    invoke-super {p0}, Lcom/android/vending/AssetListActivity$PaginationAwareAction;->hideErrorUi()V

    .line 235
    iget-object v0, p0, Lcom/android/vending/CarrierChannelActivity$GetCarrierAppsAction;->this$0:Lcom/android/vending/CarrierChannelActivity;

    invoke-virtual {v0}, Lcom/android/vending/CarrierChannelActivity;->hideErrorFooter()V

    .line 236
    return-void
.end method

.method protected hideWaitingUi()V
    .locals 1

    .prologue
    .line 217
    invoke-super {p0}, Lcom/android/vending/AssetListActivity$PaginationAwareAction;->hideWaitingUi()V

    .line 218
    iget-object v0, p0, Lcom/android/vending/CarrierChannelActivity$GetCarrierAppsAction;->this$0:Lcom/android/vending/CarrierChannelActivity;

    invoke-virtual {v0}, Lcom/android/vending/CarrierChannelActivity;->hideLoadingFooter()V

    .line 219
    return-void
.end method

.method public loadMore()V
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/android/vending/CarrierChannelActivity$GetCarrierAppsAction;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/android/vending/CarrierChannelActivity$GetCarrierAppsAction;->start()V

    .line 243
    :cond_0
    return-void
.end method

.method public prepare()V
    .locals 3

    .prologue
    .line 191
    iget-object v1, p0, Lcom/android/vending/CarrierChannelActivity$GetCarrierAppsAction;->this$0:Lcom/android/vending/CarrierChannelActivity;

    iget-object v2, p0, Lcom/android/vending/CarrierChannelActivity$GetCarrierAppsAction;->this$0:Lcom/android/vending/CarrierChannelActivity;

    iget-object v2, v2, Lcom/android/vending/CarrierChannelActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v2}, Lcom/android/vending/AssetItemAdapter;->getCount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/vending/CarrierChannelActivity;->access$302(Lcom/android/vending/CarrierChannelActivity;I)I

    .line 194
    iget-object v1, p0, Lcom/android/vending/CarrierChannelActivity$GetCarrierAppsAction;->this$0:Lcom/android/vending/CarrierChannelActivity;

    invoke-virtual {v1}, Lcom/android/vending/CarrierChannelActivity;->getAssetRequest()Lcom/android/vending/model/AssetRequest;

    move-result-object v0

    .line 197
    .local v0, "assetRequest":Lcom/android/vending/model/AssetRequest;
    iget-object v1, p0, Lcom/android/vending/CarrierChannelActivity$GetCarrierAppsAction;->this$0:Lcom/android/vending/CarrierChannelActivity;

    iget-object v1, v1, Lcom/android/vending/CarrierChannelActivity;->mAssetService:Lcom/android/vending/api/AssetService;

    iget-object v2, p0, Lcom/android/vending/CarrierChannelActivity$GetCarrierAppsAction;->this$0:Lcom/android/vending/CarrierChannelActivity;

    iget-object v2, v2, Lcom/android/vending/CarrierChannelActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v1, v0, v2}, Lcom/android/vending/api/AssetService;->queueGetAssets(Lcom/android/vending/model/AssetRequest;Lcom/android/vending/api/AssetService$GetAssetsReceiver;)V

    .line 198
    return-void
.end method
