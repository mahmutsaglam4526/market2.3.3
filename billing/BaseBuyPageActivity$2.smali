.class Lcom/android/vending/billing/BaseBuyPageActivity$2;
.super Ljava/lang/Object;
.source "BaseBuyPageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/billing/BaseBuyPageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/billing/BaseBuyPageActivity;


# direct methods
.method constructor <init>(Lcom/android/vending/billing/BaseBuyPageActivity;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/vending/billing/BaseBuyPageActivity$2;->this$0:Lcom/android/vending/billing/BaseBuyPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity$2;->this$0:Lcom/android/vending/billing/BaseBuyPageActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/vending/billing/BaseBuyPageActivity;->setResult(I)V

    .line 268
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity$2;->this$0:Lcom/android/vending/billing/BaseBuyPageActivity;

    invoke-virtual {v0}, Lcom/android/vending/billing/BaseBuyPageActivity;->finish()V

    .line 269
    return-void
.end method
