.class Lcom/android/vending/SettingsActivity$PinCodeAccessor$PinCodeDialog$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/SettingsActivity$PinCodeAccessor$PinCodeDialog;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/vending/SettingsActivity$PinCodeAccessor$PinCodeDialog;


# direct methods
.method constructor <init>(Lcom/android/vending/SettingsActivity$PinCodeAccessor$PinCodeDialog;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/vending/SettingsActivity$PinCodeAccessor$PinCodeDialog$1;->this$2:Lcom/android/vending/SettingsActivity$PinCodeAccessor$PinCodeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/vending/SettingsActivity$PinCodeAccessor$PinCodeDialog$1;->this$2:Lcom/android/vending/SettingsActivity$PinCodeAccessor$PinCodeDialog;

    iget-object v0, v0, Lcom/android/vending/SettingsActivity$PinCodeAccessor$PinCodeDialog;->this$1:Lcom/android/vending/SettingsActivity$PinCodeAccessor;

    invoke-static {v0}, Lcom/android/vending/SettingsActivity$PinCodeAccessor;->access$300(Lcom/android/vending/SettingsActivity$PinCodeAccessor;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/SettingsActivity$PinCodeAccessor$PinCodeDialog$1;->this$2:Lcom/android/vending/SettingsActivity$PinCodeAccessor$PinCodeDialog;

    iget-object v1, v1, Lcom/android/vending/SettingsActivity$PinCodeAccessor$PinCodeDialog;->this$1:Lcom/android/vending/SettingsActivity$PinCodeAccessor;

    invoke-static {v1}, Lcom/android/vending/SettingsActivity$PinCodeAccessor;->access$400(Lcom/android/vending/SettingsActivity$PinCodeAccessor;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 385
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 388
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 391
    return-void
.end method
