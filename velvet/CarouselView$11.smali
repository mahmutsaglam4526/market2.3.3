.class Lcom/android/vending/velvet/CarouselView$11;
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

.field final synthetic val$toFadeIn:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/android/vending/velvet/CarouselView;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 1447
    iput-object p1, p0, Lcom/android/vending/velvet/CarouselView$11;->this$0:Lcom/android/vending/velvet/CarouselView;

    iput-object p2, p0, Lcom/android/vending/velvet/CarouselView$11;->val$toFadeIn:Ljava/util/Set;

    invoke-direct {p0}, Lcom/android/vending/compat/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/android/vending/compat/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Lcom/android/vending/compat/animation/Animator;

    .prologue
    .line 1451
    iget-object v2, p0, Lcom/android/vending/velvet/CarouselView$11;->val$toFadeIn:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vending/velvet/CarouselView$Thumbnail;

    .line 1452
    .local v1, "stageThumbnail":Lcom/android/vending/velvet/CarouselView$Thumbnail;
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mIsInitialFadeIn:Z

    goto :goto_0

    .line 1454
    .end local v1    # "stageThumbnail":Lcom/android/vending/velvet/CarouselView$Thumbnail;
    :cond_0
    return-void
.end method
