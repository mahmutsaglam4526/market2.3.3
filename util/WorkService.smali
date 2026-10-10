.class public Lcom/android/vending/util/WorkService;
.super Landroid/app/Service;
.source "WorkService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/util/WorkService$Facade;,
        Lcom/android/vending/util/WorkService$Holder;
    }
.end annotation


# static fields
.field private static final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile mHandler:Landroid/os/Handler;

.field private volatile mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/vending/util/WorkService;->queue:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 105
    return-void
.end method

.method static synthetic access$100()Ljava/util/Queue;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/vending/util/WorkService;->queue:Ljava/util/Queue;

    return-object v0
.end method

.method public static declared-synchronized get()Lcom/android/vending/util/WorkService$Facade;
    .locals 2

    .prologue
    .line 93
    const-class v0, Lcom/android/vending/util/WorkService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/vending/util/WorkService$Holder;->access$000()Lcom/android/vending/util/WorkService$Facade;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private handleStartCommand(I)V
    .locals 4

    .prologue
    .line 75
    const-class v1, Lcom/android/vending/util/WorkService;

    monitor-enter v1

    .line 76
    :try_start_0
    sget-object v0, Lcom/android/vending/util/WorkService;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 77
    if-eqz v0, :cond_0

    .line 78
    iget-object v2, p0, Lcom/android/vending/util/WorkService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/vending/util/WorkService$1;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/vending/util/WorkService$1;-><init>(Lcom/android/vending/util/WorkService;Ljava/lang/Runnable;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    :cond_0
    monitor-exit v1

    .line 86
    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 50
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "work-service-handler-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/vending/util/WorkService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 51
    iget-object v0, p0, Lcom/android/vending/util/WorkService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 52
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/vending/util/WorkService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/vending/util/WorkService;->mHandler:Landroid/os/Handler;

    .line 53
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 58
    iget-object v0, p0, Lcom/android/vending/util/WorkService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 59
    iput-object v1, p0, Lcom/android/vending/util/WorkService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 60
    iput-object v1, p0, Lcom/android/vending/util/WorkService;->mHandler:Landroid/os/Handler;

    .line 61
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 65
    invoke-direct {p0, p2}, Lcom/android/vending/util/WorkService;->handleStartCommand(I)V

    .line 66
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 69
    invoke-direct {p0, p3}, Lcom/android/vending/util/WorkService;->handleStartCommand(I)V

    .line 71
    const/4 v0, 0x2

    return v0
.end method
