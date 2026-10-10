.class Lcom/android/vending/velvet/CarouselView$Dimension;
.super Ljava/lang/Object;
.source "CarouselView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/velvet/CarouselView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Dimension"
.end annotation


# instance fields
.field height:I

.field width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput p1, p0, Lcom/android/vending/velvet/CarouselView$Dimension;->width:I

    .line 270
    iput p2, p0, Lcom/android/vending/velvet/CarouselView$Dimension;->height:I

    .line 271
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 274
    if-ne p1, p0, :cond_0

    move v2, v5

    .line 281
    :goto_0
    return v2

    .line 277
    :cond_0
    instance-of v2, p1, Lcom/android/vending/velvet/CarouselView$Dimension;

    if-nez v2, :cond_1

    move v2, v4

    .line 278
    goto :goto_0

    .line 280
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/vending/velvet/CarouselView$Dimension;

    move-object v1, v0

    .line 281
    .local v1, "other":Lcom/android/vending/velvet/CarouselView$Dimension;
    iget v2, p0, Lcom/android/vending/velvet/CarouselView$Dimension;->width:I

    iget v3, v1, Lcom/android/vending/velvet/CarouselView$Dimension;->width:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/vending/velvet/CarouselView$Dimension;->height:I

    iget v3, v1, Lcom/android/vending/velvet/CarouselView$Dimension;->height:I

    if-ne v2, v3, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 285
    const/16 v0, 0x11

    .line 286
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v1, p0, Lcom/android/vending/velvet/CarouselView$Dimension;->width:I

    add-int/lit16 v0, v1, 0x20f

    .line 287
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/vending/velvet/CarouselView$Dimension;->height:I

    add-int v0, v1, v2

    .line 288
    return v0
.end method
