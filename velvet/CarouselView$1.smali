.class Lcom/android/vending/velvet/CarouselView$1;
.super Ljava/lang/Object;
.source "CarouselView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/velvet/CarouselView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/vending/velvet/CarouselView$Thumbnail;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/velvet/CarouselView;


# direct methods
.method constructor <init>(Lcom/android/vending/velvet/CarouselView;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lcom/android/vending/velvet/CarouselView$1;->this$0:Lcom/android/vending/velvet/CarouselView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/vending/velvet/CarouselView$Thumbnail;Lcom/android/vending/velvet/CarouselView$Thumbnail;)I
    .locals 6
    .param p1, "object1"    # Lcom/android/vending/velvet/CarouselView$Thumbnail;
    .param p2, "object2"    # Lcom/android/vending/velvet/CarouselView$Thumbnail;

    .prologue
    const-wide/16 v4, 0x0

    .line 525
    if-ne p1, p2, :cond_0

    .line 526
    const/4 v2, 0x0

    .line 533
    :goto_0
    return v2

    .line 528
    :cond_0
    iget v2, p1, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mDistToCenter:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p2, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mDistToCenter:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v0, v2

    .line 530
    .local v0, "distDiff":D
    cmpl-double v2, v0, v4

    if-eqz v2, :cond_2

    .line 531
    cmpl-double v2, v0, v4

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    .line 533
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 523
    check-cast p1, Lcom/android/vending/velvet/CarouselView$Thumbnail;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/vending/velvet/CarouselView$Thumbnail;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/vending/velvet/CarouselView$1;->compare(Lcom/android/vending/velvet/CarouselView$Thumbnail;Lcom/android/vending/velvet/CarouselView$Thumbnail;)I

    move-result v0

    return v0
.end method
