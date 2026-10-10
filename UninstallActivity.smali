.class public Lcom/android/vending/UninstallActivity;
.super Lcom/android/vending/BaseActivity;
.source "UninstallActivity.java"

# interfaces
.implements Lcom/android/vending/AssetItemAdapter$OnImagesLoadedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/UninstallActivity$4;,
        Lcom/android/vending/UninstallActivity$ReportApplicationRequest;,
        Lcom/android/vending/UninstallActivity$AsynchUninstallReasonRequest;,
        Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor;,
        Lcom/android/vending/UninstallActivity$RefundAction;,
        Lcom/android/vending/UninstallActivity$UninstallApplicationLoader;,
        Lcom/android/vending/UninstallActivity$RefundFailedDialogAccessor;,
        Lcom/android/vending/UninstallActivity$UninstallState;
    }
.end annotation


# instance fields
.field protected mActualAssetId:Ljava/lang/String;

.field private mAsset:Lcom/android/vending/model/Asset;

.field private mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

.field private mAssetService:Lcom/android/vending/api/AssetService;

.field private mButtons:Landroid/view/View;

.field private mLeftButton:Landroid/widget/Button;

.field private mRefundFailedAccessor:Lcom/android/vending/controller/DialogAccessor;

.field private mReportAppDialog:Lcom/android/vending/controller/DialogAccessor;

.field protected mServerAssetId:Ljava/lang/String;

.field private mSnippetView:Landroid/view/View;

.field private mThumbnailView:Landroid/widget/ImageView;

.field private mUninstallProgressLayout:Landroid/widget/FrameLayout;

.field private mUninstallState:Lcom/android/vending/UninstallActivity$UninstallState;

.field private mUninstallStatusLayout:Landroid/widget/FrameLayout;

.field private mUninstallSucceeded:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/vending/BaseActivity;-><init>()V

    .line 522
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/UninstallActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/UninstallActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/vending/UninstallActivity;->updateLocalStateDependentUi()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/vending/UninstallActivity;)Lcom/android/vending/controller/DialogAccessor;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/UninstallActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/vending/UninstallActivity;->mReportAppDialog:Lcom/android/vending/controller/DialogAccessor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/vending/UninstallActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/UninstallActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/vending/UninstallActivity;->mLeftButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/vending/UninstallActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/UninstallActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/vending/UninstallActivity;->performUninstall()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/vending/UninstallActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/UninstallActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/vending/UninstallActivity;->setupView()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/vending/UninstallActivity;)Lcom/android/vending/model/Asset;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/UninstallActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/vending/UninstallActivity;->mAsset:Lcom/android/vending/model/Asset;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/vending/UninstallActivity;)Lcom/android/vending/api/AssetService;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/UninstallActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/vending/UninstallActivity;->mAssetService:Lcom/android/vending/api/AssetService;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/vending/UninstallActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/UninstallActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/vending/UninstallActivity;->displayRefundFailedDialog()V

    return-void
.end method

.method private displayRefundFailedDialog()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/vending/UninstallActivity;->mRefundFailedAccessor:Lcom/android/vending/controller/DialogAccessor;

    invoke-virtual {p0, v0}, Lcom/android/vending/UninstallActivity;->displayDialog(Lcom/android/vending/controller/DialogAccessor;)V

    .line 334
    return-void
.end method

.method private performRefund()V
    .locals 2

    .prologue
    .line 238
    const v1, 0x7f070104

    invoke-virtual {p0, v1}, Lcom/android/vending/UninstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 239
    .local v0, "text":Landroid/widget/TextView;
    const v1, 0x7f0600d1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 241
    new-instance v1, Lcom/android/vending/UninstallActivity$RefundAction;

    invoke-direct {v1, p0}, Lcom/android/vending/UninstallActivity$RefundAction;-><init>(Lcom/android/vending/UninstallActivity;)V

    invoke-virtual {v1}, Lcom/android/vending/UninstallActivity$RefundAction;->start()V

    .line 242
    return-void
.end method

.method private performUninstall()V
    .locals 2

    .prologue
    .line 245
    const v1, 0x7f070104

    invoke-virtual {p0, v1}, Lcom/android/vending/UninstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 246
    .local v0, "text":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/vending/UninstallActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v1, p0}, Lcom/android/vending/model/Asset;->isUpdatedSystemApp(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    const v1, 0x7f060166

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 253
    :goto_0
    iget-object v1, p0, Lcom/android/vending/UninstallActivity;->mActualAssetId:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/vending/model/Asset;->uninstallById(Ljava/lang/String;)V

    .line 254
    return-void

    .line 249
    :cond_0
    const v1, 0x7f060165

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private setupUninstallProgressView()V
    .locals 3

    .prologue
    .line 224
    const v1, 0x7f0700bd

    invoke-virtual {p0, v1}, Lcom/android/vending/UninstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 225
    .local v0, "progressBar":Landroid/widget/ProgressBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 227
    iget-object v1, p0, Lcom/android/vending/UninstallActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v1}, Lcom/android/vending/model/Asset;->isRefundable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/android/vending/UninstallActivity;->performRefund()V

    .line 233
    :goto_0
    iget-object v1, p0, Lcom/android/vending/UninstallActivity;->mUninstallProgressLayout:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 234
    return-void

    .line 230
    :cond_0
    invoke-direct {p0}, Lcom/android/vending/UninstallActivity;->performUninstall()V

    goto :goto_0
.end method

.method private setupUninstallStatusView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 257
    const v2, 0x7f070106

    invoke-virtual {p0, v2}, Lcom/android/vending/UninstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 258
    .local v1, "uninstallFailed":Landroid/view/View;
    iget-boolean v2, p0, Lcom/android/vending/UninstallActivity;->mUninstallSucceeded:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 260
    iget-object v2, p0, Lcom/android/vending/UninstallActivity;->mLeftButton:Landroid/widget/Button;

    const v3, 0x7f06002b

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 261
    const v2, 0x7f070107

    invoke-virtual {p0, v2}, Lcom/android/vending/UninstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 264
    .local v0, "radioGroup":Landroid/widget/RadioGroup;
    iget-object v2, p0, Lcom/android/vending/UninstallActivity;->mLeftButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/vending/UninstallActivity$2;

    invoke-direct {v3, p0, v0}, Lcom/android/vending/UninstallActivity$2;-><init>(Lcom/android/vending/UninstallActivity;Landroid/widget/RadioGroup;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object v2, p0, Lcom/android/vending/UninstallActivity;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 281
    new-instance v2, Lcom/android/vending/UninstallActivity$3;

    invoke-direct {v2, p0}, Lcom/android/vending/UninstallActivity$3;-><init>(Lcom/android/vending/UninstallActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 289
    iget-object v2, p0, Lcom/android/vending/UninstallActivity;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 290
    iget-object v2, p0, Lcom/android/vending/UninstallActivity;->mButtons:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 292
    iget-object v2, p0, Lcom/android/vending/UninstallActivity;->mUninstallStatusLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 293
    return-void

    .end local v0    # "radioGroup":Landroid/widget/RadioGroup;
    :cond_0
    move v2, v5

    .line 258
    goto :goto_0

    .restart local v0    # "radioGroup":Landroid/widget/RadioGroup;
    :cond_1
    move v3, v5

    .line 280
    goto :goto_1
.end method

.method private setupView()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 198
    iget-object v0, p0, Lcom/android/vending/UninstallActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/vending/AssetItemAdapter;->getAsset(I)Lcom/android/vending/model/Asset;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/UninstallActivity;->mAsset:Lcom/android/vending/model/Asset;

    .line 199
    invoke-virtual {p0}, Lcom/android/vending/UninstallActivity;->getSharedParameters()Lcom/android/vending/controller/RequestParameters;

    move-result-object v0

    const-string v1, "asset"

    iget-object v2, p0, Lcom/android/vending/UninstallActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/controller/RequestParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-direct {p0}, Lcom/android/vending/UninstallActivity;->updateSnippet()V

    .line 205
    iget-object v0, p0, Lcom/android/vending/UninstallActivity;->mButtons:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/android/vending/UninstallActivity;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/android/vending/UninstallActivity;->mUninstallProgressLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/android/vending/UninstallActivity;->mUninstallStatusLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 211
    sget-object v0, Lcom/android/vending/UninstallActivity$4;->$SwitchMap$com$android$vending$UninstallActivity$UninstallState:[I

    iget-object v1, p0, Lcom/android/vending/UninstallActivity;->mUninstallState:Lcom/android/vending/UninstallActivity$UninstallState;

    invoke-virtual {v1}, Lcom/android/vending/UninstallActivity$UninstallState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 220
    :goto_0
    return-void

    .line 213
    :pswitch_0
    invoke-direct {p0}, Lcom/android/vending/UninstallActivity;->setupUninstallProgressView()V

    goto :goto_0

    .line 217
    :pswitch_1
    invoke-direct {p0}, Lcom/android/vending/UninstallActivity;->setupUninstallStatusView()V

    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateLocalStateDependentUi()V
    .locals 3

    .prologue
    .line 179
    iget-object v2, p0, Lcom/android/vending/UninstallActivity;->mAsset:Lcom/android/vending/model/Asset;

    if-nez v2, :cond_0

    .line 192
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v2, p0, Lcom/android/vending/UninstallActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v2}, Lcom/android/vending/model/Asset;->findMatchingLocalAsset()Lcom/android/vending/model/LocalAsset;

    move-result-object v0

    .line 184
    .local v0, "localAsset":Lcom/android/vending/model/LocalAsset;
    if-nez v0, :cond_2

    sget-object v2, Lcom/android/vending/model/LocalAssetInfo$AssetState;->UNINSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-object v1, v2

    .line 185
    .local v1, "newState":Lcom/android/vending/model/LocalAssetInfo$AssetState;
    :goto_1
    sget-object v2, Lcom/android/vending/model/LocalAssetInfo$AssetState;->UNINSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/android/vending/model/LocalAssetInfo$AssetState;->UNINSTALL_FAILED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-ne v1, v2, :cond_4

    .line 186
    :cond_1
    sget-object v2, Lcom/android/vending/UninstallActivity$UninstallState;->UNINSTALL_STATUS:Lcom/android/vending/UninstallActivity$UninstallState;

    iput-object v2, p0, Lcom/android/vending/UninstallActivity;->mUninstallState:Lcom/android/vending/UninstallActivity$UninstallState;

    .line 187
    sget-object v2, Lcom/android/vending/model/LocalAssetInfo$AssetState;->UNINSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-ne v1, v2, :cond_3

    const/4 v2, 0x1

    :goto_2
    iput-boolean v2, p0, Lcom/android/vending/UninstallActivity;->mUninstallSucceeded:Z

    .line 188
    invoke-direct {p0}, Lcom/android/vending/UninstallActivity;->setupView()V

    goto :goto_0

    .line 184
    .end local v1    # "newState":Lcom/android/vending/model/LocalAssetInfo$AssetState;
    :cond_2
    invoke-virtual {v0}, Lcom/android/vending/model/LocalAsset;->getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-result-object v2

    move-object v1, v2

    goto :goto_1

    .line 187
    .restart local v1    # "newState":Lcom/android/vending/model/LocalAssetInfo$AssetState;
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 190
    :cond_4
    invoke-direct {p0}, Lcom/android/vending/UninstallActivity;->updateSnippet()V

    goto :goto_0
.end method

.method private updateSnippet()V
    .locals 5

    .prologue
    .line 296
    const v1, 0x7f07003f

    invoke-virtual {p0, v1}, Lcom/android/vending/UninstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 297
    .local v0, "appInfoView":Landroid/widget/FrameLayout;
    iget-object v1, p0, Lcom/android/vending/UninstallActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/vending/UninstallActivity;->mSnippetView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/vending/AssetItemAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/UninstallActivity;->mSnippetView:Landroid/view/View;

    .line 298
    iget-object v1, p0, Lcom/android/vending/UninstallActivity;->mSnippetView:Landroid/view/View;

    const v2, 0x7f07001e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/vending/UninstallActivity;->mThumbnailView:Landroid/widget/ImageView;

    .line 299
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 300
    iget-object v1, p0, Lcom/android/vending/UninstallActivity;->mSnippetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 301
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 109
    invoke-super {p0, p1}, Lcom/android/vending/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0, v5}, Lcom/android/vending/UninstallActivity;->requestWindowFeature(I)Z

    .line 112
    new-instance v1, Lcom/android/vending/api/AssetService;

    iget-object v2, p0, Lcom/android/vending/UninstallActivity;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getCacheManager()Lcom/android/vending/cache/CacheManager;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/vending/api/AssetService;-><init>(Lcom/android/vending/api/RequestManager;Lcom/android/vending/cache/CacheManager;)V

    iput-object v1, p0, Lcom/android/vending/UninstallActivity;->mAssetService:Lcom/android/vending/api/AssetService;

    .line 114
    new-instance v1, Lcom/android/vending/AssetItemAdapter;

    iget-object v2, p0, Lcom/android/vending/UninstallActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/vending/AssetItemAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/vending/UninstallActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    .line 115
    iget-object v1, p0, Lcom/android/vending/UninstallActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v1, p0}, Lcom/android/vending/AssetItemAdapter;->addImagesLoadedListener(Lcom/android/vending/AssetItemAdapter$OnImagesLoadedListener;)V

    .line 116
    iget-object v1, p0, Lcom/android/vending/UninstallActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    sget-object v2, Lcom/android/vending/AssetItemAdapter$ViewType;->SNIPPET_VIEW:Lcom/android/vending/AssetItemAdapter$ViewType;

    invoke-virtual {v1, v2}, Lcom/android/vending/AssetItemAdapter;->setViewType(Lcom/android/vending/AssetItemAdapter$ViewType;)V

    .line 117
    iget-object v1, p0, Lcom/android/vending/UninstallActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    new-instance v2, Lcom/android/vending/UninstallActivity$1;

    invoke-direct {v2, p0}, Lcom/android/vending/UninstallActivity$1;-><init>(Lcom/android/vending/UninstallActivity;)V

    invoke-virtual {v1, v2}, Lcom/android/vending/AssetItemAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 127
    const v1, 0x7f030051

    invoke-virtual {p0, v1}, Lcom/android/vending/UninstallActivity;->setContentView(I)V

    .line 129
    sget-object v1, Lcom/android/vending/UninstallActivity$UninstallState;->UNINSTALL_PROGRESS:Lcom/android/vending/UninstallActivity$UninstallState;

    iput-object v1, p0, Lcom/android/vending/UninstallActivity;->mUninstallState:Lcom/android/vending/UninstallActivity$UninstallState;

    .line 130
    invoke-virtual {p0}, Lcom/android/vending/UninstallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "assetidserver"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/UninstallActivity;->mServerAssetId:Ljava/lang/String;

    .line 131
    invoke-virtual {p0}, Lcom/android/vending/UninstallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "assetid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/UninstallActivity;->mActualAssetId:Ljava/lang/String;

    .line 133
    if-eqz p1, :cond_1

    .line 134
    const-string v1, "uninstall_state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "stateStr":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 136
    invoke-static {v0}, Lcom/android/vending/UninstallActivity$UninstallState;->valueOf(Ljava/lang/String;)Lcom/android/vending/UninstallActivity$UninstallState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/UninstallActivity;->mUninstallState:Lcom/android/vending/UninstallActivity$UninstallState;

    .line 138
    :cond_0
    const-string v1, "uninstall_result"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/vending/UninstallActivity;->mUninstallSucceeded:Z

    .line 141
    .end local v0    # "stateStr":Ljava/lang/String;
    :cond_1
    const v1, 0x7f070103

    invoke-virtual {p0, v1}, Lcom/android/vending/UninstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/vending/UninstallActivity;->mUninstallProgressLayout:Landroid/widget/FrameLayout;

    .line 142
    const v1, 0x7f070105

    invoke-virtual {p0, v1}, Lcom/android/vending/UninstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/vending/UninstallActivity;->mUninstallStatusLayout:Landroid/widget/FrameLayout;

    .line 144
    const v1, 0x7f07010d

    invoke-virtual {p0, v1}, Lcom/android/vending/UninstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/vending/UninstallActivity;->mLeftButton:Landroid/widget/Button;

    .line 145
    const v1, 0x7f0700ac

    invoke-virtual {p0, v1}, Lcom/android/vending/UninstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/UninstallActivity;->mButtons:Landroid/view/View;

    .line 147
    new-instance v1, Lcom/android/vending/UninstallActivity$RefundFailedDialogAccessor;

    invoke-direct {v1, p0, v6}, Lcom/android/vending/UninstallActivity$RefundFailedDialogAccessor;-><init>(Lcom/android/vending/UninstallActivity;Lcom/android/vending/UninstallActivity$1;)V

    iput-object v1, p0, Lcom/android/vending/UninstallActivity;->mRefundFailedAccessor:Lcom/android/vending/controller/DialogAccessor;

    invoke-virtual {p0, v1}, Lcom/android/vending/UninstallActivity;->registerDialog(Lcom/android/vending/controller/DialogAccessor;)V

    .line 148
    new-instance v1, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor;

    invoke-direct {v1, p0, v6}, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor;-><init>(Lcom/android/vending/UninstallActivity;Lcom/android/vending/UninstallActivity$1;)V

    iput-object v1, p0, Lcom/android/vending/UninstallActivity;->mReportAppDialog:Lcom/android/vending/controller/DialogAccessor;

    invoke-virtual {p0, v1}, Lcom/android/vending/UninstallActivity;->registerDialog(Lcom/android/vending/controller/DialogAccessor;)V

    .line 150
    new-instance v1, Lcom/android/vending/UninstallActivity$UninstallApplicationLoader;

    iget-object v2, p0, Lcom/android/vending/UninstallActivity;->mServerAssetId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/vending/UninstallActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/vending/UninstallActivity$UninstallApplicationLoader;-><init>(Lcom/android/vending/UninstallActivity;Ljava/lang/String;Lcom/android/vending/AssetItemAdapter;)V

    invoke-virtual {p0, v1}, Lcom/android/vending/UninstallActivity;->setAutoStartAction(Lcom/android/vending/BaseActivity$BaseAction;)V

    .line 151
    if-nez p1, :cond_2

    move v1, v5

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/vending/UninstallActivity;->startSetupActionChain(Z)V

    .line 152
    return-void

    :cond_2
    move v1, v4

    .line 151
    goto :goto_0
.end method

.method public onImageLoaded(ILcom/android/vending/model/Asset$AppImageUsage;I)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "imageUsage"    # Lcom/android/vending/model/Asset$AppImageUsage;
    .param p3, "imageId"    # I

    .prologue
    .line 162
    sget-object v1, Lcom/android/vending/model/Asset$AppImageUsage;->ICON:Lcom/android/vending/model/Asset$AppImageUsage;

    if-ne p2, v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/android/vending/UninstallActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/android/vending/AssetItemAdapter;->getBitmapAt(ILcom/android/vending/model/Asset$AppImageUsage;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 165
    .local v0, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v1, p0, Lcom/android/vending/UninstallActivity;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    iget-object v1, p0, Lcom/android/vending/UninstallActivity;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    .line 168
    .end local v0    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 156
    const-string v0, "uninstall_state"

    iget-object v1, p0, Lcom/android/vending/UninstallActivity;->mUninstallState:Lcom/android/vending/UninstallActivity$UninstallState;

    invoke-virtual {v1}, Lcom/android/vending/UninstallActivity$UninstallState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v0, "uninstall_result"

    iget-boolean v1, p0, Lcom/android/vending/UninstallActivity;->mUninstallSucceeded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 158
    invoke-super {p0, p1}, Lcom/android/vending/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 159
    return-void
.end method

.method public updateStateDependentUi(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
    .locals 3
    .param p1, "assetId"    # Ljava/lang/String;
    .param p2, "newState"    # Lcom/android/vending/model/LocalAssetInfo$AssetState;

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/android/vending/UninstallActivity;->getSharedParameters()Lcom/android/vending/controller/RequestParameters;

    move-result-object v1

    const-string v2, "asset"

    invoke-virtual {v1, v2}, Lcom/android/vending/controller/RequestParameters;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 173
    .local v0, "asset":Lcom/android/vending/model/Asset;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/vending/UninstallActivity;->mActualAssetId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/android/vending/UninstallActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v1, p1}, Lcom/android/vending/AssetItemAdapter;->reloadLocalAssetInfo(Ljava/lang/String;)V

    .line 176
    :cond_0
    return-void
.end method
