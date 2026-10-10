.class public abstract Lcom/android/vending/velvet/CarouselView;
.super Lcom/android/vending/velvet/ArcView;
.source "CarouselView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/velvet/CarouselView$ImageLoader;,
        Lcom/android/vending/velvet/CarouselView$Thumbnail;,
        Lcom/android/vending/velvet/CarouselView$Dimension;,
        Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;
    }
.end annotation


# instance fields
.field private final mAutoAdvanceHandler:Landroid/os/Handler;

.field private final mAutoAdvanceRunnable:Ljava/lang/Runnable;

.field private mBaseActivity:Lcom/android/vending/BaseActivity;

.field private final mBitmapDstRectangle:Landroid/graphics/Rect;

.field private final mBitmapSrcRectangle:Landroid/graphics/Rect;

.field private final mCenterPoint:Landroid/graphics/Point;

.field protected mCommonBitmapSize:Lcom/android/vending/velvet/CarouselView$Dimension;

.field protected mCommonBitmapSizeUnscaled:Lcom/android/vending/velvet/CarouselView$Dimension;

.field private mCurrAutoAdvanceInterval:I

.field protected mCurrIndexAtCenter:F

.field private final mDeceleration:F

.field private final mDistanceComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/vending/velvet/CarouselView$Thumbnail;",
            ">;"
        }
    .end annotation
.end field

.field private mFadeInSequencer:Lcom/android/vending/compat/animation/Animator;

.field private mFrontedAsset:Lcom/android/vending/model/Asset;

.field protected mFrontedPriceOrStateView:Landroid/widget/TextView;

.field protected mFrontedPromoDescTextView:Landroid/widget/TextView;

.field protected mFrontedRatingBar:Landroid/widget/RatingBar;

.field protected mFrontedSnippetView:Landroid/view/View;

.field protected mFrontedTitleTextView:Landroid/widget/TextView;

.field private mFrontedViewsVisibility:I

.field private mHorDistanceScrolledSinceLastDown:F

.field private mImageLoader:Lcom/android/vending/velvet/CarouselView$ImageLoader;

.field private mImagesToLoad:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mIndexOfFirstLoadingAsset:I

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mOrigIndexAtCenter:F

.field private mPlaceholderBitmap:Landroid/graphics/Bitmap;

.field private mScrollSequencer:Lcom/android/vending/compat/animation/Animator;

.field protected final mScrollThreshold:I

.field private final mThumbnailPaint:Landroid/graphics/Paint;

.field protected mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

.field protected final mTileSize:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mZOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/velvet/CarouselView$Thumbnail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 503
    invoke-direct {p0, p1, p2}, Lcom/android/vending/velvet/ArcView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 505
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/vending/velvet/CarouselView;->mScrollThreshold:I

    .line 506
    iget v1, p0, Lcom/android/vending/velvet/CarouselView;->mScreenScaleFactor:F

    const/high16 v2, 0x42f00000    # 120.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/vending/velvet/CarouselView;->mTileSize:I

    .line 508
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x43200000    # 160.0f

    mul-float v0, v1, v2

    .line 509
    .local v0, "ppi":F
    const v1, 0x4490c86e

    mul-float/2addr v1, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/vending/velvet/CarouselView;->mTileSize:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/vending/velvet/CarouselView;->mDeceleration:F

    .line 514
    iput v3, p0, Lcom/android/vending/velvet/CarouselView;->mOrigIndexAtCenter:F

    .line 515
    iget v1, p0, Lcom/android/vending/velvet/CarouselView;->mOrigIndexAtCenter:F

    iput v1, p0, Lcom/android/vending/velvet/CarouselView;->mCurrIndexAtCenter:F

    .line 519
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnailPaint:Landroid/graphics/Paint;

    .line 520
    iget-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnailPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 521
    iget-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnailPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 523
    new-instance v1, Lcom/android/vending/velvet/CarouselView$1;

    invoke-direct {v1, p0}, Lcom/android/vending/velvet/CarouselView$1;-><init>(Lcom/android/vending/velvet/CarouselView;)V

    iput-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mDistanceComparator:Ljava/util/Comparator;

    .line 536
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mZOrder:Ljava/util/List;

    .line 537
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mBitmapSrcRectangle:Landroid/graphics/Rect;

    .line 538
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mBitmapDstRectangle:Landroid/graphics/Rect;

    .line 539
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mCenterPoint:Landroid/graphics/Point;

    .line 541
    invoke-virtual {p0}, Lcom/android/vending/velvet/CarouselView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mPlaceholderBitmap:Landroid/graphics/Bitmap;

    .line 544
    const/16 v1, 0x4e20

    iput v1, p0, Lcom/android/vending/velvet/CarouselView;->mCurrAutoAdvanceInterval:I

    .line 545
    new-instance v1, Lcom/android/vending/velvet/CarouselView$2;

    invoke-direct {v1, p0}, Lcom/android/vending/velvet/CarouselView$2;-><init>(Lcom/android/vending/velvet/CarouselView;)V

    iput-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mAutoAdvanceRunnable:Ljava/lang/Runnable;

    .line 567
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mAutoAdvanceHandler:Landroid/os/Handler;

    .line 568
    invoke-direct {p0}, Lcom/android/vending/velvet/CarouselView;->scheduleAutoAdvance()V

    .line 569
    return-void
.end method

.method static synthetic access$1000(Lcom/android/vending/velvet/CarouselView;Lcom/android/vending/model/Asset;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/velvet/CarouselView;
    .param p1, "x1"    # Lcom/android/vending/model/Asset;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/vending/velvet/CarouselView;->launchViewAssetInfoIntent(Lcom/android/vending/model/Asset;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/vending/velvet/CarouselView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/velvet/CarouselView;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/vending/velvet/CarouselView;->mOrigIndexAtCenter:F

    return v0
.end method

.method static synthetic access$1102(Lcom/android/vending/velvet/CarouselView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/velvet/CarouselView;
    .param p1, "x1"    # F

    .prologue
    .line 61
    iput p1, p0, Lcom/android/vending/velvet/CarouselView;->mOrigIndexAtCenter:F

    return p1
.end method

.method static synthetic access$1200(Lcom/android/vending/velvet/CarouselView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/velvet/CarouselView;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/vending/velvet/CarouselView;->updateFrontedViews()V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/vending/velvet/CarouselView;Lcom/android/vending/compat/animation/Animator;)Lcom/android/vending/compat/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/velvet/CarouselView;
    .param p1, "x1"    # Lcom/android/vending/compat/animation/Animator;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/vending/velvet/CarouselView;->mScrollSequencer:Lcom/android/vending/compat/animation/Animator;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/vending/velvet/CarouselView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/velvet/CarouselView;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/vending/velvet/CarouselView;->mCurrAutoAdvanceInterval:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/vending/velvet/CarouselView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/velvet/CarouselView;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/android/vending/velvet/CarouselView;->mCurrAutoAdvanceInterval:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/vending/velvet/CarouselView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/velvet/CarouselView;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/vending/velvet/CarouselView;->scheduleAutoAdvance()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/vending/velvet/CarouselView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/velvet/CarouselView;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/vending/velvet/CarouselView;->createAndRunFadeInSequencer()V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/vending/velvet/CarouselView;Lcom/android/vending/compat/animation/Animator;)Lcom/android/vending/compat/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/velvet/CarouselView;
    .param p1, "x1"    # Lcom/android/vending/compat/animation/Animator;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/vending/velvet/CarouselView;->mFadeInSequencer:Lcom/android/vending/compat/animation/Animator;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/vending/velvet/CarouselView;)Lcom/android/vending/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/velvet/CarouselView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mBaseActivity:Lcom/android/vending/BaseActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/vending/velvet/CarouselView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/velvet/CarouselView;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/vending/velvet/CarouselView;->hasInteractiveContent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/vending/velvet/CarouselView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/velvet/CarouselView;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/vending/velvet/CarouselView;->setFrontedViewsVisibility(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/vending/velvet/CarouselView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/velvet/CarouselView;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/vending/velvet/CarouselView;->mDeceleration:F

    return v0
.end method

.method static synthetic access$800(Lcom/android/vending/velvet/CarouselView;FJ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/velvet/CarouselView;
    .param p1, "x1"    # F
    .param p2, "x2"    # J

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/vending/velvet/CarouselView;->createAndRunScrollSequencer(FJ)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/vending/velvet/CarouselView;)Lcom/android/vending/model/Asset;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/velvet/CarouselView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedAsset:Lcom/android/vending/model/Asset;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/vending/velvet/CarouselView;Lcom/android/vending/model/Asset;)Lcom/android/vending/model/Asset;
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/velvet/CarouselView;
    .param p1, "x1"    # Lcom/android/vending/model/Asset;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedAsset:Lcom/android/vending/model/Asset;

    return-object p1
.end method

.method private cancelAutoAdvance()V
    .locals 2

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mAutoAdvanceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mAutoAdvanceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1714
    return-void
.end method

.method private cancelScrolling()V
    .locals 1

    .prologue
    .line 1673
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mScrollSequencer:Lcom/android/vending/compat/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mScrollSequencer:Lcom/android/vending/compat/animation/Animator;

    invoke-virtual {v0}, Lcom/android/vending/compat/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1674
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mScrollSequencer:Lcom/android/vending/compat/animation/Animator;

    invoke-virtual {v0}, Lcom/android/vending/compat/animation/Animator;->cancel()V

    .line 1676
    :cond_0
    invoke-direct {p0}, Lcom/android/vending/velvet/CarouselView;->cancelAutoAdvance()V

    .line 1677
    const v0, 0x9c40

    iput v0, p0, Lcom/android/vending/velvet/CarouselView;->mCurrAutoAdvanceInterval:I

    .line 1678
    return-void
.end method

.method private computeThumbnailsDisplayState(II)V
    .locals 20
    .param p1, "canvasWidth"    # I
    .param p2, "canvasHeight"    # I

    .prologue
    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mImagesToLoad:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    .line 681
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move v0, v10

    move/from16 v1, v16

    if-ge v0, v1, :cond_9

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    move-object/from16 v16, v0

    aget-object v13, v16, v10

    .line 684
    .local v13, "thumbnail":Lcom/android/vending/velvet/CarouselView$Thumbnail;
    move v0, v10

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mCurrIndexAtCenter:F

    move/from16 v17, v0

    cmpl-float v16, v16, v17

    if-nez v16, :cond_3

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    move-object/from16 v16, v0

    aget-object v16, v16, v10

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mDistToCenter:F

    .line 709
    :goto_1
    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/vending/velvet/CarouselView;->getThumbnailCenterLocation(Lcom/android/vending/velvet/CarouselView$Thumbnail;II)Landroid/graphics/Point;

    move-result-object v14

    .line 711
    .local v14, "thumbnailCenter":Landroid/graphics/Point;
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/vending/velvet/CarouselView;->getAlpha(Lcom/android/vending/velvet/CarouselView$Thumbnail;Landroid/graphics/Point;II)F

    move-result v16

    move/from16 v0, v16

    move-object v1, v13

    iput v0, v1, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mLocationBasedAlpha:F

    .line 714
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/vending/velvet/CarouselView;->getScalingFactor(Lcom/android/vending/velvet/CarouselView$Thumbnail;Landroid/graphics/Point;II)F

    move-result v12

    .line 716
    .local v12, "scalingFactor":F
    move-object v0, v13

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mAssetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mBitmapRef:Ljava/lang/ref/SoftReference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    .line 717
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    .line 718
    .local v11, "needsLoading":Z
    if-nez v6, :cond_0

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mPlaceholderBitmap:Landroid/graphics/Bitmap;

    move-object v6, v0

    .line 720
    const/4 v11, 0x1

    .line 722
    :cond_0
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 723
    .local v8, "bitmapWidth":I
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 725
    .local v7, "bitmapHeight":I
    move-object v0, v13

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mRectOnScreen:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object v0, v14

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move v0, v8

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v12

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 727
    move-object v0, v13

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mRectOnScreen:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object v0, v14

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move v0, v7

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v12

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 729
    move-object v0, v13

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mRectOnScreen:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object v0, v14

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move v0, v8

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v12

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 731
    move-object v0, v13

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mRectOnScreen:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object v0, v14

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move v0, v7

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v12

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 734
    move-object v0, v13

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mRectOnScreen:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v16

    if-nez v16, :cond_7

    const/16 v16, 0x1

    :goto_2
    move/from16 v0, v16

    move-object v1, v13

    iput-boolean v0, v1, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mIsOffScreen:Z

    .line 736
    if-eqz v11, :cond_1

    move-object v0, v13

    iget-boolean v0, v0, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mIsOffScreen:Z

    move/from16 v16, v0

    if-nez v16, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mScrollSequencer:Lcom/android/vending/compat/animation/Animator;

    move-object/from16 v16, v0

    if-nez v16, :cond_1

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mImagesToLoad:Ljava/util/List;

    move-object/from16 v16, v0

    move-object v0, v13

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mAssetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mAsset:Lcom/android/vending/model/Asset;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 739
    :cond_1
    iget-object v5, v13, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mAssetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    .line 740
    .local v5, "assetData":Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;
    move-object v0, v13

    iget-boolean v0, v0, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mIsOffScreen:Z

    move/from16 v16, v0

    if-eqz v16, :cond_8

    .line 742
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object v1, v5

    iput-object v0, v1, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mStrongBitmapRef:Landroid/graphics/Bitmap;

    .line 681
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 687
    .end local v5    # "assetData":Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;
    .end local v7    # "bitmapHeight":I
    .end local v8    # "bitmapWidth":I
    .end local v11    # "needsLoading":Z
    .end local v12    # "scalingFactor":F
    .end local v14    # "thumbnailCenter":Landroid/graphics/Point;
    :cond_3
    move v0, v10

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mCurrIndexAtCenter:F

    move/from16 v17, v0

    sub-float v9, v16, v17

    .line 689
    .local v9, "distToCenter":F
    move v0, v10

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mCurrIndexAtCenter:F

    move/from16 v17, v0

    cmpg-float v16, v16, v17

    if-gez v16, :cond_5

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v15, v16, v9

    .line 692
    .local v15, "wrapped":F
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v16

    cmpg-float v16, v16, v15

    if-gez v16, :cond_4

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    move-object/from16 v16, v0

    aget-object v16, v16, v10

    move v0, v9

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mDistToCenter:F

    goto/16 :goto_1

    .line 695
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    move-object/from16 v16, v0

    aget-object v16, v16, v10

    move v0, v15

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mDistToCenter:F

    goto/16 :goto_1

    .line 699
    .end local v15    # "wrapped":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v15, v9, v16

    .line 700
    .restart local v15    # "wrapped":F
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v16

    cmpg-float v16, v16, v9

    if-gez v16, :cond_6

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    move-object/from16 v16, v0

    aget-object v16, v16, v10

    move v0, v15

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mDistToCenter:F

    goto/16 :goto_1

    .line 703
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    move-object/from16 v16, v0

    aget-object v16, v16, v10

    move v0, v9

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mDistToCenter:F

    goto/16 :goto_1

    .line 734
    .end local v9    # "distToCenter":F
    .end local v15    # "wrapped":F
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "bitmapHeight":I
    .restart local v8    # "bitmapWidth":I
    .restart local v11    # "needsLoading":Z
    .restart local v12    # "scalingFactor":F
    .restart local v14    # "thumbnailCenter":Landroid/graphics/Point;
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 744
    .restart local v5    # "assetData":Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;
    :cond_8
    move-object v0, v5

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mBitmapRef:Ljava/lang/ref/SoftReference;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    .line 745
    move-object v0, v5

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mBitmapRef:Ljava/lang/ref/SoftReference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    check-cast v6, Landroid/graphics/Bitmap;

    iput-object v6, v5, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mStrongBitmapRef:Landroid/graphics/Bitmap;

    goto/16 :goto_3

    .line 750
    .end local v5    # "assetData":Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;
    .end local v7    # "bitmapHeight":I
    .end local v8    # "bitmapWidth":I
    .end local v11    # "needsLoading":Z
    .end local v12    # "scalingFactor":F
    .end local v13    # "thumbnail":Lcom/android/vending/velvet/CarouselView$Thumbnail;
    .end local v14    # "thumbnailCenter":Landroid/graphics/Point;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mImagesToLoad:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_a

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mImageLoader:Lcom/android/vending/velvet/CarouselView$ImageLoader;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mImagesToLoad:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/vending/velvet/CarouselView$ImageLoader;->queueImagesForLoading(Ljava/util/List;)V

    .line 753
    :cond_a
    return-void
.end method

.method private declared-synchronized createAndRunFadeInSequencer()V
    .locals 15

    .prologue
    .line 1381
    monitor-enter p0

    :try_start_0
    iget-object v11, p0, Lcom/android/vending/velvet/CarouselView;->mScrollSequencer:Lcom/android/vending/compat/animation/Animator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v11, :cond_1

    .line 1496
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1385
    :cond_1
    :try_start_1
    iget-object v11, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    if-eqz v11, :cond_0

    .line 1390
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    .local v0, "arr$":[Lcom/android/vending/velvet/CarouselView$Thumbnail;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_2

    aget-object v9, v0, v6

    .line 1391
    .local v9, "thumbnail":Lcom/android/vending/velvet/CarouselView$Thumbnail;
    iget-object v11, v9, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mAssetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    iget-object v11, v11, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mBitmapRef:Ljava/lang/ref/SoftReference;

    if-eqz v11, :cond_0

    .line 1390
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1396
    .end local v9    # "thumbnail":Lcom/android/vending/velvet/CarouselView$Thumbnail;
    :cond_2
    new-instance v5, Lcom/android/vending/compat/animation/AnimatorSet;

    invoke-direct {v5}, Lcom/android/vending/compat/animation/AnimatorSet;-><init>()V

    .line 1398
    .local v5, "fadeInSequencer":Lcom/android/vending/compat/animation/AnimatorSet;
    invoke-virtual {p0}, Lcom/android/vending/velvet/CarouselView;->getBottom()I

    move-result v11

    invoke-virtual {p0}, Lcom/android/vending/velvet/CarouselView;->getTop()I

    move-result v12

    sub-int v1, v11, v12

    .line 1399
    .local v1, "canvasHeight":I
    invoke-virtual {p0}, Lcom/android/vending/velvet/CarouselView;->getRight()I

    move-result v11

    invoke-virtual {p0}, Lcom/android/vending/velvet/CarouselView;->getLeft()I

    move-result v12

    sub-int v2, v11, v12

    .line 1402
    .local v2, "canvasWidth":I
    invoke-direct {p0, v2, v1}, Lcom/android/vending/velvet/CarouselView;->computeThumbnailsDisplayState(II)V

    .line 1407
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    array-length v7, v0

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v7, :cond_4

    aget-object v9, v0, v6

    .line 1408
    .restart local v9    # "thumbnail":Lcom/android/vending/velvet/CarouselView$Thumbnail;
    iget-boolean v11, v9, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mIsOffScreen:Z

    if-eqz v11, :cond_3

    .line 1409
    const/high16 v11, 0x3f800000    # 1.0f

    iput v11, v9, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mFadeInAlpha:F

    .line 1410
    const/4 v11, 0x0

    iput-boolean v11, v9, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mIsInitialFadeIn:Z

    .line 1407
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1413
    .end local v9    # "thumbnail":Lcom/android/vending/velvet/CarouselView$Thumbnail;
    :cond_4
    new-instance v11, Lcom/android/vending/velvet/CarouselView$9;

    invoke-direct {v11, p0}, Lcom/android/vending/velvet/CarouselView$9;-><init>(Lcom/android/vending/velvet/CarouselView;)V

    invoke-virtual {p0, v11}, Lcom/android/vending/velvet/CarouselView;->post(Ljava/lang/Runnable;)Z

    .line 1419
    const/4 v4, 0x0

    .line 1420
    .local v4, "distance":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1423
    .local v8, "stages":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/compat/animation/Animator;>;"
    :goto_3
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 1424
    .local v10, "toFadeIn":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/vending/velvet/CarouselView$Thumbnail;>;"
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    array-length v7, v0

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v7, :cond_6

    aget-object v9, v0, v6

    .line 1425
    .restart local v9    # "thumbnail":Lcom/android/vending/velvet/CarouselView$Thumbnail;
    iget-boolean v11, v9, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mIsOffScreen:Z

    if-nez v11, :cond_5

    iget v11, v9, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mDistToCenter:F

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    int-to-float v12, v4

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v11, v11

    const-wide v13, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v11, v11, v13

    if-gez v11, :cond_5

    .line 1427
    const/4 v11, 0x1

    iput-boolean v11, v9, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mIsInitialFadeIn:Z

    .line 1428
    invoke-interface {v10, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1424
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1431
    .end local v9    # "thumbnail":Lcom/android/vending/velvet/CarouselView$Thumbnail;
    :cond_6
    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1459
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-eqz v11, :cond_0

    .line 1468
    const/4 v11, 0x0

    new-array v11, v11, [Lcom/android/vending/compat/animation/Animator;

    invoke-interface {v8, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/android/vending/compat/animation/Animator;

    invoke-virtual {v5, v11}, Lcom/android/vending/compat/animation/AnimatorSet;->playSequentially([Lcom/android/vending/compat/animation/Animator;)V

    .line 1470
    new-instance v11, Lcom/android/vending/velvet/CarouselView$12;

    invoke-direct {v11, p0}, Lcom/android/vending/velvet/CarouselView$12;-><init>(Lcom/android/vending/velvet/CarouselView;)V

    invoke-virtual {v5, v11}, Lcom/android/vending/compat/animation/AnimatorSet;->addListener(Lcom/android/vending/compat/animation/Animator$AnimatorListener;)V

    .line 1494
    iput-object v5, p0, Lcom/android/vending/velvet/CarouselView;->mFadeInSequencer:Lcom/android/vending/compat/animation/Animator;

    .line 1495
    iget-object v11, p0, Lcom/android/vending/velvet/CarouselView;->mFadeInSequencer:Lcom/android/vending/compat/animation/Animator;

    invoke-virtual {v11}, Lcom/android/vending/compat/animation/Animator;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1381
    .end local v0    # "arr$":[Lcom/android/vending/velvet/CarouselView$Thumbnail;
    .end local v1    # "canvasHeight":I
    .end local v2    # "canvasWidth":I
    .end local v4    # "distance":I
    .end local v5    # "fadeInSequencer":Lcom/android/vending/compat/animation/AnimatorSet;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "stages":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/compat/animation/Animator;>;"
    .end local v10    # "toFadeIn":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/vending/velvet/CarouselView$Thumbnail;>;"
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 1435
    .restart local v0    # "arr$":[Lcom/android/vending/velvet/CarouselView$Thumbnail;
    .restart local v1    # "canvasHeight":I
    .restart local v2    # "canvasWidth":I
    .restart local v4    # "distance":I
    .restart local v5    # "fadeInSequencer":Lcom/android/vending/compat/animation/AnimatorSet;
    .restart local v6    # "i$":I
    .restart local v7    # "len$":I
    .restart local v8    # "stages":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/compat/animation/Animator;>;"
    .restart local v10    # "toFadeIn":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/vending/velvet/CarouselView$Thumbnail;>;"
    :cond_7
    const/4 v11, 0x2

    :try_start_2
    new-array v11, v11, [F

    fill-array-data v11, :array_0

    invoke-static {v11}, Lcom/android/vending/compat/animation/ValueAnimator;->ofFloat([F)Lcom/android/vending/compat/animation/ValueAnimator;

    move-result-object v11

    const-wide/16 v12, 0xfa

    invoke-virtual {v11, v12, v13}, Lcom/android/vending/compat/animation/ValueAnimator;->setDuration(J)Lcom/android/vending/compat/animation/ValueAnimator;

    move-result-object v3

    .line 1436
    .local v3, "currStage":Lcom/android/vending/compat/animation/ValueAnimator;
    new-instance v11, Lcom/android/vending/velvet/CarouselView$10;

    invoke-direct {v11, p0, v10}, Lcom/android/vending/velvet/CarouselView$10;-><init>(Lcom/android/vending/velvet/CarouselView;Ljava/util/Set;)V

    invoke-virtual {v3, v11}, Lcom/android/vending/compat/animation/ValueAnimator;->addUpdateListener(Lcom/android/vending/compat/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1447
    new-instance v11, Lcom/android/vending/velvet/CarouselView$11;

    invoke-direct {v11, p0, v10}, Lcom/android/vending/velvet/CarouselView$11;-><init>(Lcom/android/vending/velvet/CarouselView;Ljava/util/Set;)V

    invoke-virtual {v3, v11}, Lcom/android/vending/compat/animation/ValueAnimator;->addListener(Lcom/android/vending/compat/animation/Animator$AnimatorListener;)V

    .line 1456
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1457
    add-int/lit8 v4, v4, 0x1

    .line 1458
    goto/16 :goto_3

    .line 1435
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private declared-synchronized createAndRunScrollSequencer(FJ)V
    .locals 5
    .param p1, "velocity"    # F
    .param p2, "scrollDurationMs"    # J

    .prologue
    .line 1020
    monitor-enter p0

    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x1

    long-to-float v4, p2

    aput v4, v2, v3

    invoke-static {v2}, Lcom/android/vending/compat/animation/ValueAnimator;->ofFloat([F)Lcom/android/vending/compat/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Lcom/android/vending/compat/animation/ValueAnimator;->setDuration(J)Lcom/android/vending/compat/animation/ValueAnimator;

    move-result-object v1

    .line 1022
    .local v1, "scrolling":Lcom/android/vending/compat/animation/ValueAnimator;
    new-instance v2, Lcom/android/vending/velvet/CarouselView$4;

    invoke-direct {v2, p0}, Lcom/android/vending/velvet/CarouselView$4;-><init>(Lcom/android/vending/velvet/CarouselView;)V

    invoke-virtual {v1, v2}, Lcom/android/vending/compat/animation/ValueAnimator;->addListener(Lcom/android/vending/compat/animation/Animator$AnimatorListener;)V

    .line 1048
    new-instance v2, Lcom/android/vending/velvet/CarouselView$5;

    invoke-direct {v2, p0, p1}, Lcom/android/vending/velvet/CarouselView$5;-><init>(Lcom/android/vending/velvet/CarouselView;F)V

    invoke-virtual {v1, v2}, Lcom/android/vending/compat/animation/ValueAnimator;->addUpdateListener(Lcom/android/vending/compat/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1070
    new-instance v2, Lcom/android/vending/compat/animation/LinearInterpolator;

    invoke-direct {v2}, Lcom/android/vending/compat/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/vending/compat/animation/ValueAnimator;->setInterpolator(Lcom/android/vending/compat/animation/TimeInterpolator;)V

    .line 1072
    new-instance v0, Lcom/android/vending/compat/animation/AnimatorSet;

    invoke-direct {v0}, Lcom/android/vending/compat/animation/AnimatorSet;-><init>()V

    .line 1073
    .local v0, "scrollSequencer":Lcom/android/vending/compat/animation/AnimatorSet;
    new-instance v2, Lcom/android/vending/velvet/CarouselView$6;

    invoke-direct {v2, p0}, Lcom/android/vending/velvet/CarouselView$6;-><init>(Lcom/android/vending/velvet/CarouselView;)V

    invoke-virtual {v0, v2}, Lcom/android/vending/compat/animation/AnimatorSet;->addListener(Lcom/android/vending/compat/animation/Animator$AnimatorListener;)V

    .line 1084
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/vending/compat/animation/Animator;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/android/vending/compat/animation/AnimatorSet;->playSequentially([Lcom/android/vending/compat/animation/Animator;)V

    .line 1086
    iput-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mScrollSequencer:Lcom/android/vending/compat/animation/Animator;

    .line 1087
    invoke-virtual {v0}, Lcom/android/vending/compat/animation/AnimatorSet;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1088
    monitor-exit p0

    return-void

    .line 1020
    .end local v0    # "scrollSequencer":Lcom/android/vending/compat/animation/AnimatorSet;
    .end local v1    # "scrolling":Lcom/android/vending/compat/animation/ValueAnimator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private drawThumbnail(Landroid/graphics/Canvas;Lcom/android/vending/velvet/CarouselView$Thumbnail;)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "thumbnail"    # Lcom/android/vending/velvet/CarouselView$Thumbnail;

    .prologue
    .line 763
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mAssetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mBitmapRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v15}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    .line 772
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_2

    const/4 v15, 0x1

    move v10, v15

    .line 773
    .local v10, "hasThumbnail":Z
    :goto_0
    if-eqz v10, :cond_3

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mFadeInAlpha:F

    move v15, v0

    const/high16 v16, 0x3f800000    # 1.0f

    cmpg-float v15, v15, v16

    if-gez v15, :cond_3

    const/4 v15, 0x1

    move v13, v15

    .line 774
    .local v13, "isThumbnailFadingIn":Z
    :goto_1
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mIsInitialFadeIn:Z

    move v11, v0

    .line 776
    .local v11, "isInitialFadeInRunning":Z
    if-eqz v10, :cond_0

    if-nez v11, :cond_1

    if-eqz v13, :cond_1

    .line 778
    :cond_0
    if-eqz v10, :cond_4

    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mFadeInAlpha:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    move v14, v15

    .line 780
    .local v14, "placeholderAlpha":F
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mThumbnailPaint:Landroid/graphics/Paint;

    move-object v15, v0

    const/high16 v16, 0x437f0000    # 255.0f

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mLocationBasedAlpha:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    mul-float v16, v16, v14

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mPlaceholderBitmap:Landroid/graphics/Bitmap;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 783
    .local v7, "bitmapWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mPlaceholderBitmap:Landroid/graphics/Bitmap;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 784
    .local v6, "bitmapHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mBitmapSrcRectangle:Landroid/graphics/Rect;

    move-object v15, v0

    iput v7, v15, Landroid/graphics/Rect;->right:I

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mBitmapSrcRectangle:Landroid/graphics/Rect;

    move-object v15, v0

    iput v6, v15, Landroid/graphics/Rect;->bottom:I

    .line 789
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mRectOnScreen:Landroid/graphics/Rect;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    .line 790
    .local v8, "dstCenterX":I
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mRectOnScreen:Landroid/graphics/Rect;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    .line 791
    .local v9, "dstCenterY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mBitmapDstRectangle:Landroid/graphics/Rect;

    move-object v15, v0

    div-int/lit8 v16, v7, 0x2

    sub-int v16, v8, v16

    move/from16 v0, v16

    move-object v1, v15

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mBitmapDstRectangle:Landroid/graphics/Rect;

    move-object v15, v0

    div-int/lit8 v16, v7, 0x2

    add-int v16, v16, v8

    move/from16 v0, v16

    move-object v1, v15

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mBitmapDstRectangle:Landroid/graphics/Rect;

    move-object v15, v0

    div-int/lit8 v16, v6, 0x2

    sub-int v16, v9, v16

    move/from16 v0, v16

    move-object v1, v15

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mBitmapDstRectangle:Landroid/graphics/Rect;

    move-object v15, v0

    div-int/lit8 v16, v6, 0x2

    add-int v16, v16, v9

    move/from16 v0, v16

    move-object v1, v15

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mThumbnailPaint:Landroid/graphics/Paint;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mPlaceholderBitmap:Landroid/graphics/Bitmap;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mBitmapSrcRectangle:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mBitmapDstRectangle:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mThumbnailPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 801
    .end local v6    # "bitmapHeight":I
    .end local v7    # "bitmapWidth":I
    .end local v8    # "dstCenterX":I
    .end local v9    # "dstCenterY":I
    .end local v14    # "placeholderAlpha":F
    :cond_1
    if-nez v5, :cond_5

    .line 820
    :goto_3
    return-void

    .line 772
    .end local v10    # "hasThumbnail":Z
    .end local v11    # "isInitialFadeInRunning":Z
    .end local v13    # "isThumbnailFadingIn":Z
    :cond_2
    const/4 v15, 0x0

    move v10, v15

    goto/16 :goto_0

    .line 773
    .restart local v10    # "hasThumbnail":Z
    :cond_3
    const/4 v15, 0x0

    move v13, v15

    goto/16 :goto_1

    .line 778
    .restart local v11    # "isInitialFadeInRunning":Z
    .restart local v13    # "isThumbnailFadingIn":Z
    :cond_4
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mFadeInAlpha:F

    move v15, v0

    move v14, v15

    goto/16 :goto_2

    .line 807
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mThumbnailPaint:Landroid/graphics/Paint;

    move-object v15, v0

    const/high16 v16, 0x437f0000    # 255.0f

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mLocationBasedAlpha:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mFadeInAlpha:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 810
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 811
    .restart local v7    # "bitmapWidth":I
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 812
    .restart local v6    # "bitmapHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mBitmapSrcRectangle:Landroid/graphics/Rect;

    move-object v15, v0

    iput v7, v15, Landroid/graphics/Rect;->right:I

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mBitmapSrcRectangle:Landroid/graphics/Rect;

    move-object v15, v0

    iput v6, v15, Landroid/graphics/Rect;->bottom:I

    .line 815
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mRectOnScreen:Landroid/graphics/Rect;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    if-ne v7, v15, :cond_6

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mRectOnScreen:Landroid/graphics/Rect;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    if-ne v6, v15, :cond_6

    const/4 v15, 0x1

    move v12, v15

    .line 817
    .local v12, "isOriginalSize":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mThumbnailPaint:Landroid/graphics/Paint;

    move-object v15, v0

    if-nez v12, :cond_7

    const/16 v16, 0x1

    :goto_5
    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mBitmapSrcRectangle:Landroid/graphics/Rect;

    move-object v15, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mRectOnScreen:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mThumbnailPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 815
    .end local v12    # "isOriginalSize":Z
    :cond_6
    const/4 v15, 0x0

    move v12, v15

    goto :goto_4

    .line 817
    .restart local v12    # "isOriginalSize":Z
    :cond_7
    const/16 v16, 0x0

    goto :goto_5
.end method

.method protected static getAlpha(III)F
    .locals 6

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    const v4, 0x3ee66666    # 0.45f

    .line 1527
    div-int/lit8 v0, p0, 0x2

    sub-int v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1528
    div-int/lit8 v1, p1, 0x4

    if-ge v0, v1, :cond_0

    .line 1531
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    div-int/lit8 v3, p1, 0x4

    invoke-static {v1, v2, v3, v5, v0}, Lcom/android/vending/velvet/CarouselView;->interpolate(IFIFI)F

    move-result v0

    .line 1540
    :goto_0
    return v0

    .line 1533
    :cond_0
    div-int/lit8 v1, p0, 0x4

    if-ge v0, v1, :cond_1

    .line 1536
    div-int/lit8 v1, p1, 0x4

    div-int/lit8 v2, p0, 0x4

    invoke-static {v1, v5, v2, v4, v0}, Lcom/android/vending/velvet/CarouselView;->interpolate(IFIFI)F

    move-result v0

    goto :goto_0

    .line 1540
    :cond_1
    div-int/lit8 v1, p0, 0x4

    div-int/lit8 v2, p0, 0x2

    const v3, 0x3e4ccccd    # 0.2f

    invoke-static {v1, v4, v2, v3, v0}, Lcom/android/vending/velvet/CarouselView;->interpolate(IFIFI)F

    move-result v0

    goto :goto_0
.end method

.method private hasInteractiveContent()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1721
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    array-length v0, v0

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static interpolate(IFIFI)F
    .locals 2
    .param p0, "key1"    # I
    .param p1, "value1"    # F
    .param p2, "key2"    # I
    .param p3, "value2"    # F
    .param p4, "key"    # I

    .prologue
    .line 1510
    sub-int v0, p4, p0

    int-to-float v0, v0

    sub-float v1, p3, p1

    mul-float/2addr v0, v1

    sub-int v1, p2, p0

    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr v0, p1

    return v0
.end method

.method private launchViewAssetInfoIntent(Lcom/android/vending/model/Asset;)V
    .locals 6
    .param p1, "asset"    # Lcom/android/vending/model/Asset;

    .prologue
    const/4 v5, 0x0

    .line 1003
    iget-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mBaseActivity:Lcom/android/vending/BaseActivity;

    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "promoted"

    const/4 v4, -0x1

    invoke-static {v3, v5, v5, v4}, Lcom/android/vending/AssetInfoActivity;->getReferrer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/vending/model/Asset;->getViewAssetInfoIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 1005
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mBaseActivity:Lcom/android/vending/BaseActivity;

    invoke-virtual {v1, v0}, Lcom/android/vending/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 1006
    return-void
.end method

.method private scheduleAutoAdvance()V
    .locals 4

    .prologue
    .line 1717
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mAutoAdvanceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mAutoAdvanceRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/vending/velvet/CarouselView;->mCurrAutoAdvanceInterval:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1718
    return-void
.end method

.method private setFrontedViewsVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 1353
    iput p1, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedViewsVisibility:I

    .line 1355
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedSnippetView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1356
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedSnippetView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1358
    :cond_0
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1359
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1361
    :cond_1
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedRatingBar:Landroid/widget/RatingBar;

    if-eqz v0, :cond_2

    .line 1362
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {v0, p1}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 1364
    :cond_2
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedPriceOrStateView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1365
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedPriceOrStateView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1367
    :cond_3
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedPromoDescTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 1368
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedPromoDescTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1370
    :cond_4
    return-void
.end method

.method private sortByDistanceToCenter()V
    .locals 6

    .prologue
    .line 666
    iget-object v4, p0, Lcom/android/vending/velvet/CarouselView;->mZOrder:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 667
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    .local v0, "arr$":[Lcom/android/vending/velvet/CarouselView$Thumbnail;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 668
    .local v3, "thumbnail":Lcom/android/vending/velvet/CarouselView$Thumbnail;
    iget-object v4, p0, Lcom/android/vending/velvet/CarouselView;->mZOrder:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 667
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 670
    .end local v3    # "thumbnail":Lcom/android/vending/velvet/CarouselView$Thumbnail;
    :cond_0
    iget-object v4, p0, Lcom/android/vending/velvet/CarouselView;->mZOrder:Ljava/util/List;

    iget-object v5, p0, Lcom/android/vending/velvet/CarouselView;->mDistanceComparator:Ljava/util/Comparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 671
    return-void
.end method

.method private updateFrontedViews()V
    .locals 3

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedTitleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v1}, Lcom/android/vending/model/Asset;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1340
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->getNumRaters()I

    move-result v0

    if-lez v0, :cond_1

    .line 1341
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedRatingBar:Landroid/widget/RatingBar;

    iget-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v1}, Lcom/android/vending/model/Asset;->getRating()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 1342
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedRatingBar:Landroid/widget/RatingBar;

    iget v1, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedViewsVisibility:I

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 1346
    :goto_0
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedAsset:Lcom/android/vending/model/Asset;

    iget-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedPriceOrStateView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/vending/AssetItemAdapter;->setPriceOrState(Lcom/android/vending/model/Asset;Landroid/widget/TextView;Z)V

    .line 1347
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedPromoDescTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1348
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedPromoDescTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v1}, Lcom/android/vending/model/Asset;->getPromotionalDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1350
    :cond_0
    return-void

    .line 1344
    :cond_1
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedRatingBar:Landroid/widget/RatingBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected clampToLoadedRange(FF)F
    .locals 9
    .param p1, "index"    # F
    .param p2, "distance"    # F

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1125
    add-float v3, p1, p2

    .line 1126
    .local v3, "target":F
    invoke-virtual {p0, v3}, Lcom/android/vending/velvet/CarouselView;->clampToThumbnailArraySize(F)F

    move-result v4

    .line 1127
    .local v4, "targetClamped":F
    cmpg-float v5, p2, v7

    if-gez v5, :cond_2

    .line 1131
    cmpl-float v5, v3, v7

    if-ltz v5, :cond_0

    move v5, v3

    .line 1152
    :goto_0
    return v5

    .line 1134
    :cond_0
    iget-object v5, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    iget-object v6, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    array-length v6, v6

    sub-int/2addr v6, v8

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mAssetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    iget-object v5, v5, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mAsset:Lcom/android/vending/model/Asset;

    if-nez v5, :cond_1

    move v5, v7

    .line 1136
    goto :goto_0

    :cond_1
    move v5, v4

    .line 1138
    goto :goto_0

    .line 1144
    :cond_2
    float-to-double v5, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v2, v5

    .line 1145
    .local v2, "startIndex":I
    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    iget-object v6, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    array-length v6, v6

    sub-int/2addr v6, v8

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1146
    .local v0, "endIndex":I
    move v1, v2

    .local v1, "i":I
    :goto_1
    if-gt v1, v0, :cond_4

    .line 1147
    iget-object v5, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mAssetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    iget-object v5, v5, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mAsset:Lcom/android/vending/model/Asset;

    if-nez v5, :cond_3

    .line 1149
    sub-int v5, v1, v8

    int-to-float v5, v5

    goto :goto_0

    .line 1146
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move v5, v4

    .line 1152
    goto :goto_0
.end method

.method protected clampToThumbnailArraySize(F)F
    .locals 1
    .param p1, "index"    # F

    .prologue
    .line 1162
    :goto_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    array-length v0, v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    goto :goto_0

    .line 1165
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    array-length v0, v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 1166
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    array-length v0, v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    goto :goto_1

    .line 1168
    :cond_1
    return p1
.end method

.method protected clampToThumbnailArraySize(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1178
    :goto_0
    if-gez p1, :cond_0

    .line 1179
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    array-length v0, v0

    add-int/2addr p1, v0

    goto :goto_0

    .line 1181
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 1182
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    array-length v0, v0

    sub-int/2addr p1, v0

    goto :goto_1

    .line 1184
    :cond_1
    return p1
.end method

.method protected abstract drawBackground(Landroid/graphics/Canvas;II)V
.end method

.method protected getAlpha(Lcom/android/vending/velvet/CarouselView$Thumbnail;Landroid/graphics/Point;II)F
    .locals 2
    .param p1, "thumbnail"    # Lcom/android/vending/velvet/CarouselView$Thumbnail;
    .param p2, "thumbnailCenter"    # Landroid/graphics/Point;
    .param p3, "canvasWidth"    # I
    .param p4, "canvasHeight"    # I

    .prologue
    .line 1634
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mCommonBitmapSize:Lcom/android/vending/velvet/CarouselView$Dimension;

    iget v0, v0, Lcom/android/vending/velvet/CarouselView$Dimension;->width:I

    iget v1, p2, Landroid/graphics/Point;->x:I

    invoke-static {p3, v0, v1}, Lcom/android/vending/velvet/CarouselView;->getAlpha(III)F

    move-result v0

    return v0
.end method

.method protected getDistanceAlongMotionPath(FF)F
    .locals 1
    .param p1, "scrollX"    # F
    .param p2, "scrollY"    # F

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mCommonBitmapSize:Lcom/android/vending/velvet/CarouselView$Dimension;

    iget v0, v0, Lcom/android/vending/velvet/CarouselView$Dimension;->width:I

    int-to-float v0, v0

    div-float v0, p1, v0

    return v0
.end method

.method protected getHalfBitmapHeightInPixels()I
    .locals 1

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mCommonBitmapSizeUnscaled:Lcom/android/vending/velvet/CarouselView$Dimension;

    iget v0, v0, Lcom/android/vending/velvet/CarouselView$Dimension;->height:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getScaledBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1739
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 1740
    .local v1, "bw":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 1742
    .local v0, "bh":I
    iget v3, p0, Lcom/android/vending/velvet/CarouselView;->mTileSize:I

    int-to-float v3, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 1745
    .local v2, "hardScalingFactor":F
    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1747
    cmpl-float v3, v2, v5

    if-nez v3, :cond_0

    move-object v3, p1

    .line 1751
    :goto_0
    return-object v3

    :cond_0
    int-to-float v3, v1

    mul-float/2addr v3, v2

    float-to-int v3, v3

    int-to-float v4, v0

    mul-float/2addr v4, v2

    float-to-int v4, v4

    const/4 v5, 0x1

    invoke-static {p1, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0
.end method

.method protected getScalingFactor(Lcom/android/vending/velvet/CarouselView$Thumbnail;Landroid/graphics/Point;II)F
    .locals 4

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 1651
    iget v0, p2, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    int-to-float v1, p3

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    int-to-float v1, p3

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1653
    cmpl-float v1, v0, v3

    if-lez v1, :cond_0

    move v0, v3

    .line 1657
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v2

    sub-float v0, v1, v0

    return v0
.end method

.method protected getThumbnailCenterLocation(Lcom/android/vending/velvet/CarouselView$Thumbnail;II)Landroid/graphics/Point;
    .locals 8
    .param p1, "thumbnail"    # Lcom/android/vending/velvet/CarouselView$Thumbnail;
    .param p2, "canvasWidth"    # I
    .param p3, "canvasHeight"    # I

    .prologue
    .line 1564
    int-to-float v4, p2

    const/high16 v5, 0x40000000    # 2.0f

    div-float v1, v4, v5

    .line 1565
    .local v1, "midX":F
    invoke-virtual {p0, p3}, Lcom/android/vending/velvet/CarouselView;->getThumbnailMidY(I)F

    move-result v2

    .line 1567
    .local v2, "midY":F
    iget-object v4, p0, Lcom/android/vending/velvet/CarouselView;->mCommonBitmapSizeUnscaled:Lcom/android/vending/velvet/CarouselView$Dimension;

    iget v4, v4, Lcom/android/vending/velvet/CarouselView$Dimension;->width:I

    int-to-float v0, v4

    .line 1570
    .local v0, "coef":F
    iget v4, p1, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mDistToCenter:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, v0

    float-to-double v4, v4

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v3, v4

    .line 1571
    .local v3, "offsetX":F
    iget v4, p1, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mDistToCenter:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 1572
    neg-float v3, v3

    .line 1575
    :cond_0
    iget-object v4, p0, Lcom/android/vending/velvet/CarouselView;->mCenterPoint:Landroid/graphics/Point;

    add-float v5, v1, v3

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Point;->x:I

    .line 1576
    iget-object v4, p0, Lcom/android/vending/velvet/CarouselView;->mCenterPoint:Landroid/graphics/Point;

    float-to-int v5, v2

    iput v5, v4, Landroid/graphics/Point;->y:I

    .line 1577
    iget-object v4, p0, Lcom/android/vending/velvet/CarouselView;->mCenterPoint:Landroid/graphics/Point;

    return-object v4
.end method

.method protected abstract getThumbnailMidY(I)F
.end method

.method protected getVelocityAlongMotionPath(Landroid/view/VelocityTracker;)F
    .locals 1
    .param p1, "velocityTracker"    # Landroid/view/VelocityTracker;

    .prologue
    .line 1601
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    return v0
.end method

.method public declared-synchronized initializeAndLoad(I[Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;)V
    .locals 4
    .param p1, "totalAssetCount"    # I
    .param p2, "assetData"    # [Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    .prologue
    .line 1205
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    if-eqz v1, :cond_1

    .line 1206
    const-string v1, "Carousel already initialized"

    invoke-static {v1}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1231
    :cond_0
    monitor-exit p0

    return-void

    .line 1211
    :cond_1
    :try_start_1
    new-array v1, p1, [Lcom/android/vending/velvet/CarouselView$Thumbnail;

    iput-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    .line 1212
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_2

    .line 1213
    iget-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    new-instance v2, Lcom/android/vending/velvet/CarouselView$Thumbnail;

    invoke-direct {v2}, Lcom/android/vending/velvet/CarouselView$Thumbnail;-><init>()V

    aput-object v2, v1, v0

    .line 1214
    iget-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    aget-object v1, v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mFadeInAlpha:F

    .line 1215
    iget-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    aget-object v1, v1, v0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mRectOnScreen:Landroid/graphics/Rect;

    .line 1212
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1217
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/vending/velvet/CarouselView;->mIndexOfFirstLoadingAsset:I

    .line 1220
    invoke-virtual {p0, p2}, Lcom/android/vending/velvet/CarouselView;->load([Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;)V

    .line 1224
    iget v1, p0, Lcom/android/vending/velvet/CarouselView;->mIndexOfFirstLoadingAsset:I

    if-ge v1, p1, :cond_0

    .line 1225
    iget v0, p0, Lcom/android/vending/velvet/CarouselView;->mIndexOfFirstLoadingAsset:I

    :goto_1
    if-ge v0, p1, :cond_0

    .line 1226
    iget-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    aget-object v1, v1, v0

    new-instance v2, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    invoke-direct {v2}, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;-><init>()V

    iput-object v2, v1, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mAssetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    .line 1227
    iget-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mAssetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    new-instance v2, Ljava/lang/ref/SoftReference;

    iget-object v3, p0, Lcom/android/vending/velvet/CarouselView;->mPlaceholderBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mBitmapRef:Ljava/lang/ref/SoftReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1225
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1205
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected isOutsideLoadedRange(FF)Z
    .locals 8
    .param p1, "index"    # F
    .param p2, "distance"    # F

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1102
    add-float v5, p1, p2

    invoke-virtual {p0, v5}, Lcom/android/vending/velvet/CarouselView;->clampToThumbnailArraySize(F)F

    move-result v0

    .line 1103
    .local v0, "clamped":F
    float-to-int v3, v0

    .line 1104
    .local v3, "onLeft":I
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Lcom/android/vending/velvet/CarouselView;->clampToThumbnailArraySize(I)I

    move-result v4

    .line 1105
    .local v4, "onRight":I
    iget-object v5, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mAssetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    iget-object v5, v5, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mAsset:Lcom/android/vending/model/Asset;

    if-nez v5, :cond_0

    move v1, v7

    .line 1106
    .local v1, "emptyOnLeft":Z
    :goto_0
    iget-object v5, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    aget-object v5, v5, v4

    iget-object v5, v5, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mAssetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    iget-object v5, v5, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mAsset:Lcom/android/vending/model/Asset;

    if-nez v5, :cond_1

    move v2, v7

    .line 1109
    .local v2, "emptyOnRight":Z
    :goto_1
    int-to-float v5, v3

    cmpl-float v5, v0, v5

    if-nez v5, :cond_2

    move v5, v1

    .line 1114
    :goto_2
    return v5

    .end local v1    # "emptyOnLeft":Z
    .end local v2    # "emptyOnRight":Z
    :cond_0
    move v1, v6

    .line 1105
    goto :goto_0

    .restart local v1    # "emptyOnLeft":Z
    :cond_1
    move v2, v6

    .line 1106
    goto :goto_1

    .line 1114
    .restart local v2    # "emptyOnRight":Z
    :cond_2
    if-nez v1, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    move v5, v7

    goto :goto_2

    :cond_4
    move v5, v6

    goto :goto_2
.end method

.method public declared-synchronized load([Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;)V
    .locals 18
    .param p1, "assetData"    # [Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    .prologue
    .line 1242
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    move-object/from16 v16, v0

    if-nez v16, :cond_1

    .line 1243
    const-string v16, "Carousel array has not been initialized"

    invoke-static/range {v16 .. v16}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1316
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1247
    :cond_1
    :try_start_1
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    if-eqz v16, :cond_0

    .line 1252
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mIndexOfFirstLoadingAsset:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    add-int v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    .line 1253
    const-string v16, "Not enough space to host all the assets"

    invoke-static/range {v16 .. v16}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1242
    :catchall_0
    move-exception v16

    monitor-exit p0

    throw v16

    .line 1257
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mIndexOfFirstLoadingAsset:I

    move v7, v0

    .line 1258
    .local v7, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mIndexOfFirstLoadingAsset:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    add-int v16, v16, v17

    move v0, v7

    move/from16 v1, v16

    if-ge v0, v1, :cond_3

    .line 1259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    move-object/from16 v16, v0

    aget-object v16, v16, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mIndexOfFirstLoadingAsset:I

    move/from16 v17, v0

    sub-int v17, v7, v17

    aget-object v17, p1, v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mAssetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    .line 1258
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1262
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mIndexOfFirstLoadingAsset:I

    move/from16 v16, v0

    if-nez v16, :cond_9

    .line 1269
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1270
    .local v6, "frequency":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/vending/velvet/CarouselView$Dimension;Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    .line 1271
    .local v9, "largestCount":I
    const/4 v11, 0x0

    .line 1272
    .local v11, "mostCommonPair":Lcom/android/vending/velvet/CarouselView$Dimension;
    const/4 v7, 0x0

    :goto_2
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    move v0, v7

    move/from16 v1, v16

    if-ge v0, v1, :cond_7

    .line 1273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    move-object/from16 v16, v0

    aget-object v16, v16, v7

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mAssetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mBitmapRef:Ljava/lang/ref/SoftReference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 1274
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    if-nez v4, :cond_4

    .line 1272
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1277
    :cond_4
    new-instance v14, Lcom/android/vending/velvet/CarouselView$Dimension;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move-object v0, v14

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/vending/velvet/CarouselView$Dimension;-><init>(II)V

    .line 1278
    .local v14, "size":Lcom/android/vending/velvet/CarouselView$Dimension;
    invoke-interface {v6, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    move/from16 v5, v16

    .line 1279
    .local v5, "countForCurrSize":I
    :goto_4
    if-le v5, v9, :cond_5

    .line 1280
    move-object v11, v14

    .line 1281
    move v9, v5

    .line 1283
    :cond_5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object v0, v6

    move-object v1, v14

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1278
    .end local v5    # "countForCurrSize":I
    :cond_6
    const/16 v16, 0x1

    move/from16 v5, v16

    goto :goto_4

    .line 1285
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v14    # "size":Lcom/android/vending/velvet/CarouselView$Dimension;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mScreenScaleFactor:F

    move/from16 v16, v0

    move-object v0, v11

    iget v0, v0, Lcom/android/vending/velvet/CarouselView$Dimension;->width:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move v13, v0

    .line 1286
    .local v13, "scaledCommonWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mScreenScaleFactor:F

    move/from16 v16, v0

    move-object v0, v11

    iget v0, v0, Lcom/android/vending/velvet/CarouselView$Dimension;->height:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move v12, v0

    .line 1287
    .local v12, "scaledCommonHeight":I
    new-instance v16, Lcom/android/vending/velvet/CarouselView$Dimension;

    move-object/from16 v0, v16

    move v1, v13

    move v2, v12

    invoke-direct {v0, v1, v2}, Lcom/android/vending/velvet/CarouselView$Dimension;-><init>(II)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/vending/velvet/CarouselView;->mCommonBitmapSize:Lcom/android/vending/velvet/CarouselView$Dimension;

    .line 1288
    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/vending/velvet/CarouselView;->mCommonBitmapSizeUnscaled:Lcom/android/vending/velvet/CarouselView$Dimension;

    .line 1290
    const/16 v16, 0x0

    aget-object v16, p1, v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mAsset:Lcom/android/vending/model/Asset;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/vending/velvet/CarouselView;->mFrontedAsset:Lcom/android/vending/model/Asset;

    .line 1291
    invoke-direct/range {p0 .. p0}, Lcom/android/vending/velvet/CarouselView;->updateFrontedViews()V

    .line 1296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    move-object v3, v0

    .local v3, "arr$":[Lcom/android/vending/velvet/CarouselView$Thumbnail;
    array-length v10, v3

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_5
    if-ge v8, v10, :cond_8

    aget-object v15, v3, v8

    .line 1297
    .local v15, "thumbnail":Lcom/android/vending/velvet/CarouselView$Thumbnail;
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object v1, v15

    iput v0, v1, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mFadeInAlpha:F

    .line 1298
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object v1, v15

    iput-boolean v0, v1, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mIsInitialFadeIn:Z

    .line 1296
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 1301
    .end local v15    # "thumbnail":Lcom/android/vending/velvet/CarouselView$Thumbnail;
    :cond_8
    new-instance v16, Lcom/android/vending/velvet/CarouselView$7;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/vending/velvet/CarouselView$7;-><init>(Lcom/android/vending/velvet/CarouselView;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/vending/velvet/CarouselView;->post(Ljava/lang/Runnable;)Z

    .line 1308
    .end local v3    # "arr$":[Lcom/android/vending/velvet/CarouselView$Thumbnail;
    .end local v6    # "frequency":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/vending/velvet/CarouselView$Dimension;Ljava/lang/Integer;>;"
    .end local v8    # "i$":I
    .end local v9    # "largestCount":I
    .end local v10    # "len$":I
    .end local v11    # "mostCommonPair":Lcom/android/vending/velvet/CarouselView$Dimension;
    .end local v12    # "scaledCommonHeight":I
    .end local v13    # "scaledCommonWidth":I
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mIndexOfFirstLoadingAsset:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/vending/velvet/CarouselView;->mIndexOfFirstLoadingAsset:I

    .line 1311
    new-instance v16, Lcom/android/vending/velvet/CarouselView$8;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/vending/velvet/CarouselView$8;-><init>(Lcom/android/vending/velvet/CarouselView;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/vending/velvet/CarouselView;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 608
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/vending/velvet/CarouselView;->getWidth()I

    move-result v2

    .line 609
    .local v2, "canvasWidth":I
    invoke-virtual {p0}, Lcom/android/vending/velvet/CarouselView;->getHeight()I

    move-result v1

    .line 614
    .local v1, "canvasHeight":I
    invoke-virtual {p0, p1, v2, v1}, Lcom/android/vending/velvet/CarouselView;->drawBackground(Landroid/graphics/Canvas;II)V

    .line 616
    iget-object v9, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    array-length v9, v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/vending/velvet/CarouselView;->mCommonBitmapSizeUnscaled:Lcom/android/vending/velvet/CarouselView$Dimension;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_1

    .line 653
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 627
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    .local v0, "arr$":[Lcom/android/vending/velvet/CarouselView$Thumbnail;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v6, :cond_2

    aget-object v7, v0, v4

    .line 628
    .local v7, "thumbnail":Lcom/android/vending/velvet/CarouselView$Thumbnail;
    iget-object v9, v7, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mAssetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    iget-object v9, v9, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mBitmapRef:Ljava/lang/ref/SoftReference;

    if-eqz v9, :cond_0

    .line 627
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 634
    .end local v7    # "thumbnail":Lcom/android/vending/velvet/CarouselView$Thumbnail;
    :cond_2
    invoke-direct {p0, v2, v1}, Lcom/android/vending/velvet/CarouselView;->computeThumbnailsDisplayState(II)V

    .line 636
    invoke-direct {p0}, Lcom/android/vending/velvet/CarouselView;->sortByDistanceToCenter()V

    .line 638
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 639
    invoke-virtual {p0, p1, v2, v1}, Lcom/android/vending/velvet/CarouselView;->setThumbnailClip(Landroid/graphics/Canvas;II)V

    .line 641
    iget-object v9, p0, Lcom/android/vending/velvet/CarouselView;->mZOrder:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    sub-int v3, v9, v10

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_5

    .line 642
    iget-object v9, p0, Lcom/android/vending/velvet/CarouselView;->mZOrder:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/vending/velvet/CarouselView$Thumbnail;

    .line 643
    .local v8, "thumbnailToPaint":Lcom/android/vending/velvet/CarouselView$Thumbnail;
    iget-boolean v9, v8, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mIsOffScreen:Z

    if-eqz v9, :cond_4

    .line 641
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 646
    :cond_4
    iget-object v9, v8, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mRectOnScreen:Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11, v2, v1}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v5

    .line 648
    .local v5, "intersectsWithScreen":Z
    if-eqz v5, :cond_3

    .line 649
    invoke-direct {p0, p1, v8}, Lcom/android/vending/velvet/CarouselView;->drawThumbnail(Landroid/graphics/Canvas;Lcom/android/vending/velvet/CarouselView$Thumbnail;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 608
    .end local v0    # "arr$":[Lcom/android/vending/velvet/CarouselView$Thumbnail;
    .end local v1    # "canvasHeight":I
    .end local v2    # "canvasWidth":I
    .end local v3    # "i":I
    .end local v4    # "i$":I
    .end local v5    # "intersectsWithScreen":Z
    .end local v6    # "len$":I
    .end local v8    # "thumbnailToPaint":Lcom/android/vending/velvet/CarouselView$Thumbnail;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 652
    .restart local v0    # "arr$":[Lcom/android/vending/velvet/CarouselView$Thumbnail;
    .restart local v1    # "canvasHeight":I
    .restart local v2    # "canvasWidth":I
    .restart local v3    # "i":I
    .restart local v4    # "i$":I
    .restart local v6    # "len$":I
    :cond_5
    :try_start_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 580
    invoke-super {p0}, Lcom/android/vending/velvet/ArcView;->onFinishInflate()V

    .line 582
    const v0, 0x7f07001a

    invoke-virtual {p0, v0}, Lcom/android/vending/velvet/CarouselView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedSnippetView:Landroid/view/View;

    .line 583
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedSnippetView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedSnippetView:Landroid/view/View;

    new-instance v1, Lcom/android/vending/velvet/CarouselView$3;

    invoke-direct {v1, p0}, Lcom/android/vending/velvet/CarouselView$3;-><init>(Lcom/android/vending/velvet/CarouselView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 593
    :cond_0
    const v0, 0x7f07001b

    invoke-virtual {p0, v0}, Lcom/android/vending/velvet/CarouselView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedTitleTextView:Landroid/widget/TextView;

    .line 594
    const v0, 0x7f07001c

    invoke-virtual {p0, v0}, Lcom/android/vending/velvet/CarouselView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedRatingBar:Landroid/widget/RatingBar;

    .line 595
    const v0, 0x7f07001d

    invoke-virtual {p0, v0}, Lcom/android/vending/velvet/CarouselView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedPriceOrStateView:Landroid/widget/TextView;

    .line 596
    const v0, 0x7f0700e6

    invoke-virtual {p0, v0}, Lcom/android/vending/velvet/CarouselView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedPromoDescTextView:Landroid/widget/TextView;

    .line 600
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 601
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedTitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 603
    :cond_1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/vending/velvet/CarouselView;->setFrontedViewsVisibility(I)V

    .line 604
    return-void
.end method

.method public onPause()V
    .locals 6

    .prologue
    .line 1681
    invoke-direct {p0}, Lcom/android/vending/velvet/CarouselView;->cancelAutoAdvance()V

    .line 1682
    iget-object v4, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    if-eqz v4, :cond_0

    .line 1684
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    .local v0, "arr$":[Lcom/android/vending/velvet/CarouselView$Thumbnail;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1685
    .local v3, "thumbnail":Lcom/android/vending/velvet/CarouselView$Thumbnail;
    iget-object v4, v3, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mAssetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mStrongBitmapRef:Landroid/graphics/Bitmap;

    .line 1684
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1689
    .end local v0    # "arr$":[Lcom/android/vending/velvet/CarouselView$Thumbnail;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "thumbnail":Lcom/android/vending/velvet/CarouselView$Thumbnail;
    :cond_0
    iget-object v4, p0, Lcom/android/vending/velvet/CarouselView;->mFadeInSequencer:Lcom/android/vending/compat/animation/Animator;

    if-eqz v4, :cond_1

    .line 1690
    iget-object v4, p0, Lcom/android/vending/velvet/CarouselView;->mFadeInSequencer:Lcom/android/vending/compat/animation/Animator;

    invoke-virtual {v4}, Lcom/android/vending/compat/animation/Animator;->cancel()V

    .line 1691
    iget-object v4, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    if-eqz v4, :cond_1

    .line 1695
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    .restart local v0    # "arr$":[Lcom/android/vending/velvet/CarouselView$Thumbnail;
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1696
    .restart local v3    # "thumbnail":Lcom/android/vending/velvet/CarouselView$Thumbnail;
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mFadeInAlpha:F

    .line 1697
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mIsInitialFadeIn:Z

    .line 1695
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1702
    .end local v0    # "arr$":[Lcom/android/vending/velvet/CarouselView$Thumbnail;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "thumbnail":Lcom/android/vending/velvet/CarouselView$Thumbnail;
    :cond_1
    iget-object v4, p0, Lcom/android/vending/velvet/CarouselView;->mScrollSequencer:Lcom/android/vending/compat/animation/Animator;

    if-eqz v4, :cond_2

    .line 1703
    iget-object v4, p0, Lcom/android/vending/velvet/CarouselView;->mScrollSequencer:Lcom/android/vending/compat/animation/Animator;

    invoke-virtual {v4}, Lcom/android/vending/compat/animation/Animator;->cancel()V

    .line 1705
    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 1708
    invoke-direct {p0}, Lcom/android/vending/velvet/CarouselView;->cancelAutoAdvance()V

    .line 1709
    invoke-direct {p0}, Lcom/android/vending/velvet/CarouselView;->scheduleAutoAdvance()V

    .line 1710
    return-void
.end method

.method public declared-synchronized onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 27
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 824
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    move-object/from16 v24, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v24, :cond_0

    .line 825
    const/16 v24, 0x1

    .line 994
    :goto_0
    monitor-exit p0

    return v24

    .line 828
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/vending/velvet/CarouselView;->cancelScrolling()V

    .line 830
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 831
    .local v5, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v23

    .line 832
    .local v23, "y":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v21

    .line 834
    .local v21, "x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mFadeInSequencer:Lcom/android/vending/compat/animation/Animator;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    .line 835
    const/16 v24, 0x1

    goto :goto_0

    .line 838
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    if-nez v24, :cond_2

    .line 839
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/vending/velvet/CarouselView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 841
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 843
    invoke-direct/range {p0 .. p0}, Lcom/android/vending/velvet/CarouselView;->hasInteractiveContent()Z

    move-result v24

    if-nez v24, :cond_4

    .line 847
    const/16 v24, 0x1

    move v0, v5

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mAssetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mAsset:Lcom/android/vending/model/Asset;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/vending/velvet/CarouselView;->launchViewAssetInfoIntent(Lcom/android/vending/model/Asset;)V

    .line 851
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/VelocityTracker;->recycle()V

    .line 852
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/vending/velvet/CarouselView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 853
    const/16 v24, 0x1

    goto/16 :goto_0

    .line 856
    :cond_4
    packed-switch v5, :pswitch_data_0

    .line 994
    :cond_5
    :goto_1
    const/16 v24, 0x1

    goto/16 :goto_0

    .line 858
    :pswitch_0
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/vending/velvet/CarouselView;->mLastMotionX:F

    .line 859
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/vending/velvet/CarouselView;->mLastMotionY:F

    .line 860
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/vending/velvet/CarouselView;->mHorDistanceScrolledSinceLastDown:F

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mScrollSequencer:Lcom/android/vending/compat/animation/Animator;

    move-object/from16 v24, v0

    if-eqz v24, :cond_6

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mScrollSequencer:Lcom/android/vending/compat/animation/Animator;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/vending/compat/animation/Animator;->cancel()V

    .line 868
    :cond_6
    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/vending/velvet/CarouselView;->setFrontedViewsVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 824
    .end local v5    # "action":I
    .end local v21    # "x":F
    .end local v23    # "y":F
    :catchall_0
    move-exception v24

    monitor-exit p0

    throw v24

    .line 873
    .restart local v5    # "action":I
    .restart local v21    # "x":F
    .restart local v23    # "y":F
    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mLastMotionX:F

    move/from16 v24, v0

    sub-float v15, v24, v21

    .line 874
    .local v15, "scrollX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mLastMotionY:F

    move/from16 v24, v0

    sub-float v16, v24, v23

    .line 876
    .local v16, "scrollY":F
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v22

    .line 877
    .local v22, "xDistTravelledInPixels":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mHorDistanceScrolledSinceLastDown:F

    move/from16 v24, v0

    add-float v24, v24, v22

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/vending/velvet/CarouselView;->mHorDistanceScrolledSinceLastDown:F

    .line 879
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/vending/velvet/CarouselView;->mLastMotionX:F

    .line 880
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/vending/velvet/CarouselView;->mLastMotionY:F

    .line 884
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mHorDistanceScrolledSinceLastDown:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mScrollThreshold:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    cmpl-float v24, v24, v25

    if-ltz v24, :cond_5

    .line 887
    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/velvet/CarouselView;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    const/16 v25, 0x1

    invoke-interface/range {v24 .. v25}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 889
    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/velvet/CarouselView;->getDistanceAlongMotionPath(FF)F

    move-result v7

    .line 891
    .local v7, "distance":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mCurrIndexAtCenter:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/velvet/CarouselView;->isOutsideLoadedRange(FF)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 892
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mCurrIndexAtCenter:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/velvet/CarouselView;->clampToLoadedRange(FF)F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/vending/velvet/CarouselView;->mCurrIndexAtCenter:F

    .line 898
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/velvet/CarouselView;->invalidate()V

    goto/16 :goto_1

    .line 894
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mCurrIndexAtCenter:F

    move/from16 v24, v0

    add-float v24, v24, v7

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/vending/velvet/CarouselView;->mCurrIndexAtCenter:F

    .line 895
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mCurrIndexAtCenter:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/vending/velvet/CarouselView;->clampToThumbnailArraySize(F)F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/vending/velvet/CarouselView;->mCurrIndexAtCenter:F

    goto :goto_2

    .line 904
    .end local v7    # "distance":F
    .end local v15    # "scrollX":F
    .end local v16    # "scrollY":F
    .end local v22    # "xDistTravelledInPixels":F
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    const/16 v25, 0x3e8

    invoke-virtual/range {v24 .. v25}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/vending/velvet/CarouselView;->getVelocityAlongMotionPath(Landroid/view/VelocityTracker;)F

    move-result v20

    .line 906
    .local v20, "velocity":F
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 909
    .local v4, "absVelocity":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/velvet/CarouselView;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    cmpl-float v24, v4, v24

    if-lez v24, :cond_b

    .line 911
    const/16 v24, 0x0

    cmpg-float v24, v20, v24

    if-gez v24, :cond_8

    const/16 v24, 0x1

    move/from16 v13, v24

    .line 913
    .local v13, "isVelocityNegative":Z
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mTileSize:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v20, v20, v24

    .line 914
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 916
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mDeceleration:F

    move/from16 v24, v0

    div-float v8, v4, v24

    .line 917
    .local v8, "duration":F
    mul-float v24, v4, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mDeceleration:F

    move/from16 v25, v0

    mul-float v25, v25, v8

    mul-float v25, v25, v8

    const/high16 v26, 0x40000000    # 2.0f

    div-float v25, v25, v26

    sub-float v19, v24, v25

    .line 919
    .local v19, "totalDistance":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mCurrIndexAtCenter:F

    move/from16 v24, v0

    if-eqz v13, :cond_9

    move/from16 v25, v19

    :goto_4
    add-float v24, v24, v25

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/vending/velvet/CarouselView;->clampToThumbnailArraySize(F)F

    move-result v12

    .line 923
    .local v12, "indexAtStop":F
    if-eqz v13, :cond_a

    .line 924
    move v0, v12

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    sub-float v18, v24, v12

    .line 925
    .local v18, "toAdd":F
    add-float v19, v19, v18

    .line 926
    const/high16 v24, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mDeceleration:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    mul-float v24, v24, v19

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    neg-float v0, v0

    move/from16 v20, v0

    .line 932
    :goto_5
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 935
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mDeceleration:F

    move/from16 v24, v0

    div-float v8, v4, v24

    .line 937
    const/high16 v24, 0x447a0000    # 1000.0f

    mul-float v24, v24, v8

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v24

    move/from16 v0, v24

    float-to-long v0, v0

    move-wide v9, v0

    .line 939
    .local v9, "durationMs":J
    move-object/from16 v0, p0

    move/from16 v1, v20

    move-wide v2, v9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vending/velvet/CarouselView;->createAndRunScrollSequencer(FJ)V

    .line 978
    .end local v12    # "indexAtStop":F
    .end local v13    # "isVelocityNegative":Z
    .end local v18    # "toAdd":F
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/VelocityTracker;->recycle()V

    .line 979
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/vending/velvet/CarouselView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 911
    .end local v8    # "duration":F
    .end local v9    # "durationMs":J
    .end local v19    # "totalDistance":F
    :cond_8
    const/16 v24, 0x0

    move/from16 v13, v24

    goto/16 :goto_3

    .line 919
    .restart local v8    # "duration":F
    .restart local v13    # "isVelocityNegative":Z
    .restart local v19    # "totalDistance":F
    :cond_9
    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v25, v0

    goto :goto_4

    .line 928
    .restart local v12    # "indexAtStop":F
    :cond_a
    move v0, v12

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->floor(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    sub-float v18, v12, v24

    .line 929
    .restart local v18    # "toAdd":F
    add-float v19, v19, v18

    .line 930
    const/high16 v24, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mDeceleration:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    mul-float v24, v24, v19

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v20, v0

    goto :goto_5

    .line 942
    .end local v8    # "duration":F
    .end local v12    # "indexAtStop":F
    .end local v13    # "isVelocityNegative":Z
    .end local v18    # "toAdd":F
    .end local v19    # "totalDistance":F
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mHorDistanceScrolledSinceLastDown:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mScrollThreshold:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    cmpg-float v24, v24, v25

    if-gtz v24, :cond_e

    .line 944
    invoke-direct/range {p0 .. p0}, Lcom/android/vending/velvet/CarouselView;->sortByDistanceToCenter()V

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mZOrder:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/vending/velvet/CarouselView$Thumbnail;

    .line 946
    .local v17, "thumbnail":Lcom/android/vending/velvet/CarouselView$Thumbnail;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mIsOffScreen:Z

    move/from16 v24, v0

    if-nez v24, :cond_c

    .line 950
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mRectOnScreen:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Landroid/graphics/Rect;->contains(II)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 954
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/vending/velvet/CarouselView;->setFrontedViewsVisibility(I)V

    .line 956
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mAssetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mAsset:Lcom/android/vending/model/Asset;

    move-object/from16 v24, v0

    if-eqz v24, :cond_d

    .line 959
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mAssetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mAsset:Lcom/android/vending/model/Asset;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/vending/velvet/CarouselView;->launchViewAssetInfoIntent(Lcom/android/vending/model/Asset;)V

    .line 961
    :cond_d
    const/16 v24, 0x1

    goto/16 :goto_0

    .line 967
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v17    # "thumbnail":Lcom/android/vending/velvet/CarouselView$Thumbnail;
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mCurrIndexAtCenter:F

    move/from16 v24, v0

    const/high16 v25, 0x3f000000    # 0.5f

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move v6, v0

    .line 968
    .local v6, "closestCenter":I
    move v0, v6

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mCurrIndexAtCenter:F

    move/from16 v25, v0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_f

    const/16 v24, 0x1

    move/from16 v14, v24

    .line 969
    .local v14, "movingDown":Z
    :goto_7
    move v0, v6

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mCurrIndexAtCenter:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v19

    .line 970
    .restart local v19    # "totalDistance":F
    const/high16 v24, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mDeceleration:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    mul-float v24, v24, v19

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move v4, v0

    .line 971
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mDeceleration:F

    move/from16 v24, v0

    div-float v8, v4, v24

    .line 972
    .restart local v8    # "duration":F
    const/high16 v24, 0x447a0000    # 1000.0f

    mul-float v24, v24, v8

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v24

    move/from16 v0, v24

    float-to-long v0, v0

    move-wide v9, v0

    .line 974
    .restart local v9    # "durationMs":J
    if-eqz v14, :cond_10

    move v0, v4

    neg-float v0, v0

    move/from16 v24, v0

    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v24

    move-wide v2, v9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vending/velvet/CarouselView;->createAndRunScrollSequencer(FJ)V

    goto/16 :goto_6

    .line 968
    .end local v8    # "duration":F
    .end local v9    # "durationMs":J
    .end local v14    # "movingDown":Z
    .end local v19    # "totalDistance":F
    :cond_f
    const/16 v24, 0x0

    move/from16 v14, v24

    goto :goto_7

    .restart local v8    # "duration":F
    .restart local v9    # "durationMs":J
    .restart local v14    # "movingDown":Z
    .restart local v19    # "totalDistance":F
    :cond_10
    move/from16 v24, v4

    .line 974
    goto :goto_8

    .line 984
    .end local v4    # "absVelocity":F
    .end local v6    # "closestCenter":I
    .end local v8    # "duration":F
    .end local v9    # "durationMs":J
    .end local v14    # "movingDown":Z
    .end local v19    # "totalDistance":F
    .end local v20    # "velocity":F
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mCurrIndexAtCenter:F

    move/from16 v24, v0

    const/high16 v25, 0x3f000000    # 0.5f

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move v6, v0

    .line 985
    .restart local v6    # "closestCenter":I
    move v0, v6

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mCurrIndexAtCenter:F

    move/from16 v25, v0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_11

    const/16 v24, 0x1

    move/from16 v14, v24

    .line 986
    .restart local v14    # "movingDown":Z
    :goto_9
    move v0, v6

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mCurrIndexAtCenter:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v19

    .line 987
    .restart local v19    # "totalDistance":F
    const/high16 v24, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mDeceleration:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    mul-float v24, v24, v19

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move v4, v0

    .line 988
    .restart local v4    # "absVelocity":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mDeceleration:F

    move/from16 v24, v0

    div-float v8, v4, v24

    .line 989
    .restart local v8    # "duration":F
    const/high16 v24, 0x447a0000    # 1000.0f

    mul-float v24, v24, v8

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v24

    move/from16 v0, v24

    float-to-long v0, v0

    move-wide v9, v0

    .line 991
    .restart local v9    # "durationMs":J
    if-eqz v14, :cond_12

    move v0, v4

    neg-float v0, v0

    move/from16 v24, v0

    :goto_a
    move-object/from16 v0, p0

    move/from16 v1, v24

    move-wide v2, v9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vending/velvet/CarouselView;->createAndRunScrollSequencer(FJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 985
    .end local v4    # "absVelocity":F
    .end local v8    # "duration":F
    .end local v9    # "durationMs":J
    .end local v14    # "movingDown":Z
    .end local v19    # "totalDistance":F
    :cond_11
    const/16 v24, 0x0

    move/from16 v14, v24

    goto :goto_9

    .restart local v4    # "absVelocity":F
    .restart local v8    # "duration":F
    .restart local v9    # "durationMs":J
    .restart local v14    # "movingDown":Z
    .restart local v19    # "totalDistance":F
    :cond_12
    move/from16 v24, v4

    .line 991
    goto :goto_a

    .line 856
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 1189
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFadeInSequencer:Lcom/android/vending/compat/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFadeInSequencer:Lcom/android/vending/compat/animation/Animator;

    invoke-virtual {v0}, Lcom/android/vending/compat/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1190
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFadeInSequencer:Lcom/android/vending/compat/animation/Animator;

    invoke-virtual {v0}, Lcom/android/vending/compat/animation/Animator;->cancel()V

    .line 1192
    :cond_0
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mScrollSequencer:Lcom/android/vending/compat/animation/Animator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mScrollSequencer:Lcom/android/vending/compat/animation/Animator;

    invoke-virtual {v0}, Lcom/android/vending/compat/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1193
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mScrollSequencer:Lcom/android/vending/compat/animation/Animator;

    invoke-virtual {v0}, Lcom/android/vending/compat/animation/Animator;->cancel()V

    .line 1195
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    .line 1196
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/vending/velvet/CarouselView;->mIndexOfFirstLoadingAsset:I

    .line 1197
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/vending/velvet/CarouselView;->mCurrIndexAtCenter:F

    .line 1199
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/vending/velvet/CarouselView;->setFrontedViewsVisibility(I)V

    .line 1200
    invoke-virtual {p0}, Lcom/android/vending/velvet/CarouselView;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1201
    monitor-exit p0

    return-void

    .line 1189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBaseActivity(Lcom/android/vending/BaseActivity;)V
    .locals 1
    .param p1, "baseActivity"    # Lcom/android/vending/BaseActivity;

    .prologue
    .line 572
    iput-object p1, p0, Lcom/android/vending/velvet/CarouselView;->mBaseActivity:Lcom/android/vending/BaseActivity;

    .line 574
    new-instance v0, Lcom/android/vending/velvet/CarouselView$ImageLoader;

    invoke-direct {v0, p0}, Lcom/android/vending/velvet/CarouselView$ImageLoader;-><init>(Lcom/android/vending/velvet/CarouselView;)V

    iput-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mImageLoader:Lcom/android/vending/velvet/CarouselView$ImageLoader;

    .line 575
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mImagesToLoad:Ljava/util/List;

    .line 576
    return-void
.end method

.method protected abstract setThumbnailClip(Landroid/graphics/Canvas;II)V
.end method

.method public declared-synchronized trimTrailing(I)V
    .locals 5
    .param p1, "toTrim"    # I

    .prologue
    .line 1331
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    array-length v2, v2

    sub-int v0, v2, p1

    .line 1332
    .local v0, "newCount":I
    new-array v1, v0, [Lcom/android/vending/velvet/CarouselView$Thumbnail;

    .line 1333
    .local v1, "trimmed":[Lcom/android/vending/velvet/CarouselView$Thumbnail;
    iget-object v2, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1334
    iput-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    .line 1335
    invoke-virtual {p0}, Lcom/android/vending/velvet/CarouselView;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1336
    monitor-exit p0

    return-void

    .line 1331
    .end local v0    # "newCount":I
    .end local v1    # "trimmed":[Lcom/android/vending/velvet/CarouselView$Thumbnail;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
