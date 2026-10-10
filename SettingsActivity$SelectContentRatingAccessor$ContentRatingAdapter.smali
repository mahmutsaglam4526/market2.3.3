.class Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor$ContentRatingAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentRatingAdapter"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;


# direct methods
.method public constructor <init>(Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 450
    iput-object p1, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor$ContentRatingAdapter;->this$1:Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;

    .line 451
    const v0, 0x7f03004b

    const v1, 0x7f0700a9

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 452
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 456
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 457
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0700a9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 458
    .local v0, "checkBox":Landroid/widget/CheckBox;
    iget-object v2, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor$ContentRatingAdapter;->this$1:Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 459
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 460
    iget-object v2, p0, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor$ContentRatingAdapter;->this$1:Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;

    invoke-static {v2}, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;->access$700(Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;)I

    move-result v2

    if-gt p1, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 461
    return-object v1

    .line 460
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
