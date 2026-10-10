.class public Lcom/android/vending/AssetItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "AssetItemAdapter.java"

# interfaces
.implements Landroid/widget/SpinnerAdapter;
.implements Lcom/android/vending/api/AssetService$GetAssetsReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/AssetItemAdapter$5;,
        Lcom/android/vending/AssetItemAdapter$ImagesRequest;,
        Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;,
        Lcom/android/vending/AssetItemAdapter$OnImagesLoadErrorListener;,
        Lcom/android/vending/AssetItemAdapter$OnImagesLoadedListener;,
        Lcom/android/vending/AssetItemAdapter$ViewType;
    }
.end annotation


# static fields
.field private static LOADING_IMAGE_BITMAP:Landroid/graphics/drawable/BitmapDrawable;

.field private static sColorsInitialized:Z

.field private static sHighlightColor:Landroid/content/res/ColorStateList;

.field private static sHighlightTitleColor:Landroid/content/res/ColorStateList;

.field private static sNormalColor:Landroid/content/res/ColorStateList;

.field private static sNormalTitleColor:Landroid/content/res/ColorStateList;

.field private static sWarningColor:Landroid/content/res/ColorStateList;

.field private static sWarningTitleColor:Landroid/content/res/ColorStateList;


# instance fields
.field protected mAdapterPopulated:Z

.field private final mAssets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;"
        }
    .end annotation
.end field

.field protected mAsynchRunner:Lcom/android/vending/AsynchRequestRunner;

.field protected mContext:Landroid/content/Context;

.field private mEmulateEmptyItems:I

.field protected mHandler:Landroid/os/Handler;

.field protected final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field private final mOnImagesLoadedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/AssetItemAdapter$OnImagesLoadedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSnippetView:Landroid/view/View;

.field private mViewType:Lcom/android/vending/AssetItemAdapter$ViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/vending/AssetItemAdapter;->sColorsInitialized:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 144
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 74
    new-instance v0, Lcom/android/vending/AssetItemAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/vending/AssetItemAdapter$1;-><init>(Lcom/android/vending/AssetItemAdapter;)V

    iput-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mAssets:Ljava/util/List;

    .line 145
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getAsynchRequestRunner()Lcom/android/vending/AsynchRequestRunner;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mAsynchRunner:Lcom/android/vending/AsynchRequestRunner;

    .line 146
    iput-object p2, p0, Lcom/android/vending/AssetItemAdapter;->mHandler:Landroid/os/Handler;

    .line 147
    iput-object p1, p0, Lcom/android/vending/AssetItemAdapter;->mContext:Landroid/content/Context;

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vending/AssetItemAdapter;->mAdapterPopulated:Z

    .line 149
    sget-object v0, Lcom/android/vending/AssetItemAdapter$ViewType;->SNIPPET_LIST_VIEW:Lcom/android/vending/AssetItemAdapter$ViewType;

    iput-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mViewType:Lcom/android/vending/AssetItemAdapter$ViewType;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mOnImagesLoadedListeners:Ljava/util/List;

    .line 152
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/AssetItemAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/AssetItemAdapter;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mOnImagesLoadedListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/vending/AssetItemAdapter;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/AssetItemAdapter;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/vending/AssetItemAdapter;Lcom/android/vending/model/Asset$AppImageUsage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/AssetItemAdapter;
    .param p1, "x1"    # Lcom/android/vending/model/Asset$AppImageUsage;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/vending/AssetItemAdapter;->isScreenshotUsage(Lcom/android/vending/model/Asset$AppImageUsage;)Z

    move-result v0

    return v0
.end method

.method private addImageRequest(ILcom/android/vending/model/Asset$AppImageUsage;ILjava/util/List;Ljava/util/List;)Z
    .locals 2
    .param p1, "position"    # I
    .param p2, "usage"    # Lcom/android/vending/model/Asset$AppImageUsage;
    .param p3, "imageId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/vending/model/Asset$AppImageUsage;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 808
    .local p4, "requestedAssets":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    .local p5, "requestedParameters":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;>;"
    invoke-direct {p0, p1}, Lcom/android/vending/AssetItemAdapter;->getAssetAtPosition(I)Lcom/android/vending/model/Asset;

    move-result-object v0

    .line 809
    .local v0, "asset":Lcom/android/vending/model/Asset;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/android/vending/model/Asset;->areBitmapsLoadedOrLoading(Lcom/android/vending/model/Asset$AppImageUsage;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 810
    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 811
    new-instance v1, Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;-><init>(ILcom/android/vending/model/Asset$AppImageUsage;I)V

    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 812
    invoke-virtual {v0, p2, p3}, Lcom/android/vending/model/Asset;->setLoadingBitmapsState(Lcom/android/vending/model/Asset$AppImageUsage;I)V

    .line 813
    iget-object v1, p0, Lcom/android/vending/AssetItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, p2, p3}, Lcom/android/vending/AssetItemAdapter;->getLoadingImages(Landroid/content/Context;Lcom/android/vending/model/Asset$AppImageUsage;I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p2, p3, v1}, Lcom/android/vending/model/Asset;->setLoadingBitmaps(Lcom/android/vending/model/Asset$AppImageUsage;ILjava/util/List;)V

    .line 815
    const/4 v1, 0x1

    .line 817
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private contains(Ljava/lang/String;)Z
    .locals 3
    .param p1, "assetId"    # Ljava/lang/String;

    .prologue
    .line 274
    iget-object v2, p0, Lcom/android/vending/AssetItemAdapter;->mAssets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 275
    .local v0, "asset":Lcom/android/vending/model/Asset;
    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->getLocalId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 276
    const/4 v2, 0x1

    .line 279
    .end local v0    # "asset":Lcom/android/vending/model/Asset;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getAssetAtPosition(I)Lcom/android/vending/model/Asset;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 821
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mAssets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 822
    :cond_0
    const/4 v0, 0x0

    .line 824
    .end local p0    # "this":Lcom/android/vending/AssetItemAdapter;
    :goto_0
    return-object v0

    .restart local p0    # "this":Lcom/android/vending/AssetItemAdapter;
    :cond_1
    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mAssets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/android/vending/AssetItemAdapter;
    check-cast p0, Lcom/android/vending/model/Asset;

    move-object v0, p0

    goto :goto_0
.end method

.method protected static getLoadingImages(Landroid/content/Context;Lcom/android/vending/model/Asset$AppImageUsage;I)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "usage"    # Lcom/android/vending/model/Asset$AppImageUsage;
    .param p2, "imageId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/vending/model/Asset$AppImageUsage;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 583
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 585
    .local v0, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/drawable/BitmapDrawable;>;"
    const/4 v2, 0x1

    .line 586
    .local v2, "numBitmaps":I
    sget-object v4, Lcom/android/vending/AssetItemAdapter$5;->$SwitchMap$com$android$vending$model$Asset$AppImageUsage:[I

    invoke-virtual {p1}, Lcom/android/vending/model/Asset$AppImageUsage;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 600
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected usage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 589
    :pswitch_0
    const/4 v2, 0x1

    .line 604
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 605
    .local v3, "rsrc":Landroid/content/res/Resources;
    sget-object v4, Lcom/android/vending/AssetItemAdapter;->LOADING_IMAGE_BITMAP:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v4, :cond_0

    if-eqz v3, :cond_0

    .line 606
    const v4, 0x7f020055

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .end local p0    # "context":Landroid/content/Context;
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    sput-object p0, Lcom/android/vending/AssetItemAdapter;->LOADING_IMAGE_BITMAP:Landroid/graphics/drawable/BitmapDrawable;

    .line 610
    :cond_0
    sget-object v4, Lcom/android/vending/AssetItemAdapter;->LOADING_IMAGE_BITMAP:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_3

    .line 611
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 616
    sget-object v4, Lcom/android/vending/model/Asset$AppImageUsage;->SCREENSHOT_THUMBNAIL:Lcom/android/vending/model/Asset$AppImageUsage;

    if-eq v4, p1, :cond_1

    sget-object v4, Lcom/android/vending/model/Asset$AppImageUsage;->SCREENSHOT:Lcom/android/vending/model/Asset$AppImageUsage;

    if-eq v4, p1, :cond_1

    .line 618
    sget-object v4, Lcom/android/vending/AssetItemAdapter;->LOADING_IMAGE_BITMAP:Landroid/graphics/drawable/BitmapDrawable;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 593
    .end local v1    # "i":I
    .end local v3    # "rsrc":Landroid/content/res/Resources;
    .restart local p0    # "context":Landroid/content/Context;
    :pswitch_1
    const/4 v4, -0x1

    if-ne p2, v4, :cond_2

    .line 594
    const/4 v2, 0x2

    goto :goto_0

    .line 596
    :cond_2
    const/4 v2, 0x1

    .line 598
    goto :goto_0

    .line 623
    .end local p0    # "context":Landroid/content/Context;
    .restart local v3    # "rsrc":Landroid/content/res/Resources;
    :cond_3
    return-object v0

    .line 586
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getPriceOrPurchaseStateString(Landroid/content/Context;Lcom/android/vending/model/Asset;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "asset"    # Lcom/android/vending/model/Asset;

    .prologue
    .line 519
    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->isOwnedByUser()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 520
    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->findMatchingLocalAsset()Lcom/android/vending/model/LocalAsset;

    move-result-object v0

    .line 522
    .local v0, "localAsset":Lcom/android/vending/model/LocalAsset;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/vending/model/LocalAsset;->getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-result-object v2

    sget-object v3, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOAD_PENDING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->isEverInstalledByUser()Z

    move-result v2

    if-nez v2, :cond_0

    .line 524
    const v1, 0x7f0600cd

    .line 528
    .local v1, "resId":I
    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 532
    .end local v0    # "localAsset":Lcom/android/vending/model/LocalAsset;
    .end local v1    # "resId":I
    :goto_1
    return-object v2

    .line 526
    .restart local v0    # "localAsset":Lcom/android/vending/model/LocalAsset;
    :cond_0
    const v1, 0x7f0600ce

    .restart local v1    # "resId":I
    goto :goto_0

    .line 529
    .end local v0    # "localAsset":Lcom/android/vending/model/LocalAsset;
    .end local v1    # "resId":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->isFree()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 530
    const v2, 0x7f060090

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 532
    :cond_2
    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->getPrice()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private initializeDownloadingView(Landroid/view/View;Lcom/android/vending/model/Asset;Landroid/view/ViewGroup;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "asset"    # Lcom/android/vending/model/Asset;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 356
    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->isDownloadingOrInstalling()Z

    move-result v1

    if-nez v1, :cond_0

    .line 357
    const/4 v1, 0x0

    .line 367
    :goto_0
    return v1

    .line 362
    :cond_0
    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 364
    const v1, 0x7f07001b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 365
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private initializeSnippetView(Landroid/view/View;Lcom/android/vending/model/Asset;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "asset"    # Lcom/android/vending/model/Asset;

    .prologue
    const/4 v6, 0x1

    .line 418
    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 419
    .local v3, "title":Ljava/lang/String;
    const v4, 0x7f07001b

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 420
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    const v4, 0x7f070051

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 423
    .local v0, "authorTextView":Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->getOwnerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    const v4, 0x7f070054

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setSelected(Z)V

    .line 428
    const v4, 0x7f07001c

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RatingBar;

    .line 429
    .local v1, "starRatingView":Landroid/widget/RatingBar;
    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->getNumRaters()I

    move-result v4

    if-lez v4, :cond_0

    .line 430
    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->getRating()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/widget/RatingBar;->setRating(F)V

    .line 431
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 437
    :goto_0
    const v4, 0x7f070055

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "textView":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 438
    .restart local v2    # "textView":Landroid/widget/TextView;
    invoke-static {p2, v2, v6}, Lcom/android/vending/AssetItemAdapter;->setPriceOrState(Lcom/android/vending/model/Asset;Landroid/widget/TextView;Z)V

    .line 439
    return-void

    .line 433
    :cond_0
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/widget/RatingBar;->setVisibility(I)V

    goto :goto_0
.end method

.method private isScreenshotUsage(Lcom/android/vending/model/Asset$AppImageUsage;)Z
    .locals 1
    .param p1, "usage"    # Lcom/android/vending/model/Asset$AppImageUsage;

    .prologue
    .line 912
    sget-object v0, Lcom/android/vending/model/Asset$AppImageUsage;->SCREENSHOT:Lcom/android/vending/model/Asset$AppImageUsage;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/vending/model/Asset$AppImageUsage;->SCREENSHOT_THUMBNAIL:Lcom/android/vending/model/Asset$AppImageUsage;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadBitmaps(ILcom/android/vending/model/Asset$AppImageUsage;I)V
    .locals 11
    .param p1, "position"    # I
    .param p2, "usage"    # Lcom/android/vending/model/Asset$AppImageUsage;
    .param p3, "imageId"    # I

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0xa

    .line 717
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 718
    .local v4, "requestedAssets":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 720
    .local v5, "requestedParameters":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;>;"
    const/4 v6, 0x0

    .line 721
    .local v6, "maxImageRequestsPerAsset":I
    sget-object v0, Lcom/android/vending/AssetItemAdapter$5;->$SwitchMap$com$android$vending$model$Asset$AppImageUsage:[I

    invoke-virtual {p2}, Lcom/android/vending/model/Asset$AppImageUsage;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 732
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected usage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 724
    :pswitch_0
    const/4 v6, 0x1

    .line 736
    :goto_0
    const/4 v8, 0x0

    .line 738
    .local v8, "numRequestedImages":I
    invoke-virtual {p0}, Lcom/android/vending/AssetItemAdapter;->getNumAssets()I

    move-result v7

    .line 739
    .local v7, "numAssets":I
    move v1, p1

    .local v1, "i":I
    :goto_1
    if-ge v1, v7, :cond_2

    sub-int v0, v9, v6

    if-gt v8, v0, :cond_2

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    .line 741
    invoke-direct/range {v0 .. v5}, Lcom/android/vending/AssetItemAdapter;->addImageRequest(ILcom/android/vending/model/Asset$AppImageUsage;ILjava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    add-int/2addr v8, v6

    .line 740
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 728
    .end local v1    # "i":I
    .end local v7    # "numAssets":I
    .end local v8    # "numRequestedImages":I
    :pswitch_1
    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    const/4 v0, 0x2

    move v6, v0

    .line 730
    :goto_2
    goto :goto_0

    :cond_1
    move v6, v10

    .line 728
    goto :goto_2

    .line 749
    .restart local v1    # "i":I
    .restart local v7    # "numAssets":I
    .restart local v8    # "numRequestedImages":I
    :cond_2
    sub-int v1, p1, v10

    :goto_3
    if-ltz v1, :cond_4

    sub-int v0, v9, v6

    if-gt v8, v0, :cond_4

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    .line 751
    invoke-direct/range {v0 .. v5}, Lcom/android/vending/AssetItemAdapter;->addImageRequest(ILcom/android/vending/model/Asset$AppImageUsage;ILjava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 753
    add-int/2addr v8, v6

    .line 750
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 757
    :cond_4
    if-lez v8, :cond_5

    .line 758
    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mAsynchRunner:Lcom/android/vending/AsynchRequestRunner;

    new-instance v2, Lcom/android/vending/AssetItemAdapter$ImagesRequest;

    invoke-direct {v2, p0, v4, v5}, Lcom/android/vending/AssetItemAdapter$ImagesRequest;-><init>(Lcom/android/vending/AssetItemAdapter;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/android/vending/AsynchRequestRunner;->runRequest(Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;)V

    .line 760
    :cond_5
    return-void

    .line 721
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private refreshSnippetView(Lcom/android/vending/model/Asset;)V
    .locals 2
    .param p1, "asset"    # Lcom/android/vending/model/Asset;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mViewType:Lcom/android/vending/AssetItemAdapter$ViewType;

    sget-object v1, Lcom/android/vending/AssetItemAdapter$ViewType;->SNIPPET_VIEW:Lcom/android/vending/AssetItemAdapter$ViewType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mSnippetView:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mSnippetView:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/vending/AssetItemAdapter;->initializeSnippetView(Landroid/view/View;Lcom/android/vending/model/Asset;)V

    .line 230
    :cond_0
    return-void
.end method

.method public static setPriceOrState(Lcom/android/vending/model/Asset;Landroid/widget/TextView;Z)V
    .locals 13
    .param p0, "serverAsset"    # Lcom/android/vending/model/Asset;
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "inTitleBar"    # Z

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 446
    if-nez p1, :cond_1

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 451
    .local v1, "context":Landroid/content/Context;
    sget-boolean v8, Lcom/android/vending/AssetItemAdapter;->sColorsInitialized:Z

    if-nez v8, :cond_3

    .line 452
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 454
    .local v5, "resources":Landroid/content/res/Resources;
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 455
    .local v4, "resolvedNormalColor":Landroid/util/TypedValue;
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 456
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v9, 0x1010038

    invoke-virtual {v8, v9, v4, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 460
    :cond_2
    const v8, 0x7f080004

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    sput-object v8, Lcom/android/vending/AssetItemAdapter;->sHighlightTitleColor:Landroid/content/res/ColorStateList;

    .line 462
    const v8, 0x7f080020

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    sput-object v8, Lcom/android/vending/AssetItemAdapter;->sHighlightColor:Landroid/content/res/ColorStateList;

    .line 463
    const v8, 0x7f080005

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    sput-object v8, Lcom/android/vending/AssetItemAdapter;->sWarningTitleColor:Landroid/content/res/ColorStateList;

    .line 464
    const v8, 0x7f080022

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    sput-object v8, Lcom/android/vending/AssetItemAdapter;->sWarningColor:Landroid/content/res/ColorStateList;

    .line 465
    const v8, 0x7f080007

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    sput-object v8, Lcom/android/vending/AssetItemAdapter;->sNormalTitleColor:Landroid/content/res/ColorStateList;

    .line 466
    iget v8, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    sput-object v8, Lcom/android/vending/AssetItemAdapter;->sNormalColor:Landroid/content/res/ColorStateList;

    .line 468
    sput-boolean v10, Lcom/android/vending/AssetItemAdapter;->sColorsInitialized:Z

    .line 475
    .end local v4    # "resolvedNormalColor":Landroid/util/TypedValue;
    .end local v5    # "resources":Landroid/content/res/Resources;
    :cond_3
    if-eqz p2, :cond_4

    .line 476
    sget-object v3, Lcom/android/vending/AssetItemAdapter;->sNormalTitleColor:Landroid/content/res/ColorStateList;

    .line 477
    .local v3, "normalColor":Landroid/content/res/ColorStateList;
    sget-object v2, Lcom/android/vending/AssetItemAdapter;->sHighlightTitleColor:Landroid/content/res/ColorStateList;

    .line 478
    .local v2, "highlightColor":Landroid/content/res/ColorStateList;
    sget-object v7, Lcom/android/vending/AssetItemAdapter;->sWarningTitleColor:Landroid/content/res/ColorStateList;

    .line 485
    .local v7, "warningColor":Landroid/content/res/ColorStateList;
    :goto_1
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 487
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->isInstalled()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 488
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->isUpdate()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 489
    invoke-virtual {p0, v1}, Lcom/android/vending/model/Asset;->containsDangerousNewPermissions(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 490
    const v8, 0x7f0600d0

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 492
    if-eqz p2, :cond_0

    .line 493
    new-array v8, v10, [I

    const v9, 0x1010036

    aput v9, v8, v12

    invoke-virtual {v1, v8}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 496
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v12}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    .line 498
    .local v6, "textColorPrimary":I
    const/high16 v8, 0x40400000    # 3.0f

    invoke-virtual {p1, v8, v11, v11, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_0

    .line 480
    .end local v0    # "array":Landroid/content/res/TypedArray;
    .end local v2    # "highlightColor":Landroid/content/res/ColorStateList;
    .end local v3    # "normalColor":Landroid/content/res/ColorStateList;
    .end local v6    # "textColorPrimary":I
    .end local v7    # "warningColor":Landroid/content/res/ColorStateList;
    :cond_4
    sget-object v3, Lcom/android/vending/AssetItemAdapter;->sNormalColor:Landroid/content/res/ColorStateList;

    .line 481
    .restart local v3    # "normalColor":Landroid/content/res/ColorStateList;
    sget-object v2, Lcom/android/vending/AssetItemAdapter;->sHighlightColor:Landroid/content/res/ColorStateList;

    .line 482
    .restart local v2    # "highlightColor":Landroid/content/res/ColorStateList;
    sget-object v7, Lcom/android/vending/AssetItemAdapter;->sWarningColor:Landroid/content/res/ColorStateList;

    .restart local v7    # "warningColor":Landroid/content/res/ColorStateList;
    goto :goto_1

    .line 501
    :cond_5
    const v8, 0x7f0600cf

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0

    .line 505
    :cond_6
    const v8, 0x7f0600cb

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 507
    :cond_7
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->isOwnedByUser()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 508
    invoke-static {v1, p0}, Lcom/android/vending/AssetItemAdapter;->getPriceOrPurchaseStateString(Landroid/content/Context;Lcom/android/vending/model/Asset;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0

    .line 511
    :cond_8
    invoke-static {v1, p0}, Lcom/android/vending/AssetItemAdapter;->getPriceOrPurchaseStateString(Landroid/content/Context;Lcom/android/vending/model/Asset;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public addAssets(Ljava/util/List;Ljava/util/List;)V
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
    .line 242
    .local p1, "assets":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    .local p2, "correctedAssets":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    invoke-virtual {p0, p1}, Lcom/android/vending/AssetItemAdapter;->innerAddAllAssets(Ljava/util/List;)V

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vending/AssetItemAdapter;->mAdapterPopulated:Z

    .line 244
    invoke-virtual {p0}, Lcom/android/vending/AssetItemAdapter;->notifyDataSetChanged()V

    .line 245
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetItemAdapter;->reloadLocalAssetInfo(Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method public addImagesLoadedListener(Lcom/android/vending/AssetItemAdapter$OnImagesLoadedListener;)V
    .locals 1
    .param p1, "l"    # Lcom/android/vending/AssetItemAdapter$OnImagesLoadedListener;

    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mOnImagesLoadedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    return-void
.end method

.method public final clearAllAssets()V
    .locals 1

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/android/vending/AssetItemAdapter;->clearAllAssetsWithNoNotification()Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    :goto_0
    return-void

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/android/vending/AssetItemAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected clearAllAssetsWithNoNotification()Z
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mAssets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 294
    const/4 v0, 0x0

    .line 297
    :goto_0
    return v0

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mAssets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 297
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAsset(I)Lcom/android/vending/model/Asset;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/android/vending/AssetItemAdapter;->getAssetAtPosition(I)Lcom/android/vending/model/Asset;

    move-result-object v0

    return-object v0
.end method

.method public getAssets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    invoke-static {}, Lcom/android/vending/util/MainThreadEnforcer;->enforce()V

    .line 197
    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mAssets:Ljava/util/List;

    return-object v0
.end method

.method public getBitmapAt(ILcom/android/vending/model/Asset$AppImageUsage;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .param p1, "position"    # I
    .param p2, "usage"    # Lcom/android/vending/model/Asset$AppImageUsage;

    .prologue
    .line 543
    const/4 v1, -0x1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/vending/AssetItemAdapter;->getBitmapsAt(ILcom/android/vending/model/Asset$AppImageUsage;I)Ljava/util/List;

    move-result-object v0

    .line 545
    .local v0, "drawables":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/drawable/BitmapDrawable;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/android/vending/AssetItemAdapter;
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v1, p0

    :goto_0
    return-object v1

    .restart local p0    # "this":Lcom/android/vending/AssetItemAdapter;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBitmapsAt(ILcom/android/vending/model/Asset$AppImageUsage;I)Ljava/util/List;
    .locals 3
    .param p1, "position"    # I
    .param p2, "usage"    # Lcom/android/vending/model/Asset$AppImageUsage;
    .param p3, "imageId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/vending/model/Asset$AppImageUsage;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 557
    invoke-direct {p0, p1}, Lcom/android/vending/AssetItemAdapter;->getAssetAtPosition(I)Lcom/android/vending/model/Asset;

    move-result-object v0

    .line 558
    .local v0, "asset":Lcom/android/vending/model/Asset;
    if-nez v0, :cond_0

    .line 559
    iget-object v2, p0, Lcom/android/vending/AssetItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, p2, p3}, Lcom/android/vending/AssetItemAdapter;->getLoadingImages(Landroid/content/Context;Lcom/android/vending/model/Asset$AppImageUsage;I)Ljava/util/List;

    move-result-object v2

    .line 569
    :goto_0
    return-object v2

    .line 562
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/android/vending/model/Asset;->areBitmapsLoadedOrLoading(Lcom/android/vending/model/Asset$AppImageUsage;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 563
    invoke-direct {p0, p1, p2, p3}, Lcom/android/vending/AssetItemAdapter;->loadBitmaps(ILcom/android/vending/model/Asset$AppImageUsage;I)V

    .line 565
    :cond_1
    invoke-virtual {v0, p2, p3}, Lcom/android/vending/model/Asset;->getBitmapDrawables(Lcom/android/vending/model/Asset$AppImageUsage;I)Ljava/util/List;

    move-result-object v1

    .line 569
    .local v1, "drawables":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/drawable/BitmapDrawable;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    move-object v2, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/vending/AssetItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, p2, p3}, Lcom/android/vending/AssetItemAdapter;->getLoadingImages(Landroid/content/Context;Lcom/android/vending/model/Asset$AppImageUsage;I)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/vending/AssetItemAdapter;->getNumAssets()I

    move-result v0

    iget v1, p0, Lcom/android/vending/AssetItemAdapter;->mEmulateEmptyItems:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/android/vending/AssetItemAdapter;->getAssetAtPosition(I)Lcom/android/vending/model/Asset;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 182
    int-to-long v0, p1

    return-wide v0
.end method

.method public getNumAssets()I
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mAssets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lcom/android/vending/AssetItemAdapter;->getAssetAtPosition(I)Lcom/android/vending/model/Asset;

    move-result-object v1

    .line 317
    .local v1, "asset":Lcom/android/vending/model/Asset;
    move-object v4, p2

    .line 318
    .local v4, "view":Landroid/view/View;
    if-nez v4, :cond_0

    .line 319
    iget-object v5, p0, Lcom/android/vending/AssetItemAdapter;->mViewType:Lcom/android/vending/AssetItemAdapter$ViewType;

    invoke-virtual {v5}, Lcom/android/vending/AssetItemAdapter$ViewType;->getResourceLayoutId()I

    move-result v5

    iget-object v6, p0, Lcom/android/vending/AssetItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5, v6, p3}, Lcom/android/vending/util/Util;->inflateView(ILandroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 322
    :cond_0
    const v5, 0x7f07001e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 323
    .local v3, "imageView":Landroid/widget/ImageView;
    sget-object v0, Lcom/android/vending/model/Asset$AppImageUsage;->ICON:Lcom/android/vending/model/Asset$AppImageUsage;

    .line 324
    .local v0, "appImageUsage":Lcom/android/vending/model/Asset$AppImageUsage;
    invoke-virtual {p0, p1, v0}, Lcom/android/vending/AssetItemAdapter;->getBitmapAt(ILcom/android/vending/model/Asset$AppImageUsage;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    .line 325
    .local v2, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 327
    sget-object v5, Lcom/android/vending/AssetItemAdapter$5;->$SwitchMap$com$android$vending$AssetItemAdapter$ViewType:[I

    iget-object v6, p0, Lcom/android/vending/AssetItemAdapter;->mViewType:Lcom/android/vending/AssetItemAdapter$ViewType;

    invoke-virtual {v6}, Lcom/android/vending/AssetItemAdapter$ViewType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 344
    :cond_1
    invoke-virtual {p0, v4, v1, p3}, Lcom/android/vending/AssetItemAdapter;->initializeSnippetListView(Landroid/view/View;Lcom/android/vending/model/Asset;Landroid/view/ViewGroup;)V

    .line 347
    :goto_0
    :pswitch_0
    return-object v4

    .line 329
    :pswitch_1
    iput-object v4, p0, Lcom/android/vending/AssetItemAdapter;->mSnippetView:Landroid/view/View;

    .line 330
    iget-object v5, p0, Lcom/android/vending/AssetItemAdapter;->mSnippetView:Landroid/view/View;

    invoke-direct {p0, v5, v1}, Lcom/android/vending/AssetItemAdapter;->initializeSnippetView(Landroid/view/View;Lcom/android/vending/model/Asset;)V

    goto :goto_0

    .line 337
    :pswitch_2
    invoke-direct {p0, v4, v1, p3}, Lcom/android/vending/AssetItemAdapter;->initializeDownloadingView(Landroid/view/View;Lcom/android/vending/model/Asset;Landroid/view/ViewGroup;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 327
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    return v0
.end method

.method protected initializeSnippetListView(Landroid/view/View;Lcom/android/vending/model/Asset;Landroid/view/ViewGroup;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "asset"    # Lcom/android/vending/model/Asset;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v10, 0x0

    .line 375
    const v6, 0x7f07001b

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 376
    .local v5, "textView":Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    const v6, 0x7f070051

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 379
    .local v0, "authorTextView":Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->getOwnerName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    const v6, 0x7f07001d

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "textView":Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 382
    .restart local v5    # "textView":Landroid/widget/TextView;
    invoke-static {p2, v5, v10}, Lcom/android/vending/AssetItemAdapter;->setPriceOrState(Lcom/android/vending/model/Asset;Landroid/widget/TextView;Z)V

    .line 384
    const v6, 0x7f070050

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 387
    .local v3, "snippetContainer":Landroid/view/View;
    iget-object v6, p0, Lcom/android/vending/AssetItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 388
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->isFree()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->isOwnedByUser()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->getPriceMicros()J

    move-result-wide v6

    const-wide/32 v8, 0x7a120

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 389
    const v6, 0x7f08001b

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 395
    :goto_0
    const v6, 0x7f07001c

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RatingBar;

    .line 396
    .local v4, "starRatingView":Landroid/widget/RatingBar;
    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->getNumRaters()I

    move-result v6

    if-lez v6, :cond_1

    .line 397
    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->getRating()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/widget/RatingBar;->setRating(F)V

    .line 398
    invoke-virtual {v4, v10}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 403
    :goto_1
    const v6, 0x7f070052

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 404
    .local v1, "filtered":Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->isFiltered()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 405
    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->getFilterReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 411
    :goto_2
    invoke-static {v3, p3, v10}, Lcom/android/vending/velvet/LandscapeOverlappingLayout;->tweakViewPadding(Landroid/view/View;Landroid/view/ViewParent;I)V

    .line 412
    return-void

    .line 392
    .end local v1    # "filtered":Landroid/widget/TextView;
    .end local v4    # "starRatingView":Landroid/widget/RatingBar;
    :cond_0
    const v6, 0x106000d

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 400
    .restart local v4    # "starRatingView":Landroid/widget/RatingBar;
    :cond_1
    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Landroid/widget/RatingBar;->setVisibility(I)V

    goto :goto_1

    .line 408
    .restart local v1    # "filtered":Landroid/widget/TextView;
    :cond_2
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method protected innerAddAllAssets(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 249
    .local p1, "assets":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mAssets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 250
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/vending/AssetItemAdapter;->mAdapterPopulated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/vending/AssetItemAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadBitmapsForAsset(ILjava/util/List;)V
    .locals 15
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset$AppImageUsage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 770
    .local p2, "usages":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset$AppImageUsage;>;"
    invoke-direct/range {p0 .. p1}, Lcom/android/vending/AssetItemAdapter;->getAssetAtPosition(I)Lcom/android/vending/model/Asset;

    move-result-object v12

    .line 771
    .local v12, "asset":Lcom/android/vending/model/Asset;
    if-nez v12, :cond_1

    .line 795
    :cond_0
    :goto_0
    return-void

    .line 774
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 775
    .local v4, "requestedAssets":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 776
    .local v5, "requestedParameters":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;>;"
    const/4 v14, 0x0

    .line 777
    .local v14, "numRequestedImages":I
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vending/model/Asset$AppImageUsage;

    .line 778
    .local v2, "usage":Lcom/android/vending/model/Asset$AppImageUsage;
    invoke-direct {p0, v2}, Lcom/android/vending/AssetItemAdapter;->isScreenshotUsage(Lcom/android/vending/model/Asset$AppImageUsage;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 779
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-virtual {v12}, Lcom/android/vending/model/Asset;->getNumScreenshots()I

    move-result v0

    if-ge v3, v0, :cond_2

    .line 780
    invoke-virtual {v12, v2, v3}, Lcom/android/vending/model/Asset;->areBitmapsLoadedOrLoading(Lcom/android/vending/model/Asset$AppImageUsage;I)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, p0

    move/from16 v1, p1

    .line 781
    invoke-direct/range {v0 .. v5}, Lcom/android/vending/AssetItemAdapter;->addImageRequest(ILcom/android/vending/model/Asset$AppImageUsage;ILjava/util/List;Ljava/util/List;)Z

    .line 782
    add-int/lit8 v14, v14, 0x1

    .line 779
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 785
    .end local v3    # "i":I
    :cond_4
    const/4 v0, -0x1

    invoke-virtual {v12, v2, v0}, Lcom/android/vending/model/Asset;->areBitmapsLoadedOrLoading(Lcom/android/vending/model/Asset$AppImageUsage;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 786
    const/4 v9, -0x1

    move-object v6, p0

    move/from16 v7, p1

    move-object v8, v2

    move-object v10, v4

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/android/vending/AssetItemAdapter;->addImageRequest(ILcom/android/vending/model/Asset$AppImageUsage;ILjava/util/List;Ljava/util/List;)Z

    .line 788
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 792
    .end local v2    # "usage":Lcom/android/vending/model/Asset$AppImageUsage;
    :cond_5
    if-lez v14, :cond_0

    .line 793
    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mAsynchRunner:Lcom/android/vending/AsynchRequestRunner;

    new-instance v1, Lcom/android/vending/AssetItemAdapter$ImagesRequest;

    invoke-direct {v1, p0, v4, v5}, Lcom/android/vending/AssetItemAdapter$ImagesRequest;-><init>(Lcom/android/vending/AssetItemAdapter;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/android/vending/AsynchRequestRunner;->runRequest(Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;)V

    goto :goto_0
.end method

.method public notifyImagesLoadError(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 683
    .local p1, "imageRequestParameters":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;>;"
    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/vending/AssetItemAdapter$4;

    invoke-direct {v1, p0, p1}, Lcom/android/vending/AssetItemAdapter$4;-><init>(Lcom/android/vending/AssetItemAdapter;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 705
    :cond_0
    return-void
.end method

.method public notifyImagesLoaded(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 657
    .local p1, "imageRequestParameters":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;>;"
    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/vending/AssetItemAdapter$3;

    invoke-direct {v1, p0, p1}, Lcom/android/vending/AssetItemAdapter$3;-><init>(Lcom/android/vending/AssetItemAdapter;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 676
    :cond_0
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
    .line 211
    .local p1, "assets":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    .local p2, "correctedAssets":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    new-instance v0, Lcom/android/vending/AssetItemAdapter$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/vending/AssetItemAdapter$2;-><init>(Lcom/android/vending/AssetItemAdapter;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetItemAdapter;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 216
    return-void
.end method

.method public reloadLocalAssetInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "assetId"    # Ljava/lang/String;

    .prologue
    .line 262
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/vending/AssetItemAdapter;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mViewType:Lcom/android/vending/AssetItemAdapter$ViewType;

    sget-object v1, Lcom/android/vending/AssetItemAdapter$ViewType;->SNIPPET_VIEW:Lcom/android/vending/AssetItemAdapter$ViewType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mAssets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 264
    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mAssets:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    invoke-direct {p0, v0}, Lcom/android/vending/AssetItemAdapter;->refreshSnippetView(Lcom/android/vending/model/Asset;)V

    .line 266
    :cond_1
    invoke-virtual {p0}, Lcom/android/vending/AssetItemAdapter;->notifyDataSetChanged()V

    .line 268
    :cond_2
    return-void
.end method

.method protected runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 306
    :goto_0
    return-void

    .line 304
    :cond_0
    const-string v0, "Unable to run action because there is no UI thread handler."

    invoke-static {v0}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setViewType(Lcom/android/vending/AssetItemAdapter$ViewType;)V
    .locals 0
    .param p1, "viewType"    # Lcom/android/vending/AssetItemAdapter$ViewType;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/vending/AssetItemAdapter;->mViewType:Lcom/android/vending/AssetItemAdapter$ViewType;

    .line 202
    return-void
.end method

.method public sortAssets(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 802
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/vending/model/Asset;>;"
    invoke-static {}, Lcom/android/vending/util/MainThreadEnforcer;->enforce()V

    .line 803
    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mAssets:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 804
    return-void
.end method
