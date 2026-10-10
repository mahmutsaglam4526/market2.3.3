.class Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener;
.super Ljava/lang/Object;
.source "AssetInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AssetInfoActivity$DescriptionSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DescriptionZippyClickListener"
.end annotation


# instance fields
.field private mDescriptionContainer:Landroid/widget/FrameLayout;

.field private mDescriptionView:Landroid/widget/TextView;

.field private mDescriptionZippy:Landroid/widget/TextView;

.field private mIsRunning:Z

.field final synthetic this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;


# direct methods
.method private constructor <init>(Lcom/android/vending/AssetInfoActivity$DescriptionSection;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 1
    .param p2, "descriptionContainer"    # Landroid/widget/FrameLayout;
    .param p3, "descriptionView"    # Landroid/widget/TextView;
    .param p4, "descriptionZippy"    # Landroid/widget/TextView;

    .prologue
    .line 1683
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener;->this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1679
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener;->mIsRunning:Z

    .line 1684
    iput-object p2, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener;->mDescriptionContainer:Landroid/widget/FrameLayout;

    .line 1685
    iput-object p3, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener;->mDescriptionView:Landroid/widget/TextView;

    .line 1686
    iput-object p4, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener;->mDescriptionZippy:Landroid/widget/TextView;

    .line 1687
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vending/AssetInfoActivity$DescriptionSection;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/android/vending/AssetInfoActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/vending/AssetInfoActivity$DescriptionSection;
    .param p2, "x1"    # Landroid/widget/FrameLayout;
    .param p3, "x2"    # Landroid/widget/TextView;
    .param p4, "x3"    # Landroid/widget/TextView;
    .param p5, "x4"    # Lcom/android/vending/AssetInfoActivity$1;

    .prologue
    .line 1671
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener;-><init>(Lcom/android/vending/AssetInfoActivity$DescriptionSection;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$4402(Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener;
    .param p1, "x1"    # Z

    .prologue
    .line 1671
    iput-boolean p1, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener;->mIsRunning:Z

    return p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1690
    iget-boolean v7, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener;->mIsRunning:Z

    if-eqz v7, :cond_0

    .line 1731
    :goto_0
    return-void

    .line 1693
    :cond_0
    iput-boolean v10, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener;->mIsRunning:Z

    .line 1694
    iget-object v7, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener;->this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    iget-object v7, v7, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v8, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener;->this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    iget-object v8, v8, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v8}, Lcom/android/vending/AssetInfoActivity;->access$4000(Lcom/android/vending/AssetInfoActivity;)Z

    move-result v8

    if-nez v8, :cond_1

    move v8, v10

    :goto_1
    invoke-static {v7, v8}, Lcom/android/vending/AssetInfoActivity;->access$4002(Lcom/android/vending/AssetInfoActivity;Z)Z

    .line 1695
    iget-object v7, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener;->mDescriptionZippy:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 1696
    .local v5, "previousText":Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener;->mDescriptionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    .line 1697
    .local v4, "previousHeight":I
    iget-object v7, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener;->mDescriptionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1699
    .local v3, "previousForeground":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener;->mDescriptionZippy:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener;->this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    invoke-static {v8}, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->access$4100(Lcom/android/vending/AssetInfoActivity$DescriptionSection;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1700
    iget-object v7, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener;->mDescriptionContainer:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener;->this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    invoke-static {v8}, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->access$4200(Lcom/android/vending/AssetInfoActivity$DescriptionSection;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1701
    iget-object v7, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener;->this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    iget-object v7, v7, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v7}, Lcom/android/vending/AssetInfoActivity;->access$3400(Lcom/android/vending/AssetInfoActivity;)Landroid/widget/ScrollView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    .line 1703
    .local v2, "initialScrollY":I
    new-instance v0, Lcom/android/vending/compat/animation/AnimatorSet;

    invoke-direct {v0}, Lcom/android/vending/compat/animation/AnimatorSet;-><init>()V

    .line 1705
    .local v0, "animatorSet":Lcom/android/vending/compat/animation/AnimatorSet;
    new-array v7, v12, [I

    aput v4, v7, v11

    iget-object v8, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener;->this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    invoke-static {v8}, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->access$4300(Lcom/android/vending/AssetInfoActivity$DescriptionSection;)I

    move-result v8

    aput v8, v7, v10

    invoke-static {v7}, Lcom/android/vending/compat/animation/ValueAnimator;->ofInt([I)Lcom/android/vending/compat/animation/ValueAnimator;

    move-result-object v1

    .line 1707
    .local v1, "heightAnimator":Lcom/android/vending/compat/animation/ValueAnimator;
    new-instance v7, Lcom/android/vending/AssetInfoActivity$HeightAnimator;

    iget-object v8, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener;->this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    iget-object v8, v8, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v9, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener;->mDescriptionContainer:Landroid/widget/FrameLayout;

    invoke-direct {v7, v8, v9, v13}, Lcom/android/vending/AssetInfoActivity$HeightAnimator;-><init>(Lcom/android/vending/AssetInfoActivity;Landroid/view/View;Lcom/android/vending/AssetInfoActivity$1;)V

    invoke-virtual {v1, v7}, Lcom/android/vending/compat/animation/ValueAnimator;->addUpdateListener(Lcom/android/vending/compat/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1708
    new-instance v7, Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener$1;

    invoke-direct {v7, p0}, Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener$1;-><init>(Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener;)V

    invoke-virtual {v1, v7}, Lcom/android/vending/compat/animation/ValueAnimator;->addListener(Lcom/android/vending/compat/animation/Animator$AnimatorListener;)V

    .line 1716
    iget-object v7, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener;->this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    invoke-static {v7}, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->access$4300(Lcom/android/vending/AssetInfoActivity$DescriptionSection;)I

    move-result v7

    if-le v4, v7, :cond_2

    .line 1717
    new-array v7, v12, [I

    aput v2, v7, v11

    sub-int v8, v2, v4

    iget-object v9, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener;->this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    invoke-static {v9}, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->access$4300(Lcom/android/vending/AssetInfoActivity$DescriptionSection;)I

    move-result v9

    add-int/2addr v8, v9

    aput v8, v7, v10

    invoke-static {v7}, Lcom/android/vending/compat/animation/ValueAnimator;->ofInt([I)Lcom/android/vending/compat/animation/ValueAnimator;

    move-result-object v6

    .line 1720
    .local v6, "scrollAnimator":Lcom/android/vending/compat/animation/ValueAnimator;
    new-instance v7, Lcom/android/vending/AssetInfoActivity$VerticalScrollAnimator;

    iget-object v8, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener;->this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    iget-object v8, v8, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v9, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener;->this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    iget-object v9, v9, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v9}, Lcom/android/vending/AssetInfoActivity;->access$3400(Lcom/android/vending/AssetInfoActivity;)Landroid/widget/ScrollView;

    move-result-object v9

    invoke-direct {v7, v8, v9, v13}, Lcom/android/vending/AssetInfoActivity$VerticalScrollAnimator;-><init>(Lcom/android/vending/AssetInfoActivity;Landroid/view/View;Lcom/android/vending/AssetInfoActivity$1;)V

    invoke-virtual {v6, v7}, Lcom/android/vending/compat/animation/ValueAnimator;->addUpdateListener(Lcom/android/vending/compat/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1721
    new-array v7, v12, [Lcom/android/vending/compat/animation/Animator;

    aput-object v1, v7, v11

    aput-object v6, v7, v10

    invoke-virtual {v0, v7}, Lcom/android/vending/compat/animation/AnimatorSet;->playTogether([Lcom/android/vending/compat/animation/Animator;)V

    .line 1725
    .end local v6    # "scrollAnimator":Lcom/android/vending/compat/animation/ValueAnimator;
    :goto_2
    const-wide/16 v7, 0x12c

    invoke-virtual {v0, v7, v8}, Lcom/android/vending/compat/animation/AnimatorSet;->setDuration(J)Lcom/android/vending/compat/animation/AnimatorSet;

    .line 1726
    invoke-virtual {v0}, Lcom/android/vending/compat/animation/AnimatorSet;->start()V

    .line 1728
    iget-object v7, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener;->this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    invoke-static {v7, v5}, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->access$4102(Lcom/android/vending/AssetInfoActivity$DescriptionSection;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1729
    iget-object v7, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener;->this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    invoke-static {v7, v4}, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->access$4302(Lcom/android/vending/AssetInfoActivity$DescriptionSection;I)I

    .line 1730
    iget-object v7, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener;->this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    invoke-static {v7, v3}, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->access$4202(Lcom/android/vending/AssetInfoActivity$DescriptionSection;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .end local v0    # "animatorSet":Lcom/android/vending/compat/animation/AnimatorSet;
    .end local v1    # "heightAnimator":Lcom/android/vending/compat/animation/ValueAnimator;
    .end local v2    # "initialScrollY":I
    .end local v3    # "previousForeground":Landroid/graphics/drawable/Drawable;
    .end local v4    # "previousHeight":I
    .end local v5    # "previousText":Ljava/lang/CharSequence;
    :cond_1
    move v8, v11

    .line 1694
    goto/16 :goto_1

    .line 1723
    .restart local v0    # "animatorSet":Lcom/android/vending/compat/animation/AnimatorSet;
    .restart local v1    # "heightAnimator":Lcom/android/vending/compat/animation/ValueAnimator;
    .restart local v2    # "initialScrollY":I
    .restart local v3    # "previousForeground":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "previousHeight":I
    .restart local v5    # "previousText":Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/vending/compat/animation/AnimatorSet;->play(Lcom/android/vending/compat/animation/Animator;)Lcom/android/vending/compat/animation/AnimatorSet$Builder;

    goto :goto_2
.end method
