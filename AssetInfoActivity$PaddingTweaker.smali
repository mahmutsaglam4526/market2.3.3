.class Lcom/android/vending/AssetInfoActivity$PaddingTweaker;
.super Ljava/lang/Object;
.source "AssetInfoActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AssetInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PaddingTweaker"
.end annotation


# instance fields
.field private mContainer:Landroid/view/ViewGroup;

.field private mHasRun:Z

.field private mViews:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 1227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vending/AssetInfoActivity$PaddingTweaker;->mHasRun:Z

    .line 1223
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity$PaddingTweaker;->mViews:Ljava/util/LinkedList;

    .line 1228
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$PaddingTweaker;->mContainer:Landroid/view/ViewGroup;

    .line 1229
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$PaddingTweaker;->mContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/vending/velvet/LandscapeOverlappingLayout;->tweakViewPadding(Landroid/view/View;Landroid/view/ViewParent;I)V

    .line 1250
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$PaddingTweaker;->mViews:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1251
    return-void
.end method

.method public onPreDraw()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1235
    iget-boolean v2, p0, Lcom/android/vending/AssetInfoActivity$PaddingTweaker;->mHasRun:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$PaddingTweaker;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    move v2, v4

    .line 1243
    :goto_0
    return v2

    .line 1239
    :cond_1
    iput-boolean v4, p0, Lcom/android/vending/AssetInfoActivity$PaddingTweaker;->mHasRun:Z

    .line 1240
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$PaddingTweaker;->mViews:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1241
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$PaddingTweaker;->mContainer:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/vending/velvet/LandscapeOverlappingLayout;->tweakViewPadding(Landroid/view/View;Landroid/view/ViewParent;I)V

    goto :goto_1

    .end local v1    # "view":Landroid/view/View;
    :cond_2
    move v2, v4

    .line 1243
    goto :goto_0
.end method
