.class public Lcom/android/vending/api/GetImageService;
.super Lcom/android/vending/api/BaseService;
.source "GetImageService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/api/GetImageService$GetImageReceiver;
    }
.end annotation


# instance fields
.field private mDefaultBitmapConfig:Landroid/graphics/Bitmap$Config;

.field private final mImageReceiver:Lcom/android/vending/api/GetImageService$GetImageReceiver;

.field private mLoadingAssets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/vending/model/Asset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/vending/api/RequestManager;)V
    .locals 1
    .param p1, "requestMgr"    # Lcom/android/vending/api/RequestManager;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/vending/api/BaseService;-><init>(Lcom/android/vending/api/RequestManager;)V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vending/api/GetImageService;->mLoadingAssets:Ljava/util/Map;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vending/api/GetImageService;->mImageReceiver:Lcom/android/vending/api/GetImageService$GetImageReceiver;

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/android/vending/api/RequestManager;Lcom/android/vending/api/GetImageService$GetImageReceiver;)V
    .locals 1
    .param p1, "requestMgr"    # Lcom/android/vending/api/RequestManager;
    .param p2, "imageReceiver"    # Lcom/android/vending/api/GetImageService$GetImageReceiver;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/vending/api/BaseService;-><init>(Lcom/android/vending/api/RequestManager;)V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vending/api/GetImageService;->mLoadingAssets:Ljava/util/Map;

    .line 74
    iput-object p2, p0, Lcom/android/vending/api/GetImageService;->mImageReceiver:Lcom/android/vending/api/GetImageService$GetImageReceiver;

    .line 75
    return-void
.end method

.method private createImageRequest(Ljava/lang/String;Lcom/android/vending/model/Asset$AppImageUsage;Ljava/lang/String;Lcom/android/vending/model/PurchaseInfo$ProductType;)Lcom/android/vending/model/GetImageRequest;
    .locals 3
    .param p1, "assetId"    # Ljava/lang/String;
    .param p2, "usage"    # Lcom/android/vending/model/Asset$AppImageUsage;
    .param p3, "imageId"    # Ljava/lang/String;
    .param p4, "productType"    # Lcom/android/vending/model/PurchaseInfo$ProductType;

    .prologue
    .line 127
    new-instance v1, Lcom/android/vending/model/GetImageRequest;

    invoke-direct {v1}, Lcom/android/vending/model/GetImageRequest;-><init>()V

    .line 128
    .local v1, "imageRequest":Lcom/android/vending/model/GetImageRequest;
    if-eqz p1, :cond_0

    .line 129
    invoke-virtual {v1, p1}, Lcom/android/vending/model/GetImageRequest;->setAssetId(Ljava/lang/String;)V

    .line 131
    :cond_0
    if-eqz p2, :cond_1

    .line 132
    invoke-virtual {v1, p2}, Lcom/android/vending/model/GetImageRequest;->setUsage(Lcom/android/vending/model/Asset$AppImageUsage;)V

    .line 134
    :cond_1
    if-eqz p3, :cond_2

    .line 135
    invoke-virtual {v1, p3}, Lcom/android/vending/model/GetImageRequest;->setImageId(Ljava/lang/String;)V

    .line 137
    :cond_2
    sget-object v2, Lcom/android/vending/model/PurchaseInfo$ProductType;->MARKET_IN_APP_PRODUCT:Lcom/android/vending/model/PurchaseInfo$ProductType;

    if-ne p4, v2, :cond_3

    .line 138
    invoke-virtual {v1, p4}, Lcom/android/vending/model/GetImageRequest;->setProductType(Lcom/android/vending/model/PurchaseInfo$ProductType;)V

    .line 142
    :cond_3
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/vending/VendingApplication;->getDeviceConfiguration()Lcom/android/vending/model/DeviceConfiguration;

    move-result-object v0

    .line 144
    .local v0, "deviceConfig":Lcom/android/vending/model/DeviceConfiguration;
    invoke-virtual {v0}, Lcom/android/vending/model/DeviceConfiguration;->getScreenDensity()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/vending/model/GetImageRequest;->setScreenDensity(I)V

    .line 145
    invoke-virtual {v0}, Lcom/android/vending/model/DeviceConfiguration;->getScreenWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/vending/model/GetImageRequest;->setScreenWidth(I)V

    .line 146
    invoke-virtual {v0}, Lcom/android/vending/model/DeviceConfiguration;->getScreenHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/vending/model/GetImageRequest;->setScreenHeight(I)V

    .line 147
    return-object v1
.end method


# virtual methods
.method public getImage(Lcom/android/vending/model/Asset;Lcom/android/vending/model/Asset$AppImageUsage;I)V
    .locals 2
    .param p1, "asset"    # Lcom/android/vending/model/Asset;
    .param p2, "usage"    # Lcom/android/vending/model/Asset$AppImageUsage;
    .param p3, "imageId"    # I

    .prologue
    .line 93
    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/vending/api/GetImageService;->getImage(Ljava/lang/String;Lcom/android/vending/model/Asset$AppImageUsage;I)V

    .line 94
    iget-object v0, p0, Lcom/android/vending/api/GetImageService;->mLoadingAssets:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    return-void
.end method

.method public getImage(Ljava/lang/String;Lcom/android/vending/model/Asset$AppImageUsage;I)V
    .locals 2
    .param p1, "assetId"    # Ljava/lang/String;
    .param p2, "usage"    # Lcom/android/vending/model/Asset$AppImageUsage;
    .param p3, "imageId"    # I

    .prologue
    .line 102
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/vending/model/PurchaseInfo$ProductType;->MARKET_PRODUCT:Lcom/android/vending/model/PurchaseInfo$ProductType;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/vending/api/GetImageService;->getImage(Ljava/lang/String;Lcom/android/vending/model/Asset$AppImageUsage;Ljava/lang/String;Lcom/android/vending/model/PurchaseInfo$ProductType;)V

    .line 103
    return-void
.end method

.method public getImage(Ljava/lang/String;Lcom/android/vending/model/Asset$AppImageUsage;ILcom/android/vending/model/PurchaseInfo$ProductType;)V
    .locals 1
    .param p1, "assetId"    # Ljava/lang/String;
    .param p2, "usage"    # Lcom/android/vending/model/Asset$AppImageUsage;
    .param p3, "imageId"    # I
    .param p4, "productType"    # Lcom/android/vending/model/PurchaseInfo$ProductType;

    .prologue
    .line 107
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/android/vending/api/GetImageService;->getImage(Ljava/lang/String;Lcom/android/vending/model/Asset$AppImageUsage;Ljava/lang/String;Lcom/android/vending/model/PurchaseInfo$ProductType;)V

    .line 108
    return-void
.end method

.method public getImage(Ljava/lang/String;Lcom/android/vending/model/Asset$AppImageUsage;Ljava/lang/String;Lcom/android/vending/model/PurchaseInfo$ProductType;)V
    .locals 3
    .param p1, "assetId"    # Ljava/lang/String;
    .param p2, "usage"    # Lcom/android/vending/model/Asset$AppImageUsage;
    .param p3, "imageId"    # Ljava/lang/String;
    .param p4, "productType"    # Lcom/android/vending/model/PurchaseInfo$ProductType;

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/vending/api/GetImageService;->createImageRequest(Ljava/lang/String;Lcom/android/vending/model/Asset$AppImageUsage;Ljava/lang/String;Lcom/android/vending/model/PurchaseInfo$ProductType;)Lcom/android/vending/model/GetImageRequest;

    move-result-object v0

    .line 114
    .local v0, "imageRequest":Lcom/android/vending/model/GetImageRequest;
    new-instance v1, Lcom/android/vending/model/GetImageResponse;

    invoke-direct {v1}, Lcom/android/vending/model/GetImageResponse;-><init>()V

    .line 115
    .local v1, "imageResponse":Lcom/android/vending/model/GetImageResponse;
    iget-object v2, p0, Lcom/android/vending/api/GetImageService;->mDefaultBitmapConfig:Landroid/graphics/Bitmap$Config;

    if-eqz v2, :cond_0

    .line 116
    iget-object v2, p0, Lcom/android/vending/api/GetImageService;->mDefaultBitmapConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2}, Lcom/android/vending/model/GetImageResponse;->setDefaultBitmapConfig(Landroid/graphics/Bitmap$Config;)V

    .line 118
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/vending/api/GetImageService;->addRequest(Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;)Lcom/android/vending/api/RequestManager$BatchRequest;

    .line 119
    return-void
.end method

.method public getResponse()Lcom/android/vending/model/GetImageResponse;
    .locals 0

    .prologue
    .line 151
    iget-object p0, p0, Lcom/android/vending/api/GetImageService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    .end local p0    # "this":Lcom/android/vending/api/GetImageService;
    check-cast p0, Lcom/android/vending/model/GetImageResponse;

    return-object p0
.end method

.method public onResponse(Lcom/android/vending/api/RequestManager$BatchRequest;Z)V
    .locals 8
    .param p1, "request"    # Lcom/android/vending/api/RequestManager$BatchRequest;
    .param p2, "isCached"    # Z

    .prologue
    .line 156
    invoke-super {p0, p1, p2}, Lcom/android/vending/api/BaseService;->onResponse(Lcom/android/vending/api/RequestManager$BatchRequest;Z)V

    .line 157
    iget-object v5, p0, Lcom/android/vending/api/GetImageService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    check-cast v5, Lcom/android/vending/model/GetImageResponse;

    .line 158
    .local v5, "imageResponse":Lcom/android/vending/model/GetImageResponse;
    invoke-virtual {p1}, Lcom/android/vending/api/RequestManager$BatchRequest;->getBaseRequest()Lcom/android/vending/model/BaseRequest;

    move-result-object v4

    check-cast v4, Lcom/android/vending/model/GetImageRequest;

    .line 159
    .local v4, "imageRequest":Lcom/android/vending/model/GetImageRequest;
    invoke-virtual {v4}, Lcom/android/vending/model/GetImageRequest;->getImageUsage()Lcom/android/vending/model/Asset$AppImageUsage;

    move-result-object v6

    .line 160
    .local v6, "usage":Lcom/android/vending/model/Asset$AppImageUsage;
    const/4 v1, 0x0

    .line 161
    .local v1, "assetId":Ljava/lang/String;
    const/4 v0, 0x0

    .line 162
    .local v0, "asset":Lcom/android/vending/model/Asset;
    const/4 v3, -0x1

    .line 163
    .local v3, "imageId":I
    invoke-virtual {v4}, Lcom/android/vending/model/GetImageRequest;->hasAssetId()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 164
    invoke-virtual {v4}, Lcom/android/vending/model/GetImageRequest;->getAssetId()Ljava/lang/String;

    move-result-object v1

    .line 165
    iget-object v7, p0, Lcom/android/vending/api/GetImageService;->mLoadingAssets:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "asset":Lcom/android/vending/model/Asset;
    check-cast v0, Lcom/android/vending/model/Asset;

    .line 166
    .restart local v0    # "asset":Lcom/android/vending/model/Asset;
    invoke-virtual {v4}, Lcom/android/vending/model/GetImageRequest;->getImageIdAsInt()I

    move-result v3

    .line 169
    :cond_0
    invoke-virtual {v5}, Lcom/android/vending/model/GetImageResponse;->getImage()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 170
    .local v2, "image":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_2

    .line 171
    if-eqz v0, :cond_1

    .line 172
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v6, v3, v7}, Lcom/android/vending/model/Asset;->setBitmap(Lcom/android/vending/model/Asset$AppImageUsage;ILandroid/graphics/drawable/BitmapDrawable;)V

    .line 173
    sget-object v7, Lcom/android/vending/model/Asset$BitmapState;->LOADED:Lcom/android/vending/model/Asset$BitmapState;

    invoke-virtual {v0, v6, v3, v7}, Lcom/android/vending/model/Asset;->setBitmapState(Lcom/android/vending/model/Asset$AppImageUsage;ILcom/android/vending/model/Asset$BitmapState;)V

    .line 175
    :cond_1
    iget-object v7, p0, Lcom/android/vending/api/GetImageService;->mImageReceiver:Lcom/android/vending/api/GetImageService$GetImageReceiver;

    if-eqz v7, :cond_2

    .line 176
    iget-object v7, p0, Lcom/android/vending/api/GetImageService;->mImageReceiver:Lcom/android/vending/api/GetImageService$GetImageReceiver;

    invoke-interface {v7, v4, v5}, Lcom/android/vending/api/GetImageService$GetImageReceiver;->onGetImageResponse(Lcom/android/vending/model/GetImageRequest;Lcom/android/vending/model/GetImageResponse;)V

    .line 179
    :cond_2
    return-void
.end method

.method public setDefaultBitmapConfig(Landroid/graphics/Bitmap$Config;)V
    .locals 0
    .param p1, "defaultBitmapConfig"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/vending/api/GetImageService;->mDefaultBitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 82
    return-void
.end method
