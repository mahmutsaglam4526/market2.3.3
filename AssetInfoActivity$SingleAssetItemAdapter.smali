.class Lcom/android/vending/AssetInfoActivity$SingleAssetItemAdapter;
.super Lcom/android/vending/AssetItemAdapter;
.source "AssetInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AssetInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleAssetItemAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/AssetInfoActivity;


# direct methods
.method public constructor <init>(Lcom/android/vending/AssetInfoActivity;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$SingleAssetItemAdapter;->this$0:Lcom/android/vending/AssetInfoActivity;

    .line 229
    invoke-direct {p0, p2, p3}, Lcom/android/vending/AssetItemAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 230
    return-void
.end method


# virtual methods
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
    .line 235
    .local p1, "assets":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    .local p2, "correctedAssets":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    new-instance v0, Lcom/android/vending/AssetInfoActivity$SingleAssetItemAdapter$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/vending/AssetInfoActivity$SingleAssetItemAdapter$1;-><init>(Lcom/android/vending/AssetInfoActivity$SingleAssetItemAdapter;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity$SingleAssetItemAdapter;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 242
    return-void
.end method
