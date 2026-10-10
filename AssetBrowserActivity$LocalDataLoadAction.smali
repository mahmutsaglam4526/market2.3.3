.class Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;
.super Lcom/android/vending/AssetListActivity$PaginationAwareAction;
.source "AssetBrowserActivity.java"

# interfaces
.implements Lcom/android/vending/api/AssetService$GetAssetsReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AssetBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalDataLoadAction"
.end annotation


# instance fields
.field protected mLoadFeaturedAssetsAction:Lcom/android/vending/AssetBrowserActivity$LoadFeaturedAssetsAction;

.field final synthetic this$0:Lcom/android/vending/AssetBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/android/vending/AssetBrowserActivity;Lcom/android/vending/AssetBrowserActivity;)V
    .locals 1
    .param p2, "assetBrowserActivity"    # Lcom/android/vending/AssetBrowserActivity;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    .line 250
    invoke-direct {p0, p1, p2}, Lcom/android/vending/AssetListActivity$PaginationAwareAction;-><init>(Lcom/android/vending/AssetListActivity;Lcom/android/vending/BaseActivity;)V

    .line 251
    new-instance v0, Lcom/android/vending/AssetBrowserActivity$LoadFeaturedAssetsAction;

    invoke-direct {v0, p1, p0}, Lcom/android/vending/AssetBrowserActivity$LoadFeaturedAssetsAction;-><init>(Lcom/android/vending/AssetBrowserActivity;Lcom/android/vending/api/AssetService$GetAssetsReceiver;)V

    iput-object v0, p0, Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;->mLoadFeaturedAssetsAction:Lcom/android/vending/AssetBrowserActivity$LoadFeaturedAssetsAction;

    .line 252
    return-void
.end method

.method private resetState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 326
    iget-object v0, p0, Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    invoke-static {v0, v1}, Lcom/android/vending/AssetBrowserActivity;->access$602(Lcom/android/vending/AssetBrowserActivity;Lcom/android/vending/model/GetCategoriesResponse;)Lcom/android/vending/model/GetCategoriesResponse;

    .line 327
    iget-object v0, p0, Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    invoke-static {v0, v1}, Lcom/android/vending/AssetBrowserActivity;->access$702(Lcom/android/vending/AssetBrowserActivity;Lcom/android/vending/model/GetCarrierInfoResponse;)Lcom/android/vending/model/GetCarrierInfoResponse;

    .line 328
    return-void
.end method


# virtual methods
.method protected displayResults()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    .line 303
    iget-object v3, p0, Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    invoke-static {v3}, Lcom/android/vending/AssetBrowserActivity;->access$500(Lcom/android/vending/AssetBrowserActivity;)V

    .line 306
    iget-object v3, p0, Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    invoke-static {v3}, Lcom/android/vending/AssetBrowserActivity;->access$600(Lcom/android/vending/AssetBrowserActivity;)Lcom/android/vending/model/GetCategoriesResponse;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    invoke-static {v3}, Lcom/android/vending/AssetBrowserActivity;->access$400(Lcom/android/vending/AssetBrowserActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    invoke-static {v3}, Lcom/android/vending/AssetBrowserActivity;->access$700(Lcom/android/vending/AssetBrowserActivity;)Lcom/android/vending/model/GetCarrierInfoResponse;

    move-result-object v3

    if-nez v3, :cond_1

    .line 308
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/vending/util/Log;->end(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    new-instance v3, Lcom/android/vending/AssetBrowserActivity$NetworkDataLoadAction;

    iget-object v4, p0, Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    iget-object v5, p0, Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    invoke-direct {v3, v4, v5}, Lcom/android/vending/AssetBrowserActivity$NetworkDataLoadAction;-><init>(Lcom/android/vending/AssetBrowserActivity;Lcom/android/vending/BaseActivity;)V

    invoke-virtual {v3}, Lcom/android/vending/AssetBrowserActivity$NetworkDataLoadAction;->start()V

    .line 323
    :goto_0
    return-void

    .line 311
    :cond_1
    iget-object v3, p0, Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    iget-object v3, v3, Lcom/android/vending/AssetBrowserActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v3}, Lcom/android/vending/AssetItemAdapter;->getCount()I

    move-result v3

    iget-object v4, p0, Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    invoke-static {v4}, Lcom/android/vending/AssetBrowserActivity;->access$800(Lcom/android/vending/AssetBrowserActivity;)I

    move-result v4

    sub-int v0, v3, v4

    .line 312
    .local v0, "assetsLoaded":I
    iget-object v3, p0, Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    const/16 v4, 0xf

    if-ne v0, v4, :cond_3

    const/4 v4, 0x1

    :goto_1
    invoke-static {v3, v4}, Lcom/android/vending/AssetBrowserActivity;->access$202(Lcom/android/vending/AssetBrowserActivity;Z)Z

    .line 314
    iget-object v3, p0, Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    invoke-static {v3}, Lcom/android/vending/AssetBrowserActivity;->access$900(Lcom/android/vending/AssetBrowserActivity;)J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-eqz v3, :cond_2

    .line 315
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 316
    .local v1, "endTime":J
    iget-object v3, p0, Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    invoke-static {v3}, Lcom/android/vending/AssetBrowserActivity;->access$900(Lcom/android/vending/AssetBrowserActivity;)J

    move-result-wide v3

    const-string v5, "ABc"

    invoke-static {v3, v4, v1, v2, v5}, Lcom/android/vending/util/Log;->logElapsed(JJLjava/lang/String;)V

    .line 317
    iget-object v3, p0, Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    invoke-static {v3, v7, v8}, Lcom/android/vending/AssetBrowserActivity;->access$902(Lcom/android/vending/AssetBrowserActivity;J)J

    .line 319
    .end local v1    # "endTime":J
    :cond_2
    const-string v3, "AssetBrowserActivity loaded from cache"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/vending/util/Log;->end(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    iget-object v3, p0, Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    invoke-static {v3}, Lcom/android/vending/AssetBrowserActivity;->access$1000(Lcom/android/vending/AssetBrowserActivity;)V

    goto :goto_0

    :cond_3
    move v4, v6

    .line 312
    goto :goto_1
.end method

.method public loadMore()V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;->mLoadFeaturedAssetsAction:Lcom/android/vending/AssetBrowserActivity$LoadFeaturedAssetsAction;

    invoke-virtual {v0}, Lcom/android/vending/AssetBrowserActivity$LoadFeaturedAssetsAction;->loadMore()V

    .line 333
    return-void
.end method

.method public onGetAssetsResponse(Ljava/util/List;Ljava/util/List;)V
    .locals 2
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
    .line 293
    .local p1, "assets":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    .local p2, "correctedAssets":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    iget-object v0, p0, Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/vending/AssetBrowserActivity;->access$402(Lcom/android/vending/AssetBrowserActivity;Z)Z

    .line 294
    iget-object v0, p0, Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    iget-object v0, v0, Lcom/android/vending/AssetBrowserActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/vending/AssetItemAdapter;->onGetAssetsResponse(Ljava/util/List;Ljava/util/List;)V

    .line 295
    return-void
.end method

.method public prepare()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;->mLoadFeaturedAssetsAction:Lcom/android/vending/AssetBrowserActivity$LoadFeaturedAssetsAction;

    invoke-virtual {v0}, Lcom/android/vending/AssetBrowserActivity$LoadFeaturedAssetsAction;->prepare()V

    .line 257
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;->resetState()V

    .line 263
    iget-object v0, p0, Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    invoke-static {v0}, Lcom/android/vending/AssetBrowserActivity;->access$000(Lcom/android/vending/AssetBrowserActivity;)Lcom/android/vending/api/GetCategoriesService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/api/GetCategoriesService;->queueRequest()V

    .line 264
    iget-object v0, p0, Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    invoke-static {v0}, Lcom/android/vending/AssetBrowserActivity;->access$100(Lcom/android/vending/AssetBrowserActivity;)Lcom/android/vending/api/GetCarrierInfoService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/api/GetCarrierInfoService;->queueRequest()V

    .line 267
    iget-object v0, p0, Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    iget-object v0, v0, Lcom/android/vending/AssetBrowserActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction$1;

    invoke-direct {v1, p0}, Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction$1;-><init>(Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 282
    iget-object v0, p0, Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    iget-object v0, v0, Lcom/android/vending/AssetBrowserActivity;->mRequestManager:Lcom/android/vending/api/RequestManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/vending/api/RequestManager;->doRequestsFromCache(Z)Z

    .line 283
    iget-object v0, p0, Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    invoke-static {v0}, Lcom/android/vending/AssetBrowserActivity;->access$300(Lcom/android/vending/AssetBrowserActivity;)V

    .line 285
    iget-object v0, p0, Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    iget-object v0, v0, Lcom/android/vending/AssetBrowserActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction$2;

    invoke-direct {v1, p0}, Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction$2;-><init>(Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 290
    return-void
.end method
