.class Lcom/android/vending/BaseActivity$3;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/BaseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/BaseActivity;


# direct methods
.method constructor <init>(Lcom/android/vending/BaseActivity;)V
    .locals 0

    .prologue
    .line 581
    iput-object p1, p0, Lcom/android/vending/BaseActivity$3;->this$0:Lcom/android/vending/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/vending/BaseActivity$3;->this$0:Lcom/android/vending/BaseActivity;

    invoke-virtual {v0}, Lcom/android/vending/BaseActivity;->finish()V

    .line 584
    return-void
.end method
