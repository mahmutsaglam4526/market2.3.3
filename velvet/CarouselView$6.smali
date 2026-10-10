.class Lcom/android/vending/velvet/CarouselView$6;
.super Lcom/android/vending/compat/animation/AnimatorListenerAdapter;
.source "CarouselView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/velvet/CarouselView;->createAndRunScrollSequencer(FJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/velvet/CarouselView;


# direct methods
.method constructor <init>(Lcom/android/vending/velvet/CarouselView;)V
    .locals 0

    .prologue
    .line 1073
    iput-object p1, p0, Lcom/android/vending/velvet/CarouselView$6;->this$0:Lcom/android/vending/velvet/CarouselView;

    invoke-direct {p0}, Lcom/android/vending/compat/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/android/vending/compat/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Lcom/android/vending/compat/animation/Animator;

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView$6;->this$0:Lcom/android/vending/velvet/CarouselView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/vending/velvet/CarouselView;->access$1302(Lcom/android/vending/velvet/CarouselView;Lcom/android/vending/compat/animation/Animator;)Lcom/android/vending/compat/animation/Animator;

    .line 1077
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView$6;->this$0:Lcom/android/vending/velvet/CarouselView;

    const/16 v1, 0x4e20

    iget-object v2, p0, Lcom/android/vending/velvet/CarouselView$6;->this$0:Lcom/android/vending/velvet/CarouselView;

    invoke-static {v2}, Lcom/android/vending/velvet/CarouselView;->access$1400(Lcom/android/vending/velvet/CarouselView;)I

    move-result v2

    const/16 v3, 0x7d0

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/vending/velvet/CarouselView;->access$1402(Lcom/android/vending/velvet/CarouselView;I)I

    .line 1081
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView$6;->this$0:Lcom/android/vending/velvet/CarouselView;

    invoke-static {v0}, Lcom/android/vending/velvet/CarouselView;->access$1500(Lcom/android/vending/velvet/CarouselView;)V

    .line 1082
    return-void
.end method
