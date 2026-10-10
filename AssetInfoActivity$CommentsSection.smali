.class Lcom/android/vending/AssetInfoActivity$CommentsSection;
.super Lcom/android/vending/AssetInfoActivity$Section;
.source "AssetInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AssetInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommentsSection"
.end annotation


# instance fields
.field private mChildObserver:Landroid/database/DataSetObserver;

.field private mCommentCount:I

.field private mCommentsContainer:Landroid/widget/LinearLayout;

.field private mCommentsLoadingIndicator:Landroid/view/View;

.field private mMoreComments:Landroid/view/View;

.field private mNoComments:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/vending/AssetInfoActivity;


# direct methods
.method private constructor <init>(Lcom/android/vending/AssetInfoActivity;)V
    .locals 1

    .prologue
    .line 2307
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$CommentsSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/vending/AssetInfoActivity$Section;-><init>(Lcom/android/vending/AssetInfoActivity;Lcom/android/vending/AssetInfoActivity$1;)V

    .line 2315
    new-instance v0, Lcom/android/vending/AssetInfoActivity$CommentsSection$1;

    invoke-direct {v0, p0}, Lcom/android/vending/AssetInfoActivity$CommentsSection$1;-><init>(Lcom/android/vending/AssetInfoActivity$CommentsSection;)V

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity$CommentsSection;->mChildObserver:Landroid/database/DataSetObserver;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vending/AssetInfoActivity;Lcom/android/vending/AssetInfoActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/vending/AssetInfoActivity;
    .param p2, "x1"    # Lcom/android/vending/AssetInfoActivity$1;

    .prologue
    .line 2307
    invoke-direct {p0, p1}, Lcom/android/vending/AssetInfoActivity$CommentsSection;-><init>(Lcom/android/vending/AssetInfoActivity;)V

    return-void
.end method

.method private hasComments()Z
    .locals 1

    .prologue
    .line 2401
    iget v0, p0, Lcom/android/vending/AssetInfoActivity$CommentsSection;->mCommentCount:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$CommentsSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v0}, Lcom/android/vending/AssetInfoActivity;->access$5800(Lcom/android/vending/AssetInfoActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isVisible()Z
    .locals 1

    .prologue
    .line 2329
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$CommentsSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v0}, Lcom/android/vending/AssetInfoActivity;->access$3100(Lcom/android/vending/AssetInfoActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$CommentsSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttach()V
    .locals 2

    .prologue
    .line 2334
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$CommentsSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v0}, Lcom/android/vending/AssetInfoActivity;->access$5600(Lcom/android/vending/AssetInfoActivity;)Lcom/android/vending/CommentsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$CommentsSection;->mChildObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/android/vending/CommentsAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2336
    const v0, 0x7f0600bb

    const v1, 0x7f0600bc

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/AssetInfoActivity$CommentsSection;->addHeader(II)Landroid/widget/TwoLineListItem;

    .line 2338
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$CommentsSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity$CommentsSection;->mCommentsContainer:Landroid/widget/LinearLayout;

    .line 2339
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$CommentsSection;->mCommentsContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2340
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$CommentsSection;->mCommentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity$CommentsSection;->addView(Landroid/view/View;)V

    .line 2342
    const v0, 0x7f03003d

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity$CommentsSection;->inflateView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity$CommentsSection;->mMoreComments:Landroid/view/View;

    .line 2343
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$CommentsSection;->mMoreComments:Landroid/view/View;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2344
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$CommentsSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$CommentsSection;->mMoreComments:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/vending/AssetInfoActivity;->setViewOnClickListener(Landroid/view/View;)V

    .line 2345
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$CommentsSection;->mMoreComments:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity$CommentsSection;->addViewWithoutPadding(Landroid/view/View;)V

    .line 2347
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity$CommentsSection;->inflateView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity$CommentsSection;->mNoComments:Landroid/widget/TextView;

    .line 2348
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$CommentsSection;->mNoComments:Landroid/widget/TextView;

    const v1, 0x7f0600c7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2349
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$CommentsSection;->mNoComments:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2350
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$CommentsSection;->mNoComments:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity$CommentsSection;->addView(Landroid/view/View;)V

    .line 2352
    const v0, 0x7f03003c

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity$CommentsSection;->inflateView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity$CommentsSection;->mCommentsLoadingIndicator:Landroid/view/View;

    .line 2353
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$CommentsSection;->mCommentsLoadingIndicator:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity$CommentsSection;->addView(Landroid/view/View;)V

    .line 2354
    return-void
.end method

.method public onRefresh()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 2358
    iget-object v3, p0, Lcom/android/vending/AssetInfoActivity$CommentsSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v3}, Lcom/android/vending/AssetInfoActivity;->access$5600(Lcom/android/vending/AssetInfoActivity;)Lcom/android/vending/CommentsAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/vending/CommentsAdapter;->getCount()I

    move-result v3

    iput v3, p0, Lcom/android/vending/AssetInfoActivity$CommentsSection;->mCommentCount:I

    .line 2360
    iget-object v3, p0, Lcom/android/vending/AssetInfoActivity$CommentsSection;->mCommentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2361
    iget-object v3, p0, Lcom/android/vending/AssetInfoActivity$CommentsSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v3}, Lcom/android/vending/AssetInfoActivity;->access$5700(Lcom/android/vending/AssetInfoActivity;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2362
    iget-object v3, p0, Lcom/android/vending/AssetInfoActivity$CommentsSection;->mCommentsLoadingIndicator:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2363
    iget-object v3, p0, Lcom/android/vending/AssetInfoActivity$CommentsSection;->mCommentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2364
    iget-object v3, p0, Lcom/android/vending/AssetInfoActivity$CommentsSection;->mMoreComments:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2365
    iget-object v3, p0, Lcom/android/vending/AssetInfoActivity$CommentsSection;->mNoComments:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2396
    :cond_0
    :goto_0
    return-void

    .line 2369
    :cond_1
    invoke-direct {p0}, Lcom/android/vending/AssetInfoActivity$CommentsSection;->hasComments()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2370
    iget-object v3, p0, Lcom/android/vending/AssetInfoActivity$CommentsSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-virtual {v3}, Lcom/android/vending/AssetInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 2373
    .local v0, "horizontalPadding":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v3, p0, Lcom/android/vending/AssetInfoActivity$CommentsSection;->mCommentCount:I

    if-ge v1, v3, :cond_2

    .line 2374
    iget-object v3, p0, Lcom/android/vending/AssetInfoActivity$CommentsSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v3}, Lcom/android/vending/AssetInfoActivity;->access$5600(Lcom/android/vending/AssetInfoActivity;)Lcom/android/vending/CommentsAdapter;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/vending/AssetInfoActivity$CommentsSection;->mCommentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/vending/CommentsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2377
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v2, v0, v3, v0, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 2380
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 2381
    iget-object v3, p0, Lcom/android/vending/AssetInfoActivity$CommentsSection;->mCommentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2373
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2383
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/android/vending/AssetInfoActivity$CommentsSection;->mCommentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2384
    iget-object v3, p0, Lcom/android/vending/AssetInfoActivity$CommentsSection;->mMoreComments:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2385
    iget-object v3, p0, Lcom/android/vending/AssetInfoActivity$CommentsSection;->mNoComments:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2391
    .end local v0    # "horizontalPadding":I
    .end local v1    # "i":I
    :goto_2
    iget-object v3, p0, Lcom/android/vending/AssetInfoActivity$CommentsSection;->mCommentsLoadingIndicator:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2393
    invoke-virtual {p0}, Lcom/android/vending/AssetInfoActivity$CommentsSection;->isActivated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2394
    invoke-virtual {p0}, Lcom/android/vending/AssetInfoActivity$CommentsSection;->deactivate()V

    goto :goto_0

    .line 2387
    :cond_3
    iget-object v3, p0, Lcom/android/vending/AssetInfoActivity$CommentsSection;->mCommentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2388
    iget-object v3, p0, Lcom/android/vending/AssetInfoActivity$CommentsSection;->mMoreComments:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2389
    iget-object v3, p0, Lcom/android/vending/AssetInfoActivity$CommentsSection;->mNoComments:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method
