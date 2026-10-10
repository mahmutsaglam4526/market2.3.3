.class Lcom/android/vending/util/WakelockedRunnable;
.super Ljava/lang/Object;
.source "WakelockedRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mName:Ljava/lang/String;

.field private final mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/vending/util/WakelockedRunnable;->mName:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/android/vending/util/WakelockedRunnable;->mContext:Landroid/content/Context;

    .line 24
    iput-object p3, p0, Lcom/android/vending/util/WakelockedRunnable;->mRunnable:Ljava/lang/Runnable;

    .line 25
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 28
    iget-object v2, p0, Lcom/android/vending/util/WakelockedRunnable;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 29
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/vending/util/WakelockedRunnable;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 31
    .local v1, "wakelock":Landroid/os/PowerManager$WakeLock;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 32
    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 34
    :try_start_0
    iget-object v2, p0, Lcom/android/vending/util/WakelockedRunnable;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 38
    return-void

    .line 36
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2
.end method
