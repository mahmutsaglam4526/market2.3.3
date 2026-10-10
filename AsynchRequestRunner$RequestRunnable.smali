.class public Lcom/android/vending/AsynchRequestRunner$RequestRunnable;
.super Ljava/lang/Object;
.source "AsynchRequestRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AsynchRequestRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RequestRunnable"
.end annotation


# instance fields
.field private final mRequest:Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;

.field final synthetic this$0:Lcom/android/vending/AsynchRequestRunner;


# direct methods
.method public constructor <init>(Lcom/android/vending/AsynchRequestRunner;Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;)V
    .locals 0
    .param p2, "request"    # Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;->this$0:Lcom/android/vending/AsynchRequestRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p2, p0, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;->mRequest:Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;

    .line 28
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 31
    const/4 v5, 0x0

    .line 33
    .local v5, "requestException":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;->this$0:Lcom/android/vending/AsynchRequestRunner;

    invoke-virtual {v7}, Lcom/android/vending/AsynchRequestRunner;->getRetryIntervals()[I

    move-result-object v6

    .line 34
    .local v6, "retryPeriodMs":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v7, v6

    if-gt v4, v7, :cond_3

    .line 35
    const/4 v5, 0x0

    .line 37
    :try_start_0
    iget-object v7, p0, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;->mRequest:Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;

    iget-object v8, p0, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;->this$0:Lcom/android/vending/AsynchRequestRunner;

    invoke-static {v8}, Lcom/android/vending/AsynchRequestRunner;->access$000(Lcom/android/vending/AsynchRequestRunner;)Lcom/android/vending/api/RequestManager;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;->doRequest(Lcom/android/vending/api/RequestManager;)V
    :try_end_0
    .catch Lcom/android/vending/api/AuthFailureException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/vending/api/FatalCommunicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/vending/api/ApiException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    iget-object v7, p0, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;->this$0:Lcom/android/vending/AsynchRequestRunner;

    invoke-static {v7}, Lcom/android/vending/AsynchRequestRunner;->access$000(Lcom/android/vending/AsynchRequestRunner;)Lcom/android/vending/api/RequestManager;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 57
    iget-object v7, p0, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;->this$0:Lcom/android/vending/AsynchRequestRunner;

    invoke-static {v7}, Lcom/android/vending/AsynchRequestRunner;->access$000(Lcom/android/vending/AsynchRequestRunner;)Lcom/android/vending/api/RequestManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/vending/api/RequestManager;->reset()V

    .line 71
    :cond_0
    :goto_1
    return-void

    .line 39
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 40
    .local v1, "afe":Lcom/android/vending/api/AuthFailureException;
    :try_start_1
    const-string v7, "Got auth failure from server -> invalidating auth tokens."

    invoke-static {v7}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v2

    .line 42
    .local v2, "app":Lcom/android/vending/VendingApplication;
    sget-object v7, Lcom/android/vending/BaseActivity$AuthService;->ANDROID:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {v2, v7}, Lcom/android/vending/VendingApplication;->invalidateAuthTokenBlocking(Lcom/android/vending/BaseActivity$AuthService;)V

    .line 43
    sget-object v7, Lcom/android/vending/BaseActivity$AuthService;->ANDROID_SECURE:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {v2, v7}, Lcom/android/vending/VendingApplication;->invalidateAuthTokenBlocking(Lcom/android/vending/BaseActivity$AuthService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    move-object v5, v1

    .line 56
    iget-object v7, p0, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;->this$0:Lcom/android/vending/AsynchRequestRunner;

    invoke-static {v7}, Lcom/android/vending/AsynchRequestRunner;->access$000(Lcom/android/vending/AsynchRequestRunner;)Lcom/android/vending/api/RequestManager;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 57
    iget-object v7, p0, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;->this$0:Lcom/android/vending/AsynchRequestRunner;

    invoke-static {v7}, Lcom/android/vending/AsynchRequestRunner;->access$000(Lcom/android/vending/AsynchRequestRunner;)Lcom/android/vending/api/RequestManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/vending/api/RequestManager;->reset()V

    .line 62
    .end local v1    # "afe":Lcom/android/vending/api/AuthFailureException;
    .end local v2    # "app":Lcom/android/vending/VendingApplication;
    :cond_1
    :goto_2
    array-length v7, v6

    if-eq v4, v7, :cond_2

    .line 63
    aget v7, v6, v4

    int-to-long v7, v7

    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    .line 34
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 45
    :catch_1
    move-exception v7

    move-object v3, v7

    .line 46
    .local v3, "e":Lcom/android/vending/api/FatalCommunicationException;
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fatal error from server: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/vending/api/FatalCommunicationException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    move-object v5, v3

    .line 56
    iget-object v7, p0, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;->this$0:Lcom/android/vending/AsynchRequestRunner;

    invoke-static {v7}, Lcom/android/vending/AsynchRequestRunner;->access$000(Lcom/android/vending/AsynchRequestRunner;)Lcom/android/vending/api/RequestManager;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 57
    iget-object v7, p0, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;->this$0:Lcom/android/vending/AsynchRequestRunner;

    invoke-static {v7}, Lcom/android/vending/AsynchRequestRunner;->access$000(Lcom/android/vending/AsynchRequestRunner;)Lcom/android/vending/api/RequestManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/vending/api/RequestManager;->reset()V

    .line 68
    .end local v3    # "e":Lcom/android/vending/api/FatalCommunicationException;
    :cond_3
    if-eqz v5, :cond_0

    .line 69
    iget-object v7, p0, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;->mRequest:Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;

    invoke-interface {v7, v5}, Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;->onException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 49
    :catch_2
    move-exception v7

    move-object v0, v7

    .line 50
    .local v0, "ae":Lcom/android/vending/api/ApiException;
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got ApiException from async request: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/vending/api/ApiException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 51
    move-object v5, v0

    .line 56
    iget-object v7, p0, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;->this$0:Lcom/android/vending/AsynchRequestRunner;

    invoke-static {v7}, Lcom/android/vending/AsynchRequestRunner;->access$000(Lcom/android/vending/AsynchRequestRunner;)Lcom/android/vending/api/RequestManager;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 57
    iget-object v7, p0, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;->this$0:Lcom/android/vending/AsynchRequestRunner;

    invoke-static {v7}, Lcom/android/vending/AsynchRequestRunner;->access$000(Lcom/android/vending/AsynchRequestRunner;)Lcom/android/vending/api/RequestManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/vending/api/RequestManager;->reset()V

    goto :goto_2

    .line 52
    .end local v0    # "ae":Lcom/android/vending/api/ApiException;
    :catch_3
    move-exception v7

    move-object v3, v7

    .line 53
    .local v3, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got IOException from async request: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 54
    move-object v5, v3

    .line 56
    iget-object v7, p0, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;->this$0:Lcom/android/vending/AsynchRequestRunner;

    invoke-static {v7}, Lcom/android/vending/AsynchRequestRunner;->access$000(Lcom/android/vending/AsynchRequestRunner;)Lcom/android/vending/api/RequestManager;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 57
    iget-object v7, p0, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;->this$0:Lcom/android/vending/AsynchRequestRunner;

    invoke-static {v7}, Lcom/android/vending/AsynchRequestRunner;->access$000(Lcom/android/vending/AsynchRequestRunner;)Lcom/android/vending/api/RequestManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/vending/api/RequestManager;->reset()V

    goto/16 :goto_2

    .line 56
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;->this$0:Lcom/android/vending/AsynchRequestRunner;

    invoke-static {v8}, Lcom/android/vending/AsynchRequestRunner;->access$000(Lcom/android/vending/AsynchRequestRunner;)Lcom/android/vending/api/RequestManager;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 57
    iget-object v8, p0, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;->this$0:Lcom/android/vending/AsynchRequestRunner;

    invoke-static {v8}, Lcom/android/vending/AsynchRequestRunner;->access$000(Lcom/android/vending/AsynchRequestRunner;)Lcom/android/vending/api/RequestManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/vending/api/RequestManager;->reset()V

    :cond_4
    throw v7
.end method
