.class Lcom/android/vending/UninstallActivity$RefundAction$1;
.super Ljava/lang/Object;
.source "UninstallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/UninstallActivity$RefundAction;->onRequestComplete(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/vending/UninstallActivity$RefundAction;

.field final synthetic val$refundSuccessFinal:Z


# direct methods
.method constructor <init>(Lcom/android/vending/UninstallActivity$RefundAction;Z)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/android/vending/UninstallActivity$RefundAction$1;->this$1:Lcom/android/vending/UninstallActivity$RefundAction;

    iput-boolean p2, p0, Lcom/android/vending/UninstallActivity$RefundAction$1;->val$refundSuccessFinal:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 385
    iget-boolean v0, p0, Lcom/android/vending/UninstallActivity$RefundAction$1;->val$refundSuccessFinal:Z

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/vending/UninstallActivity$RefundAction$1;->this$1:Lcom/android/vending/UninstallActivity$RefundAction;

    iget-object v0, v0, Lcom/android/vending/UninstallActivity$RefundAction;->this$0:Lcom/android/vending/UninstallActivity;

    invoke-static {v0}, Lcom/android/vending/UninstallActivity;->access$800(Lcom/android/vending/UninstallActivity;)Lcom/android/vending/api/AssetService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/UninstallActivity$RefundAction$1;->this$1:Lcom/android/vending/UninstallActivity$RefundAction;

    iget-object v1, v1, Lcom/android/vending/UninstallActivity$RefundAction;->this$0:Lcom/android/vending/UninstallActivity;

    iget-object v1, v1, Lcom/android/vending/UninstallActivity;->mServerAssetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/vending/api/AssetService;->invalidateById(Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/android/vending/UninstallActivity$RefundAction$1;->this$1:Lcom/android/vending/UninstallActivity$RefundAction;

    iget-object v0, v0, Lcom/android/vending/UninstallActivity$RefundAction;->this$0:Lcom/android/vending/UninstallActivity;

    invoke-static {v0}, Lcom/android/vending/UninstallActivity;->access$500(Lcom/android/vending/UninstallActivity;)V

    .line 391
    :goto_0
    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/android/vending/UninstallActivity$RefundAction$1;->this$1:Lcom/android/vending/UninstallActivity$RefundAction;

    iget-object v0, v0, Lcom/android/vending/UninstallActivity$RefundAction;->this$0:Lcom/android/vending/UninstallActivity;

    invoke-static {v0}, Lcom/android/vending/UninstallActivity;->access$900(Lcom/android/vending/UninstallActivity;)V

    goto :goto_0
.end method
