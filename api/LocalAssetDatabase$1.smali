.class final Lcom/android/vending/api/LocalAssetDatabase$1;
.super Ljava/lang/Object;
.source "LocalAssetDatabase.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/api/LocalAssetDatabase;
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
        "Lcom/android/vending/model/LocalAssetInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 990
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private compareState(Lcom/android/vending/model/LocalAssetInfo;Lcom/android/vending/model/LocalAssetInfo;)I
    .locals 7
    .param p1, "left"    # Lcom/android/vending/model/LocalAssetInfo;
    .param p2, "right"    # Lcom/android/vending/model/LocalAssetInfo;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1000
    invoke-direct {p0, p1, p2}, Lcom/android/vending/api/LocalAssetDatabase$1;->compareTransient(Lcom/android/vending/model/LocalAssetInfo;Lcom/android/vending/model/LocalAssetInfo;)I

    move-result v1

    .line 1001
    .local v1, "result":I
    if-nez v1, :cond_4

    .line 1002
    invoke-virtual {p1}, Lcom/android/vending/model/LocalAssetInfo;->getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-result-object v3

    sget-object v4, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-ne v3, v4, :cond_0

    move v0, v6

    .line 1003
    .local v0, "leftInstalled":Z
    :goto_0
    invoke-virtual {p2}, Lcom/android/vending/model/LocalAssetInfo;->getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-result-object v3

    sget-object v4, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-ne v3, v4, :cond_1

    move v2, v6

    .line 1004
    .local v2, "rightInstalled":Z
    :goto_1
    if-ne v0, v2, :cond_2

    move v3, v5

    .line 1006
    .end local v0    # "leftInstalled":Z
    .end local v2    # "rightInstalled":Z
    :goto_2
    return v3

    :cond_0
    move v0, v5

    .line 1002
    goto :goto_0

    .restart local v0    # "leftInstalled":Z
    :cond_1
    move v2, v5

    .line 1003
    goto :goto_1

    .line 1004
    .restart local v2    # "rightInstalled":Z
    :cond_2
    if-eqz v0, :cond_3

    move v3, v6

    goto :goto_2

    :cond_3
    const/4 v3, -0x1

    goto :goto_2

    .end local v0    # "leftInstalled":Z
    .end local v2    # "rightInstalled":Z
    :cond_4
    move v3, v1

    .line 1006
    goto :goto_2
.end method

.method private compareTransient(Lcom/android/vending/model/LocalAssetInfo;Lcom/android/vending/model/LocalAssetInfo;)I
    .locals 3
    .param p1, "left"    # Lcom/android/vending/model/LocalAssetInfo;
    .param p2, "right"    # Lcom/android/vending/model/LocalAssetInfo;

    .prologue
    .line 993
    invoke-virtual {p1}, Lcom/android/vending/model/LocalAssetInfo;->getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/vending/model/LocalAssetInfo$AssetState;->isTransient()Z

    move-result v0

    .line 994
    .local v0, "lt":Z
    invoke-virtual {p2}, Lcom/android/vending/model/LocalAssetInfo;->getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/vending/model/LocalAssetInfo$AssetState;->isTransient()Z

    move-result v1

    .line 995
    .local v1, "rt":Z
    if-ne v0, v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    if-eqz v0, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private compareVersion(Lcom/android/vending/model/LocalAssetInfo;Lcom/android/vending/model/LocalAssetInfo;)I
    .locals 3
    .param p1, "left"    # Lcom/android/vending/model/LocalAssetInfo;
    .param p2, "right"    # Lcom/android/vending/model/LocalAssetInfo;

    .prologue
    .line 1011
    invoke-virtual {p1}, Lcom/android/vending/model/LocalAssetInfo;->getVersionCode()I

    move-result v0

    .line 1012
    .local v0, "lv":I
    invoke-virtual {p2}, Lcom/android/vending/model/LocalAssetInfo;->getVersionCode()I

    move-result v1

    .line 1013
    .local v1, "rv":I
    if-ge v0, v1, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    if-ne v0, v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public compare(Lcom/android/vending/model/LocalAssetInfo;Lcom/android/vending/model/LocalAssetInfo;)I
    .locals 1
    .param p1, "left"    # Lcom/android/vending/model/LocalAssetInfo;
    .param p2, "right"    # Lcom/android/vending/model/LocalAssetInfo;

    .prologue
    .line 1017
    invoke-direct {p0, p1, p2}, Lcom/android/vending/api/LocalAssetDatabase$1;->compareState(Lcom/android/vending/model/LocalAssetInfo;Lcom/android/vending/model/LocalAssetInfo;)I

    move-result v0

    .line 1018
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 1019
    invoke-direct {p0, p1, p2}, Lcom/android/vending/api/LocalAssetDatabase$1;->compareVersion(Lcom/android/vending/model/LocalAssetInfo;Lcom/android/vending/model/LocalAssetInfo;)I

    move-result v0

    .line 1021
    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 990
    check-cast p1, Lcom/android/vending/model/LocalAssetInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/vending/model/LocalAssetInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/vending/api/LocalAssetDatabase$1;->compare(Lcom/android/vending/model/LocalAssetInfo;Lcom/android/vending/model/LocalAssetInfo;)I

    move-result v0

    return v0
.end method
