.class public Lcom/android/vending/velvet/SmartButton;
.super Landroid/widget/Button;
.source "SmartButton.java"


# instance fields
.field private mInitialTextSize:F

.field private mMinTextSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-direct {p0, p1}, Lcom/android/vending/velvet/SmartButton;->computeTextSizes(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/android/vending/velvet/SmartButton;->computeTextSizes(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-direct {p0, p1}, Lcom/android/vending/velvet/SmartButton;->computeTextSizes(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method private computeTextSizes(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/vending/velvet/SmartButton;->mMinTextSize:F

    .line 36
    invoke-virtual {p0}, Lcom/android/vending/velvet/SmartButton;->getTextSize()F

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/vending/velvet/SmartButton;->mInitialTextSize:F

    .line 37
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v5, 0x0

    .line 41
    invoke-super/range {p0 .. p5}, Landroid/widget/Button;->onLayout(ZIIII)V

    .line 44
    invoke-virtual {p0}, Lcom/android/vending/velvet/SmartButton;->getMeasuredWidth()I

    move-result v2

    .line 45
    .local v2, "measuredWidth":I
    invoke-virtual {p0}, Lcom/android/vending/velvet/SmartButton;->getMeasuredHeight()I

    move-result v1

    .line 47
    .local v1, "measuredHeight":I
    sub-int v0, p4, p2

    .line 49
    .local v0, "availableWidth":I
    iget v3, p0, Lcom/android/vending/velvet/SmartButton;->mInitialTextSize:F

    .line 50
    .local v3, "textSize":F
    invoke-virtual {p0, v3}, Lcom/android/vending/velvet/SmartButton;->setTextSize(F)V

    .line 51
    :goto_0
    iget v4, p0, Lcom/android/vending/velvet/SmartButton;->mMinTextSize:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_0

    .line 52
    invoke-virtual {p0, v5, v5}, Lcom/android/vending/velvet/SmartButton;->measure(II)V

    .line 53
    invoke-virtual {p0}, Lcom/android/vending/velvet/SmartButton;->getMeasuredWidth()I

    move-result v4

    if-gt v4, v0, :cond_1

    .line 61
    :cond_0
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v4}, Lcom/android/vending/velvet/SmartButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 62
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/android/vending/velvet/SmartButton;->setMarqueeRepeatLimit(I)V

    .line 63
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/vending/velvet/SmartButton;->setSelected(Z)V

    .line 65
    invoke-virtual {p0, v2, v1}, Lcom/android/vending/velvet/SmartButton;->setMeasuredDimension(II)V

    .line 66
    return-void

    .line 56
    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    .line 57
    invoke-virtual {p0, v3}, Lcom/android/vending/velvet/SmartButton;->setTextSize(F)V

    goto :goto_0
.end method
