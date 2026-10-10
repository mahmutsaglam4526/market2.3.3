.class Lcom/android/vending/billing/InAppBuyPageActivity$2;
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
    .line 194
    iput-object p1, p0, Lcom/android/vending/billing/InAppBuyPageActivity$2;->this$0:Lcom/android/vending/billing/InAppBuyPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 196
    iget-object v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity$2;->this$0:Lcom/android/vending/billing/InAppBuyPageActivity;

    invoke-static {v1}, Lcom/android/vending/billing/InAppBuyPageActivity;->access$300(Lcom/android/vending/billing/InAppBuyPageActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 197
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/android/vending/billing/InAppBuyPageActivity$2;->this$0:Lcom/android/vending/billing/InAppBuyPageActivity;

    invoke-static {v2}, Lcom/android/vending/billing/InAppBuyPageActivity;->access$400(Lcom/android/vending/billing/InAppBuyPageActivity;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 198
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity$2;->this$0:Lcom/android/vending/billing/InAppBuyPageActivity;

    invoke-virtual {v1, v0}, Lcom/android/vending/billing/InAppBuyPageActivity;->startActivity(Landroid/content/Intent;)V

    .line 199
    iget-object v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity$2;->this$0:Lcom/android/vending/billing/InAppBuyPageActivity;

    invoke-virtual {v1}, Lcom/android/vending/billing/InAppBuyPageActivity;->finish()V

    .line 200
    return-void
.end method
