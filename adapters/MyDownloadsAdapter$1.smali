.class final Lcom/android/vending/adapters/MyDownloadsAdapter$1;
.super Ljava/lang/Object;
.source "MyDownloadsAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/adapters/MyDownloadsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/vending/model/Asset;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private weight(Lcom/android/vending/model/Asset;)I
    .locals 4
    .param p1, "asset"    # Lcom/android/vending/model/Asset;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 164
    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->isDownloadingOrInstalling()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->isDownloading()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->isUpdate()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->isInstalled()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    move v1, v3

    goto :goto_3
.end method


# virtual methods
.method public compare(Lcom/android/vending/model/Asset;Lcom/android/vending/model/Asset;)I
    .locals 2
    .param p1, "asset1"    # Lcom/android/vending/model/Asset;
    .param p2, "asset2"    # Lcom/android/vending/model/Asset;

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/android/vending/adapters/MyDownloadsAdapter$1;->weight(Lcom/android/vending/model/Asset;)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/android/vending/adapters/MyDownloadsAdapter$1;->weight(Lcom/android/vending/model/Asset;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 158
    check-cast p1, Lcom/android/vending/model/Asset;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/vending/model/Asset;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/vending/adapters/MyDownloadsAdapter$1;->compare(Lcom/android/vending/model/Asset;Lcom/android/vending/model/Asset;)I

    move-result v0

    return v0
.end method
