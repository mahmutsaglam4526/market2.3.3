.class Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;
.super Ljava/lang/Object;
.source "AssetInfoActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/AssetInfoActivity$DescriptionSection;->onRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mHasRun:Z

.field final synthetic this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

.field final synthetic val$descriptionContainer:Landroid/widget/FrameLayout;

.field final synthetic val$descriptionView:Landroid/widget/TextView;

.field final synthetic val$descriptionZippy:Landroid/widget/TextView;

.field final synthetic val$descriptionZippyContainer:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/android/vending/AssetInfoActivity$DescriptionSection;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .locals 1

    .prologue
    .line 1871
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    iput-object p2, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->val$descriptionContainer:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->val$descriptionZippy:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->val$descriptionZippyContainer:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->val$descriptionView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1873
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->mHasRun:Z

    return-void
.end method

.method private setDescriptionProp(ILandroid/graphics/drawable/Drawable;IILandroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "descHeight"    # I
    .param p2, "descFg"    # Landroid/graphics/drawable/Drawable;
    .param p3, "descText"    # I
    .param p4, "altHeight"    # I
    .param p5, "altFg"    # Landroid/graphics/drawable/Drawable;
    .param p6, "altText"    # I

    .prologue
    .line 1877
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->val$descriptionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1878
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->val$descriptionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1879
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->val$descriptionZippy:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    iget-object v1, v1, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-virtual {v1, p3}, Lcom/android/vending/AssetInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1881
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    invoke-static {v0, p4}, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->access$4302(Lcom/android/vending/AssetInfoActivity$DescriptionSection;I)I

    .line 1882
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    invoke-static {v0, p5}, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->access$4202(Lcom/android/vending/AssetInfoActivity$DescriptionSection;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 1883
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    iget-object v1, v1, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-virtual {v1, p6}, Lcom/android/vending/AssetInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->access$4102(Lcom/android/vending/AssetInfoActivity$DescriptionSection;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1884
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 1887
    iget-boolean v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->mHasRun:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    invoke-static {v0}, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->access$4300(Lcom/android/vending/AssetInfoActivity$DescriptionSection;)I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    move v0, v13

    .line 1939
    :goto_0
    return v0

    .line 1891
    :cond_1
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    invoke-static {v0}, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->access$4800(Lcom/android/vending/AssetInfoActivity$DescriptionSection;)V

    .line 1893
    const v9, 0x7f0601b1

    .line 1894
    .local v9, "expandedText":I
    const v6, 0x7f0601b0

    .line 1895
    .local v6, "compressedText":I
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->val$descriptionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    .line 1897
    .local v7, "expandedHeight":I
    const/4 v8, 0x0

    .line 1901
    .local v8, "expandedForeground":Landroid/graphics/drawable/Drawable;
    if-lez v7, :cond_2

    .line 1902
    iput-boolean v13, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->mHasRun:Z

    .line 1903
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->val$descriptionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1907
    :cond_2
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    const/16 v1, 0x54

    invoke-static {v0, v1}, Lcom/android/vending/util/Util;->dipsToPixels(Landroid/content/Context;I)I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 1910
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->val$descriptionZippyContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move v0, v13

    .line 1911
    goto :goto_0

    .line 1916
    :cond_3
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-virtual {v0}, Lcom/android/vending/AssetInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 1918
    .local v10, "compressedForeground":Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lcom/android/vending/util/Util;->dipsToPixels(Landroid/content/Context;I)I

    move-result v11

    .line 1924
    .local v11, "compressedHeight":I
    iget-object v12, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->val$descriptionZippyContainer:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener;

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->val$descriptionContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->val$descriptionView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->val$descriptionZippy:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener;-><init>(Lcom/android/vending/AssetInfoActivity$DescriptionSection;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/android/vending/AssetInfoActivity$1;)V

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1928
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v0}, Lcom/android/vending/AssetInfoActivity;->access$4000(Lcom/android/vending/AssetInfoActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, p0

    move v1, v7

    move-object v2, v8

    move v3, v9

    move v4, v11

    move-object v5, v10

    .line 1929
    invoke-direct/range {v0 .. v6}, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->setDescriptionProp(ILandroid/graphics/drawable/Drawable;IILandroid/graphics/drawable/Drawable;I)V

    .line 1935
    :goto_1
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->val$descriptionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1936
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->val$descriptionZippyContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1937
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->val$descriptionZippyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    move v0, v13

    .line 1939
    goto/16 :goto_0

    :cond_4
    move-object v3, p0

    move v4, v11

    move-object v5, v10

    .line 1932
    invoke-direct/range {v3 .. v9}, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->setDescriptionProp(ILandroid/graphics/drawable/Drawable;IILandroid/graphics/drawable/Drawable;I)V

    goto :goto_1
.end method
