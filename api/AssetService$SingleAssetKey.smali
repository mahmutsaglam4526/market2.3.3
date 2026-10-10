.class public Lcom/android/vending/api/AssetService$SingleAssetKey;
.super Ljava/lang/Object;
.source "AssetService.java"

# interfaces
.implements Lcom/android/vending/cache/Cacheable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/api/AssetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleAssetKey"
.end annotation


# instance fields
.field private mAssetId:Ljava/lang/String;

.field private mHighPriority:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "assetId"    # Ljava/lang/String;

    .prologue
    .line 685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 686
    iput-object p1, p0, Lcom/android/vending/api/AssetService$SingleAssetKey;->mAssetId:Ljava/lang/String;

    .line 687
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vending/api/AssetService$SingleAssetKey;->mHighPriority:Z

    .line 688
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "assetId"    # Ljava/lang/String;
    .param p2, "highPriority"    # Z

    .prologue
    .line 690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 691
    iput-object p1, p0, Lcom/android/vending/api/AssetService$SingleAssetKey;->mAssetId:Ljava/lang/String;

    .line 692
    iput-boolean p2, p0, Lcom/android/vending/api/AssetService$SingleAssetKey;->mHighPriority:Z

    .line 693
    return-void
.end method


# virtual methods
.method public getCacheKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SA_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/api/AssetService$SingleAssetKey;->mAssetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isHighPriority()Z
    .locals 1

    .prologue
    .line 704
    iget-boolean v0, p0, Lcom/android/vending/api/AssetService$SingleAssetKey;->mHighPriority:Z

    return v0
.end method

.method public storeInMemory()Z
    .locals 1

    .prologue
    .line 700
    const/4 v0, 0x1

    return v0
.end method
