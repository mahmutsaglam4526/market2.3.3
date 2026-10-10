.class Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor;
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
    name = "ReportAppDialogAccessor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/UninstallActivity;


# direct methods
.method private constructor <init>(Lcom/android/vending/UninstallActivity;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor;->this$0:Lcom/android/vending/UninstallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vending/UninstallActivity;Lcom/android/vending/UninstallActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/vending/UninstallActivity;
    .param p2, "x1"    # Lcom/android/vending/UninstallActivity$1;

    .prologue
    .line 401
    invoke-direct {p0, p1}, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor;-><init>(Lcom/android/vending/UninstallActivity;)V

    return-void
.end method


# virtual methods
.method public create()Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 403
    new-instance v0, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog;

    iget-object v1, p0, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor;->this$0:Lcom/android/vending/UninstallActivity;

    invoke-direct {v0, p0, v1}, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog;-><init>(Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor;Landroid/content/Context;)V

    return-object v0
.end method

.method public prepare(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 407
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;I)V
    .locals 0
    .param p1, "icicle"    # Landroid/os/Bundle;
    .param p2, "id"    # I

    .prologue
    .line 409
    return-void
.end method

.method public saveState(Landroid/os/Bundle;I)V
    .locals 0
    .param p1, "icicle"    # Landroid/os/Bundle;
    .param p2, "id"    # I

    .prologue
    .line 411
    return-void
.end method
