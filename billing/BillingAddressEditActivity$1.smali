.class Lcom/android/vending/billing/BillingAddressEditActivity$1;
.super Ljava/lang/Object;
.source "BillingAddressEditActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/billing/BillingAddressEditActivity;->displayErrors(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/billing/BillingAddressEditActivity;

.field final synthetic val$finalTopMostView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/vending/billing/BillingAddressEditActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/vending/billing/BillingAddressEditActivity$1;->this$0:Lcom/android/vending/billing/BillingAddressEditActivity;

    iput-object p2, p0, Lcom/android/vending/billing/BillingAddressEditActivity$1;->val$finalTopMostView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/vending/billing/BillingAddressEditActivity$1;->val$finalTopMostView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/vending/billing/BillingAddressEditActivity$1;->this$0:Lcom/android/vending/billing/BillingAddressEditActivity;

    invoke-static {v1}, Lcom/android/vending/billing/BillingAddressEditActivity;->access$000(Lcom/android/vending/billing/BillingAddressEditActivity;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 329
    iget-object v0, p0, Lcom/android/vending/billing/BillingAddressEditActivity$1;->val$finalTopMostView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/vending/billing/BillingAddressEditActivity$1;->this$0:Lcom/android/vending/billing/BillingAddressEditActivity;

    invoke-static {v1}, Lcom/android/vending/billing/BillingAddressEditActivity;->access$000(Lcom/android/vending/billing/BillingAddressEditActivity;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 330
    iget-object v0, p0, Lcom/android/vending/billing/BillingAddressEditActivity$1;->val$finalTopMostView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 331
    return-void
.end method
