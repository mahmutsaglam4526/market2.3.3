.class Lcom/android/vending/AssetInfoActivity$DescriptionSection;
.super Lcom/android/vending/AssetInfoActivity$Section;
.source "AssetInfoActivity.java"

# interfaces
.implements Lcom/android/vending/AssetItemAdapter$OnImagesLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AssetInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DescriptionSection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener;
    }
.end annotation


# instance fields
.field private mDescriptionAlternateForeground:Landroid/graphics/drawable/Drawable;

.field private mDescriptionAlternateHeight:I

.field private mDescriptionAlternateText:Ljava/lang/CharSequence;

.field private mHeader:Landroid/view/View;

.field private mMainView:Landroid/view/View;

.field private mScreenshotContainers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenshotViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenshots:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/vending/AssetInfoActivity;


# direct methods
.method private constructor <init>(Lcom/android/vending/AssetInfoActivity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1668
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-direct {p0, p1, v1}, Lcom/android/vending/AssetInfoActivity$Section;-><init>(Lcom/android/vending/AssetInfoActivity;Lcom/android/vending/AssetInfoActivity$1;)V

    .line 1749
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mDescriptionAlternateHeight:I

    .line 1750
    const-string v0, ""

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mDescriptionAlternateText:Ljava/lang/CharSequence;

    .line 1751
    iput-object v1, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mDescriptionAlternateForeground:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vending/AssetInfoActivity;Lcom/android/vending/AssetInfoActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/vending/AssetInfoActivity;
    .param p2, "x1"    # Lcom/android/vending/AssetInfoActivity$1;

    .prologue
    .line 1668
    invoke-direct {p0, p1}, Lcom/android/vending/AssetInfoActivity$DescriptionSection;-><init>(Lcom/android/vending/AssetInfoActivity;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/vending/AssetInfoActivity$DescriptionSection;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mDescriptionAlternateText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/android/vending/AssetInfoActivity$DescriptionSection;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/AssetInfoActivity$DescriptionSection;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 1668
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mDescriptionAlternateText:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/android/vending/AssetInfoActivity$DescriptionSection;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mDescriptionAlternateForeground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/android/vending/AssetInfoActivity$DescriptionSection;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/AssetInfoActivity$DescriptionSection;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1668
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mDescriptionAlternateForeground:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/android/vending/AssetInfoActivity$DescriptionSection;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    .prologue
    .line 1668
    iget v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mDescriptionAlternateHeight:I

    return v0
.end method

.method static synthetic access$4302(Lcom/android/vending/AssetInfoActivity$DescriptionSection;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/AssetInfoActivity$DescriptionSection;
    .param p1, "x1"    # I

    .prologue
    .line 1668
    iput p1, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mDescriptionAlternateHeight:I

    return p1
.end method

.method static synthetic access$4700(Lcom/android/vending/AssetInfoActivity$DescriptionSection;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mScreenshotViews:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/vending/AssetInfoActivity$DescriptionSection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    .prologue
    .line 1668
    invoke-direct {p0}, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->refreshScreenshotThumbnails()V

    return-void
.end method

.method private addChildren(Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1991
    .local p2, "collection":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1992
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1993
    .local v0, "child":Landroid/view/View;, "TT;"
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1991
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1995
    .end local v0    # "child":Landroid/view/View;, "TT;"
    :cond_0
    return-void
.end method

.method private refreshScreenshotThumbnails()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1947
    iget-object v7, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mScreenshotViews:Ljava/util/List;

    if-nez v7, :cond_1

    .line 1988
    :cond_0
    return-void

    .line 1951
    :cond_1
    iget-object v7, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mScreenshotViews:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    iget-object v8, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v8, v8, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v8}, Lcom/android/vending/model/Asset;->getNumScreenshots()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1952
    .local v4, "numScreenshots":I
    if-lez v4, :cond_0

    .line 1953
    iget-object v7, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mScreenshotContainers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1954
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 1957
    .end local v1    # "group":Landroid/view/ViewGroup;
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_0

    .line 1958
    iget-object v7, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mScreenshotViews:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 1959
    .local v5, "v":Landroid/widget/ImageView;
    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1960
    iget-object v7, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mScreenshots:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 1961
    .local v0, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_3

    .line 1962
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1965
    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    .line 1977
    .local v6, "width":I
    if-eqz v6, :cond_0

    .line 1981
    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v8

    mul-int/2addr v8, v6

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v9

    div-int/2addr v8, v9

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1983
    invoke-virtual {v5}, Landroid/widget/ImageView;->requestLayout()V

    .line 1984
    invoke-virtual {v5}, Landroid/widget/ImageView;->invalidate()V

    .line 1957
    .end local v6    # "width":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private updateScreenshotThumbnail(I)V
    .locals 9
    .param p1, "imageId"    # I

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2005
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v4, v4, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v4}, Lcom/android/vending/model/Asset;->getNumScreenshots()I

    move-result v2

    .line 2006
    .local v2, "numScreenshots":I
    if-ltz p1, :cond_1

    if-ge p1, v2, :cond_1

    .line 2007
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v4, v4, Lcom/android/vending/AssetInfoActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    sget-object v5, Lcom/android/vending/model/Asset$AppImageUsage;->SCREENSHOT_THUMBNAIL:Lcom/android/vending/model/Asset$AppImageUsage;

    invoke-virtual {v4, v6, v5, p1}, Lcom/android/vending/AssetItemAdapter;->getBitmapsAt(ILcom/android/vending/model/Asset$AppImageUsage;I)Ljava/util/List;

    move-result-object v0

    .line 2009
    .local v0, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/drawable/BitmapDrawable;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v7, :cond_1

    .line 2010
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 2011
    .local v3, "screenshot":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 2015
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    const/16 v5, 0x58

    const/16 v6, 0x84

    invoke-static {v4, v8, v8, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2019
    .local v1, "cropped":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3    # "screenshot":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-virtual {v4}, Lcom/android/vending/AssetInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/16 v5, 0x8c

    const/16 v6, 0xd2

    invoke-static {v1, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 2023
    .end local v1    # "cropped":Landroid/graphics/Bitmap;
    .restart local v3    # "screenshot":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mScreenshots:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2026
    .end local v0    # "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/drawable/BitmapDrawable;>;"
    .end local v3    # "screenshot":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    invoke-direct {p0}, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->refreshScreenshotThumbnails()V

    .line 2027
    return-void
.end method


# virtual methods
.method public isVisible()Z
    .locals 1

    .prologue
    .line 1767
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v0}, Lcom/android/vending/AssetInfoActivity;->access$3100(Lcom/android/vending/AssetInfoActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttach()V
    .locals 2

    .prologue
    .line 1758
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mScreenshots:Ljava/util/Map;

    .line 1760
    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->inflateView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mMainView:Landroid/view/View;

    .line 1761
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mMainView:Landroid/view/View;

    const v1, 0x7f07002c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mHeader:Landroid/view/View;

    .line 1762
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mMainView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->addView(Landroid/view/View;)V

    .line 1763
    return-void
.end method

.method public onImageLoaded(ILcom/android/vending/model/Asset$AppImageUsage;I)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "imageUsage"    # Lcom/android/vending/model/Asset$AppImageUsage;
    .param p3, "imageId"    # I

    .prologue
    .line 1998
    sget-object v0, Lcom/android/vending/model/Asset$AppImageUsage;->SCREENSHOT_THUMBNAIL:Lcom/android/vending/model/Asset$AppImageUsage;

    if-ne p2, v0, :cond_0

    .line 1999
    invoke-direct {p0, p3}, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->updateScreenshotThumbnail(I)V

    .line 2000
    const-string v0, "AssetInfoActivity descriptionSection.onImageLoaded() %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/vending/util/Log;->event(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2002
    :cond_0
    return-void
.end method

.method public onRefresh()V
    .locals 28

    .prologue
    .line 1774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/vending/AssetInfoActivity;->access$4500(Lcom/android/vending/AssetInfoActivity;)Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;->isActivated()Z

    move-result v5

    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/vending/AssetInfoActivity;->access$4600(Lcom/android/vending/AssetInfoActivity;)Lcom/android/vending/AssetInfoActivity$ReviewSection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/vending/AssetInfoActivity$ReviewSection;->isActivated()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mHeader:Landroid/view/View;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1778
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mMainView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f070030

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 1779
    .local v16, "filterReasonView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mMainView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f07002e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    .line 1782
    .local v7, "descriptionContainer":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mMainView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f07002f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1784
    .local v10, "descriptionView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mMainView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f070031

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 1786
    .local v9, "descriptionZippyContainer":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mMainView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0700e1

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1788
    .local v8, "descriptionZippy":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mMainView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f070032

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 1789
    .local v26, "versionSizeView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mMainView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f070033

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1792
    .local v15, "downloadsRatingsView":Landroid/widget/TextView;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mScreenshotContainers:Ljava/util/List;

    .line 1793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mScreenshotContainers:Ljava/util/List;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mMainView:Landroid/view/View;

    move-object v5, v0

    const v11, 0x7f070034

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mScreenshotContainers:Ljava/util/List;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mMainView:Landroid/view/View;

    move-object v5, v0

    const v11, 0x7f070035

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mScreenshotContainers:Ljava/util/List;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mMainView:Landroid/view/View;

    move-object v5, v0

    const v11, 0x7f070036

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1800
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mScreenshotViews:Ljava/util/List;

    .line 1801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mScreenshotContainers:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/view/ViewGroup;

    .line 1802
    .local v27, "viewGroup":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mScreenshotViews:Ljava/util/List;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->addChildren(Landroid/view/ViewGroup;Ljava/util/List;)V

    goto :goto_0

    .line 1805
    .end local v27    # "viewGroup":Landroid/view/ViewGroup;
    :cond_1
    new-instance v20, Lcom/android/vending/AssetInfoActivity$DescriptionSection$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/vending/AssetInfoActivity$DescriptionSection$1;-><init>(Lcom/android/vending/AssetInfoActivity$DescriptionSection;)V

    .line 1823
    .local v20, "screenshotThumbnailClickListener":Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mScreenshotViews:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    .line 1824
    .local v21, "screenshotView":Landroid/widget/ImageView;
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 1827
    .end local v21    # "screenshotView":Landroid/widget/ImageView;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v5}, Lcom/android/vending/model/Asset;->isFiltered()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v5}, Lcom/android/vending/model/Asset;->getFilterReason()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1829
    const/4 v5, 0x0

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1834
    :goto_2
    const-string v23, "    "

    .line 1835
    .local v23, "spacer":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    move-object v5, v0

    const v6, 0x7f0600c6

    invoke-virtual {v5, v6}, Lcom/android/vending/AssetInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    move-object v12, v0

    iget-object v12, v12, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v12}, Lcom/android/vending/model/Asset;->getDownloadCount()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 1837
    .local v14, "downloadString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v5}, Lcom/android/vending/model/Asset;->getNumRaters()I

    move-result v18

    .line 1838
    .local v18, "numRaters":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/vending/AssetInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0001

    move-object v0, v5

    move v1, v6

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v19

    .line 1840
    .local v19, "ratingsText":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v6

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 1841
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    move-object v5, v0

    const v6, 0x7f0600c5

    invoke-virtual {v5, v6}, Lcom/android/vending/AssetInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    move-object v12, v0

    iget-object v12, v12, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v12}, Lcom/android/vending/model/Asset;->getVersion()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    .line 1844
    .local v25, "version":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v6}, Lcom/android/vending/model/Asset;->getRequiredInstallationSize()J

    move-result-wide v11

    invoke-static {v5, v11, v12}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v22

    .line 1846
    .local v22, "size":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v5

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1848
    new-instance v24, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v5}, Lcom/android/vending/model/Asset;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1850
    .local v24, "text":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v5}, Lcom/android/vending/model/Asset;->getRecentChanges()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/vending/util/Util;->isEmptyOrSpaces(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1851
    const-string v5, "\n\n"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1852
    invoke-virtual/range {v24 .. v24}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    .line 1853
    .local v12, "boldStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    move-object v5, v0

    const v6, 0x7f0601a9

    invoke-virtual {v5, v6}, Lcom/android/vending/AssetInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1854
    invoke-virtual/range {v24 .. v24}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    .line 1855
    .local v11, "boldEnd":I
    const/16 v5, 0xa

    move-object/from16 v0, v24

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 1856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v5}, Lcom/android/vending/model/Asset;->getRecentChanges()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1858
    new-instance v5, Landroid/text/style/StyleSpan;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v6, 0x21

    move-object/from16 v0, v24

    move-object v1, v5

    move v2, v12

    move v3, v11

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1862
    .end local v11    # "boldEnd":I
    .end local v12    # "boldStart":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v5}, Lcom/android/vending/model/Asset;->getContentRatingString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/vending/util/Util;->isEmptyOrSpaces(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1863
    const-string v5, "\n\n"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    move-object v5, v0

    const v6, 0x7f0601aa

    invoke-virtual {v5, v6}, Lcom/android/vending/AssetInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    move-object v12, v0

    iget-object v12, v12, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v12}, Lcom/android/vending/model/Asset;->getContentRatingString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 1867
    .local v13, "contentRatingText":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1869
    .end local v13    # "contentRatingText":Ljava/lang/String;
    :cond_4
    move-object v0, v10

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1870
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v11

    new-instance v5, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;-><init>(Lcom/android/vending/AssetInfoActivity$DescriptionSection;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    invoke-virtual {v11, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1943
    invoke-direct/range {p0 .. p0}, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->refreshScreenshotThumbnails()V

    .line 1944
    return-void

    .line 1831
    .end local v14    # "downloadString":Ljava/lang/String;
    .end local v18    # "numRaters":I
    .end local v19    # "ratingsText":Ljava/lang/String;
    .end local v22    # "size":Ljava/lang/String;
    .end local v23    # "spacer":Ljava/lang/String;
    .end local v24    # "text":Landroid/text/SpannableStringBuilder;
    .end local v25    # "version":Ljava/lang/String;
    :cond_5
    const/16 v5, 0x8

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2
.end method
