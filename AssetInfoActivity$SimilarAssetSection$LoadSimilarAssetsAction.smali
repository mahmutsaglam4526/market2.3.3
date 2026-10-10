.class Lcom/android/vending/AssetInfoActivity$SimilarAssetSection$LoadSimilarAssetsAction;
.super Lcom/android/vending/BaseActivity$BaseAction;
.source "AssetInfoActivity.java"

# interfaces
.implements Lcom/android/vending/api/AssetService$GetAssetsReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadSimilarAssetsAction"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;


# direct methods
.method public constructor <init>(Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;)V
    .locals 1

    .prologue
    .line 2413
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection$LoadSimilarAssetsAction;->this$1:Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;

    .line 2414
    iget-object v0, p1, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-direct {p0, v0}, Lcom/android/vending/BaseActivity$BaseAction;-><init>(Lcom/android/vending/BaseActivity;)V

    .line 2415
    return-void
.end method


# virtual methods
.method public displayResults()V
    .locals 2

    .prologue
    .line 2432
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection$LoadSimilarAssetsAction;->this$1:Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection$LoadSimilarAssetsAction$1;

    invoke-direct {v1, p0}, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection$LoadSimilarAssetsAction$1;-><init>(Lcom/android/vending/AssetInfoActivity$SimilarAssetSection$LoadSimilarAssetsAction;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2440
    return-void
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
    .line 2443
    .local p1, "assets":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    .local p2, "correctedAssets":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection$LoadSimilarAssetsAction;->this$1:Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;

    invoke-static {v0}, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->access$6000(Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;)Lcom/android/vending/AssetItemAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/vending/AssetItemAdapter;->onGetAssetsResponse(Ljava/util/List;Ljava/util/List;)V

    .line 2444
    return-void
.end method

.method public prepare()V
    .locals 3

    .prologue
    .line 2419
    new-instance v0, Lcom/android/vending/model/AssetRequest;

    invoke-direct {v0}, Lcom/android/vending/model/AssetRequest;-><init>()V

    .line 2420
    .local v0, "assetRequest":Lcom/android/vending/model/AssetRequest;
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection$LoadSimilarAssetsAction;->this$1:Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;

    iget-object v1, v1, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v1, v1, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v1}, Lcom/android/vending/model/Asset;->getApplicationPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/vending/util/Util;->getSearchQueryForRelated(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/AssetRequest;->setQuery(Ljava/lang/String;)V

    .line 2422
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/model/AssetRequest;->setStartIndex(J)V

    .line 2423
    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/model/AssetRequest;->setNumEntries(J)V

    .line 2424
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection$LoadSimilarAssetsAction;->this$1:Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;

    iget-object v1, v1, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v1}, Lcom/android/vending/AssetInfoActivity;->access$1700(Lcom/android/vending/AssetInfoActivity;)Lcom/android/vending/api/AssetService;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/android/vending/api/AssetService;->queueGetAssets(Lcom/android/vending/model/AssetRequest;Lcom/android/vending/api/AssetService$GetAssetsReceiver;)V

    .line 2425
    return-void
.end method
