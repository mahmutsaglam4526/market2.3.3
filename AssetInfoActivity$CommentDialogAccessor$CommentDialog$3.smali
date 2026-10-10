.class Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog$3;
.super Ljava/lang/Object;
.source "AssetInfoActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog;-><init>(Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog;

.field final synthetic val$this$1:Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor;


# direct methods
.method constructor <init>(Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog;Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor;)V
    .locals 0

    .prologue
    .line 2705
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog$3;->this$2:Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog;

    iput-object p2, p0, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog$3;->val$this$1:Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 2707
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog$3;->this$2:Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 2709
    .local v0, "button":Landroid/widget/Button;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2710
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 2711
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2713
    :cond_0
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog$3;->this$2:Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor$CommentDialog;->mCurrentComment:Ljava/lang/String;

    .line 2714
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 2718
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 2721
    return-void
.end method
