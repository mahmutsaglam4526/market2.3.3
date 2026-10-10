.class Lcom/android/vending/velvet/CarouselView$ImageLoader$ImageLoaderRequest;
.super Ljava/lang/Object;
.source "CarouselView.java"

# interfaces
.implements Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/velvet/CarouselView$ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageLoaderRequest"
.end annotation


# instance fields
.field private final mAssetIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/android/vending/velvet/CarouselView$ImageLoader;


# direct methods
.method public constructor <init>(Lcom/android/vending/velvet/CarouselView$ImageLoader;)V
    .locals 1

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader$ImageLoaderRequest;->this$1:Lcom/android/vending/velvet/CarouselView$ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader$ImageLoaderRequest;->mAssetIds:Ljava/util/Set;

    .line 382
    return-void
.end method


# virtual methods
.method addAssetToLoad(Ljava/lang/String;)V
    .locals 3
    .param p1, "assetId"    # Ljava/lang/String;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader$ImageLoaderRequest;->mAssetIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 391
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader$ImageLoaderRequest;->this$1:Lcom/android/vending/velvet/CarouselView$ImageLoader;

    invoke-static {v0}, Lcom/android/vending/velvet/CarouselView$ImageLoader;->access$100(Lcom/android/vending/velvet/CarouselView$ImageLoader;)Lcom/android/vending/api/GetImageService;

    move-result-object v0

    sget-object v1, Lcom/android/vending/model/Asset$AppImageUsage;->PROMO_BADGE:Lcom/android/vending/model/Asset$AppImageUsage;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/vending/api/GetImageService;->getImage(Ljava/lang/String;Lcom/android/vending/model/Asset$AppImageUsage;I)V

    .line 392
    return-void
.end method

.method public doRequest(Lcom/android/vending/api/RequestManager;)V
    .locals 1
    .param p1, "manager"    # Lcom/android/vending/api/RequestManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vending/api/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader$ImageLoaderRequest;->this$1:Lcom/android/vending/velvet/CarouselView$ImageLoader;

    invoke-static {v0}, Lcom/android/vending/velvet/CarouselView$ImageLoader;->access$000(Lcom/android/vending/velvet/CarouselView$ImageLoader;)Lcom/android/vending/api/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/api/RequestManager;->doRequests()V

    .line 396
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader$ImageLoaderRequest;->this$1:Lcom/android/vending/velvet/CarouselView$ImageLoader;

    invoke-static {v0}, Lcom/android/vending/velvet/CarouselView$ImageLoader;->access$200(Lcom/android/vending/velvet/CarouselView$ImageLoader;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 397
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader$ImageLoaderRequest;->this$1:Lcom/android/vending/velvet/CarouselView$ImageLoader;

    invoke-virtual {v0}, Lcom/android/vending/velvet/CarouselView$ImageLoader;->loadNextBatch()V

    .line 398
    return-void
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 401
    return-void
.end method

.method reset()V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader$ImageLoaderRequest;->mAssetIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 386
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader$ImageLoaderRequest;->this$1:Lcom/android/vending/velvet/CarouselView$ImageLoader;

    invoke-static {v0}, Lcom/android/vending/velvet/CarouselView$ImageLoader;->access$000(Lcom/android/vending/velvet/CarouselView$ImageLoader;)Lcom/android/vending/api/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/api/RequestManager;->reset()V

    .line 387
    return-void
.end method
