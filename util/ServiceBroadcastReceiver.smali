.class public abstract Lcom/android/vending/util/ServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ServiceBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract handleIntent(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public needWakeLock()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/vending/util/ServiceBroadcastReceiver;->setResultCode(I)V

    .line 43
    :cond_0
    new-instance v0, Lcom/android/vending/util/ServiceBroadcastReceiver$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/vending/util/ServiceBroadcastReceiver$1;-><init>(Lcom/android/vending/util/ServiceBroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    .line 49
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/android/vending/util/ServiceBroadcastReceiver;->needWakeLock()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    new-instance v1, Lcom/android/vending/util/WakelockedRunnable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0}, Lcom/android/vending/util/WakelockedRunnable;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Runnable;)V

    .end local v0    # "runnable":Ljava/lang/Runnable;
    .local v1, "runnable":Ljava/lang/Runnable;
    move-object v0, v1

    .line 53
    .end local v1    # "runnable":Ljava/lang/Runnable;
    .restart local v0    # "runnable":Ljava/lang/Runnable;
    :cond_1
    invoke-static {}, Lcom/android/vending/util/WorkService;->get()Lcom/android/vending/util/WorkService$Facade;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/android/vending/util/WorkService$Facade;->submit(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 55
    return-void
.end method
