.class Lcom/android/vending/compat/AccountManagerHelper$1$3;
.super Ljava/lang/Object;
.source "AccountManagerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/compat/AccountManagerHelper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/compat/AccountManagerHelper$1;


# direct methods
.method constructor <init>(Lcom/android/vending/compat/AccountManagerHelper$1;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/vending/compat/AccountManagerHelper$1$3;->this$0:Lcom/android/vending/compat/AccountManagerHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/vending/compat/AccountManagerHelper$1$3;->this$0:Lcom/android/vending/compat/AccountManagerHelper$1;

    iget-object v0, v0, Lcom/android/vending/compat/AccountManagerHelper$1;->val$base:Lcom/android/vending/BaseActivity;

    iget-object v1, p0, Lcom/android/vending/compat/AccountManagerHelper$1$3;->this$0:Lcom/android/vending/compat/AccountManagerHelper$1;

    iget v1, v1, Lcom/android/vending/compat/AccountManagerHelper$1;->val$requestCode:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/vending/BaseActivity;->onResult(IILandroid/content/Intent;)V

    .line 119
    return-void
.end method
