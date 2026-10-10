.class Lcom/android/vending/velvet/CarouselView$ImageLoader$1$3;
.super Ljava/lang/Object;
.source "CarouselView.java"

# interfaces
.implements Lcom/android/vending/compat/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/velvet/CarouselView$ImageLoader$1;->runThumbnailFadeIn(Lcom/android/vending/velvet/CarouselView$Thumbnail;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/vending/velvet/CarouselView$ImageLoader$1;

.field final synthetic val$thumbnail:Lcom/android/vending/velvet/CarouselView$Thumbnail;


# direct methods
.method constructor <init>(Lcom/android/vending/velvet/CarouselView$ImageLoader$1;Lcom/android/vending/velvet/CarouselView$Thumbnail;)V
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader$1$3;->this$2:Lcom/android/vending/velvet/CarouselView$ImageLoader$1;

    iput-object p2, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader$1$3;->val$thumbnail:Lcom/android/vending/velvet/CarouselView$Thumbnail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/android/vending/compat/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Lcom/android/vending/compat/animation/ValueAnimator;

    .prologue
    .line 463
    iget-object v1, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader$1$3;->val$thumbnail:Lcom/android/vending/velvet/CarouselView$Thumbnail;

    invoke-virtual {p1}, Lcom/android/vending/compat/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mFadeInAlpha:F

    .line 465
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader$1$3;->val$thumbnail:Lcom/android/vending/velvet/CarouselView$Thumbnail;

    iget-boolean v0, v0, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mIsOffScreen:Z

    if-nez v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader$1$3;->this$2:Lcom/android/vending/velvet/CarouselView$ImageLoader$1;

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$ImageLoader$1;->this$1:Lcom/android/vending/velvet/CarouselView$ImageLoader;

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$ImageLoader;->this$0:Lcom/android/vending/velvet/CarouselView;

    invoke-virtual {v0}, Lcom/android/vending/velvet/CarouselView;->invalidate()V

    .line 468
    :cond_0
    return-void
.end method
