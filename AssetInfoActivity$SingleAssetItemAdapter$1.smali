.class Lcom/android/vending/AssetInfoActivity$SingleAssetItemAdapter$1;
.super Ljava/lang/Object;
.source "AssetInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/AssetInfoActivity$SingleAssetItemAdapter;->onGetAssetsResponse(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$1:Lcom/android/vending/AssetInfoActivity$SingleAssetItemAdapter;

.field final synthetic val$assets:Ljava/util/List;

.field final synthetic val$correctedAssets:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 235
    const-class v0, Lcom/android/vending/AssetInfoActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/vending/AssetInfoActivity$SingleAssetItemAdapter$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/vending/AssetInfoActivity$SingleAssetItemAdapter;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$SingleAssetItemAdapter$1;->this$1:Lcom/android/vending/AssetInfoActivity$SingleAssetItemAdapter;

    iput-object p2, p0, Lcom/android/vending/AssetInfoActivity$SingleAssetItemAdapter$1;->val$assets:Ljava/util/List;

    iput-object p3, p0, Lcom/android/vending/AssetInfoActivity$SingleAssetItemAdapter$1;->val$correctedAssets:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$SingleAssetItemAdapter$1;->this$1:Lcom/android/vending/AssetInfoActivity$SingleAssetItemAdapter;

    invoke-virtual {v0}, Lcom/android/vending/AssetInfoActivity$SingleAssetItemAdapter;->clearAllAssetsWithNoNotification()Z

    .line 238
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$SingleAssetItemAdapter$1;->this$1:Lcom/android/vending/AssetInfoActivity$SingleAssetItemAdapter;

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$SingleAssetItemAdapter$1;->val$assets:Ljava/util/List;

    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$SingleAssetItemAdapter$1;->val$correctedAssets:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/AssetInfoActivity$SingleAssetItemAdapter;->addAssets(Ljava/util/List;Ljava/util/List;)V

    .line 239
    sget-boolean v0, Lcom/android/vending/AssetInfoActivity$SingleAssetItemAdapter$1;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$SingleAssetItemAdapter$1;->this$1:Lcom/android/vending/AssetInfoActivity$SingleAssetItemAdapter;

    invoke-virtual {v0}, Lcom/android/vending/AssetInfoActivity$SingleAssetItemAdapter;->getNumAssets()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "assets has size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$SingleAssetItemAdapter$1;->this$1:Lcom/android/vending/AssetInfoActivity$SingleAssetItemAdapter;

    invoke-virtual {v2}, Lcom/android/vending/AssetInfoActivity$SingleAssetItemAdapter;->getNumAssets()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 240
    :cond_0
    return-void
.end method
