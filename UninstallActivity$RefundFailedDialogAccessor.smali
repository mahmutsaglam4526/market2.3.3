.class Lcom/android/vending/UninstallActivity$RefundFailedDialogAccessor;
.super Ljava/lang/Object;
.source "UninstallActivity.java"

# interfaces
.implements Lcom/android/vending/controller/DialogAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/UninstallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefundFailedDialogAccessor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/UninstallActivity;


# direct methods
.method private constructor <init>(Lcom/android/vending/UninstallActivity;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/vending/UninstallActivity$RefundFailedDialogAccessor;->this$0:Lcom/android/vending/UninstallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vending/UninstallActivity;Lcom/android/vending/UninstallActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/vending/UninstallActivity;
    .param p2, "x1"    # Lcom/android/vending/UninstallActivity$1;

    .prologue
    .line 303
    invoke-direct {p0, p1}, Lcom/android/vending/UninstallActivity$RefundFailedDialogAccessor;-><init>(Lcom/android/vending/UninstallActivity;)V

    return-void
.end method


# virtual methods
.method public create()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 306
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/vending/UninstallActivity$RefundFailedDialogAccessor;->this$0:Lcom/android/vending/UninstallActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060162

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060164

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06002b

    new-instance v2, Lcom/android/vending/UninstallActivity$RefundFailedDialogAccessor$2;

    invoke-direct {v2, p0}, Lcom/android/vending/UninstallActivity$RefundFailedDialogAccessor$2;-><init>(Lcom/android/vending/UninstallActivity$RefundFailedDialogAccessor;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060163

    new-instance v2, Lcom/android/vending/UninstallActivity$RefundFailedDialogAccessor$1;

    invoke-direct {v2, p0}, Lcom/android/vending/UninstallActivity$RefundFailedDialogAccessor$1;-><init>(Lcom/android/vending/UninstallActivity$RefundFailedDialogAccessor;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public prepare(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 325
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;I)V
    .locals 0
    .param p1, "icicle"    # Landroid/os/Bundle;
    .param p2, "id"    # I

    .prologue
    .line 327
    return-void
.end method

.method public saveState(Landroid/os/Bundle;I)V
    .locals 0
    .param p1, "icicle"    # Landroid/os/Bundle;
    .param p2, "id"    # I

    .prologue
    .line 329
    return-void
.end method
