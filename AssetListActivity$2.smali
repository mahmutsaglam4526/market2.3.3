.class Lcom/android/vending/AssetListActivity$2;
.super Ljava/lang/Object;
.source "AssetListActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AssetListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/AssetListActivity;


# direct methods
.method constructor <init>(Lcom/android/vending/AssetListActivity;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/vending/AssetListActivity$2;->this$0:Lcom/android/vending/AssetListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstCell"    # I
    .param p3, "cellCount"    # I
    .param p4, "itemCount"    # I

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/vending/AssetListActivity$2;->this$0:Lcom/android/vending/AssetListActivity;

    invoke-virtual {v0, p2, p3}, Lcom/android/vending/AssetListActivity;->checkToLoadMore(II)V

    .line 383
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 386
    return-void
.end method
