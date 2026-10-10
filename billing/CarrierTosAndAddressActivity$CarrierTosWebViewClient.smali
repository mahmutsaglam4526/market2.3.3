.class Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "CarrierTosAndAddressActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/billing/CarrierTosAndAddressActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CarrierTosWebViewClient"
.end annotation


# instance fields
.field private final mAcceptButton:Landroid/widget/Button;

.field private final mProgress:Landroid/view/View;

.field private mReceivedError:Z

.field private final mTosDisplayView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/vending/billing/CarrierTosAndAddressActivity;


# direct methods
.method public constructor <init>(Lcom/android/vending/billing/CarrierTosAndAddressActivity;Landroid/view/View;Landroid/view/View;Landroid/widget/Button;)V
    .locals 1
    .param p2, "progress"    # Landroid/view/View;
    .param p3, "tosDisplayView"    # Landroid/view/View;
    .param p4, "acceptButton"    # Landroid/widget/Button;

    .prologue
    .line 630
    iput-object p1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosWebViewClient;->this$0:Lcom/android/vending/billing/CarrierTosAndAddressActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 631
    iput-object p2, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosWebViewClient;->mProgress:Landroid/view/View;

    .line 632
    iput-object p3, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosWebViewClient;->mTosDisplayView:Landroid/view/View;

    .line 633
    iput-object p4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosWebViewClient;->mAcceptButton:Landroid/widget/Button;

    .line 634
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosWebViewClient;->mReceivedError:Z

    .line 635
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 657
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 658
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosWebViewClient;->mTosDisplayView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 659
    iget-boolean v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosWebViewClient;->mReceivedError:Z

    if-nez v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosWebViewClient;->mAcceptButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosWebViewClient;->mProgress:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 663
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Web error: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    .line 651
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosWebViewClient;->mReceivedError:Z

    .line 652
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosWebViewClient;->this$0:Lcom/android/vending/billing/CarrierTosAndAddressActivity;

    invoke-static {v0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->access$300(Lcom/android/vending/billing/CarrierTosAndAddressActivity;)V

    .line 653
    return-void
.end method
