.class Lcom/android/vending/velvet/CarouselView$ImageLoader;
.super Ljava/lang/Object;
.source "CarouselView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/velvet/CarouselView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageLoader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/velvet/CarouselView$ImageLoader$ImageLoaderRequest;
    }
.end annotation


# instance fields
.field private final mAssetIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAsynchRunner:Lcom/android/vending/AsynchRequestRunner;

.field private final mImageLoaderRequest:Lcom/android/vending/velvet/CarouselView$ImageLoader$ImageLoaderRequest;

.field private final mPendingRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestManager:Lcom/android/vending/api/RequestManager;

.field private final mService:Lcom/android/vending/api/GetImageService;

.field final synthetic this$0:Lcom/android/vending/velvet/CarouselView;


# direct methods
.method public constructor <init>(Lcom/android/vending/velvet/CarouselView;)V
    .locals 3

    .prologue
    .line 404
    iput-object p1, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader;->this$0:Lcom/android/vending/velvet/CarouselView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader;->mAssetIdList:Ljava/util/List;

    .line 406
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader;->mPendingRequests:Ljava/util/Set;

    .line 407
    invoke-static {p1}, Lcom/android/vending/velvet/CarouselView;->access$300(Lcom/android/vending/velvet/CarouselView;)Lcom/android/vending/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/BaseActivity;->getRequestManager()Lcom/android/vending/api/RequestManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader;->mRequestManager:Lcom/android/vending/api/RequestManager;

    .line 408
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getAsynchRequestRunner()Lcom/android/vending/AsynchRequestRunner;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader;->mAsynchRunner:Lcom/android/vending/AsynchRequestRunner;

    .line 409
    new-instance v0, Lcom/android/vending/velvet/CarouselView$ImageLoader$ImageLoaderRequest;

    invoke-direct {v0, p0}, Lcom/android/vending/velvet/CarouselView$ImageLoader$ImageLoaderRequest;-><init>(Lcom/android/vending/velvet/CarouselView$ImageLoader;)V

    iput-object v0, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader;->mImageLoaderRequest:Lcom/android/vending/velvet/CarouselView$ImageLoader$ImageLoaderRequest;

    .line 410
    new-instance v0, Lcom/android/vending/api/GetImageService;

    iget-object v1, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader;->mRequestManager:Lcom/android/vending/api/RequestManager;

    new-instance v2, Lcom/android/vending/velvet/CarouselView$ImageLoader$1;

    invoke-direct {v2, p0, p1}, Lcom/android/vending/velvet/CarouselView$ImageLoader$1;-><init>(Lcom/android/vending/velvet/CarouselView$ImageLoader;Lcom/android/vending/velvet/CarouselView;)V

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/GetImageService;-><init>(Lcom/android/vending/api/RequestManager;Lcom/android/vending/api/GetImageService$GetImageReceiver;)V

    iput-object v0, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader;->mService:Lcom/android/vending/api/GetImageService;

    .line 473
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/velvet/CarouselView$ImageLoader;)Lcom/android/vending/api/RequestManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/velvet/CarouselView$ImageLoader;

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader;->mRequestManager:Lcom/android/vending/api/RequestManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/vending/velvet/CarouselView$ImageLoader;)Lcom/android/vending/api/GetImageService;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/velvet/CarouselView$ImageLoader;

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader;->mService:Lcom/android/vending/api/GetImageService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/vending/velvet/CarouselView$ImageLoader;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/velvet/CarouselView$ImageLoader;

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader;->mPendingRequests:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method declared-synchronized loadNextBatch()V
    .locals 5

    .prologue
    .line 476
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader;->mAssetIdList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 487
    :goto_0
    monitor-exit p0

    return-void

    .line 479
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader;->mImageLoaderRequest:Lcom/android/vending/velvet/CarouselView$ImageLoader$ImageLoaderRequest;

    invoke-virtual {v3}, Lcom/android/vending/velvet/CarouselView$ImageLoader$ImageLoaderRequest;->reset()V

    .line 480
    iget-object v3, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader;->mAssetIdList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 481
    .local v2, "reqCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 482
    iget-object v3, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader;->mAssetIdList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 483
    .local v0, "assetId":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 484
    iget-object v3, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader;->mImageLoaderRequest:Lcom/android/vending/velvet/CarouselView$ImageLoader$ImageLoaderRequest;

    invoke-virtual {v3, v0}, Lcom/android/vending/velvet/CarouselView$ImageLoader$ImageLoaderRequest;->addAssetToLoad(Ljava/lang/String;)V

    .line 481
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 486
    .end local v0    # "assetId":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader;->mAsynchRunner:Lcom/android/vending/AsynchRequestRunner;

    iget-object v4, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader;->mImageLoaderRequest:Lcom/android/vending/velvet/CarouselView$ImageLoader$ImageLoaderRequest;

    invoke-virtual {v3, v4}, Lcom/android/vending/AsynchRequestRunner;->runRequest(Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 476
    .end local v1    # "i":I
    .end local v2    # "reqCount":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method declared-synchronized queueImagesForLoading(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 490
    .local p1, "assetIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 491
    .local v0, "assetId":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader;->mAssetIdList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 492
    iget-object v2, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader;->mAssetIdList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 490
    .end local v0    # "assetId":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 496
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 497
    invoke-virtual {p0}, Lcom/android/vending/velvet/CarouselView$ImageLoader;->loadNextBatch()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 499
    :cond_2
    monitor-exit p0

    return-void
.end method
