.class public Lcom/android/vending/adapters/MyDownloadsAdapter$DownloadingAssetViewUpdater;
.super Ljava/lang/Object;
.source "MyDownloadsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/adapters/MyDownloadsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadingAssetViewUpdater"
.end annotation


# static fields
.field private static sDownloadStatusFormat:Ljava/lang/CharSequence;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/android/vending/adapters/MyDownloadsAdapter$DownloadingAssetViewUpdater;->sDownloadStatusFormat:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$DownloadingAssetViewUpdater;->mContext:Landroid/content/Context;

    .line 44
    sget-object v0, Lcom/android/vending/adapters/MyDownloadsAdapter$DownloadingAssetViewUpdater;->sDownloadStatusFormat:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 45
    const v0, 0x7f060173

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    sput-object v0, Lcom/android/vending/adapters/MyDownloadsAdapter$DownloadingAssetViewUpdater;->sDownloadStatusFormat:Ljava/lang/CharSequence;

    .line 48
    :cond_0
    return-void
.end method

.method private updateView(Landroid/view/View;JJI)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bytesComplete"    # J
    .param p4, "bytesTotal"    # J
    .param p6, "statusStringId"    # I

    .prologue
    .line 114
    const v5, 0x7f0700bd

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 115
    .local v2, "progressBar":Landroid/widget/ProgressBar;
    const v5, 0x7f0700be

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 117
    .local v3, "progressStatus":Landroid/widget/TextView;
    const-wide/16 v5, 0x0

    cmp-long v5, p2, v5

    if-lez v5, :cond_0

    const-wide/16 v5, 0x0

    cmp-long v5, p4, v5

    if-lez v5, :cond_0

    cmp-long v5, p2, p4

    if-gtz v5, :cond_0

    const/4 v5, 0x1

    move v0, v5

    .line 119
    .local v0, "bytesValid":Z
    :goto_0
    const/4 v1, 0x0

    .line 120
    .local v1, "percent":I
    if-eqz v0, :cond_1

    .line 121
    const-wide/16 v5, 0x64

    mul-long/2addr v5, p2

    div-long/2addr v5, p4

    long-to-int v1, v5

    .line 123
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 124
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 129
    :goto_1
    if-lez p6, :cond_2

    .line 130
    iget-object v5, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$DownloadingAssetViewUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v5, p6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :goto_2
    return-void

    .line 117
    .end local v0    # "bytesValid":Z
    .end local v1    # "percent":I
    :cond_0
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 126
    .restart local v0    # "bytesValid":Z
    .restart local v1    # "percent":I
    :cond_1
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_1

    .line 131
    :cond_2
    if-eqz v0, :cond_3

    .line 132
    sget-object v5, Lcom/android/vending/adapters/MyDownloadsAdapter$DownloadingAssetViewUpdater;->sDownloadStatusFormat:Ljava/lang/CharSequence;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$DownloadingAssetViewUpdater;->mContext:Landroid/content/Context;

    invoke-static {v8, p2, p3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$DownloadingAssetViewUpdater;->mContext:Landroid/content/Context;

    invoke-static {v8, p4, p5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 137
    .local v4, "progressString":Ljava/lang/CharSequence;
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 139
    .end local v4    # "progressString":Ljava/lang/CharSequence;
    :cond_3
    const v5, 0x7f0600d7

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method


# virtual methods
.method public updateView(Landroid/view/View;Lcom/android/vending/model/Asset;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "asset"    # Lcom/android/vending/model/Asset;

    .prologue
    const-wide/16 v2, -0x1

    .line 89
    const/4 v6, -0x1

    .line 91
    .local v6, "stringId":I
    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->isDownloadPending()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->isFree()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->isEverInstalledByUser()Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    const v6, 0x7f060103

    :cond_0
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-wide v4, v2

    .line 108
    invoke-direct/range {v0 .. v6}, Lcom/android/vending/adapters/MyDownloadsAdapter$DownloadingAssetViewUpdater;->updateView(Landroid/view/View;JJI)V

    .line 109
    return-void

    .line 98
    :cond_1
    const v6, 0x7f0600d6

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 101
    const v6, 0x7f0600d6

    goto :goto_0

    .line 102
    :cond_3
    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->isInstalling()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 103
    const v6, 0x7f0600ca

    goto :goto_0

    .line 104
    :cond_4
    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->isUninstalling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const v6, 0x7f0600cc

    goto :goto_0
.end method

.method public updateView(Landroid/view/View;Lcom/android/vending/model/DownloadProgress;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "downloadStatus"    # Lcom/android/vending/model/DownloadProgress;

    .prologue
    .line 51
    iget-wide v2, p2, Lcom/android/vending/model/DownloadProgress;->mBytesComplete:J

    .line 52
    .local v2, "bytesComplete":J
    iget-wide v4, p2, Lcom/android/vending/model/DownloadProgress;->mBytesTotal:J

    .line 53
    .local v4, "bytesTotal":J
    iget v8, p2, Lcom/android/vending/model/DownloadProgress;->mStatusId:I

    .line 54
    .local v8, "status":I
    const/4 v6, -0x1

    .line 56
    .local v6, "stringId":I
    invoke-static {v8}, Lcom/android/vending/compat/Downloads;->isStatusCompleted(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    invoke-static {v8}, Lcom/android/vending/compat/Downloads;->isStatusSuccess(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-virtual {p2}, Lcom/android/vending/model/DownloadProgress;->getLocalAsset()Lcom/android/vending/model/LocalAsset;

    move-result-object v7

    .line 62
    .local v7, "asset":Lcom/android/vending/model/LocalAsset;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/android/vending/model/LocalAsset;->getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-result-object v0

    sget-object v1, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOADING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-ne v0, v1, :cond_1

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Asset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/vending/model/LocalAsset;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is in downloading state, but download failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOAD_FAILED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    invoke-virtual {v7, v0}, Lcom/android/vending/model/LocalAsset;->setState(Lcom/android/vending/model/LocalAssetInfo$AssetState;)V

    .line 67
    :cond_1
    const-wide/16 v2, -0x1

    .line 68
    const-wide/16 v4, -0x1

    .line 69
    const v6, 0x7f0600da

    .end local v7    # "asset":Lcom/android/vending/model/LocalAsset;
    :cond_2
    :goto_1
    move-object v0, p0

    move-object v1, p1

    .line 85
    invoke-direct/range {v0 .. v6}, Lcom/android/vending/adapters/MyDownloadsAdapter$DownloadingAssetViewUpdater;->updateView(Landroid/view/View;JJI)V

    goto :goto_0

    .line 73
    :cond_3
    invoke-static {v8}, Lcom/android/vending/compat/Downloads;->isStatusPending(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 74
    const-wide/16 v2, -0x1

    .line 75
    const-wide/16 v4, -0x1

    .line 76
    const v6, 0x7f0600d6

    goto :goto_1

    .line 77
    :cond_4
    invoke-static {v8}, Lcom/android/vending/compat/Downloads;->isStatusPaused(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 78
    const v6, 0x7f0600d8

    goto :goto_1

    .line 79
    :cond_5
    invoke-static {v8}, Lcom/android/vending/compat/Downloads;->isStatusQueuedForWifi(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    const v6, 0x7f0600d9

    goto :goto_1
.end method
