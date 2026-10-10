.class Lcom/android/vending/BaseActivity$NoAccountsDialogAccessor;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/android/vending/controller/DialogAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoAccountsDialogAccessor"
.end annotation


# instance fields
.field private mCallback:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/vending/BaseActivity;


# direct methods
.method public constructor <init>(Lcom/android/vending/BaseActivity;Ljava/lang/Runnable;)V
    .locals 0
    .param p2, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 2039
    iput-object p1, p0, Lcom/android/vending/BaseActivity$NoAccountsDialogAccessor;->this$0:Lcom/android/vending/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2040
    iput-object p2, p0, Lcom/android/vending/BaseActivity$NoAccountsDialogAccessor;->mCallback:Ljava/lang/Runnable;

    .line 2041
    return-void
.end method

.method static synthetic access$300(Lcom/android/vending/BaseActivity$NoAccountsDialogAccessor;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/BaseActivity$NoAccountsDialogAccessor;

    .prologue
    .line 2037
    iget-object v0, p0, Lcom/android/vending/BaseActivity$NoAccountsDialogAccessor;->mCallback:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public create()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 2044
    iget-object v1, p0, Lcom/android/vending/BaseActivity$NoAccountsDialogAccessor;->this$0:Lcom/android/vending/BaseActivity;

    invoke-virtual {v1}, Lcom/android/vending/BaseActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2045
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0601be

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f06002b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/vending/BaseActivity$NoAccountsDialogAccessor$1;

    invoke-direct {v3, p0}, Lcom/android/vending/BaseActivity$NoAccountsDialogAccessor$1;-><init>(Lcom/android/vending/BaseActivity$NoAccountsDialogAccessor;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f06002c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public prepare(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 2057
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;I)V
    .locals 0
    .param p1, "icicle"    # Landroid/os/Bundle;
    .param p2, "id"    # I

    .prologue
    .line 2059
    return-void
.end method

.method public saveState(Landroid/os/Bundle;I)V
    .locals 0
    .param p1, "icicle"    # Landroid/os/Bundle;
    .param p2, "id"    # I

    .prologue
    .line 2058
    return-void
.end method
