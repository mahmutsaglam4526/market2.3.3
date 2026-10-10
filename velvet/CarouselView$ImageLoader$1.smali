.class Lcom/android/vending/velvet/CarouselView$ImageLoader$1;
.super Ljava/lang/Object;
.source "CarouselView.java"

# interfaces
.implements Lcom/android/vending/api/GetImageService$GetImageReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/velvet/CarouselView$ImageLoader;-><init>(Lcom/android/vending/velvet/CarouselView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/vending/velvet/CarouselView$ImageLoader;

.field final synthetic val$this$0:Lcom/android/vending/velvet/CarouselView;


# direct methods
.method constructor <init>(Lcom/android/vending/velvet/CarouselView$ImageLoader;Lcom/android/vending/velvet/CarouselView;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader$1;->this$1:Lcom/android/vending/velvet/CarouselView$ImageLoader;

    iput-object p2, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader$1;->val$this$0:Lcom/android/vending/velvet/CarouselView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/vending/velvet/CarouselView$ImageLoader$1;Lcom/android/vending/velvet/CarouselView$Thumbnail;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/velvet/CarouselView$ImageLoader$1;
    .param p1, "x1"    # Lcom/android/vending/velvet/CarouselView$Thumbnail;

    .prologue
    .line 411
    invoke-direct {p0, p1}, Lcom/android/vending/velvet/CarouselView$ImageLoader$1;->runThumbnailFadeIn(Lcom/android/vending/velvet/CarouselView$Thumbnail;)V

    return-void
.end method

.method private runThumbnailFadeIn(Lcom/android/vending/velvet/CarouselView$Thumbnail;)V
    .locals 4
    .param p1, "thumbnail"    # Lcom/android/vending/velvet/CarouselView$Thumbnail;

    .prologue
    .line 459
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/android/vending/compat/animation/ValueAnimator;->ofFloat([F)Lcom/android/vending/compat/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Lcom/android/vending/compat/animation/ValueAnimator;->setDuration(J)Lcom/android/vending/compat/animation/ValueAnimator;

    move-result-object v0

    .line 461
    .local v0, "fadeInAnimator":Lcom/android/vending/compat/animation/ValueAnimator;
    new-instance v1, Lcom/android/vending/velvet/CarouselView$ImageLoader$1$3;

    invoke-direct {v1, p0, p1}, Lcom/android/vending/velvet/CarouselView$ImageLoader$1$3;-><init>(Lcom/android/vending/velvet/CarouselView$ImageLoader$1;Lcom/android/vending/velvet/CarouselView$Thumbnail;)V

    invoke-virtual {v0, v1}, Lcom/android/vending/compat/animation/ValueAnimator;->addUpdateListener(Lcom/android/vending/compat/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 470
    invoke-virtual {v0}, Lcom/android/vending/compat/animation/ValueAnimator;->start()V

    .line 471
    return-void

    .line 459
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public onGetImageResponse(Lcom/android/vending/model/GetImageRequest;Lcom/android/vending/model/GetImageResponse;)V
    .locals 9
    .param p1, "request"    # Lcom/android/vending/model/GetImageRequest;
    .param p2, "response"    # Lcom/android/vending/model/GetImageResponse;

    .prologue
    .line 414
    invoke-virtual {p1}, Lcom/android/vending/model/GetImageRequest;->getAssetId()Ljava/lang/String;

    move-result-object v1

    .line 416
    .local v1, "assetId":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader$1;->this$1:Lcom/android/vending/velvet/CarouselView$ImageLoader;

    iget-object v7, v7, Lcom/android/vending/velvet/CarouselView$ImageLoader;->this$0:Lcom/android/vending/velvet/CarouselView;

    iget-object v0, v7, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    .local v0, "arr$":[Lcom/android/vending/velvet/CarouselView$Thumbnail;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_5

    aget-object v6, v0, v3

    .line 417
    .local v6, "thumbnail":Lcom/android/vending/velvet/CarouselView$Thumbnail;
    iget-boolean v7, v6, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mIsOffScreen:Z

    if-eqz v7, :cond_1

    .line 416
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 421
    :cond_1
    iget-object v7, v6, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mAssetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    iget-object v7, v7, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mAsset:Lcom/android/vending/model/Asset;

    if-eqz v7, :cond_0

    iget-object v7, v6, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mAssetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    iget-object v7, v7, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v7}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 426
    iget-object v7, v6, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mAssetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    iget-object v7, v7, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mBitmapRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v7}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_4

    const/4 v7, 0x1

    move v2, v7

    .line 429
    .local v2, "hadNoBitmapRef":Z
    :goto_2
    iget-object v7, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader$1;->this$1:Lcom/android/vending/velvet/CarouselView$ImageLoader;

    iget-object v7, v7, Lcom/android/vending/velvet/CarouselView$ImageLoader;->this$0:Lcom/android/vending/velvet/CarouselView;

    invoke-virtual {p2}, Lcom/android/vending/model/GetImageResponse;->getImage()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/vending/velvet/CarouselView;->getScaledBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 430
    .local v5, "scaledBitmap":Landroid/graphics/Bitmap;
    iget-object v7, v6, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mAssetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    new-instance v8, Ljava/lang/ref/SoftReference;

    invoke-direct {v8, v5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v8, v7, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mBitmapRef:Ljava/lang/ref/SoftReference;

    .line 432
    iget-boolean v7, v6, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mIsOffScreen:Z

    if-nez v7, :cond_2

    .line 435
    iget-object v7, v6, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mAssetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    iput-object v5, v7, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mStrongBitmapRef:Landroid/graphics/Bitmap;

    .line 438
    :cond_2
    if-eqz v2, :cond_3

    .line 442
    const/4 v7, 0x0

    iput v7, v6, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mFadeInAlpha:F

    .line 443
    iget-object v7, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader$1;->this$1:Lcom/android/vending/velvet/CarouselView$ImageLoader;

    iget-object v7, v7, Lcom/android/vending/velvet/CarouselView$ImageLoader;->this$0:Lcom/android/vending/velvet/CarouselView;

    new-instance v8, Lcom/android/vending/velvet/CarouselView$ImageLoader$1$1;

    invoke-direct {v8, p0, v6}, Lcom/android/vending/velvet/CarouselView$ImageLoader$1$1;-><init>(Lcom/android/vending/velvet/CarouselView$ImageLoader$1;Lcom/android/vending/velvet/CarouselView$Thumbnail;)V

    invoke-virtual {v7, v8}, Lcom/android/vending/velvet/CarouselView;->post(Ljava/lang/Runnable;)Z

    .line 450
    :cond_3
    iget-object v7, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader$1;->this$1:Lcom/android/vending/velvet/CarouselView$ImageLoader;

    iget-object v7, v7, Lcom/android/vending/velvet/CarouselView$ImageLoader;->this$0:Lcom/android/vending/velvet/CarouselView;

    invoke-static {v7}, Lcom/android/vending/velvet/CarouselView;->access$300(Lcom/android/vending/velvet/CarouselView;)Lcom/android/vending/BaseActivity;

    move-result-object v7

    new-instance v8, Lcom/android/vending/velvet/CarouselView$ImageLoader$1$2;

    invoke-direct {v8, p0}, Lcom/android/vending/velvet/CarouselView$ImageLoader$1$2;-><init>(Lcom/android/vending/velvet/CarouselView$ImageLoader$1;)V

    invoke-virtual {v7, v8}, Lcom/android/vending/BaseActivity;->postOnHandler(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 426
    .end local v2    # "hadNoBitmapRef":Z
    .end local v5    # "scaledBitmap":Landroid/graphics/Bitmap;
    :cond_4
    const/4 v7, 0x0

    move v2, v7

    goto :goto_2

    .line 456
    .end local v6    # "thumbnail":Lcom/android/vending/velvet/CarouselView$Thumbnail;
    :cond_5
    return-void
.end method
