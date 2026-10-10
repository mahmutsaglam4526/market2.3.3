.class Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction$1;
.super Ljava/lang/Object;
.source "AssetBrowserActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;


# direct methods
.method constructor <init>(Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction$1;->this$1:Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 6
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 273
    add-int v0, p2, p3

    int-to-long v0, v0

    int-to-long v2, p4

    const-wide/32 v4, 0x7fffffff

    invoke-static/range {v0 .. v5}, Lcom/android/vending/util/Util;->needLoadMore(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction$1;->this$1:Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;

    iget-object v0, v0, Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    invoke-static {v0}, Lcom/android/vending/AssetBrowserActivity;->access$200(Lcom/android/vending/AssetBrowserActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p2, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction$1;->this$1:Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;

    iget-object v0, v0, Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;->mLoadFeaturedAssetsAction:Lcom/android/vending/AssetBrowserActivity$LoadFeaturedAssetsAction;

    invoke-virtual {v0}, Lcom/android/vending/AssetBrowserActivity$LoadFeaturedAssetsAction;->loadMore()V

    .line 278
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 269
    return-void
.end method
