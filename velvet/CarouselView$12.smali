.class Lcom/android/vending/velvet/CarouselView$12;
.super Lcom/android/vending/compat/animation/AnimatorListenerAdapter;
.source "CarouselView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/velvet/CarouselView;->createAndRunFadeInSequencer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/velvet/CarouselView;

.field wasCanceled:Z


# direct methods
.method constructor <init>(Lcom/android/vending/velvet/CarouselView;)V
    .locals 0

    .prologue
    .line 1470
    iput-object p1, p0, Lcom/android/vending/velvet/CarouselView$12;->this$0:Lcom/android/vending/velvet/CarouselView;

    invoke-direct {p0}, Lcom/android/vending/compat/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/android/vending/compat/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Lcom/android/vending/compat/animation/Animator;

    .prologue
    .line 1475
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vending/velvet/CarouselView$12;->wasCanceled:Z

    .line 1476
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView$12;->this$0:Lcom/android/vending/velvet/CarouselView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/vending/velvet/CarouselView;->access$1702(Lcom/android/vending/velvet/CarouselView;Lcom/android/vending/compat/animation/Animator;)Lcom/android/vending/compat/animation/Animator;

    .line 1477
    return-void
.end method

.method public onAnimationEnd(Lcom/android/vending/compat/animation/Animator;)V
    .locals 6
    .param p1, "animation"    # Lcom/android/vending/compat/animation/Animator;

    .prologue
    .line 1480
    iget-boolean v1, p0, Lcom/android/vending/velvet/CarouselView$12;->wasCanceled:Z

    if-eqz v1, :cond_0

    .line 1491
    :goto_0
    return-void

    .line 1484
    :cond_0
    iget-object v1, p0, Lcom/android/vending/velvet/CarouselView$12;->this$0:Lcom/android/vending/velvet/CarouselView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/vending/velvet/CarouselView;->access$600(Lcom/android/vending/velvet/CarouselView;I)V

    .line 1486
    iget-object v1, p0, Lcom/android/vending/velvet/CarouselView$12;->this$0:Lcom/android/vending/velvet/CarouselView;

    iget-object v2, p0, Lcom/android/vending/velvet/CarouselView$12;->this$0:Lcom/android/vending/velvet/CarouselView;

    iget v2, v2, Lcom/android/vending/velvet/CarouselView;->mCurrIndexAtCenter:F

    float-to-double v2, v2

    const-wide v4, 0x3fb999999999999aL    # 0.1

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/vending/velvet/CarouselView;->clampToThumbnailArraySize(I)I

    move-result v0

    .line 1487
    .local v0, "indexForCaption":I
    iget-object v1, p0, Lcom/android/vending/velvet/CarouselView$12;->this$0:Lcom/android/vending/velvet/CarouselView;

    iget-object v2, p0, Lcom/android/vending/velvet/CarouselView$12;->this$0:Lcom/android/vending/velvet/CarouselView;

    iget-object v2, v2, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mAssetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    iget-object v2, v2, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mAsset:Lcom/android/vending/model/Asset;

    invoke-static {v1, v2}, Lcom/android/vending/velvet/CarouselView;->access$902(Lcom/android/vending/velvet/CarouselView;Lcom/android/vending/model/Asset;)Lcom/android/vending/model/Asset;

    .line 1488
    iget-object v1, p0, Lcom/android/vending/velvet/CarouselView$12;->this$0:Lcom/android/vending/velvet/CarouselView;

    invoke-static {v1}, Lcom/android/vending/velvet/CarouselView;->access$1200(Lcom/android/vending/velvet/CarouselView;)V

    .line 1490
    iget-object v1, p0, Lcom/android/vending/velvet/CarouselView$12;->this$0:Lcom/android/vending/velvet/CarouselView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/vending/velvet/CarouselView;->access$1702(Lcom/android/vending/velvet/CarouselView;Lcom/android/vending/compat/animation/Animator;)Lcom/android/vending/compat/animation/Animator;

    goto :goto_0
.end method
