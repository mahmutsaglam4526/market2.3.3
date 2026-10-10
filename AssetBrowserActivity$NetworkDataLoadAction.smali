.class Lcom/android/vending/AssetBrowserActivity$NetworkDataLoadAction;
.super Lcom/android/vending/BaseActivity$BaseAction;
.source "AssetBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AssetBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkDataLoadAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/AssetBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/android/vending/AssetBrowserActivity;Lcom/android/vending/BaseActivity;)V
    .locals 1
    .param p2, "activity"    # Lcom/android/vending/BaseActivity;

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/vending/AssetBrowserActivity$NetworkDataLoadAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    .line 410
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/android/vending/BaseActivity$BaseAction;-><init>(Lcom/android/vending/BaseActivity;Z)V

    .line 411
    return-void
.end method


# virtual methods
.method public displayResults()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    .line 419
    iget-object v3, p0, Lcom/android/vending/AssetBrowserActivity$NetworkDataLoadAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    iget-object v3, v3, Lcom/android/vending/AssetBrowserActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v3}, Lcom/android/vending/AssetItemAdapter;->getCount()I

    move-result v3

    iget-object v4, p0, Lcom/android/vending/AssetBrowserActivity$NetworkDataLoadAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    invoke-static {v4}, Lcom/android/vending/AssetBrowserActivity;->access$800(Lcom/android/vending/AssetBrowserActivity;)I

    move-result v4

    sub-int v0, v3, v4

    .line 420
    .local v0, "assetsLoaded":I
    iget-object v3, p0, Lcom/android/vending/AssetBrowserActivity$NetworkDataLoadAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    const/16 v4, 0xf

    if-ne v0, v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-static {v3, v4}, Lcom/android/vending/AssetBrowserActivity;->access$202(Lcom/android/vending/AssetBrowserActivity;Z)Z

    .line 422
    iget-object v3, p0, Lcom/android/vending/AssetBrowserActivity$NetworkDataLoadAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    invoke-static {v3}, Lcom/android/vending/AssetBrowserActivity;->access$300(Lcom/android/vending/AssetBrowserActivity;)V

    .line 423
    iget-object v3, p0, Lcom/android/vending/AssetBrowserActivity$NetworkDataLoadAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    invoke-static {v3}, Lcom/android/vending/AssetBrowserActivity;->access$500(Lcom/android/vending/AssetBrowserActivity;)V

    .line 424
    iget-object v3, p0, Lcom/android/vending/AssetBrowserActivity$NetworkDataLoadAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    invoke-static {v3}, Lcom/android/vending/AssetBrowserActivity;->access$900(Lcom/android/vending/AssetBrowserActivity;)J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-eqz v3, :cond_0

    .line 425
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 426
    .local v1, "endTime":J
    iget-object v3, p0, Lcom/android/vending/AssetBrowserActivity$NetworkDataLoadAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    invoke-static {v3}, Lcom/android/vending/AssetBrowserActivity;->access$900(Lcom/android/vending/AssetBrowserActivity;)J

    move-result-wide v3

    const-string v5, "ABn"

    invoke-static {v3, v4, v1, v2, v5}, Lcom/android/vending/util/Log;->logElapsed(JJLjava/lang/String;)V

    .line 427
    iget-object v3, p0, Lcom/android/vending/AssetBrowserActivity$NetworkDataLoadAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    invoke-static {v3, v7, v8}, Lcom/android/vending/AssetBrowserActivity;->access$902(Lcom/android/vending/AssetBrowserActivity;J)J

    .line 429
    .end local v1    # "endTime":J
    :cond_0
    const-string v3, "AssetBrowserActivity loaded from network"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/vending/util/Log;->end(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    iget-object v3, p0, Lcom/android/vending/AssetBrowserActivity$NetworkDataLoadAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    invoke-static {v3}, Lcom/android/vending/AssetBrowserActivity;->access$1000(Lcom/android/vending/AssetBrowserActivity;)V

    .line 432
    return-void

    :cond_1
    move v4, v6

    .line 420
    goto :goto_0
.end method

.method public prepare()V
    .locals 0

    .prologue
    .line 415
    return-void
.end method
