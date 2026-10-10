.class Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/vending/controller/DialogAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectContentRatingAccessor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor$ContentRatingAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor$ContentRatingAdapter;

.field private mCheckedPosition:I

.field private final mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mSelectedPosition:I

.field final synthetic this$0:Lcom/android/vending/SettingsActivity;


# direct methods
.method public constructor <init>(Lcom/android/vending/SettingsActivity;Landroid/content/Context;[II)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "ratingLabelIds"    # [I
    .param p4, "checkedPosition"    # I

    .prologue
    .line 479
    iput-object p1, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->this$0:Lcom/android/vending/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 480
    iput-object p2, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mContext:Landroid/content/Context;

    .line 481
    iput p4, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mCheckedPosition:I

    .line 482
    iput p4, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mSelectedPosition:I

    .line 483
    new-instance v1, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor$ContentRatingAdapter;

    invoke-direct {v1, p0, p1}, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor$ContentRatingAdapter;-><init>(Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mAdapter:Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor$ContentRatingAdapter;

    .line 484
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 485
    iget-object v1, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mAdapter:Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor$ContentRatingAdapter;

    aget v2, p3, v0

    invoke-virtual {p1, v2}, Lcom/android/vending/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor$ContentRatingAdapter;->add(Ljava/lang/Object;)V

    .line 484
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 487
    :cond_0
    iget-object v1, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mAdapter:Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor$ContentRatingAdapter;

    const v2, 0x7f03004b

    invoke-virtual {v1, v2}, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor$ContentRatingAdapter;->setDropDownViewResource(I)V

    .line 489
    return-void
.end method

.method static synthetic access$700(Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;

    .prologue
    .line 444
    iget v0, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mSelectedPosition:I

    return v0
.end method


# virtual methods
.method public create()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 492
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f02004f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0600aa

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mAdapter:Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor$ContentRatingAdapter;

    iget v3, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mCheckedPosition:I

    invoke-virtual {v1, v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f06002b

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f06002c

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 498
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mDialog:Landroid/app/AlertDialog;

    .line 499
    iget-object v1, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 500
    iget-object v1, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mDialog:Landroid/app/AlertDialog;

    return-object v1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 527
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 528
    iget v1, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mSelectedPosition:I

    iput v1, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mCheckedPosition:I

    .line 529
    invoke-static {}, Lcom/android/vending/SettingsActivity;->access$800()[Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mCheckedPosition:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 530
    .local v0, "newContentRating":I
    iget-object v1, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->this$0:Lcom/android/vending/SettingsActivity;

    invoke-static {v1, v0}, Lcom/android/vending/SettingsActivity;->access$900(Lcom/android/vending/SettingsActivity;I)V

    .line 531
    iget-object v1, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->this$0:Lcom/android/vending/SettingsActivity;

    invoke-static {v1}, Lcom/android/vending/SettingsActivity;->access$1100(Lcom/android/vending/SettingsActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-static {}, Lcom/android/vending/SettingsActivity;->access$1000()[I

    move-result-object v2

    iget v3, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mCheckedPosition:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 537
    .end local v0    # "newContentRating":I
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    .line 534
    iget v1, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mCheckedPosition:I

    iput v1, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mSelectedPosition:I

    .line 535
    iget-object v1, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mAdapter:Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor$ContentRatingAdapter;

    invoke-virtual {v1}, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor$ContentRatingAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 516
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 517
    .local v0, "which":I
    iput v0, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mSelectedPosition:I

    .line 518
    iget-object v1, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 520
    iget-object v1, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mAdapter:Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor$ContentRatingAdapter;

    invoke-virtual {v1}, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor$ContentRatingAdapter;->notifyDataSetChanged()V

    .line 521
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v3, -0x1

    .line 548
    iget v1, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mCheckedPosition:I

    if-ne v1, v3, :cond_0

    .line 549
    iget-object v1, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 555
    :cond_0
    iget-object v1, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 556
    .local v0, "listView":Landroid/widget/ListView;
    iget v1, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mCheckedPosition:I

    if-ne v1, v3, :cond_1

    .line 557
    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 561
    :goto_0
    return-void

    .line 559
    :cond_1
    iget v1, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->mCheckedPosition:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0
.end method

.method public prepare(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 504
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;I)V
    .locals 0
    .param p1, "icicle"    # Landroid/os/Bundle;
    .param p2, "id"    # I

    .prologue
    .line 510
    return-void
.end method

.method public saveState(Landroid/os/Bundle;I)V
    .locals 0
    .param p1, "icicle"    # Landroid/os/Bundle;
    .param p2, "id"    # I

    .prologue
    .line 507
    return-void
.end method
