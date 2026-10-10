.class Lcom/android/vending/SettingsActivity$PinCodeAccessor;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/vending/controller/DialogAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PinCodeAccessor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/SettingsActivity$PinCodeAccessor$PinCodeDialog;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPinEntry:Landroid/widget/EditText;

.field private mPrimaryButton:Landroid/widget/Button;

.field final synthetic this$0:Lcom/android/vending/SettingsActivity;


# direct methods
.method public constructor <init>(Lcom/android/vending/SettingsActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 400
    iput-object p1, p0, Lcom/android/vending/SettingsActivity$PinCodeAccessor;->this$0:Lcom/android/vending/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    iput-object p2, p0, Lcom/android/vending/SettingsActivity$PinCodeAccessor;->mContext:Landroid/content/Context;

    .line 402
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/SettingsActivity$PinCodeAccessor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/SettingsActivity$PinCodeAccessor;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/vending/SettingsActivity$PinCodeAccessor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/vending/SettingsActivity$PinCodeAccessor;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/SettingsActivity$PinCodeAccessor;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/vending/SettingsActivity$PinCodeAccessor;->mPinEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/vending/SettingsActivity$PinCodeAccessor;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/SettingsActivity$PinCodeAccessor;
    .param p1, "x1"    # Landroid/widget/EditText;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/android/vending/SettingsActivity$PinCodeAccessor;->mPinEntry:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/vending/SettingsActivity$PinCodeAccessor;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/SettingsActivity$PinCodeAccessor;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/vending/SettingsActivity$PinCodeAccessor;->mPrimaryButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/vending/SettingsActivity$PinCodeAccessor;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/SettingsActivity$PinCodeAccessor;
    .param p1, "x1"    # Landroid/widget/Button;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/android/vending/SettingsActivity$PinCodeAccessor;->mPrimaryButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/vending/SettingsActivity$PinCodeAccessor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/SettingsActivity$PinCodeAccessor;

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/android/vending/SettingsActivity$PinCodeAccessor;->isPinValid()Z

    move-result v0

    return v0
.end method

.method private isPinValid()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 432
    iget-object v2, p0, Lcom/android/vending/SettingsActivity$PinCodeAccessor;->mPinEntry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, "pin":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    .line 436
    :goto_0
    return v2

    :cond_0
    move v2, v4

    .line 434
    goto :goto_0

    .line 435
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, "e":Ljava/lang/NumberFormatException;
    move v2, v4

    .line 436
    goto :goto_0
.end method


# virtual methods
.method public create()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 405
    new-instance v0, Lcom/android/vending/SettingsActivity$PinCodeAccessor$PinCodeDialog;

    invoke-direct {v0, p0}, Lcom/android/vending/SettingsActivity$PinCodeAccessor$PinCodeDialog;-><init>(Lcom/android/vending/SettingsActivity$PinCodeAccessor;)V

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 419
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 420
    iget-object v0, p0, Lcom/android/vending/SettingsActivity$PinCodeAccessor;->this$0:Lcom/android/vending/SettingsActivity;

    iget-object v1, p0, Lcom/android/vending/SettingsActivity$PinCodeAccessor;->mPinEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/vending/SettingsActivity;->access$502(Lcom/android/vending/SettingsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 421
    iget-object v0, p0, Lcom/android/vending/SettingsActivity$PinCodeAccessor;->this$0:Lcom/android/vending/SettingsActivity;

    invoke-static {v0}, Lcom/android/vending/SettingsActivity;->access$200(Lcom/android/vending/SettingsActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 422
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->PIN_CODE:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    iget-object v1, p0, Lcom/android/vending/SettingsActivity$PinCodeAccessor;->this$0:Lcom/android/vending/SettingsActivity;

    invoke-static {v1}, Lcom/android/vending/SettingsActivity;->access$500(Lcom/android/vending/SettingsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/android/vending/SettingsActivity$PinCodeAccessor;->this$0:Lcom/android/vending/SettingsActivity;

    invoke-static {v0}, Lcom/android/vending/SettingsActivity;->access$600(Lcom/android/vending/SettingsActivity;)V

    .line 429
    :cond_1
    :goto_0
    return-void

    .line 425
    :cond_2
    const/4 v0, -0x3

    if-ne p2, v0, :cond_1

    .line 426
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->PIN_CODE:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->remove()V

    .line 427
    iget-object v0, p0, Lcom/android/vending/SettingsActivity$PinCodeAccessor;->this$0:Lcom/android/vending/SettingsActivity;

    invoke-static {v0}, Lcom/android/vending/SettingsActivity;->access$600(Lcom/android/vending/SettingsActivity;)V

    goto :goto_0
.end method

.method public prepare(Landroid/app/Dialog;)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 409
    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    move-object v1, v0

    .line 410
    .local v1, "alertDialog":Landroid/app/AlertDialog;
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;I)V
    .locals 0
    .param p1, "icicle"    # Landroid/os/Bundle;
    .param p2, "id"    # I

    .prologue
    .line 416
    return-void
.end method

.method public saveState(Landroid/os/Bundle;I)V
    .locals 0
    .param p1, "icicle"    # Landroid/os/Bundle;
    .param p2, "id"    # I

    .prologue
    .line 413
    return-void
.end method
