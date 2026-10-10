.class Lcom/android/vending/BaseActivity$BackgroundDataDialogAccessor$2;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/BaseActivity$BackgroundDataDialogAccessor;->create()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/vending/BaseActivity$BackgroundDataDialogAccessor;


# direct methods
.method constructor <init>(Lcom/android/vending/BaseActivity$BackgroundDataDialogAccessor;)V
    .locals 0

    .prologue
    .line 2077
    iput-object p1, p0, Lcom/android/vending/BaseActivity$BackgroundDataDialogAccessor$2;->this$1:Lcom/android/vending/BaseActivity$BackgroundDataDialogAccessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2080
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2081
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2082
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2083
    iget-object v1, p0, Lcom/android/vending/BaseActivity$BackgroundDataDialogAccessor$2;->this$1:Lcom/android/vending/BaseActivity$BackgroundDataDialogAccessor;

    iget-object v1, v1, Lcom/android/vending/BaseActivity$BackgroundDataDialogAccessor;->this$0:Lcom/android/vending/BaseActivity;

    invoke-virtual {v1, v0}, Lcom/android/vending/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 2084
    return-void
.end method
