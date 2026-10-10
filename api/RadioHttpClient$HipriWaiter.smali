.class Lcom/android/vending/api/RadioHttpClient$HipriWaiter;
.super Landroid/content/BroadcastReceiver;
.source "RadioHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/api/RadioHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HipriWaiter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/api/RadioHttpClient;


# direct methods
.method private constructor <init>(Lcom/android/vending/api/RadioHttpClient;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/vending/api/RadioHttpClient$HipriWaiter;->this$0:Lcom/android/vending/api/RadioHttpClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vending/api/RadioHttpClient;Lcom/android/vending/api/RadioHttpClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/vending/api/RadioHttpClient;
    .param p2, "x1"    # Lcom/android/vending/api/RadioHttpClient$1;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/vending/api/RadioHttpClient$HipriWaiter;-><init>(Lcom/android/vending/api/RadioHttpClient;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 68
    iget-object v2, p0, Lcom/android/vending/api/RadioHttpClient$HipriWaiter;->this$0:Lcom/android/vending/api/RadioHttpClient;

    invoke-static {v2}, Lcom/android/vending/api/RadioHttpClient;->access$000(Lcom/android/vending/api/RadioHttpClient;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 70
    :try_start_0
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 72
    .local v0, "info":Landroid/net/NetworkInfo;
    const-string v3, "Network info: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 75
    .local v1, "infoType":I
    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 79
    iget-object v3, p0, Lcom/android/vending/api/RadioHttpClient$HipriWaiter;->this$0:Lcom/android/vending/api/RadioHttpClient;

    invoke-static {v3, v1}, Lcom/android/vending/api/RadioHttpClient;->access$102(Lcom/android/vending/api/RadioHttpClient;I)I

    .line 80
    iget-object v3, p0, Lcom/android/vending/api/RadioHttpClient$HipriWaiter;->this$0:Lcom/android/vending/api/RadioHttpClient;

    invoke-static {v3}, Lcom/android/vending/api/RadioHttpClient;->access$200(Lcom/android/vending/api/RadioHttpClient;)V

    .line 83
    .end local v1    # "infoType":I
    :cond_1
    monitor-exit v2

    .line 84
    return-void

    .line 83
    .end local v0    # "info":Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
