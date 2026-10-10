.class Lcom/android/vending/CarrierChannelActivity$GetCarrierInfoAction;
.super Lcom/android/vending/AssetListActivity$PaginationAwareAction;
.source "CarrierChannelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/CarrierChannelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetCarrierInfoAction"
.end annotation


# instance fields
.field private mAppsAction:Lcom/android/vending/CarrierChannelActivity$GetCarrierAppsAction;

.field private mCarrierInfoService:Lcom/android/vending/api/GetCarrierInfoService;

.field final synthetic this$0:Lcom/android/vending/CarrierChannelActivity;


# direct methods
.method public constructor <init>(Lcom/android/vending/CarrierChannelActivity;Lcom/android/vending/BaseActivity;)V
    .locals 2
    .param p2, "activity"    # Lcom/android/vending/BaseActivity;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/vending/CarrierChannelActivity$GetCarrierInfoAction;->this$0:Lcom/android/vending/CarrierChannelActivity;

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/android/vending/AssetListActivity$PaginationAwareAction;-><init>(Lcom/android/vending/AssetListActivity;Lcom/android/vending/BaseActivity;)V

    .line 129
    new-instance v0, Lcom/android/vending/api/GetCarrierInfoService;

    iget-object v1, p1, Lcom/android/vending/CarrierChannelActivity;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-direct {v0, v1}, Lcom/android/vending/api/GetCarrierInfoService;-><init>(Lcom/android/vending/api/RequestManager;)V

    iput-object v0, p0, Lcom/android/vending/CarrierChannelActivity$GetCarrierInfoAction;->mCarrierInfoService:Lcom/android/vending/api/GetCarrierInfoService;

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/CarrierChannelActivity$GetCarrierInfoAction;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/CarrierChannelActivity$GetCarrierInfoAction;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/vending/CarrierChannelActivity$GetCarrierInfoAction;->tryLoadFromCacheAndDisplay()V

    return-void
.end method

.method private isLoadedFromCache()Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/vending/CarrierChannelActivity$GetCarrierInfoAction;->mCarrierInfoService:Lcom/android/vending/api/GetCarrierInfoService;

    invoke-virtual {v0}, Lcom/android/vending/api/GetCarrierInfoService;->hasResponse()Z

    move-result v0

    return v0
.end method

.method private tryLoadFromCacheAndDisplay()V
    .locals 3

    .prologue
    .line 138
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/vending/CarrierChannelActivity$GetCarrierInfoAction;->setTriedLoadFromCache(Z)V

    .line 139
    invoke-virtual {p0}, Lcom/android/vending/CarrierChannelActivity$GetCarrierInfoAction;->prepare()V

    .line 140
    iget-object v1, p0, Lcom/android/vending/CarrierChannelActivity$GetCarrierInfoAction;->mActionRequestManager:Lcom/android/vending/api/RequestManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/vending/api/RequestManager;->doRequestsFromCache(Z)Z

    .line 141
    invoke-direct {p0}, Lcom/android/vending/CarrierChannelActivity$GetCarrierInfoAction;->isLoadedFromCache()Z

    move-result v0

    .line 142
    .local v0, "isLoadedFromCache":Z
    invoke-virtual {p0, v0}, Lcom/android/vending/CarrierChannelActivity$GetCarrierInfoAction;->setLoadedFromCache(Z)V

    .line 143
    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/android/vending/CarrierChannelActivity$GetCarrierInfoAction;->displayResults()V

    .line 146
    :cond_0
    return-void
.end method


# virtual methods
.method protected displayResults()V
    .locals 5

    .prologue
    .line 156
    iget-object v3, p0, Lcom/android/vending/CarrierChannelActivity$GetCarrierInfoAction;->mCarrierInfoService:Lcom/android/vending/api/GetCarrierInfoService;

    invoke-virtual {v3}, Lcom/android/vending/api/GetCarrierInfoService;->getResponse()Lcom/android/vending/model/GetCarrierInfoResponse;

    move-result-object v1

    .line 157
    .local v1, "carrierResponse":Lcom/android/vending/model/GetCarrierInfoResponse;
    invoke-virtual {v1}, Lcom/android/vending/model/GetCarrierInfoResponse;->getCarrierBanner()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 160
    .local v0, "carrierBannerBitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/vending/CarrierChannelActivity$GetCarrierInfoAction;->this$0:Lcom/android/vending/CarrierChannelActivity;

    const v4, 0x7f0700f9

    invoke-virtual {v3, v4}, Lcom/android/vending/CarrierChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 161
    .local v2, "titleArea":Landroid/view/View;
    iget-object v3, p0, Lcom/android/vending/CarrierChannelActivity$GetCarrierInfoAction;->this$0:Lcom/android/vending/CarrierChannelActivity;

    invoke-static {v3}, Lcom/android/vending/CarrierChannelActivity;->access$100(Lcom/android/vending/CarrierChannelActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 163
    iget-object v3, p0, Lcom/android/vending/CarrierChannelActivity$GetCarrierInfoAction;->this$0:Lcom/android/vending/CarrierChannelActivity;

    invoke-virtual {v1}, Lcom/android/vending/model/GetCarrierInfoResponse;->getCarrierTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/vending/CarrierChannelActivity;->access$202(Lcom/android/vending/CarrierChannelActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 166
    return-void
.end method

.method protected getSubAction()Lcom/android/vending/BaseActivity$BaseAction;
    .locals 3

    .prologue
    .line 170
    new-instance v0, Lcom/android/vending/CarrierChannelActivity$GetCarrierAppsAction;

    iget-object v1, p0, Lcom/android/vending/CarrierChannelActivity$GetCarrierInfoAction;->this$0:Lcom/android/vending/CarrierChannelActivity;

    iget-object v2, p0, Lcom/android/vending/CarrierChannelActivity$GetCarrierInfoAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    invoke-direct {v0, v1, v2}, Lcom/android/vending/CarrierChannelActivity$GetCarrierAppsAction;-><init>(Lcom/android/vending/CarrierChannelActivity;Lcom/android/vending/BaseActivity;)V

    iput-object v0, p0, Lcom/android/vending/CarrierChannelActivity$GetCarrierInfoAction;->mAppsAction:Lcom/android/vending/CarrierChannelActivity$GetCarrierAppsAction;

    .line 171
    iget-object v0, p0, Lcom/android/vending/CarrierChannelActivity$GetCarrierInfoAction;->mAppsAction:Lcom/android/vending/CarrierChannelActivity$GetCarrierAppsAction;

    return-object v0
.end method

.method public loadMore()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/vending/CarrierChannelActivity$GetCarrierInfoAction;->mAppsAction:Lcom/android/vending/CarrierChannelActivity$GetCarrierAppsAction;

    invoke-virtual {v0}, Lcom/android/vending/CarrierChannelActivity$GetCarrierAppsAction;->loadMore()V

    .line 177
    return-void
.end method

.method public prepare()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/vending/CarrierChannelActivity$GetCarrierInfoAction;->mCarrierInfoService:Lcom/android/vending/api/GetCarrierInfoService;

    invoke-virtual {v0}, Lcom/android/vending/api/GetCarrierInfoService;->queueRequest()V

    .line 135
    return-void
.end method
