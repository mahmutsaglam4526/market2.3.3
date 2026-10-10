.class public final Lcom/android/vending/adapters/MyDownloadsAdapter;
.super Lcom/android/vending/AssetItemAdapter;
.source "MyDownloadsAdapter.java"

# interfaces
.implements Lcom/android/vending/model/LocalAssetCache$AssetStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;,
        Lcom/android/vending/adapters/MyDownloadsAdapter$DownloadingAssetViewUpdater;
    }
.end annotation


# static fields
.field private static final myDownloadsComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile mToShowButtonBar:Z

.field private final mViewUpdater:Lcom/android/vending/adapters/MyDownloadsAdapter$DownloadingAssetViewUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lcom/android/vending/adapters/MyDownloadsAdapter$1;

    invoke-direct {v0}, Lcom/android/vending/adapters/MyDownloadsAdapter$1;-><init>()V

    sput-object v0, Lcom/android/vending/adapters/MyDownloadsAdapter;->myDownloadsComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 176
    invoke-direct {p0, p1, p2}, Lcom/android/vending/AssetItemAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 177
    new-instance v0, Lcom/android/vending/adapters/MyDownloadsAdapter$DownloadingAssetViewUpdater;

    invoke-direct {v0, p1}, Lcom/android/vending/adapters/MyDownloadsAdapter$DownloadingAssetViewUpdater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mViewUpdater:Lcom/android/vending/adapters/MyDownloadsAdapter$DownloadingAssetViewUpdater;

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mToShowButtonBar:Z

    .line 179
    return-void
.end method

.method private getAssetView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x0

    .line 238
    invoke-virtual {p0, p1}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getAsset(I)Lcom/android/vending/model/Asset;

    move-result-object v0

    .line 240
    .local v0, "asset":Lcom/android/vending/model/Asset;
    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->isDownloadingOrInstalling()Z

    move-result v2

    .line 243
    .local v2, "isRunning":Z
    if-nez p2, :cond_0

    .line 244
    if-eqz v2, :cond_4

    const v6, 0x7f030033

    move v3, v6

    .line 246
    .local v3, "layoutId":I
    :goto_0
    iget-object v6, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v6, v3, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 249
    .end local v3    # "layoutId":I
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;

    .line 251
    .local v1, "holder":Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;
    if-nez v1, :cond_5

    .line 252
    new-instance v1, Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;

    .end local v1    # "holder":Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;
    invoke-direct {v1, p2, v2}, Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;-><init>(Landroid/view/View;Z)V

    .line 258
    .restart local v1    # "holder":Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;
    :cond_1
    invoke-direct {p0, v1, v0, p1}, Lcom/android/vending/adapters/MyDownloadsAdapter;->setAssetDisplay(Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;Lcom/android/vending/model/Asset;I)V

    .line 260
    iget-boolean v6, v1, Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;->isRunning:Z

    if-eqz v6, :cond_3

    .line 261
    invoke-static {v0}, Lcom/android/vending/model/DownloadProgressManager;->getCachedProgress(Lcom/android/vending/model/Asset;)Lcom/android/vending/model/DownloadProgress;

    move-result-object v5

    .line 262
    .local v5, "progress":Lcom/android/vending/model/DownloadProgress;
    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->findMatchingLocalAsset()Lcom/android/vending/model/LocalAsset;

    move-result-object v4

    .line 263
    .local v4, "localAsset":Lcom/android/vending/model/LocalAsset;
    if-nez v4, :cond_2

    .line 266
    const-string v6, "Could not find LocalAsset for %s (%s)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->getApplicationPackageName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    const/4 v8, 0x1

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    :cond_2
    iget-object v6, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mViewUpdater:Lcom/android/vending/adapters/MyDownloadsAdapter$DownloadingAssetViewUpdater;

    invoke-virtual {v6, p2, v0}, Lcom/android/vending/adapters/MyDownloadsAdapter$DownloadingAssetViewUpdater;->updateView(Landroid/view/View;Lcom/android/vending/model/Asset;)V

    .line 271
    if-eqz v5, :cond_3

    .line 272
    iget-object v6, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mViewUpdater:Lcom/android/vending/adapters/MyDownloadsAdapter$DownloadingAssetViewUpdater;

    invoke-virtual {v6, p2, v5}, Lcom/android/vending/adapters/MyDownloadsAdapter$DownloadingAssetViewUpdater;->updateView(Landroid/view/View;Lcom/android/vending/model/DownloadProgress;)V

    .end local v4    # "localAsset":Lcom/android/vending/model/LocalAsset;
    .end local v5    # "progress":Lcom/android/vending/model/DownloadProgress;
    :cond_3
    move-object v6, p2

    .line 276
    :goto_1
    return-object v6

    .line 244
    .end local v1    # "holder":Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;
    :cond_4
    const v6, 0x7f030017

    move v3, v6

    goto :goto_0

    .line 253
    .restart local v1    # "holder":Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;
    :cond_5
    iget-boolean v6, v1, Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;->isRunning:Z

    if-eq v6, v2, :cond_1

    .line 255
    const/4 v6, 0x0

    invoke-direct {p0, p1, v6, p3}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getAssetView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    goto :goto_1
.end method

.method private getButtonBarView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 291
    if-nez p2, :cond_0

    .line 292
    iget-object v1, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03003f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 296
    :cond_0
    const v1, 0x7f0700e4

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 297
    .local v0, "updateAllButton":Landroid/view/View;
    iget-object p0, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mContext:Landroid/content/Context;

    .end local p0    # "this":Lcom/android/vending/adapters/MyDownloadsAdapter;
    check-cast p0, Lcom/android/vending/MyDownloadsActivity;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    return-object p2
.end method

.method private getHeaderCount(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 499
    iget-boolean v0, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mToShowButtonBar:Z

    invoke-direct {p0}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getNumRunningAssets()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getHeaderCount(IZI)I

    move-result v0

    return v0
.end method

.method protected static getHeaderCount(IZI)I
    .locals 2
    .param p0, "position"    # I
    .param p1, "buttonBar"    # Z
    .param p2, "numRunning"    # I

    .prologue
    .line 471
    const/4 v0, 0x0

    .line 473
    .local v0, "headers":I
    if-eqz p1, :cond_0

    .line 474
    add-int/lit8 v0, v0, 0x1

    .line 476
    add-int/lit8 p0, p0, -0x1

    .line 478
    if-gez p0, :cond_0

    move v1, v0

    .line 495
    .end local v0    # "headers":I
    .local v1, "headers":I
    :goto_0
    return v1

    .line 484
    .end local v1    # "headers":I
    .restart local v0    # "headers":I
    :cond_0
    if-nez p2, :cond_1

    move v1, v0

    .line 485
    .end local v0    # "headers":I
    .restart local v1    # "headers":I
    goto :goto_0

    .line 489
    .end local v1    # "headers":I
    .restart local v0    # "headers":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 491
    if-le p0, p2, :cond_2

    .line 492
    add-int/lit8 v0, v0, 0x1

    :cond_2
    move v1, v0

    .line 495
    .end local v0    # "headers":I
    .restart local v1    # "headers":I
    goto :goto_0
.end method

.method private getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "title"    # I

    .prologue
    .line 280
    if-nez p2, :cond_0

    .line 281
    iget-object v1, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030048

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 285
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(I)V

    .line 287
    return-object p2
.end method

.method private getItemType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/16 v2, 0xa

    .line 503
    iget-boolean v1, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mToShowButtonBar:Z

    if-eqz v1, :cond_1

    .line 504
    if-nez p1, :cond_0

    .line 505
    const/16 v1, 0xe

    .line 525
    :goto_0
    return v1

    .line 507
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 510
    :cond_1
    invoke-direct {p0}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getNumRunningAssets()I

    move-result v0

    .line 512
    .local v0, "numRunning":I
    if-nez v0, :cond_2

    move v1, v2

    .line 514
    goto :goto_0

    .line 516
    :cond_2
    if-nez p1, :cond_3

    .line 517
    const/16 v1, 0xd

    goto :goto_0

    .line 519
    :cond_3
    add-int/lit8 v1, v0, 0x1

    if-ne p1, v1, :cond_4

    .line 520
    const/16 v1, 0xc

    goto :goto_0

    .line 522
    :cond_4
    add-int/lit8 v1, v0, 0x1

    if-le p1, v1, :cond_5

    move v1, v2

    .line 523
    goto :goto_0

    .line 525
    :cond_5
    const/16 v1, 0xb

    goto :goto_0
.end method

.method private getNumRunningAssets()I
    .locals 4

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getAssets()Ljava/util/List;

    move-result-object v0

    .line 377
    .local v0, "assets":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    invoke-virtual {p0}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getNumAssets()I

    move-result v2

    .line 378
    .local v2, "length":I
    const/4 v1, 0x0

    .end local p0    # "this":Lcom/android/vending/adapters/MyDownloadsAdapter;
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 379
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/vending/model/Asset;

    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->isDownloadingOrInstalling()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v1

    .line 383
    :goto_1
    return v3

    .line 378
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 383
    goto :goto_1
.end method

.method private postNotifyDataSetChanged()V
    .locals 1

    .prologue
    .line 530
    new-instance v0, Lcom/android/vending/adapters/MyDownloadsAdapter$3;

    invoke-direct {v0, p0}, Lcom/android/vending/adapters/MyDownloadsAdapter$3;-><init>(Lcom/android/vending/adapters/MyDownloadsAdapter;)V

    invoke-virtual {p0, v0}, Lcom/android/vending/adapters/MyDownloadsAdapter;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 535
    return-void
.end method

.method private setAssetDisplay(Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;Lcom/android/vending/model/Asset;I)V
    .locals 5
    .param p1, "holder"    # Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;
    .param p2, "asset"    # Lcom/android/vending/model/Asset;
    .param p3, "position"    # I

    .prologue
    .line 303
    iget-object v2, p1, Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;->author:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 304
    iget-object v2, p1, Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;->author:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->getOwnerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    :cond_0
    iget-object v2, p1, Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;->rating:Landroid/widget/RatingBar;

    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->getRating()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setRating(F)V

    .line 308
    iget-object v2, p1, Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v2, p1, Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;->state:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-static {p2, v2, v3}, Lcom/android/vending/adapters/MyDownloadsAdapter;->setPriceOrState(Lcom/android/vending/model/Asset;Landroid/widget/TextView;Z)V

    .line 312
    invoke-direct {p0, p3}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getHeaderCount(I)I

    move-result v2

    sub-int v0, p3, v2

    .line 313
    .local v0, "adjustedPosition":I
    sget-object v2, Lcom/android/vending/model/Asset$AppImageUsage;->ICON:Lcom/android/vending/model/Asset$AppImageUsage;

    invoke-virtual {p0, v0, v2}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getBitmapAt(ILcom/android/vending/model/Asset$AppImageUsage;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 314
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v2, p1, Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 315
    return-void
.end method


# virtual methods
.method public addAssets(Ljava/util/List;Ljava/util/List;)V
    .locals 0
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
    .line 216
    .local p1, "assets":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    .local p2, "correctedAssets":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    invoke-virtual {p0}, Lcom/android/vending/adapters/MyDownloadsAdapter;->clearAllAssetsWithNoNotification()Z

    .line 217
    invoke-super {p0, p1, p2}, Lcom/android/vending/AssetItemAdapter;->addAssets(Ljava/util/List;Ljava/util/List;)V

    .line 218
    return-void
.end method

.method public addAssets(Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 1
    .param p3, "callback"    # Ljava/lang/Runnable;
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
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, "assets":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    .local p2, "correctedAssets":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    new-instance v0, Lcom/android/vending/adapters/MyDownloadsAdapter$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/vending/adapters/MyDownloadsAdapter$2;-><init>(Lcom/android/vending/adapters/MyDownloadsAdapter;Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/android/vending/adapters/MyDownloadsAdapter;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 235
    return-void
.end method

.method public containsAsset(Ljava/lang/String;)Z
    .locals 4
    .param p1, "serverId"    # Ljava/lang/String;

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getAssets()Ljava/util/List;

    move-result-object v1

    .line 360
    .local v1, "assets":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 361
    .local v0, "a":Lcom/android/vending/model/Asset;
    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 362
    const/4 v3, 0x1

    .line 366
    .end local v0    # "a":Lcom/android/vending/model/Asset;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getAsset(I)Lcom/android/vending/model/Asset;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 350
    invoke-virtual {p0, p1}, Lcom/android/vending/adapters/MyDownloadsAdapter;->isEnabled(I)Z

    move-result v0

    .line 352
    .local v0, "enabled":Z
    if-eqz v0, :cond_0

    .line 353
    invoke-direct {p0, p1}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getHeaderCount(I)I

    move-result v1

    sub-int v1, p1, v1

    invoke-super {p0, v1}, Lcom/android/vending/AssetItemAdapter;->getAsset(I)Lcom/android/vending/model/Asset;

    move-result-object v1

    .line 355
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 341
    iget-boolean v1, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mToShowButtonBar:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 342
    .local v0, "extra":I
    :goto_0
    invoke-direct {p0}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getNumRunningAssets()I

    move-result v1

    if-lez v1, :cond_1

    .line 343
    invoke-virtual {p0}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getAssets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x2

    .line 345
    :goto_1
    return v1

    .line 341
    .end local v0    # "extra":I
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 345
    .restart local v0    # "extra":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getAssets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_1
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 319
    invoke-direct {p0, p1}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getItemType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 331
    invoke-super {p0, p1}, Lcom/android/vending/AssetItemAdapter;->getItemViewType(I)I

    move-result v0

    :goto_0
    return v0

    .line 321
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 323
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 325
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 327
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 329
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 319
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getNumUpdates()I
    .locals 4

    .prologue
    .line 422
    const/4 v2, 0x0

    .line 423
    .local v2, "num":I
    invoke-virtual {p0}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getAssets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 424
    .local v0, "asset":Lcom/android/vending/model/Asset;
    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->isInstalled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->isUpdate()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->isDownloadingOrInstalling()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->isFree()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->isOwnedByUser()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 428
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 429
    :cond_2
    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->isUpdate()Z

    move-result v3

    if-nez v3, :cond_0

    .line 435
    .end local v0    # "asset":Lcom/android/vending/model/Asset;
    :cond_3
    return v2
.end method

.method public getUnchangedUpdates()Ljava/util/List;
    .locals 5
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
    .line 391
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 393
    .local v3, "unchangedUpdates":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    invoke-virtual {p0}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getNumAssets()I

    move-result v2

    .line 394
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 395
    invoke-virtual {p0, v1}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getAsset(I)Lcom/android/vending/model/Asset;

    move-result-object v0

    .line 398
    .local v0, "asset":Lcom/android/vending/model/Asset;
    if-eqz v0, :cond_1

    .line 399
    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->isInstalled()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->isUpdate()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->isDownloadingOrInstalling()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->isFree()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->isOwnedByUser()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    iget-object v4, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/android/vending/model/Asset;->containsDangerousNewPermissions(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 404
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 405
    :cond_2
    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->isUpdate()Z

    move-result v4

    if-nez v4, :cond_1

    .line 413
    .end local v0    # "asset":Lcom/android/vending/model/Asset;
    :cond_3
    return-object v3
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getItemType(I)I

    move-result v0

    .line 197
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 208
    invoke-super {p0, p1, p2, p3}, Lcom/android/vending/AssetItemAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_0
    return-object v1

    .line 200
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getAssetView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 202
    :pswitch_1
    const v1, 0x7f060168

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 204
    :pswitch_2
    const v1, 0x7f060167

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 206
    :pswitch_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getButtonBarView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x5

    return v0
.end method

.method protected innerAddAllAssets(Ljava/util/List;)V
    .locals 3
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
    .line 588
    .local p1, "assets":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 589
    .local v0, "asset":Lcom/android/vending/model/Asset;
    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->snapshotLocalState()V

    goto :goto_0

    .line 591
    .end local v0    # "asset":Lcom/android/vending/model/Asset;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/vending/AssetItemAdapter;->innerAddAllAssets(Ljava/util/List;)V

    .line 592
    return-void
.end method

.method public isEnabled(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 440
    iget-boolean v1, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mToShowButtonBar:Z

    if-eqz v1, :cond_1

    .line 441
    if-nez p1, :cond_0

    move v1, v3

    .line 458
    :goto_0
    return v1

    .line 445
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 447
    :cond_1
    invoke-direct {p0}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getNumRunningAssets()I

    move-result v0

    .line 448
    .local v0, "numRunning":I
    if-lez v0, :cond_3

    .line 449
    if-nez p1, :cond_2

    move v1, v2

    .line 451
    goto :goto_0

    .line 452
    :cond_2
    add-int/lit8 v1, v0, 0x1

    if-ne p1, v1, :cond_3

    move v1, v2

    .line 455
    goto :goto_0

    :cond_3
    move v1, v3

    .line 458
    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 4

    .prologue
    .line 183
    invoke-static {}, Lcom/android/vending/util/MainThreadEnforcer;->enforce()V

    .line 185
    invoke-virtual {p0}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getAssets()Ljava/util/List;

    move-result-object v1

    .line 186
    .local v1, "assets":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 187
    .local v0, "asset":Lcom/android/vending/model/Asset;
    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->snapshotLocalState()V

    goto :goto_0

    .line 189
    .end local v0    # "asset":Lcom/android/vending/model/Asset;
    :cond_0
    sget-object v3, Lcom/android/vending/adapters/MyDownloadsAdapter;->myDownloadsComparator:Ljava/util/Comparator;

    invoke-virtual {p0, v3}, Lcom/android/vending/adapters/MyDownloadsAdapter;->sortAssets(Ljava/util/Comparator;)V

    .line 190
    invoke-super {p0}, Lcom/android/vending/AssetItemAdapter;->notifyDataSetChanged()V

    .line 191
    return-void
.end method

.method public onAssetStateChanged(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
    .locals 0
    .param p1, "serverAssetId"    # Ljava/lang/String;
    .param p2, "newState"    # Lcom/android/vending/model/LocalAssetInfo$AssetState;

    .prologue
    .line 538
    invoke-direct {p0}, Lcom/android/vending/adapters/MyDownloadsAdapter;->postNotifyDataSetChanged()V

    .line 539
    return-void
.end method

.method public setToShowButtonBar(Z)V
    .locals 1
    .param p1, "toShowButtonBar"    # Z

    .prologue
    .line 544
    iget-boolean v0, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mToShowButtonBar:Z

    if-eq p1, v0, :cond_0

    .line 545
    iput-boolean p1, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mToShowButtonBar:Z

    .line 546
    invoke-virtual {p0}, Lcom/android/vending/adapters/MyDownloadsAdapter;->notifyDataSetInvalidated()V

    .line 548
    :cond_0
    return-void
.end method
