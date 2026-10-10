.class Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver$1;
.super Ljava/lang/Object;
.source "InAppBuyPageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->postCloseActivity(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;


# direct methods
.method constructor <init>(Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver$1;->this$1:Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver$1;->this$1:Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;

    invoke-static {v0}, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->access$200(Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;)V

    .line 167
    return-void
.end method
