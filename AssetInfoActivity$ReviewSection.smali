.class Lcom/android/vending/AssetInfoActivity$ReviewSection;
.super Lcom/android/vending/AssetInfoActivity$Section;
.source "AssetInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AssetInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReviewSection"
.end annotation


# instance fields
.field private mMyCommentBody:Landroid/widget/TextView;

.field private mMyCommentView:Landroid/view/View;

.field private mMyRatingBar:Landroid/widget/RatingBar;

.field private mMyRatingLabel:Landroid/widget/TextView;

.field private mMyRatingView:Landroid/view/View;

.field private mPostCommentView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/vending/AssetInfoActivity;


# direct methods
.method private constructor <init>(Lcom/android/vending/AssetInfoActivity;)V
    .locals 1

    .prologue
    .line 2097
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/vending/AssetInfoActivity$Section;-><init>(Lcom/android/vending/AssetInfoActivity;Lcom/android/vending/AssetInfoActivity$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vending/AssetInfoActivity;Lcom/android/vending/AssetInfoActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/vending/AssetInfoActivity;
    .param p2, "x1"    # Lcom/android/vending/AssetInfoActivity$1;

    .prologue
    .line 2097
    invoke-direct {p0, p1}, Lcom/android/vending/AssetInfoActivity$ReviewSection;-><init>(Lcom/android/vending/AssetInfoActivity;)V

    return-void
.end method


# virtual methods
.method public isVisible()Z
    .locals 1

    .prologue
    .line 2141
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v0}, Lcom/android/vending/AssetInfoActivity;->access$3100(Lcom/android/vending/AssetInfoActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v0}, Lcom/android/vending/AssetInfoActivity;->access$1800(Lcom/android/vending/AssetInfoActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttach()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x3

    .line 2112
    const v2, 0x7f0600de

    const v3, 0x7f0600df

    invoke-virtual {p0, v2, v3}, Lcom/android/vending/AssetInfoActivity$ReviewSection;->addHeader(II)Landroid/widget/TwoLineListItem;

    .line 2114
    const v2, 0x7f03000e

    invoke-virtual {p0, v2}, Lcom/android/vending/AssetInfoActivity$ReviewSection;->inflateView(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->mMyRatingView:Landroid/view/View;

    .line 2115
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->mMyRatingView:Landroid/view/View;

    const v3, 0x7f07003b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->mMyRatingLabel:Landroid/widget/TextView;

    .line 2116
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->mMyRatingView:Landroid/view/View;

    const v3, 0x7f07003a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RatingBar;

    iput-object v2, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->mMyRatingBar:Landroid/widget/RatingBar;

    .line 2117
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->mMyRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {v2, v6}, Landroid/widget/RatingBar;->setIsIndicator(Z)V

    .line 2118
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->mMyRatingView:Landroid/view/View;

    const/4 v3, -0x2

    invoke-virtual {p0, v2, v3}, Lcom/android/vending/AssetInfoActivity$ReviewSection;->setActionTag(Landroid/view/View;I)V

    .line 2120
    const v2, 0x7f030013

    invoke-virtual {p0, v2}, Lcom/android/vending/AssetInfoActivity$ReviewSection;->inflateView(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->mMyCommentView:Landroid/view/View;

    .line 2121
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->mMyCommentView:Landroid/view/View;

    const v3, 0x1020014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2122
    .local v1, "myCommentLabel":Landroid/widget/TextView;
    const v2, 0x7f0600e0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2123
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->mMyCommentView:Landroid/view/View;

    const v3, 0x1020015

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->mMyCommentBody:Landroid/widget/TextView;

    .line 2124
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->mMyCommentView:Landroid/view/View;

    invoke-virtual {p0, v2, v5}, Lcom/android/vending/AssetInfoActivity$ReviewSection;->setActionTag(Landroid/view/View;I)V

    .line 2126
    const v2, 0x7f030012

    iget-object v3, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v4}, Lcom/android/vending/AssetInfoActivity;->access$2700(Lcom/android/vending/AssetInfoActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/vending/util/Util;->inflateView(ILandroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->mPostCommentView:Landroid/widget/TextView;

    .line 2128
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->mPostCommentView:Landroid/widget/TextView;

    const v3, 0x7f0600e3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2129
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->mPostCommentView:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v5}, Lcom/android/vending/AssetInfoActivity$ReviewSection;->setActionTag(Landroid/view/View;I)V

    .line 2131
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2132
    .local v0, "container":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2133
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->mMyRatingView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2134
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->mMyCommentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2135
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->mPostCommentView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2136
    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity$ReviewSection;->addView(Landroid/view/View;)V

    .line 2137
    return-void
.end method

.method public onRefresh()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 2146
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v0}, Lcom/android/vending/AssetInfoActivity;->access$5300(Lcom/android/vending/AssetInfoActivity;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v0}, Lcom/android/vending/AssetInfoActivity;->access$5300(Lcom/android/vending/AssetInfoActivity;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    .line 2147
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->mMyRatingLabel:Landroid/widget/TextView;

    const v1, 0x7f0600e1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2148
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->mMyRatingBar:Landroid/widget/RatingBar;

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v1}, Lcom/android/vending/AssetInfoActivity;->access$5300(Lcom/android/vending/AssetInfoActivity;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 2150
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v0}, Lcom/android/vending/AssetInfoActivity;->access$5400(Lcom/android/vending/AssetInfoActivity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2151
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->mMyCommentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2152
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->mPostCommentView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2160
    :goto_0
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->mPostCommentView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v1}, Lcom/android/vending/AssetInfoActivity;->access$5500(Lcom/android/vending/AssetInfoActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2168
    :goto_1
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v0}, Lcom/android/vending/AssetInfoActivity;->access$5400(Lcom/android/vending/AssetInfoActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2169
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->mMyCommentBody:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v1}, Lcom/android/vending/AssetInfoActivity;->access$5400(Lcom/android/vending/AssetInfoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2173
    :cond_0
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-virtual {v0}, Lcom/android/vending/AssetInfoActivity;->getSharedParameters()Lcom/android/vending/controller/RequestParameters;

    move-result-object v0

    const-string v1, "rating"

    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v2}, Lcom/android/vending/AssetInfoActivity;->access$5300(Lcom/android/vending/AssetInfoActivity;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/controller/RequestParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2174
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-virtual {v0}, Lcom/android/vending/AssetInfoActivity;->getSharedParameters()Lcom/android/vending/controller/RequestParameters;

    move-result-object v0

    const-string v1, "comment"

    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v2}, Lcom/android/vending/AssetInfoActivity;->access$5400(Lcom/android/vending/AssetInfoActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/controller/RequestParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2175
    return-void

    .line 2154
    :cond_1
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->mMyCommentView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2155
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->mPostCommentView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2162
    :cond_2
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->mMyRatingLabel:Landroid/widget/TextView;

    const v1, 0x7f0600e2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2163
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->mMyRatingBar:Landroid/widget/RatingBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 2165
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->mMyCommentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2166
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$ReviewSection;->mPostCommentView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
