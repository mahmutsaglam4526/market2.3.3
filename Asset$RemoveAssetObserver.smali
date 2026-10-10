.class public Lcom/android/vending/model/Asset$RemoveAssetObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "Asset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/model/Asset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoveAssetObserver"
.end annotation


# instance fields
.field private mAssetId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "assetId"    # Ljava/lang/String;

    .prologue
    .line 1394
    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    .line 1395
    iput-object p1, p0, Lcom/android/vending/model/Asset$RemoveAssetObserver;->mAssetId:Ljava/lang/String;

    .line 1396
    return-void
.end method


# virtual methods
.method public packageDeleted(Z)V
    .locals 2
    .param p1, "succeeded"    # Z

    .prologue
    .line 1404
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/vending/model/Asset$RemoveAssetObserver;->mAssetId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1405
    iget-object v0, p0, Lcom/android/vending/model/Asset$RemoveAssetObserver;->mAssetId:Ljava/lang/String;

    sget-object v1, Lcom/android/vending/model/LocalAssetInfo$AssetState;->UNINSTALL_FAILED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    invoke-static {v0, v1}, Lcom/android/vending/model/Asset;->setStateById(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V

    .line 1407
    :cond_0
    return-void
.end method
