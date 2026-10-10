.class Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentDialog;
.super Ljava/lang/Object;
.source "BaseBuyPageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/billing/BaseBuyPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectPaymentDialog"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mCheckedItem:I

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mSavedCheckedItem:I

.field final synthetic this$0:Lcom/android/vending/billing/BaseBuyPageActivity;


# direct methods
.method public constructor <init>(Lcom/android/vending/billing/BaseBuyPageActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1971
    iput-object p1, p0, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentDialog;->this$0:Lcom/android/vending/billing/BaseBuyPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1972
    iput-object p2, p0, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentDialog;->mContext:Landroid/content/Context;

    .line 1973
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 2016
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2017
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2019
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 2022
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, -0x1

    .line 2026
    if-ltz p2, :cond_1

    .line 2027
    iput p2, p0, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentDialog;->mCheckedItem:I

    .line 2028
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2034
    :cond_0
    :goto_0
    return-void

    .line 2029
    :cond_1
    if-ne p2, v1, :cond_2

    .line 2030
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentDialog;->this$0:Lcom/android/vending/billing/BaseBuyPageActivity;

    iget v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentDialog;->mCheckedItem:I

    invoke-static {v0, v1}, Lcom/android/vending/billing/BaseBuyPageActivity;->access$400(Lcom/android/vending/billing/BaseBuyPageActivity;I)V

    goto :goto_0

    .line 2031
    :cond_2
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 2032
    iget v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentDialog;->mSavedCheckedItem:I

    iput v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentDialog;->mCheckedItem:I

    goto :goto_0
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v3, -0x1

    .line 2037
    iget-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 2041
    .local v0, "listView":Landroid/widget/ListView;
    iget v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentDialog;->mCheckedItem:I

    if-ne v2, v3, :cond_0

    .line 2042
    iget-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 2043
    .local v1, "ok":Landroid/widget/Button;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2045
    .end local v1    # "ok":Landroid/widget/Button;
    :cond_0
    return-void
.end method

.method public setRequiredParams(Landroid/widget/ListAdapter;I)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "checkedItem"    # I

    .prologue
    .line 1983
    iput-object p1, p0, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentDialog;->mAdapter:Landroid/widget/ListAdapter;

    .line 1984
    iput p2, p0, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentDialog;->mCheckedItem:I

    .line 1985
    iget v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentDialog;->mCheckedItem:I

    iput v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentDialog;->mSavedCheckedItem:I

    .line 1986
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060115

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentDialog;->mAdapter:Landroid/widget/ListAdapter;

    iget v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentDialog;->mCheckedItem:I

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentDialog;->mDialog:Landroid/app/AlertDialog;

    .line 1992
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1993
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 1996
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 1999
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 2000
    .local v0, "listView":Landroid/widget/ListView;
    iget v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentDialog;->mCheckedItem:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 2001
    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 2009
    :goto_0
    iget v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentDialog;->mCheckedItem:I

    iput v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentDialog;->mSavedCheckedItem:I

    .line 2011
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2013
    .end local v0    # "listView":Landroid/widget/ListView;
    :cond_0
    return-void

    .line 2003
    .restart local v0    # "listView":Landroid/widget/ListView;
    :cond_1
    iget v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentDialog;->mCheckedItem:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0
.end method
