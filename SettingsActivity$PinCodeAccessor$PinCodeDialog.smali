.class Lcom/android/vending/SettingsActivity$PinCodeAccessor$PinCodeDialog;
.super Landroid/app/AlertDialog;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/SettingsActivity$PinCodeAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PinCodeDialog"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/vending/SettingsActivity$PinCodeAccessor;


# direct methods
.method public constructor <init>(Lcom/android/vending/SettingsActivity$PinCodeAccessor;)V
    .locals 4

    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/vending/SettingsActivity$PinCodeAccessor$PinCodeDialog;->this$1:Lcom/android/vending/SettingsActivity$PinCodeAccessor;

    .line 342
    invoke-static {p1}, Lcom/android/vending/SettingsActivity$PinCodeAccessor;->access$000(Lcom/android/vending/SettingsActivity$PinCodeAccessor;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 344
    const v1, 0x7f030030

    invoke-static {p1}, Lcom/android/vending/SettingsActivity$PinCodeAccessor;->access$000(Lcom/android/vending/SettingsActivity$PinCodeAccessor;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/vending/util/Util;->inflateView(ILandroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 345
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0700bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-static {p1, v1}, Lcom/android/vending/SettingsActivity$PinCodeAccessor;->access$102(Lcom/android/vending/SettingsActivity$PinCodeAccessor;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 346
    invoke-virtual {p0, v0}, Lcom/android/vending/SettingsActivity$PinCodeAccessor$PinCodeDialog;->setView(Landroid/view/View;)V

    .line 348
    const v1, 0x7f02004f

    invoke-virtual {p0, v1}, Lcom/android/vending/SettingsActivity$PinCodeAccessor$PinCodeDialog;->setIcon(I)V

    .line 349
    const v1, 0x7f0600b5

    invoke-virtual {p0, v1}, Lcom/android/vending/SettingsActivity$PinCodeAccessor$PinCodeDialog;->setTitle(I)V

    .line 350
    const/4 v1, -0x1

    iget-object v2, p1, Lcom/android/vending/SettingsActivity$PinCodeAccessor;->this$0:Lcom/android/vending/SettingsActivity;

    const v3, 0x7f06002b

    invoke-virtual {v2, v3}, Lcom/android/vending/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/vending/SettingsActivity$PinCodeAccessor$PinCodeDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 352
    const/4 v1, -0x2

    iget-object v2, p1, Lcom/android/vending/SettingsActivity$PinCodeAccessor;->this$0:Lcom/android/vending/SettingsActivity;

    const v3, 0x7f06002c

    invoke-virtual {v2, v3}, Lcom/android/vending/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/vending/SettingsActivity$PinCodeAccessor$PinCodeDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 354
    const/4 v1, -0x3

    iget-object v2, p1, Lcom/android/vending/SettingsActivity$PinCodeAccessor;->this$0:Lcom/android/vending/SettingsActivity;

    const v3, 0x7f0600b9

    invoke-virtual {v2, v3}, Lcom/android/vending/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/vending/SettingsActivity$PinCodeAccessor$PinCodeDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 356
    return-void
.end method


# virtual methods
.method protected onStart()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 360
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 362
    const v3, 0x7f0700bb

    invoke-virtual {p0, v3}, Lcom/android/vending/SettingsActivity$PinCodeAccessor$PinCodeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 364
    .local v0, "message":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/vending/SettingsActivity$PinCodeAccessor$PinCodeDialog;->this$1:Lcom/android/vending/SettingsActivity$PinCodeAccessor;

    iget-object v3, v3, Lcom/android/vending/SettingsActivity$PinCodeAccessor;->this$0:Lcom/android/vending/SettingsActivity;

    invoke-static {v3}, Lcom/android/vending/SettingsActivity;->access$200(Lcom/android/vending/SettingsActivity;)I

    move-result v3

    if-nez v3, :cond_0

    .line 365
    const v2, 0x7f0600b5

    .line 366
    .local v2, "titleId":I
    const v1, 0x7f0600b2

    .line 374
    .local v1, "messageId":I
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/vending/SettingsActivity$PinCodeAccessor$PinCodeDialog;->setTitle(I)V

    .line 375
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 376
    const/4 v3, -0x3

    invoke-virtual {p0, v3}, Lcom/android/vending/SettingsActivity$PinCodeAccessor$PinCodeDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    iget-object v4, p0, Lcom/android/vending/SettingsActivity$PinCodeAccessor$PinCodeDialog;->this$1:Lcom/android/vending/SettingsActivity$PinCodeAccessor;

    iget-object v4, v4, Lcom/android/vending/SettingsActivity$PinCodeAccessor;->this$0:Lcom/android/vending/SettingsActivity;

    invoke-static {v4}, Lcom/android/vending/SettingsActivity;->access$200(Lcom/android/vending/SettingsActivity;)I

    move-result v4

    if-ne v4, v6, :cond_2

    move v4, v5

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 378
    iget-object v3, p0, Lcom/android/vending/SettingsActivity$PinCodeAccessor$PinCodeDialog;->this$1:Lcom/android/vending/SettingsActivity$PinCodeAccessor;

    invoke-static {v3}, Lcom/android/vending/SettingsActivity$PinCodeAccessor;->access$100(Lcom/android/vending/SettingsActivity$PinCodeAccessor;)Landroid/widget/EditText;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v3, p0, Lcom/android/vending/SettingsActivity$PinCodeAccessor$PinCodeDialog;->this$1:Lcom/android/vending/SettingsActivity$PinCodeAccessor;

    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/android/vending/SettingsActivity$PinCodeAccessor$PinCodeDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/vending/SettingsActivity$PinCodeAccessor;->access$302(Lcom/android/vending/SettingsActivity$PinCodeAccessor;Landroid/widget/Button;)Landroid/widget/Button;

    .line 381
    iget-object v3, p0, Lcom/android/vending/SettingsActivity$PinCodeAccessor$PinCodeDialog;->this$1:Lcom/android/vending/SettingsActivity$PinCodeAccessor;

    invoke-static {v3}, Lcom/android/vending/SettingsActivity$PinCodeAccessor;->access$300(Lcom/android/vending/SettingsActivity$PinCodeAccessor;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 382
    iget-object v3, p0, Lcom/android/vending/SettingsActivity$PinCodeAccessor$PinCodeDialog;->this$1:Lcom/android/vending/SettingsActivity$PinCodeAccessor;

    invoke-static {v3}, Lcom/android/vending/SettingsActivity$PinCodeAccessor;->access$100(Lcom/android/vending/SettingsActivity$PinCodeAccessor;)Landroid/widget/EditText;

    move-result-object v3

    new-instance v4, Lcom/android/vending/SettingsActivity$PinCodeAccessor$PinCodeDialog$1;

    invoke-direct {v4, p0}, Lcom/android/vending/SettingsActivity$PinCodeAccessor$PinCodeDialog$1;-><init>(Lcom/android/vending/SettingsActivity$PinCodeAccessor$PinCodeDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 393
    return-void

    .line 367
    .end local v1    # "messageId":I
    .end local v2    # "titleId":I
    :cond_0
    iget-object v3, p0, Lcom/android/vending/SettingsActivity$PinCodeAccessor$PinCodeDialog;->this$1:Lcom/android/vending/SettingsActivity$PinCodeAccessor;

    iget-object v3, v3, Lcom/android/vending/SettingsActivity$PinCodeAccessor;->this$0:Lcom/android/vending/SettingsActivity;

    invoke-static {v3}, Lcom/android/vending/SettingsActivity;->access$200(Lcom/android/vending/SettingsActivity;)I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 368
    const v2, 0x7f0600b3

    .line 369
    .restart local v2    # "titleId":I
    const v1, 0x7f0600b4

    .restart local v1    # "messageId":I
    goto :goto_0

    .line 371
    .end local v1    # "messageId":I
    .end local v2    # "titleId":I
    :cond_1
    const v2, 0x7f0600b7

    .line 372
    .restart local v2    # "titleId":I
    const v1, 0x7f0600b8

    .restart local v1    # "messageId":I
    goto :goto_0

    .line 376
    :cond_2
    const/16 v4, 0x8

    goto :goto_1
.end method
