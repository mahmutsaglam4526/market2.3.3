.class public Lcom/android/vending/AsynchRequestRunner;
.super Ljava/lang/Object;
.source "AsynchRequestRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/AsynchRequestRunner$1;,
        Lcom/android/vending/AsynchRequestRunner$VendingThreadFactory;,
        Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;,
        Lcom/android/vending/AsynchRequestRunner$RequestRunnable;
    }
.end annotation


# static fields
.field private static final RETRY_PERIODS_MS:[I


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final mRequestManager:Lcom/android/vending/api/RequestManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/vending/AsynchRequestRunner;->RETRY_PERIODS_MS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1f4
        0x3e8
        0x7d0
        0x1388
    .end array-data
.end method

.method public constructor <init>(Lcom/android/vending/api/RequestManager;)V
    .locals 2
    .param p1, "requestManager"    # Lcom/android/vending/api/RequestManager;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lcom/android/vending/AsynchRequestRunner$VendingThreadFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/vending/AsynchRequestRunner$VendingThreadFactory;-><init>(Lcom/android/vending/AsynchRequestRunner$1;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AsynchRequestRunner;->executor:Ljava/util/concurrent/Executor;

    .line 78
    iput-object p1, p0, Lcom/android/vending/AsynchRequestRunner;->mRequestManager:Lcom/android/vending/api/RequestManager;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/AsynchRequestRunner;)Lcom/android/vending/api/RequestManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/AsynchRequestRunner;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/vending/AsynchRequestRunner;->mRequestManager:Lcom/android/vending/api/RequestManager;

    return-object v0
.end method


# virtual methods
.method protected getRetryIntervals()[I
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/vending/AsynchRequestRunner;->RETRY_PERIODS_MS:[I

    return-object v0
.end method

.method public runRequest(Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/vending/AsynchRequestRunner;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;

    invoke-direct {v1, p0, p1}, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;-><init>(Lcom/android/vending/AsynchRequestRunner;Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method
