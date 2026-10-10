.class public Lcom/android/vending/util/WorkService$Facade;
.super Ljava/lang/Object;
.source "WorkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/util/WorkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Facade"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public submit(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    const-class v2, Lcom/android/vending/util/WorkService;

    .line 114
    const-class v0, Lcom/android/vending/util/WorkService;

    monitor-enter v2

    .line 115
    :try_start_0
    invoke-static {}, Lcom/android/vending/util/WorkService;->access$100()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 116
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/vending/util/WorkService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 119
    return-void

    .line 116
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
