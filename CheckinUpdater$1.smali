.class Lcom/android/vending/CheckinUpdater$1;
.super Ljava/lang/Object;
.source "CheckinUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/CheckinUpdater;->update(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/CheckinUpdater;


# direct methods
.method constructor <init>(Lcom/android/vending/CheckinUpdater;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/vending/CheckinUpdater$1;->this$0:Lcom/android/vending/CheckinUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 108
    monitor-enter p0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/android/vending/CheckinUpdater$1;->this$0:Lcom/android/vending/CheckinUpdater;

    invoke-static {v0}, Lcom/android/vending/CheckinUpdater;->access$000(Lcom/android/vending/CheckinUpdater;)V

    .line 110
    monitor-exit p0

    .line 111
    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
