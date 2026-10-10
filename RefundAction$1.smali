.class Lcom/android/vending/RefundAction$1;
.super Ljava/lang/Object;
.source "RefundAction.java"

# interfaces
.implements Lcom/android/vending/api/AssetService$GetAssetsReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/RefundAction;->reloadAssetFromServer(Lcom/android/vending/model/Asset;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/RefundAction;

.field final synthetic val$assets:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/vending/RefundAction;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/vending/RefundAction$1;->this$0:Lcom/android/vending/RefundAction;

    iput-object p2, p0, Lcom/android/vending/RefundAction$1;->val$assets:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 84
    .local p1, "loadedAssets":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    .local p2, "correctedAssets":Ljava/util/List;, "Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    iget-object v0, p0, Lcom/android/vending/RefundAction$1;->val$assets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 85
    return-void
.end method
