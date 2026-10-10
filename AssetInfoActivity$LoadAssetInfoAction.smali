.class Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;
.super Lcom/android/vending/BaseActivity$BaseAction;
.source "AssetInfoActivity.java"

# interfaces
.implements Lcom/android/vending/api/AssetService$GetAssetsReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AssetInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAssetInfoAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/AssetInfoActivity;


# direct methods
.method public constructor <init>(Lcom/android/vending/AssetInfoActivity;)V
    .locals 0

    .prologue
    .line 1049
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;->this$0:Lcom/android/vending/AssetInfoActivity;

    .line 1050
    invoke-direct {p0, p1}, Lcom/android/vending/BaseActivity$BaseAction;-><init>(Lcom/android/vending/BaseActivity;)V

    .line 1051
    return-void
.end method


# virtual methods
.method public displayResults()V
    .locals 2

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction$1;

    invoke-direct {v1, p0}, Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction$1;-><init>(Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1110
    return-void
.end method

.method protected getSubAction()Lcom/android/vending/BaseActivity$BaseAction;
    .locals 3

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    if-eqz v0, :cond_0

    .line 1120
    new-instance v0, Lcom/android/vending/AssetInfoActivity$LoadCommentsAction;

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;->this$0:Lcom/android/vending/AssetInfoActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/vending/AssetInfoActivity$LoadCommentsAction;-><init>(Lcom/android/vending/AssetInfoActivity;I)V

    .line 1122
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onGetAssetsResponse(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1113
    .local p1, "assets":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    .local p2, "correctedAssets":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/vending/AssetItemAdapter;->onGetAssetsResponse(Ljava/util/List;Ljava/util/List;)V

    .line 1114
    return-void
.end method

.method public prepare()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1055
    new-instance v0, Lcom/android/vending/model/AssetRequest;

    invoke-direct {v0}, Lcom/android/vending/model/AssetRequest;-><init>()V

    .line 1056
    .local v0, "assetRequest":Lcom/android/vending/model/AssetRequest;
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v2, v2, Lcom/android/vending/AssetInfoActivity;->mServerAssetId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/vending/model/AssetRequest;->addAssetId(Ljava/lang/String;)V

    .line 1057
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v2}, Lcom/android/vending/AssetInfoActivity;->access$1700(Lcom/android/vending/AssetInfoActivity;)Lcom/android/vending/api/AssetService;

    move-result-object v2

    invoke-virtual {v2, v0, p0}, Lcom/android/vending/api/AssetService;->queueGetAssets(Lcom/android/vending/model/AssetRequest;Lcom/android/vending/api/AssetService$GetAssetsReceiver;)V

    .line 1063
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;->setTriedLoadFromCache(Z)V

    .line 1064
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;->mActionRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-virtual {v2, v4}, Lcom/android/vending/api/RequestManager;->doRequestsFromCache(Z)Z

    move-result v1

    .line 1065
    .local v1, "cached":Z
    invoke-virtual {p0, v1}, Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;->setLoadedFromCache(Z)V

    .line 1066
    if-eqz v1, :cond_1

    .line 1067
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v3, p0, Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v3, v3, Lcom/android/vending/AssetInfoActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v3, v4}, Lcom/android/vending/AssetItemAdapter;->getAsset(I)Lcom/android/vending/model/Asset;

    move-result-object v3

    iput-object v3, v2, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    .line 1075
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v2, v2, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v2}, Lcom/android/vending/AssetInfoActivity;->access$1800(Lcom/android/vending/AssetInfoActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1076
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v2}, Lcom/android/vending/AssetInfoActivity;->access$1900(Lcom/android/vending/AssetInfoActivity;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1078
    :cond_0
    invoke-virtual {p0}, Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;->displayResults()V

    .line 1080
    :cond_1
    return-void
.end method
