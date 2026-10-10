.class public abstract Lcom/android/vending/BaseActivity$BaseAction;
.super Lcom/android/vending/BaseActivity$BackendAction;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/BaseActivity$BaseAction$ActionRunnable;,
        Lcom/android/vending/BaseActivity$BaseAction$RequestErrorType;
    }
.end annotation


# instance fields
.field protected mActionRequestManager:Lcom/android/vending/api/RequestManager;

.field protected mActionRunnable:Lcom/android/vending/BaseActivity$BaseAction$ActionRunnable;

.field protected mBaseActivity:Lcom/android/vending/BaseActivity;

.field protected volatile mCanceled:Z

.field private mLoadedFromCache:Z

.field protected final mReuseRequestManager:Z

.field private mStartTime:J

.field private mTriedLoadFromCache:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1547
    invoke-direct {p0}, Lcom/android/vending/BaseActivity$BackendAction;-><init>()V

    .line 1533
    iput-boolean v0, p0, Lcom/android/vending/BaseActivity$BaseAction;->mCanceled:Z

    .line 1536
    iput-boolean v0, p0, Lcom/android/vending/BaseActivity$BaseAction;->mTriedLoadFromCache:Z

    .line 1537
    iput-boolean v0, p0, Lcom/android/vending/BaseActivity$BaseAction;->mLoadedFromCache:Z

    .line 1548
    iput-boolean v0, p0, Lcom/android/vending/BaseActivity$BaseAction;->mReuseRequestManager:Z

    .line 1549
    return-void
.end method

.method public constructor <init>(Lcom/android/vending/BaseActivity;)V
    .locals 1
    .param p1, "baseActivity"    # Lcom/android/vending/BaseActivity;

    .prologue
    .line 1552
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/vending/BaseActivity$BaseAction;-><init>(Lcom/android/vending/BaseActivity;Z)V

    .line 1553
    return-void
.end method

.method public constructor <init>(Lcom/android/vending/BaseActivity;Z)V
    .locals 1
    .param p1, "baseActivity"    # Lcom/android/vending/BaseActivity;
    .param p2, "reuseRequestManager"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1555
    invoke-direct {p0}, Lcom/android/vending/BaseActivity$BackendAction;-><init>()V

    .line 1533
    iput-boolean v0, p0, Lcom/android/vending/BaseActivity$BaseAction;->mCanceled:Z

    .line 1536
    iput-boolean v0, p0, Lcom/android/vending/BaseActivity$BaseAction;->mTriedLoadFromCache:Z

    .line 1537
    iput-boolean v0, p0, Lcom/android/vending/BaseActivity$BaseAction;->mLoadedFromCache:Z

    .line 1556
    invoke-virtual {p0, p1}, Lcom/android/vending/BaseActivity$BaseAction;->setActivity(Lcom/android/vending/BaseActivity;)V

    .line 1557
    iput-boolean p2, p0, Lcom/android/vending/BaseActivity$BaseAction;->mReuseRequestManager:Z

    .line 1558
    return-void
.end method

.method static synthetic access$100(Lcom/android/vending/BaseActivity$BaseAction;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/BaseActivity$BaseAction;

    .prologue
    .line 1529
    invoke-direct {p0}, Lcom/android/vending/BaseActivity$BaseAction;->executeDisplayResults()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/vending/BaseActivity$BaseAction;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/vending/BaseActivity$BaseAction;

    .prologue
    .line 1529
    iget-wide v0, p0, Lcom/android/vending/BaseActivity$BaseAction;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/vending/BaseActivity$BaseAction;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/BaseActivity$BaseAction;
    .param p1, "x1"    # J

    .prologue
    .line 1529
    iput-wide p1, p0, Lcom/android/vending/BaseActivity$BaseAction;->mStartTime:J

    return-wide p1
.end method

.method private executeAction()V
    .locals 3

    .prologue
    .line 1696
    iget-object v0, p0, Lcom/android/vending/BaseActivity$BaseAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    monitor-enter v0

    .line 1697
    :try_start_0
    iget-boolean v1, p0, Lcom/android/vending/BaseActivity$BaseAction;->mLoadedFromCache:Z

    if-eqz v1, :cond_0

    .line 1703
    iget-object v1, p0, Lcom/android/vending/BaseActivity$BaseAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/vending/BaseActivity;->mExecutingAction:Lcom/android/vending/BaseActivity$BackendAction;

    .line 1704
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity$BaseAction;->executeSubAction()V

    .line 1715
    :goto_0
    monitor-exit v0

    .line 1716
    return-void

    .line 1706
    :cond_0
    iget-boolean v1, p0, Lcom/android/vending/BaseActivity$BaseAction;->mTriedLoadFromCache:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/vending/BaseActivity$BaseAction;->mReuseRequestManager:Z

    if-nez v1, :cond_1

    .line 1707
    iget-object v1, p0, Lcom/android/vending/BaseActivity$BaseAction;->mActionRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-virtual {v1}, Lcom/android/vending/api/RequestManager;->reset()V

    .line 1709
    :cond_1
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity$BaseAction;->hideErrorUi()V

    .line 1710
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity$BaseAction;->hideWaitingUi()V

    .line 1711
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity$BaseAction;->displayWaitingUi()V

    .line 1712
    invoke-direct {p0}, Lcom/android/vending/BaseActivity$BaseAction;->executePrepare()V

    .line 1713
    invoke-direct {p0}, Lcom/android/vending/BaseActivity$BaseAction;->runRequestsInThread()V

    goto :goto_0

    .line 1715
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private executeDisplayResults()V
    .locals 0

    .prologue
    .line 1617
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity$BaseAction;->displayResults()V

    .line 1618
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity$BaseAction;->executeSubAction()V

    .line 1619
    return-void
.end method

.method private executePrepare()V
    .locals 1

    .prologue
    .line 1608
    iget-boolean v0, p0, Lcom/android/vending/BaseActivity$BaseAction;->mTriedLoadFromCache:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/vending/BaseActivity$BaseAction;->mReuseRequestManager:Z

    if-nez v0, :cond_0

    .line 1609
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity$BaseAction;->prepare()V

    .line 1611
    :cond_0
    return-void
.end method

.method private runRequestsInThread()V
    .locals 2

    .prologue
    .line 1851
    new-instance v0, Lcom/android/vending/BaseActivity$BackgroundThread;

    invoke-direct {v0, p0}, Lcom/android/vending/BaseActivity$BackgroundThread;-><init>(Ljava/lang/Runnable;)V

    .line 1852
    .local v0, "activeThread":Ljava/lang/Thread;
    const-string v1, "Vending.BaseAction"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1853
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1854
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/android/vending/BaseActivity$BaseAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    monitor-enter v0

    .line 1726
    :try_start_0
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity$BaseAction;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1727
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/vending/BaseActivity$BaseAction;->mCanceled:Z

    .line 1728
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity$BaseAction;->hideErrorUi()V

    .line 1729
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity$BaseAction;->hideWaitingUi()V

    .line 1730
    iget-object v1, p0, Lcom/android/vending/BaseActivity$BaseAction;->mActionRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-virtual {v1}, Lcom/android/vending/api/RequestManager;->reset()V

    .line 1731
    iget-object v1, p0, Lcom/android/vending/BaseActivity$BaseAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/vending/BaseActivity;->mExecutingAction:Lcom/android/vending/BaseActivity$BackendAction;

    .line 1735
    :goto_0
    monitor-exit v0

    .line 1736
    return-void

    .line 1733
    :cond_0
    const-string v1, "Cancel called on action that is not active."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1735
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected displayErrorUi(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    const-string v3, ": "

    .line 1895
    instance-of v1, p1, Ljava/io/IOException;

    if-eqz v1, :cond_0

    .line 1896
    sget-object v0, Lcom/android/vending/BaseActivity$BaseAction$RequestErrorType;->NETWORK_ERROR:Lcom/android/vending/BaseActivity$BaseAction$RequestErrorType;

    .line 1897
    .local v0, "errorType":Lcom/android/vending/BaseActivity$BaseAction$RequestErrorType;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network error in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/vending/util/Log;->i(Ljava/lang/String;)V

    .line 1905
    :goto_0
    iget-object v1, p0, Lcom/android/vending/BaseActivity$BaseAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    invoke-virtual {v1, v0}, Lcom/android/vending/BaseActivity;->onDisplayErrorUi(Lcom/android/vending/BaseActivity$BaseAction$RequestErrorType;)V

    .line 1906
    return-void

    .line 1898
    .end local v0    # "errorType":Lcom/android/vending/BaseActivity$BaseAction$RequestErrorType;
    :cond_0
    instance-of v1, p1, Lcom/android/vending/api/ApiException;

    if-eqz v1, :cond_1

    .line 1899
    sget-object v0, Lcom/android/vending/BaseActivity$BaseAction$RequestErrorType;->SERVER_ERROR:Lcom/android/vending/BaseActivity$BaseAction$RequestErrorType;

    .line 1900
    .restart local v0    # "errorType":Lcom/android/vending/BaseActivity$BaseAction$RequestErrorType;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server error in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/vending/util/Log;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 1902
    .end local v0    # "errorType":Lcom/android/vending/BaseActivity$BaseAction$RequestErrorType;
    :cond_1
    sget-object v0, Lcom/android/vending/BaseActivity$BaseAction$RequestErrorType;->GENERAL_ERROR:Lcom/android/vending/BaseActivity$BaseAction$RequestErrorType;

    .line 1903
    .restart local v0    # "errorType":Lcom/android/vending/BaseActivity$BaseAction$RequestErrorType;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "General error in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/vending/util/Log;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract displayResults()V
.end method

.method protected displayWaitingUi()V
    .locals 1

    .prologue
    .line 1872
    iget-object v0, p0, Lcom/android/vending/BaseActivity$BaseAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    invoke-virtual {v0, p0}, Lcom/android/vending/BaseActivity;->showIndeterminateProgress(Lcom/android/vending/BaseActivity$BackendAction;)V

    .line 1873
    return-void
.end method

.method protected executeSubAction()V
    .locals 2

    .prologue
    .line 1628
    iget-object v0, p0, Lcom/android/vending/BaseActivity$BaseAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    iget-object v0, v0, Lcom/android/vending/BaseActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/vending/BaseActivity$BaseAction$1;

    invoke-direct {v1, p0}, Lcom/android/vending/BaseActivity$BaseAction$1;-><init>(Lcom/android/vending/BaseActivity$BaseAction;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1636
    return-void
.end method

.method protected getSubAction()Lcom/android/vending/BaseActivity$BaseAction;
    .locals 1

    .prologue
    .line 1646
    const/4 v0, 0x0

    return-object v0
.end method

.method protected hideErrorUi()V
    .locals 0

    .prologue
    .line 1916
    return-void
.end method

.method protected hideWaitingUi()V
    .locals 1

    .prologue
    .line 1882
    iget-object v0, p0, Lcom/android/vending/BaseActivity$BaseAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    invoke-virtual {v0, p0}, Lcom/android/vending/BaseActivity;->hideIndeterminateProgress(Lcom/android/vending/BaseActivity$BackendAction;)V

    .line 1883
    return-void
.end method

.method public isActive()Z
    .locals 2

    .prologue
    .line 1590
    iget-object v0, p0, Lcom/android/vending/BaseActivity$BaseAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    monitor-enter v0

    .line 1591
    :try_start_0
    iget-object v1, p0, Lcom/android/vending/BaseActivity$BaseAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    iget-object v1, v1, Lcom/android/vending/BaseActivity;->mExecutingAction:Lcom/android/vending/BaseActivity$BackendAction;

    if-ne v1, p0, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1592
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onRequestComplete(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 1654
    return-void
.end method

.method public retry()V
    .locals 3

    .prologue
    .line 1682
    iget-object v0, p0, Lcom/android/vending/BaseActivity$BaseAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    monitor-enter v0

    .line 1683
    :try_start_0
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity$BaseAction;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1684
    const-string v1, "Cannot retry an action that is not active."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1685
    monitor-exit v0

    .line 1693
    :goto_0
    return-void

    .line 1687
    :cond_0
    iget-boolean v1, p0, Lcom/android/vending/BaseActivity$BaseAction;->mCanceled:Z

    if-eqz v1, :cond_1

    .line 1688
    const-string v1, "Cannot retry an action that is canceled."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1689
    monitor-exit v0

    goto :goto_0

    .line 1692
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1691
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/vending/BaseActivity$BaseAction;->executeAction()V

    .line 1692
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 1763
    const/4 v7, 0x0

    .line 1764
    .local v7, "success":Z
    const/4 v0, 0x0

    .line 1765
    .local v0, "authFailure":Z
    const/4 v2, 0x0

    .line 1766
    .local v2, "exception":Ljava/lang/Throwable;
    iget-boolean v9, p0, Lcom/android/vending/BaseActivity$BaseAction;->mCanceled:Z

    if-eqz v9, :cond_1

    .line 1841
    :cond_0
    :goto_0
    return-void

    .line 1771
    :cond_1
    :try_start_0
    iget-object v9, p0, Lcom/android/vending/BaseActivity$BaseAction;->mActionRunnable:Lcom/android/vending/BaseActivity$BaseAction$ActionRunnable;

    if-eqz v9, :cond_2

    .line 1772
    iget-object v9, p0, Lcom/android/vending/BaseActivity$BaseAction;->mActionRunnable:Lcom/android/vending/BaseActivity$BaseAction$ActionRunnable;

    iget-object v10, p0, Lcom/android/vending/BaseActivity$BaseAction;->mActionRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-interface {v9, v10}, Lcom/android/vending/BaseActivity$BaseAction$ActionRunnable;->run(Lcom/android/vending/api/RequestManager;)V
    :try_end_0
    .catch Lcom/android/vending/api/AuthFailureException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/vending/api/ApiException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 1776
    :goto_1
    const/4 v7, 0x1

    .line 1792
    :goto_2
    invoke-virtual {p0, v7}, Lcom/android/vending/BaseActivity$BaseAction;->onRequestComplete(Z)V

    .line 1795
    move v5, v7

    .line 1796
    .local v5, "finalSuccess":Z
    move v3, v0

    .line 1797
    .local v3, "finalAuthFailure":Z
    move-object v4, v2

    .line 1798
    .local v4, "finalException":Ljava/lang/Throwable;
    iget-boolean v9, p0, Lcom/android/vending/BaseActivity$BaseAction;->mCanceled:Z

    if-nez v9, :cond_0

    .line 1799
    new-instance v6, Lcom/android/vending/BaseActivity$BaseAction$2;

    invoke-direct {v6, p0, v3, v5, v4}, Lcom/android/vending/BaseActivity$BaseAction$2;-><init>(Lcom/android/vending/BaseActivity$BaseAction;ZZLjava/lang/Throwable;)V

    .line 1839
    .local v6, "resultHandler":Ljava/lang/Runnable;
    iget-object v9, p0, Lcom/android/vending/BaseActivity$BaseAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    iget-object v9, v9, Lcom/android/vending/BaseActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1774
    .end local v3    # "finalAuthFailure":Z
    .end local v4    # "finalException":Ljava/lang/Throwable;
    .end local v5    # "finalSuccess":Z
    .end local v6    # "resultHandler":Ljava/lang/Runnable;
    :cond_2
    :try_start_1
    iget-object v9, p0, Lcom/android/vending/BaseActivity$BaseAction;->mActionRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-virtual {v9}, Lcom/android/vending/api/RequestManager;->doRequests()V
    :try_end_1
    .catch Lcom/android/vending/api/AuthFailureException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/vending/api/ApiException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 1777
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 1778
    .local v1, "e":Lcom/android/vending/api/AuthFailureException;
    const/4 v0, 0x1

    .line 1779
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AuthFailureException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 1780
    .end local v1    # "e":Lcom/android/vending/api/AuthFailureException;
    :catch_1
    move-exception v9

    move-object v1, v9

    .line 1781
    .local v1, "e":Lcom/android/vending/api/ApiException;
    move-object v2, v1

    .line 1782
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ApiException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 1783
    .end local v1    # "e":Lcom/android/vending/api/ApiException;
    :catch_2
    move-exception v9

    move-object v1, v9

    .line 1784
    .local v1, "e":Ljava/io/IOException;
    move-object v2, v1

    .line 1785
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 1786
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v9

    move-object v8, v9

    .line 1788
    .local v8, "t":Ljava/lang/Throwable;
    move-object v2, v8

    .line 1789
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Uncaught runtime error in doRequests(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public setActionRunnable(Lcom/android/vending/BaseActivity$BaseAction$ActionRunnable;)V
    .locals 0
    .param p1, "runnable"    # Lcom/android/vending/BaseActivity$BaseAction$ActionRunnable;

    .prologue
    .line 1753
    iput-object p1, p0, Lcom/android/vending/BaseActivity$BaseAction;->mActionRunnable:Lcom/android/vending/BaseActivity$BaseAction$ActionRunnable;

    .line 1754
    return-void
.end method

.method public setActivity(Lcom/android/vending/BaseActivity;)V
    .locals 1
    .param p1, "baseActivity"    # Lcom/android/vending/BaseActivity;

    .prologue
    .line 1567
    iput-object p1, p0, Lcom/android/vending/BaseActivity$BaseAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    .line 1568
    iget-object v0, p1, Lcom/android/vending/BaseActivity;->mRequestManager:Lcom/android/vending/api/RequestManager;

    iput-object v0, p0, Lcom/android/vending/BaseActivity$BaseAction;->mActionRequestManager:Lcom/android/vending/api/RequestManager;

    .line 1569
    return-void
.end method

.method public setActivity(Lcom/android/vending/BaseActivity;Lcom/android/vending/api/RequestManager;)V
    .locals 0
    .param p1, "baseActivity"    # Lcom/android/vending/BaseActivity;
    .param p2, "requestManager"    # Lcom/android/vending/api/RequestManager;

    .prologue
    .line 1579
    iput-object p1, p0, Lcom/android/vending/BaseActivity$BaseAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    .line 1580
    iput-object p2, p0, Lcom/android/vending/BaseActivity$BaseAction;->mActionRequestManager:Lcom/android/vending/api/RequestManager;

    .line 1581
    return-void
.end method

.method protected setLoadedFromCache(Z)V
    .locals 0
    .param p1, "isLoadedFromCache"    # Z

    .prologue
    .line 1596
    iput-boolean p1, p0, Lcom/android/vending/BaseActivity$BaseAction;->mLoadedFromCache:Z

    .line 1597
    return-void
.end method

.method protected setTriedLoadFromCache(Z)V
    .locals 0
    .param p1, "triedLoadFromCache"    # Z

    .prologue
    .line 1600
    iput-boolean p1, p0, Lcom/android/vending/BaseActivity$BaseAction;->mTriedLoadFromCache:Z

    .line 1601
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1661
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/vending/util/Log;->start(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1662
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/vending/BaseActivity$BaseAction;->mStartTime:J

    .line 1663
    iget-object v0, p0, Lcom/android/vending/BaseActivity$BaseAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    monitor-enter v0

    .line 1664
    :try_start_0
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity$BaseAction;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1665
    const-string v1, "Cannot start an action more than once at the same time."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1666
    monitor-exit v0

    .line 1676
    :goto_0
    return-void

    .line 1668
    :cond_0
    iget-object v1, p0, Lcom/android/vending/BaseActivity$BaseAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    iget-object v1, v1, Lcom/android/vending/BaseActivity;->mExecutingAction:Lcom/android/vending/BaseActivity$BackendAction;

    if-eqz v1, :cond_1

    .line 1669
    const-string v1, "Cannot start more than one action at a time."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1670
    monitor-exit v0

    goto :goto_0

    .line 1675
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1672
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/vending/BaseActivity$BaseAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    iput-object p0, v1, Lcom/android/vending/BaseActivity;->mExecutingAction:Lcom/android/vending/BaseActivity$BackendAction;

    .line 1673
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/vending/BaseActivity$BaseAction;->mCanceled:Z

    .line 1674
    invoke-direct {p0}, Lcom/android/vending/BaseActivity$BaseAction;->executeAction()V

    .line 1675
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
