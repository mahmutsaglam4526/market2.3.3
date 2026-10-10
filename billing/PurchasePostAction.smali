.class public Lcom/android/vending/billing/PurchasePostAction;
.super Lcom/android/vending/BaseActivity$BaseAction;
.source "PurchasePostAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;
    }
.end annotation


# instance fields
.field private mAssetId:Ljava/lang/String;

.field private mAssetRequest:Lcom/android/vending/model/AssetRequest;

.field private final mAssetService:Lcom/android/vending/api/AssetService;

.field private mGetAssetsReceiver:Lcom/android/vending/api/AssetService$GetAssetsReceiver;

.field private mImageId:Ljava/lang/String;

.field private final mImageService:Lcom/android/vending/api/GetImageService;

.field private mImageUsage:Lcom/android/vending/model/Asset$AppImageUsage;

.field private final mInAppPurchaseService:Lcom/android/vending/api/InAppPurchaseService;

.field private mLastAssetId:Ljava/lang/String;

.field private mLastAssetRequest:Lcom/android/vending/model/AssetRequest;

.field private mLastImageId:Ljava/lang/String;

.field private mLastPurchaseMetadataRequest:Lcom/android/vending/model/PurchaseMetadataRequest;

.field private mLastPurchasePostRequest:Lcom/android/vending/model/PurchasePostRequest;

.field private mLastPurchaseProductRequest:Lcom/android/vending/model/PurchaseProductRequest;

.field private mListener:Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;

.field private mPurchaseMetadataRequest:Lcom/android/vending/model/PurchaseMetadataRequest;

.field private final mPurchaseMetadataService:Lcom/android/vending/api/PurchaseMetadataService;

.field private mPurchasePostRequest:Lcom/android/vending/model/PurchasePostRequest;

.field private final mPurchasePostService:Lcom/android/vending/api/PurchasePostService;

.field private mPurchaseProductRequest:Lcom/android/vending/model/PurchaseProductRequest;

.field private final mRequestManager:Lcom/android/vending/api/RequestManager;


# direct methods
.method public constructor <init>(Lcom/android/vending/BaseActivity;Lcom/android/vending/api/RequestManager;)V
    .locals 3
    .param p1, "activity"    # Lcom/android/vending/BaseActivity;
    .param p2, "requestManager"    # Lcom/android/vending/api/RequestManager;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/vending/BaseActivity$BaseAction;-><init>()V

    .line 66
    iput-object p2, p0, Lcom/android/vending/billing/PurchasePostAction;->mRequestManager:Lcom/android/vending/api/RequestManager;

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/vending/billing/PurchasePostAction;->setActivity(Lcom/android/vending/BaseActivity;)V

    .line 68
    new-instance v0, Lcom/android/vending/api/PurchasePostService;

    iget-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-direct {v0, v1}, Lcom/android/vending/api/PurchasePostService;-><init>(Lcom/android/vending/api/RequestManager;)V

    iput-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchasePostService:Lcom/android/vending/api/PurchasePostService;

    .line 69
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-static {v0}, Lcom/android/vending/api/InAppPurchaseService;->get(Lcom/android/vending/api/RequestManager;)Lcom/android/vending/api/InAppPurchaseService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mInAppPurchaseService:Lcom/android/vending/api/InAppPurchaseService;

    .line 70
    new-instance v0, Lcom/android/vending/api/AssetService;

    iget-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getCacheManager()Lcom/android/vending/cache/CacheManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/AssetService;-><init>(Lcom/android/vending/api/RequestManager;Lcom/android/vending/cache/CacheManager;)V

    iput-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetService:Lcom/android/vending/api/AssetService;

    .line 72
    new-instance v0, Lcom/android/vending/api/PurchaseMetadataService;

    iget-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-direct {v0, v1}, Lcom/android/vending/api/PurchaseMetadataService;-><init>(Lcom/android/vending/api/RequestManager;)V

    iput-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchaseMetadataService:Lcom/android/vending/api/PurchaseMetadataService;

    .line 73
    new-instance v0, Lcom/android/vending/api/GetImageService;

    iget-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-direct {v0, v1}, Lcom/android/vending/api/GetImageService;-><init>(Lcom/android/vending/api/RequestManager;)V

    iput-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mImageService:Lcom/android/vending/api/GetImageService;

    .line 74
    return-void
.end method

.method private resetRequests()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 311
    iput-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchaseMetadataRequest:Lcom/android/vending/model/PurchaseMetadataRequest;

    .line 312
    iput-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastPurchaseMetadataRequest:Lcom/android/vending/model/PurchaseMetadataRequest;

    .line 314
    iput-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetRequest:Lcom/android/vending/model/AssetRequest;

    .line 315
    iput-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastAssetRequest:Lcom/android/vending/model/AssetRequest;

    .line 317
    iput-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchasePostRequest:Lcom/android/vending/model/PurchasePostRequest;

    .line 318
    iput-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastPurchasePostRequest:Lcom/android/vending/model/PurchasePostRequest;

    .line 320
    iput-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchaseProductRequest:Lcom/android/vending/model/PurchaseProductRequest;

    .line 321
    iput-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastPurchaseProductRequest:Lcom/android/vending/model/PurchaseProductRequest;

    .line 323
    iput-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mImageId:Ljava/lang/String;

    .line 324
    iput-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastImageId:Ljava/lang/String;

    .line 326
    iput-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetId:Ljava/lang/String;

    .line 327
    iput-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastAssetId:Ljava/lang/String;

    .line 328
    return-void
.end method

.method private startRemainingRequests()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchaseMetadataRequest:Lcom/android/vending/model/PurchaseMetadataRequest;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchaseProductRequest:Lcom/android/vending/model/PurchaseProductRequest;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchasePostRequest:Lcom/android/vending/model/PurchasePostRequest;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mImageId:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 300
    :cond_0
    invoke-virtual {p0}, Lcom/android/vending/billing/PurchasePostAction;->start()V

    .line 302
    :cond_1
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 306
    invoke-super {p0}, Lcom/android/vending/BaseActivity$BaseAction;->cancel()V

    .line 307
    invoke-direct {p0}, Lcom/android/vending/billing/PurchasePostAction;->resetRequests()V

    .line 308
    return-void
.end method

.method public displayResults()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 248
    iget-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetRequest:Lcom/android/vending/model/AssetRequest;

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mListener:Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;

    invoke-interface {v1}, Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;->onAssetLoaded()V

    .line 251
    iput-object v3, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetRequest:Lcom/android/vending/model/AssetRequest;

    .line 252
    iput-object v3, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastAssetRequest:Lcom/android/vending/model/AssetRequest;

    .line 253
    invoke-direct {p0}, Lcom/android/vending/billing/PurchasePostAction;->startRemainingRequests()V

    .line 295
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 258
    iget-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mImageService:Lcom/android/vending/api/GetImageService;

    invoke-virtual {v1}, Lcom/android/vending/api/GetImageService;->getResponse()Lcom/android/vending/model/GetImageResponse;

    move-result-object v0

    .line 259
    .local v0, "response":Lcom/android/vending/model/GetImageResponse;
    iget-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mListener:Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;

    sget-object v2, Lcom/android/vending/model/Asset$AppImageUsage;->ICON:Lcom/android/vending/model/Asset$AppImageUsage;

    invoke-interface {v1, v0, v2}, Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;->onImageLoaded(Lcom/android/vending/model/GetImageResponse;Lcom/android/vending/model/Asset$AppImageUsage;)V

    .line 261
    iput-object v3, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetId:Ljava/lang/String;

    .line 262
    iput-object v3, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastAssetId:Ljava/lang/String;

    .line 263
    invoke-direct {p0}, Lcom/android/vending/billing/PurchasePostAction;->startRemainingRequests()V

    goto :goto_0

    .line 267
    .end local v0    # "response":Lcom/android/vending/model/GetImageResponse;
    :cond_1
    iget-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchaseMetadataRequest:Lcom/android/vending/model/PurchaseMetadataRequest;

    if-eqz v1, :cond_2

    .line 268
    iget-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchaseMetadataService:Lcom/android/vending/api/PurchaseMetadataService;

    invoke-virtual {v1}, Lcom/android/vending/api/PurchaseMetadataService;->getPurchaseMetadataResponse()Lcom/android/vending/model/PurchaseMetadataResponse;

    move-result-object v0

    .line 270
    .local v0, "response":Lcom/android/vending/model/PurchaseMetadataResponse;
    iget-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mListener:Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;

    invoke-interface {v1, v0}, Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;->onPurchaseMetadataResponse(Lcom/android/vending/model/PurchaseMetadataResponse;)V

    .line 273
    .end local v0    # "response":Lcom/android/vending/model/PurchaseMetadataResponse;
    :cond_2
    iget-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchasePostRequest:Lcom/android/vending/model/PurchasePostRequest;

    if-eqz v1, :cond_3

    .line 274
    iget-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchasePostService:Lcom/android/vending/api/PurchasePostService;

    invoke-virtual {v1}, Lcom/android/vending/api/PurchasePostService;->getPurchasePostResponse()Lcom/android/vending/model/PurchasePostResponse;

    move-result-object v0

    .line 275
    .local v0, "response":Lcom/android/vending/model/PurchasePostResponse;
    iget-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mListener:Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;

    invoke-interface {v1, v0}, Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;->onPostResponse(Lcom/android/vending/model/PurchasePostResponse;)V

    .line 283
    .end local v0    # "response":Lcom/android/vending/model/PurchasePostResponse;
    :cond_3
    iget-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchaseProductRequest:Lcom/android/vending/model/PurchaseProductRequest;

    if-eqz v1, :cond_4

    .line 284
    iget-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mInAppPurchaseService:Lcom/android/vending/api/InAppPurchaseService;

    invoke-virtual {v1}, Lcom/android/vending/api/InAppPurchaseService;->getPurchaseProductResponse()Lcom/android/vending/model/PurchaseProductResponse;

    move-result-object v0

    .line 286
    .local v0, "response":Lcom/android/vending/model/PurchaseProductResponse;
    iget-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mListener:Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;

    invoke-interface {v1, v0}, Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;->onPurchaseProductResponse(Lcom/android/vending/model/PurchaseProductResponse;)V

    .line 289
    .end local v0    # "response":Lcom/android/vending/model/PurchaseProductResponse;
    :cond_4
    iget-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mImageId:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 290
    iget-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mImageService:Lcom/android/vending/api/GetImageService;

    invoke-virtual {v1}, Lcom/android/vending/api/GetImageService;->getResponse()Lcom/android/vending/model/GetImageResponse;

    move-result-object v0

    .line 291
    .local v0, "response":Lcom/android/vending/model/GetImageResponse;
    iget-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mListener:Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;

    iget-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mImageUsage:Lcom/android/vending/model/Asset$AppImageUsage;

    invoke-interface {v1, v0, v2}, Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;->onImageLoaded(Lcom/android/vending/model/GetImageResponse;Lcom/android/vending/model/Asset$AppImageUsage;)V

    .line 294
    .end local v0    # "response":Lcom/android/vending/model/GetImageResponse;
    :cond_5
    invoke-direct {p0}, Lcom/android/vending/billing/PurchasePostAction;->resetRequests()V

    goto :goto_0
.end method

.method public executePostRequest(Lcom/android/vending/model/PurchasePostRequest;Lcom/android/vending/BaseActivity;Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;)V
    .locals 0
    .param p1, "request"    # Lcom/android/vending/model/PurchasePostRequest;
    .param p2, "activity"    # Lcom/android/vending/BaseActivity;
    .param p3, "listener"    # Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/android/vending/billing/PurchasePostAction;->queuePostRequest(Lcom/android/vending/model/PurchasePostRequest;)V

    .line 123
    invoke-virtual {p0, p2, p3}, Lcom/android/vending/billing/PurchasePostAction;->start(Lcom/android/vending/BaseActivity;Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;)V

    .line 124
    return-void
.end method

.method public getAssetService()Lcom/android/vending/api/AssetService;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetService:Lcom/android/vending/api/AssetService;

    return-object v0
.end method

.method protected onRequestComplete(Z)V
    .locals 2
    .param p1, "success"    # Z

    .prologue
    const/4 v1, 0x0

    .line 335
    if-nez p1, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetRequest:Lcom/android/vending/model/AssetRequest;

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetRequest:Lcom/android/vending/model/AssetRequest;

    iput-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastAssetRequest:Lcom/android/vending/model/AssetRequest;

    .line 344
    iput-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetRequest:Lcom/android/vending/model/AssetRequest;

    .line 361
    :goto_0
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mListener:Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;

    invoke-interface {v0}, Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;->onPurchasePostError()V

    .line 363
    :cond_0
    return-void

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 346
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastAssetId:Ljava/lang/String;

    .line 347
    iput-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetId:Ljava/lang/String;

    goto :goto_0

    .line 349
    :cond_2
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchaseMetadataRequest:Lcom/android/vending/model/PurchaseMetadataRequest;

    iput-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastPurchaseMetadataRequest:Lcom/android/vending/model/PurchaseMetadataRequest;

    .line 350
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchasePostRequest:Lcom/android/vending/model/PurchasePostRequest;

    iput-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastPurchasePostRequest:Lcom/android/vending/model/PurchasePostRequest;

    .line 351
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchaseProductRequest:Lcom/android/vending/model/PurchaseProductRequest;

    iput-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastPurchaseProductRequest:Lcom/android/vending/model/PurchaseProductRequest;

    .line 352
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mImageId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastImageId:Ljava/lang/String;

    .line 354
    iput-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchaseMetadataRequest:Lcom/android/vending/model/PurchaseMetadataRequest;

    .line 355
    iput-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchasePostRequest:Lcom/android/vending/model/PurchasePostRequest;

    .line 356
    iput-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchaseProductRequest:Lcom/android/vending/model/PurchaseProductRequest;

    .line 357
    iput-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mImageId:Ljava/lang/String;

    goto :goto_0
.end method

.method public prepare()V
    .locals 7

    .prologue
    .line 205
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 213
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetRequest:Lcom/android/vending/model/AssetRequest;

    if-eqz v2, :cond_1

    .line 214
    iget-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetService:Lcom/android/vending/api/AssetService;

    iget-object v3, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetRequest:Lcom/android/vending/model/AssetRequest;

    iget-object v4, p0, Lcom/android/vending/billing/PurchasePostAction;->mGetAssetsReceiver:Lcom/android/vending/api/AssetService$GetAssetsReceiver;

    invoke-virtual {v2, v3, v4}, Lcom/android/vending/api/AssetService;->queueGetAssets(Lcom/android/vending/model/AssetRequest;Lcom/android/vending/api/AssetService$GetAssetsReceiver;)V

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetId:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 225
    iget-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mImageService:Lcom/android/vending/api/GetImageService;

    iget-object v3, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetId:Ljava/lang/String;

    sget-object v4, Lcom/android/vending/model/Asset$AppImageUsage;->ICON:Lcom/android/vending/model/Asset$AppImageUsage;

    const/4 v5, 0x0

    sget-object v6, Lcom/android/vending/model/PurchaseInfo$ProductType;->MARKET_IN_APP_PRODUCT:Lcom/android/vending/model/PurchaseInfo$ProductType;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/vending/api/GetImageService;->getImage(Ljava/lang/String;Lcom/android/vending/model/Asset$AppImageUsage;ILcom/android/vending/model/PurchaseInfo$ProductType;)V

    goto :goto_0

    .line 230
    :cond_2
    iget-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchaseMetadataRequest:Lcom/android/vending/model/PurchaseMetadataRequest;

    if-eqz v2, :cond_3

    .line 231
    iget-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchaseMetadataService:Lcom/android/vending/api/PurchaseMetadataService;

    iget-object v3, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchaseMetadataRequest:Lcom/android/vending/model/PurchaseMetadataRequest;

    invoke-virtual {v2, v3}, Lcom/android/vending/api/PurchaseMetadataService;->queueGetPurchaseMetadata(Lcom/android/vending/model/PurchaseMetadataRequest;)V

    .line 233
    :cond_3
    iget-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchasePostRequest:Lcom/android/vending/model/PurchasePostRequest;

    if-eqz v2, :cond_4

    .line 234
    iget-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchasePostService:Lcom/android/vending/api/PurchasePostService;

    iget-object v3, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchasePostRequest:Lcom/android/vending/model/PurchasePostRequest;

    invoke-virtual {v2, v3}, Lcom/android/vending/api/PurchasePostService;->purchasePost(Lcom/android/vending/model/PurchasePostRequest;)V

    .line 236
    :cond_4
    iget-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchaseProductRequest:Lcom/android/vending/model/PurchaseProductRequest;

    if-eqz v2, :cond_5

    .line 237
    iget-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mInAppPurchaseService:Lcom/android/vending/api/InAppPurchaseService;

    iget-object v3, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchaseProductRequest:Lcom/android/vending/model/PurchaseProductRequest;

    invoke-virtual {v2, v3}, Lcom/android/vending/api/InAppPurchaseService;->queueRequest(Lcom/android/vending/model/PurchaseProductRequest;)Lcom/android/vending/model/PurchaseProductResponse;

    .line 239
    :cond_5
    iget-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mImageId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 240
    iget-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mImageService:Lcom/android/vending/api/GetImageService;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/vending/billing/PurchasePostAction;->mImageUsage:Lcom/android/vending/model/Asset$AppImageUsage;

    iget-object v5, p0, Lcom/android/vending/billing/PurchasePostAction;->mImageId:Ljava/lang/String;

    sget-object v6, Lcom/android/vending/model/PurchaseInfo$ProductType;->MARKET_PRODUCT:Lcom/android/vending/model/PurchaseInfo$ProductType;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/vending/api/GetImageService;->getImage(Ljava/lang/String;Lcom/android/vending/model/Asset$AppImageUsage;Ljava/lang/String;Lcom/android/vending/model/PurchaseInfo$ProductType;)V

    goto :goto_0
.end method

.method public queueAssetRequest(Lcom/android/vending/model/AssetRequest;Lcom/android/vending/api/AssetService$GetAssetsReceiver;)V
    .locals 1
    .param p1, "request"    # Lcom/android/vending/model/AssetRequest;
    .param p2, "receiver"    # Lcom/android/vending/api/AssetService$GetAssetsReceiver;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetRequest:Lcom/android/vending/model/AssetRequest;

    if-nez v0, :cond_0

    .line 156
    iput-object p1, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetRequest:Lcom/android/vending/model/AssetRequest;

    .line 157
    iput-object p2, p0, Lcom/android/vending/billing/PurchasePostAction;->mGetAssetsReceiver:Lcom/android/vending/api/AssetService$GetAssetsReceiver;

    .line 159
    :cond_0
    return-void
.end method

.method public queueIconRequest(Ljava/lang/String;)V
    .locals 1
    .param p1, "assetId"    # Ljava/lang/String;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 195
    iput-object p1, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetId:Ljava/lang/String;

    .line 197
    :cond_0
    return-void
.end method

.method public queueImageRequest(Lcom/android/vending/model/Asset$AppImageUsage;Ljava/lang/String;)V
    .locals 1
    .param p1, "usage"    # Lcom/android/vending/model/Asset$AppImageUsage;
    .param p2, "imageId"    # Ljava/lang/String;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mImageId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 179
    iput-object p1, p0, Lcom/android/vending/billing/PurchasePostAction;->mImageUsage:Lcom/android/vending/model/Asset$AppImageUsage;

    .line 180
    iput-object p2, p0, Lcom/android/vending/billing/PurchasePostAction;->mImageId:Ljava/lang/String;

    .line 182
    :cond_0
    return-void
.end method

.method public queueMetadataRequest(Lcom/android/vending/model/PurchaseMetadataRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/android/vending/model/PurchaseMetadataRequest;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchaseMetadataRequest:Lcom/android/vending/model/PurchaseMetadataRequest;

    if-nez v0, :cond_0

    .line 168
    iput-object p1, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchaseMetadataRequest:Lcom/android/vending/model/PurchaseMetadataRequest;

    .line 170
    :cond_0
    return-void
.end method

.method public queuePostRequest(Lcom/android/vending/model/PurchasePostRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/android/vending/model/PurchasePostRequest;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchasePostRequest:Lcom/android/vending/model/PurchasePostRequest;

    if-nez v0, :cond_0

    .line 133
    iput-object p1, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchasePostRequest:Lcom/android/vending/model/PurchasePostRequest;

    .line 135
    :cond_0
    return-void
.end method

.method public queuePurchaseProductRequest(Lcom/android/vending/model/PurchaseProductRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/android/vending/model/PurchaseProductRequest;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchaseProductRequest:Lcom/android/vending/model/PurchaseProductRequest;

    if-nez v0, :cond_0

    .line 144
    iput-object p1, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchaseProductRequest:Lcom/android/vending/model/PurchaseProductRequest;

    .line 146
    :cond_0
    return-void
.end method

.method public retry()V
    .locals 3

    .prologue
    .line 367
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 368
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastAssetRequest:Lcom/android/vending/model/AssetRequest;

    if-eqz v2, :cond_0

    .line 369
    iget-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastAssetRequest:Lcom/android/vending/model/AssetRequest;

    iput-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetRequest:Lcom/android/vending/model/AssetRequest;

    .line 370
    invoke-super {p0}, Lcom/android/vending/BaseActivity$BaseAction;->retry()V

    .line 393
    :goto_0
    return-void

    .line 374
    :cond_0
    iget-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastAssetId:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 375
    iget-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastAssetId:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetId:Ljava/lang/String;

    .line 376
    invoke-super {p0}, Lcom/android/vending/BaseActivity$BaseAction;->retry()V

    goto :goto_0

    .line 380
    :cond_1
    iget-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastPurchasePostRequest:Lcom/android/vending/model/PurchasePostRequest;

    if-eqz v2, :cond_2

    .line 381
    iget-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastPurchasePostRequest:Lcom/android/vending/model/PurchasePostRequest;

    iput-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchasePostRequest:Lcom/android/vending/model/PurchasePostRequest;

    .line 383
    :cond_2
    iget-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastPurchaseProductRequest:Lcom/android/vending/model/PurchaseProductRequest;

    if-eqz v2, :cond_3

    .line 384
    iget-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastPurchaseProductRequest:Lcom/android/vending/model/PurchaseProductRequest;

    iput-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchaseProductRequest:Lcom/android/vending/model/PurchaseProductRequest;

    .line 386
    :cond_3
    iget-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastPurchaseMetadataRequest:Lcom/android/vending/model/PurchaseMetadataRequest;

    if-eqz v2, :cond_4

    .line 387
    iget-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastPurchaseMetadataRequest:Lcom/android/vending/model/PurchaseMetadataRequest;

    iput-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchaseMetadataRequest:Lcom/android/vending/model/PurchaseMetadataRequest;

    .line 389
    :cond_4
    iget-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastImageId:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 390
    iget-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastImageId:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mImageId:Ljava/lang/String;

    .line 392
    :cond_5
    invoke-super {p0}, Lcom/android/vending/BaseActivity$BaseAction;->retry()V

    goto :goto_0
.end method

.method public setActivity(Lcom/android/vending/BaseActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/vending/BaseActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-super {p0, p1, v0}, Lcom/android/vending/BaseActivity$BaseAction;->setActivity(Lcom/android/vending/BaseActivity;Lcom/android/vending/api/RequestManager;)V

    .line 85
    return-void
.end method

.method public setListener(Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/vending/billing/PurchasePostAction;->mListener:Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;

    .line 95
    return-void
.end method

.method public start(Lcom/android/vending/BaseActivity;Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;)V
    .locals 0
    .param p1, "activity"    # Lcom/android/vending/BaseActivity;
    .param p2, "listener"    # Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/vending/billing/PurchasePostAction;->setActivity(Lcom/android/vending/BaseActivity;)V

    .line 106
    invoke-virtual {p0, p2}, Lcom/android/vending/billing/PurchasePostAction;->setListener(Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/vending/billing/PurchasePostAction;->start()V

    .line 108
    return-void
.end method
