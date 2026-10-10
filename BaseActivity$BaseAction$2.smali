.class Lcom/android/vending/BaseActivity$BaseAction$2;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/BaseActivity$BaseAction;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/BaseActivity$BaseAction;

.field final synthetic val$finalAuthFailure:Z

.field final synthetic val$finalException:Ljava/lang/Throwable;

.field final synthetic val$finalSuccess:Z


# direct methods
.method constructor <init>(Lcom/android/vending/BaseActivity$BaseAction;ZZLjava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 1799
    iput-object p1, p0, Lcom/android/vending/BaseActivity$BaseAction$2;->this$0:Lcom/android/vending/BaseActivity$BaseAction;

    iput-boolean p2, p0, Lcom/android/vending/BaseActivity$BaseAction$2;->val$finalAuthFailure:Z

    iput-boolean p3, p0, Lcom/android/vending/BaseActivity$BaseAction$2;->val$finalSuccess:Z

    iput-object p4, p0, Lcom/android/vending/BaseActivity$BaseAction$2;->val$finalException:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 1802
    :try_start_0
    iget-boolean v3, p0, Lcom/android/vending/BaseActivity$BaseAction$2;->val$finalAuthFailure:Z

    if-eqz v3, :cond_1

    .line 1803
    const-string v3, "Invalidating auth token."

    invoke-static {v3}, Lcom/android/vending/util/Log;->i(Ljava/lang/String;)V

    .line 1816
    iget-object v3, p0, Lcom/android/vending/BaseActivity$BaseAction$2;->this$0:Lcom/android/vending/BaseActivity$BaseAction;

    iget-object v3, v3, Lcom/android/vending/BaseActivity$BaseAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    sget-object v4, Lcom/android/vending/BaseActivity$AuthService;->ANDROID:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {v3, v4}, Lcom/android/vending/BaseActivity;->invalidateAuthToken(Lcom/android/vending/BaseActivity$AuthService;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1830
    :goto_0
    iget-object v3, p0, Lcom/android/vending/BaseActivity$BaseAction$2;->this$0:Lcom/android/vending/BaseActivity$BaseAction;

    invoke-static {v3}, Lcom/android/vending/BaseActivity$BaseAction;->access$200(Lcom/android/vending/BaseActivity$BaseAction;)J

    move-result-wide v3

    cmp-long v3, v3, v6

    if-eqz v3, :cond_0

    .line 1831
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1832
    .local v0, "endTime":J
    iget-object v3, p0, Lcom/android/vending/BaseActivity$BaseAction$2;->this$0:Lcom/android/vending/BaseActivity$BaseAction;

    invoke-static {v3}, Lcom/android/vending/BaseActivity$BaseAction;->access$200(Lcom/android/vending/BaseActivity$BaseAction;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/vending/BaseActivity$BaseAction$2;->this$0:Lcom/android/vending/BaseActivity$BaseAction;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v0, v1, v5}, Lcom/android/vending/util/Log;->logElapsed(JJLjava/lang/String;)V

    .line 1834
    iget-object v3, p0, Lcom/android/vending/BaseActivity$BaseAction$2;->this$0:Lcom/android/vending/BaseActivity$BaseAction;

    invoke-static {v3, v6, v7}, Lcom/android/vending/BaseActivity$BaseAction;->access$202(Lcom/android/vending/BaseActivity$BaseAction;J)J

    .line 1836
    .end local v0    # "endTime":J
    :cond_0
    iget-object v3, p0, Lcom/android/vending/BaseActivity$BaseAction$2;->this$0:Lcom/android/vending/BaseActivity$BaseAction;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/vending/util/Log;->end(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1837
    return-void

    .line 1817
    :cond_1
    :try_start_1
    iget-boolean v3, p0, Lcom/android/vending/BaseActivity$BaseAction$2;->val$finalSuccess:Z

    if-eqz v3, :cond_2

    .line 1818
    iget-object v3, p0, Lcom/android/vending/BaseActivity$BaseAction$2;->this$0:Lcom/android/vending/BaseActivity$BaseAction;

    iget-object v3, v3, Lcom/android/vending/BaseActivity$BaseAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/vending/BaseActivity;->mExecutingAction:Lcom/android/vending/BaseActivity$BackendAction;

    .line 1819
    iget-object v3, p0, Lcom/android/vending/BaseActivity$BaseAction$2;->this$0:Lcom/android/vending/BaseActivity$BaseAction;

    invoke-virtual {v3}, Lcom/android/vending/BaseActivity$BaseAction;->hideWaitingUi()V

    .line 1820
    iget-object v3, p0, Lcom/android/vending/BaseActivity$BaseAction$2;->this$0:Lcom/android/vending/BaseActivity$BaseAction;

    invoke-static {v3}, Lcom/android/vending/BaseActivity$BaseAction;->access$100(Lcom/android/vending/BaseActivity$BaseAction;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1825
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1826
    .local v2, "t":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/vending/BaseActivity$BaseAction$2;->this$0:Lcom/android/vending/BaseActivity$BaseAction;

    invoke-virtual {v3}, Lcom/android/vending/BaseActivity$BaseAction;->hideWaitingUi()V

    .line 1827
    iget-object v3, p0, Lcom/android/vending/BaseActivity$BaseAction$2;->this$0:Lcom/android/vending/BaseActivity$BaseAction;

    invoke-virtual {v3, v2}, Lcom/android/vending/BaseActivity$BaseAction;->displayErrorUi(Ljava/lang/Throwable;)V

    .line 1828
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uncaught runtime error in onComplete(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1822
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/vending/BaseActivity$BaseAction$2;->this$0:Lcom/android/vending/BaseActivity$BaseAction;

    invoke-virtual {v3}, Lcom/android/vending/BaseActivity$BaseAction;->hideWaitingUi()V

    .line 1823
    iget-object v3, p0, Lcom/android/vending/BaseActivity$BaseAction$2;->this$0:Lcom/android/vending/BaseActivity$BaseAction;

    iget-object v4, p0, Lcom/android/vending/BaseActivity$BaseAction$2;->val$finalException:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Lcom/android/vending/BaseActivity$BaseAction;->displayErrorUi(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
