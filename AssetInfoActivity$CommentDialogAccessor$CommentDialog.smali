.class Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog;
.super Landroid/app/AlertDialog;
.source "AssetInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommentDialog"
.end annotation


# instance fields
.field protected mCurrentComment:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor;


# direct methods
.method public constructor <init>(Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor;Landroid/content/Context;)V
    .locals 5
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 2677
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog;->this$1:Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor;

    .line 2678
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 2679
    const v2, 0x7f030056

    iget-object v3, p1, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v2, v3}, Lcom/android/vending/util/Util;->inflateView(ILandroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 2681
    .local v1, "writeReviewFrame":Landroid/view/View;
    const v2, 0x7f070117

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2683
    .local v0, "commentBox":Landroid/widget/TextView;
    const v2, 0x7f020034

    invoke-virtual {p0, v2}, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog;->setIcon(I)V

    .line 2684
    const v2, 0x7f060172

    invoke-virtual {p0, v2}, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog;->setTitle(I)V

    .line 2685
    invoke-virtual {p0, v1}, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog;->setView(Landroid/view/View;)V

    .line 2686
    const/4 v2, -0x1

    const v3, 0x7f06002b

    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog$1;

    invoke-direct {v4, p0, p1, v0}, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog$1;-><init>(Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog;Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor;Landroid/widget/TextView;)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2700
    const/4 v2, -0x2

    const v3, 0x7f06002c

    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog$2;

    invoke-direct {v4, p0, p1}, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog$2;-><init>(Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog;Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor;)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2705
    new-instance v2, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog$3;

    invoke-direct {v2, p0, p1}, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog$3;-><init>(Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog;Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2723
    return-void
.end method


# virtual methods
.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 2751
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2752
    const v3, 0x7f070117

    invoke-virtual {p0, v3}, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2753
    .local v2, "commentBox":Landroid/widget/TextView;
    const-string v3, "comment"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2754
    .local v1, "comment":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2755
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2757
    :cond_0
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 2758
    .local v0, "button":Landroid/widget/Button;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2759
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 2760
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2762
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 2744
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 2745
    .local v0, "icicle":Landroid/os/Bundle;
    const-string v1, "comment"

    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog;->mCurrentComment:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2746
    return-object v0
.end method

.method protected onStart()V
    .locals 5

    .prologue
    .line 2727
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 2730
    iget-object v3, p0, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog;->this$1:Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor;

    iget-object v3, v3, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-virtual {v3}, Lcom/android/vending/AssetInfoActivity;->getSharedParameters()Lcom/android/vending/controller/RequestParameters;

    move-result-object v3

    const-string v4, "comment"

    invoke-virtual {v3, v4}, Lcom/android/vending/controller/RequestParameters;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2731
    .local v2, "currentComment":Ljava/lang/Object;
    const v3, 0x7f070117

    invoke-virtual {p0, v3}, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2732
    .local v1, "commentBox":Landroid/widget/TextView;
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 2733
    .local v0, "button":Landroid/widget/Button;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2734
    if-eqz v2, :cond_0

    .line 2735
    check-cast v2, Ljava/lang/String;

    .end local v2    # "currentComment":Ljava/lang/Object;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2740
    :goto_0
    return-void

    .line 2737
    .restart local v2    # "currentComment":Ljava/lang/Object;
    :cond_0
    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2738
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
