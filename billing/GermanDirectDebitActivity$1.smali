.class Lcom/android/vending/billing/GermanDirectDebitActivity$1;
.super Ljava/lang/Object;
.source "GermanDirectDebitActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/billing/GermanDirectDebitActivity;->displayCheckoutTosDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/billing/GermanDirectDebitActivity;


# direct methods
.method constructor <init>(Lcom/android/vending/billing/GermanDirectDebitActivity;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/vending/billing/GermanDirectDebitActivity$1;->this$0:Lcom/android/vending/billing/GermanDirectDebitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    .line 305
    packed-switch p2, :pswitch_data_0

    .line 317
    :goto_0
    return-void

    .line 307
    :pswitch_0
    iget-object v0, p0, Lcom/android/vending/billing/GermanDirectDebitActivity$1;->this$0:Lcom/android/vending/billing/GermanDirectDebitActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/vending/billing/GermanDirectDebitActivity;->access$002(Lcom/android/vending/billing/GermanDirectDebitActivity;Z)Z

    goto :goto_0

    .line 311
    :pswitch_1
    iget-object v0, p0, Lcom/android/vending/billing/GermanDirectDebitActivity$1;->this$0:Lcom/android/vending/billing/GermanDirectDebitActivity;

    invoke-static {v0, v1}, Lcom/android/vending/billing/GermanDirectDebitActivity;->access$002(Lcom/android/vending/billing/GermanDirectDebitActivity;Z)Z

    .line 312
    iget-object v0, p0, Lcom/android/vending/billing/GermanDirectDebitActivity$1;->this$0:Lcom/android/vending/billing/GermanDirectDebitActivity;

    invoke-static {v0}, Lcom/android/vending/billing/GermanDirectDebitActivity;->access$100(Lcom/android/vending/billing/GermanDirectDebitActivity;)V

    .line 313
    iget-object v0, p0, Lcom/android/vending/billing/GermanDirectDebitActivity$1;->this$0:Lcom/android/vending/billing/GermanDirectDebitActivity;

    invoke-virtual {v0, v1}, Lcom/android/vending/billing/GermanDirectDebitActivity;->setResult(I)V

    .line 314
    iget-object v0, p0, Lcom/android/vending/billing/GermanDirectDebitActivity$1;->this$0:Lcom/android/vending/billing/GermanDirectDebitActivity;

    invoke-virtual {v0}, Lcom/android/vending/billing/GermanDirectDebitActivity;->finish()V

    goto :goto_0

    .line 305
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
