.class Lcom/android/vending/AssetInfoActivity$VerticalScrollAnimator;
.super Ljava/lang/Object;
.source "AssetInfoActivity.java"

# interfaces
.implements Lcom/android/vending/compat/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AssetInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VerticalScrollAnimator"
.end annotation


# instance fields
.field mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/vending/AssetInfoActivity;


# direct methods
.method private constructor <init>(Lcom/android/vending/AssetInfoActivity;Landroid/view/View;)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 1277
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$VerticalScrollAnimator;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1278
    iput-object p2, p0, Lcom/android/vending/AssetInfoActivity$VerticalScrollAnimator;->mView:Landroid/view/View;

    .line 1279
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vending/AssetInfoActivity;Landroid/view/View;Lcom/android/vending/AssetInfoActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/vending/AssetInfoActivity;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # Lcom/android/vending/AssetInfoActivity$1;

    .prologue
    .line 1274
    invoke-direct {p0, p1, p2}, Lcom/android/vending/AssetInfoActivity$VerticalScrollAnimator;-><init>(Lcom/android/vending/AssetInfoActivity;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/android/vending/compat/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animator"    # Lcom/android/vending/compat/animation/ValueAnimator;

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$VerticalScrollAnimator;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$VerticalScrollAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/vending/compat/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/android/vending/AssetInfoActivity$VerticalScrollAnimator;
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 1283
    return-void
.end method
