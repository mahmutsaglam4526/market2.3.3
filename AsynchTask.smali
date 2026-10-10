.class public abstract Lcom/android/vending/AsynchTask;
.super Ljava/lang/Object;
.source "AsynchTask.java"

# interfaces
.implements Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doRequest(Lcom/android/vending/api/RequestManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/android/vending/api/RequestManager;

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/android/vending/AsynchTask;->doTask()V

    .line 34
    return-void
.end method

.method public abstract doTask()V
.end method

.method public execute()V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getAsynchTaskRunner()Lcom/android/vending/AsynchRequestRunner;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/vending/AsynchRequestRunner;->runRequest(Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;)V

    .line 28
    return-void
.end method
