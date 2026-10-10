.class Lcom/android/vending/billing/InAppBuyPageActivity$1;
.super Ljava/lang/Object;
.source "InAppBuyPageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/billing/InAppBuyPageActivity;->initClass(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/billing/InAppBuyPageActivity;


# direct methods
.method constructor <init>(Lcom/android/vending/billing/InAppBuyPageActivity;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/vending/billing/InAppBuyPageActivity$1;->this$0:Lcom/android/vending/billing/InAppBuyPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity$1;->this$0:Lcom/android/vending/billing/InAppBuyPageActivity;

    invoke-static {v0}, Lcom/android/vending/billing/InAppBuyPageActivity;->access$300(Lcom/android/vending/billing/InAppBuyPageActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 191
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity$1;->this$0:Lcom/android/vending/billing/InAppBuyPageActivity;

    invoke-virtual {v0}, Lcom/android/vending/billing/InAppBuyPageActivity;->finish()V

    .line 192
    return-void
.end method
