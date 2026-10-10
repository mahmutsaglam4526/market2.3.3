.class Lcom/android/vending/api/RequestManager$AsynchTaskDoRequestsOverNetwork;
.super Lcom/android/vending/AsynchTask;
.source "RequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/api/RequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsynchTaskDoRequestsOverNetwork"
.end annotation


# instance fields
.field protected mNotifiedRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vending/api/RequestManager$BatchRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestContext:Lcom/android/vending/api/RequestDispatcher$RequestContext;

.field private final mRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vending/api/RequestManager$BatchRequest;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/vending/api/RequestManager;


# direct methods
.method public constructor <init>(Lcom/android/vending/api/RequestManager;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/vending/api/RequestDispatcher$RequestContext;)V
    .locals 0
    .param p4, "requestContext"    # Lcom/android/vending/api/RequestDispatcher$RequestContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vending/api/RequestManager$BatchRequest;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vending/api/RequestManager$BatchRequest;",
            ">;",
            "Lcom/android/vending/api/RequestDispatcher$RequestContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 450
    .local p2, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/vending/api/RequestManager$BatchRequest;>;"
    .local p3, "notifiedRequests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/vending/api/RequestManager$BatchRequest;>;"
    iput-object p1, p0, Lcom/android/vending/api/RequestManager$AsynchTaskDoRequestsOverNetwork;->this$0:Lcom/android/vending/api/RequestManager;

    invoke-direct {p0}, Lcom/android/vending/AsynchTask;-><init>()V

    .line 451
    iput-object p2, p0, Lcom/android/vending/api/RequestManager$AsynchTaskDoRequestsOverNetwork;->mRequests:Ljava/util/ArrayList;

    .line 452
    iput-object p3, p0, Lcom/android/vending/api/RequestManager$AsynchTaskDoRequestsOverNetwork;->mNotifiedRequests:Ljava/util/ArrayList;

    .line 453
    iput-object p4, p0, Lcom/android/vending/api/RequestManager$AsynchTaskDoRequestsOverNetwork;->mRequestContext:Lcom/android/vending/api/RequestDispatcher$RequestContext;

    .line 454
    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 6

    .prologue
    .line 459
    :try_start_0
    iget-object v1, p0, Lcom/android/vending/api/RequestManager$AsynchTaskDoRequestsOverNetwork;->this$0:Lcom/android/vending/api/RequestManager;

    iget-object v2, p0, Lcom/android/vending/api/RequestManager$AsynchTaskDoRequestsOverNetwork;->mRequests:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/vending/api/RequestManager$AsynchTaskDoRequestsOverNetwork;->mNotifiedRequests:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/vending/api/RequestManager$AsynchTaskDoRequestsOverNetwork;->mRequestContext:Lcom/android/vending/api/RequestDispatcher$RequestContext;

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/vending/api/RequestManager;->access$000(Lcom/android/vending/api/RequestManager;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/vending/api/RequestDispatcher$RequestContext;Z)V
    :try_end_0
    .catch Lcom/android/vending/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 465
    :goto_0
    return-void

    .line 460
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 461
    .local v0, "e":Lcom/android/vending/api/ApiException;
    invoke-virtual {v0}, Lcom/android/vending/api/ApiException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 462
    .end local v0    # "e":Lcom/android/vending/api/ApiException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 463
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 469
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    .line 470
    return-void
.end method
