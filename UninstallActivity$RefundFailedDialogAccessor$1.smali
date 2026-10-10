.class Lcom/android/vending/UninstallActivity$RefundFailedDialogAccessor$1;
.super Ljava/lang/Object;
.source "UninstallActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/UninstallActivity$RefundFailedDialogAccessor;->create()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/vending/UninstallActivity$RefundFailedDialogAccessor;


# direct methods
.method constructor <init>(Lcom/android/vending/UninstallActivity$RefundFailedDialogAccessor;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/vending/UninstallActivity$RefundFailedDialogAccessor$1;->this$1:Lcom/android/vending/UninstallActivity$RefundFailedDialogAccessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/vending/UninstallActivity$RefundFailedDialogAccessor$1;->this$1:Lcom/android/vending/UninstallActivity$RefundFailedDialogAccessor;

    iget-object v0, v0, Lcom/android/vending/UninstallActivity$RefundFailedDialogAccessor;->this$0:Lcom/android/vending/UninstallActivity;

    invoke-static {v0}, Lcom/android/vending/UninstallActivity;->access$500(Lcom/android/vending/UninstallActivity;)V

    .line 319
    return-void
.end method
