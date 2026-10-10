.class Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog$3;
.super Ljava/lang/Object;
.source "AssetInfoActivity.java"

# interfaces
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;-><init>(Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final DESCRIPTION_MAP:[I

.field private final ratingDescription:Landroid/widget/TextView;

.field final synthetic this$2:Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;

.field final synthetic val$ratingSetterFrame:Landroid/view/View;

.field final synthetic val$this$1:Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor;


# direct methods
.method constructor <init>(Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2823
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog$3;->this$2:Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;

    iput-object p2, p0, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog$3;->val$this$1:Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor;

    iput-object p3, p0, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog$3;->val$ratingSetterFrame:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2824
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog$3;->val$ratingSetterFrame:Landroid/view/View;

    const v1, 0x7f0700f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog$3;->ratingDescription:Landroid/widget/TextView;

    .line 2826
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog$3;->DESCRIPTION_MAP:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f060176
        0x7f060177
        0x7f060178
        0x7f060179
        0x7f06017a
        0x7f06017b
    .end array-data
.end method


# virtual methods
.method public onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .locals 3
    .param p1, "bar"    # Landroid/widget/RatingBar;
    .param p2, "rating"    # F
    .param p3, "fromTouch"    # Z

    .prologue
    .line 2834
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    .line 2835
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog$3;->this$2:Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2838
    :cond_0
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog$3;->this$2:Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;->access$6202(Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;I)I

    .line 2839
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog$3;->ratingDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog$3;->DESCRIPTION_MAP:[I

    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog$3;->this$2:Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;

    invoke-static {v2}, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;->access$6200(Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2840
    return-void
.end method
