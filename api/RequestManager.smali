.class public Lcom/android/vending/api/RequestManager;
.super Ljava/lang/Object;
.source "RequestManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/api/RequestManager$AsynchTaskDoRequestsOverNetwork;,
        Lcom/android/vending/api/RequestManager$ResponseListener;,
        Lcom/android/vending/api/RequestManager$BatchRequest;
    }
.end annotation


# static fields
.field private static sHasSetServerVersion:Z


# instance fields
.field private mCacheManager:Lcom/android/vending/cache/CacheManager;

.field private final mClientContext:Lcom/android/vending/VendingApplication$ApiClientContext;

.field private mGoogleHttpClient:Lcom/android/vending/compat/GoogleHttpClient;

.field private mIsProcessedFromCache:Z

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

.field private mRequestContext:Lcom/android/vending/api/RequestDispatcher$RequestContext;

.field private mRequestDispatcher:Lcom/android/vending/api/RequestDispatcher;

.field protected mRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vending/api/RequestManager$BatchRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/vending/api/RequestManager;->sHasSetServerVersion:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vending/api/RequestManager;->mClientContext:Lcom/android/vending/VendingApplication$ApiClientContext;

    .line 93
    return-void
.end method

.method public constructor <init>(Lcom/android/vending/VendingApplication$ApiClientContext;Lcom/android/vending/compat/GoogleHttpClient;Lcom/android/vending/cache/CacheManager;)V
    .locals 4
    .param p1, "clientContext"    # Lcom/android/vending/VendingApplication$ApiClientContext;
    .param p2, "googleHttpClient"    # Lcom/android/vending/compat/GoogleHttpClient;
    .param p3, "cacheManager"    # Lcom/android/vending/cache/CacheManager;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/android/vending/api/RequestManager;->mClientContext:Lcom/android/vending/VendingApplication$ApiClientContext;

    .line 98
    iput-object p2, p0, Lcom/android/vending/api/RequestManager;->mGoogleHttpClient:Lcom/android/vending/compat/GoogleHttpClient;

    .line 99
    invoke-virtual {p0}, Lcom/android/vending/api/RequestManager;->reset()V

    .line 100
    iput-object p3, p0, Lcom/android/vending/api/RequestManager;->mCacheManager:Lcom/android/vending/cache/CacheManager;

    .line 101
    new-instance v0, Lcom/android/vending/api/RequestDispatcher;

    iget-object v1, p0, Lcom/android/vending/api/RequestManager;->mClientContext:Lcom/android/vending/VendingApplication$ApiClientContext;

    iget-object v2, p0, Lcom/android/vending/api/RequestManager;->mGoogleHttpClient:Lcom/android/vending/compat/GoogleHttpClient;

    iget-object v3, p0, Lcom/android/vending/api/RequestManager;->mCacheManager:Lcom/android/vending/cache/CacheManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vending/api/RequestDispatcher;-><init>(Lcom/android/vending/VendingApplication$ApiClientContext;Lorg/apache/http/client/HttpClient;Lcom/android/vending/cache/CacheManager;)V

    iput-object v0, p0, Lcom/android/vending/api/RequestManager;->mRequestDispatcher:Lcom/android/vending/api/RequestDispatcher;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/api/RequestManager;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/vending/api/RequestDispatcher$RequestContext;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/api/RequestManager;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # Lcom/android/vending/api/RequestDispatcher$RequestContext;
    .param p4, "x4"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vending/api/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/vending/api/RequestManager;->doRequestsOverNetwork(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/vending/api/RequestDispatcher$RequestContext;Z)V

    return-void
.end method

.method private doRequestsOverNetwork(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/vending/api/RequestDispatcher$RequestContext;Z)V
    .locals 6
    .param p3, "requestContext"    # Lcom/android/vending/api/RequestDispatcher$RequestContext;
    .param p4, "isBestEffort"    # Z
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
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vending/api/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/vending/api/RequestManager$BatchRequest;>;"
    .local p2, "notifiedRequests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/vending/api/RequestManager$BatchRequest;>;"
    const/4 v5, 0x0

    .line 235
    const/4 v1, 0x1

    .line 236
    .local v1, "isAllOk":Z
    iget-object v4, p0, Lcom/android/vending/api/RequestManager;->mRequestDispatcher:Lcom/android/vending/api/RequestDispatcher;

    invoke-virtual {v4, p3}, Lcom/android/vending/api/RequestDispatcher;->performRequests(Lcom/android/vending/api/RequestDispatcher$RequestContext;)V

    .line 243
    if-nez p4, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/android/vending/api/RequestManager;->reset()V

    .line 246
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vending/api/RequestManager$BatchRequest;

    .line 247
    .local v2, "request":Lcom/android/vending/api/RequestManager$BatchRequest;
    invoke-direct {p0, v2}, Lcom/android/vending/api/RequestManager;->setServerVersion(Lcom/android/vending/api/RequestManager$BatchRequest;)V

    .line 248
    invoke-virtual {v2}, Lcom/android/vending/api/RequestManager$BatchRequest;->getBaseResponse()Lcom/android/vending/model/BaseResponse;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/vending/api/RequestManager;->isResponseSuccessful(Lcom/android/vending/model/BaseResponse;)Z

    move-result v3

    .line 249
    .local v3, "success":Z
    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    move v1, v4

    .line 250
    :goto_1
    if-eqz v3, :cond_3

    .line 251
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 253
    invoke-virtual {v2}, Lcom/android/vending/api/RequestManager$BatchRequest;->getListener()Lcom/android/vending/api/RequestManager$ResponseListener;

    move-result-object v4

    invoke-interface {v4, v2, v5}, Lcom/android/vending/api/RequestManager$ResponseListener;->onResponse(Lcom/android/vending/api/RequestManager$BatchRequest;Z)V

    goto :goto_0

    :cond_2
    move v1, v5

    .line 249
    goto :goto_1

    .line 257
    :cond_3
    if-nez p4, :cond_1

    .line 258
    invoke-virtual {p0, v2}, Lcom/android/vending/api/RequestManager;->addRequest(Lcom/android/vending/api/RequestManager$BatchRequest;)V

    goto :goto_0

    .line 263
    .end local v2    # "request":Lcom/android/vending/api/RequestManager$BatchRequest;
    .end local v3    # "success":Z
    :cond_4
    if-nez v1, :cond_5

    if-nez p4, :cond_5

    .line 264
    new-instance v4, Lcom/android/vending/api/ServiceFailureException;

    const-string v5, "Some requests failed on the server."

    invoke-direct {v4, v5}, Lcom/android/vending/api/ServiceFailureException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 266
    :cond_5
    return-void
.end method

.method private isResponseSuccessful(Lcom/android/vending/model/BaseResponse;)Z
    .locals 4
    .param p1, "response"    # Lcom/android/vending/model/BaseResponse;

    .prologue
    const/4 v3, 0x0

    .line 280
    invoke-virtual {p1}, Lcom/android/vending/model/BaseResponse;->getResponseProperties()Lcom/android/vending/model/ResponseProperties;

    move-result-object v0

    .line 281
    .local v0, "responseProperties":Lcom/android/vending/model/ResponseProperties;
    if-nez v0, :cond_0

    move v2, v3

    .line 291
    :goto_0
    return v2

    .line 284
    :cond_0
    invoke-virtual {v0}, Lcom/android/vending/model/ResponseProperties;->getResult()Lcom/android/vending/model/ResponseProperties$ResultType;

    move-result-object v1

    .line 285
    .local v1, "responseResult":Lcom/android/vending/model/ResponseProperties$ResultType;
    sget-object v2, Lcom/android/vending/model/ResponseProperties$ResultType;->INTERNAL_SERVICE_ERROR:Lcom/android/vending/model/ResponseProperties$ResultType;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/android/vending/model/ResponseProperties$ResultType;->BAD_REQUEST:Lcom/android/vending/model/ResponseProperties$ResultType;

    if-ne v1, v2, :cond_2

    :cond_1
    move v2, v3

    .line 287
    goto :goto_0

    .line 288
    :cond_2
    sget-object v2, Lcom/android/vending/model/ResponseProperties$ResultType;->OK:Lcom/android/vending/model/ResponseProperties$ResultType;

    if-eq v1, v2, :cond_3

    sget-object v2, Lcom/android/vending/model/ResponseProperties$ResultType;->NOT_MODIFIED:Lcom/android/vending/model/ResponseProperties$ResultType;

    if-eq v1, v2, :cond_3

    sget-object v2, Lcom/android/vending/model/ResponseProperties$ResultType;->USER_INPUT_ERROR:Lcom/android/vending/model/ResponseProperties$ResultType;

    if-ne v1, v2, :cond_4

    .line 291
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 293
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot handle this result type: "

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private setServerVersion(Lcom/android/vending/api/RequestManager$BatchRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/android/vending/api/RequestManager$BatchRequest;

    .prologue
    .line 298
    sget-boolean v0, Lcom/android/vending/api/RequestManager;->sHasSetServerVersion:Z

    if-nez v0, :cond_0

    .line 299
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/vending/api/RequestManager;->sHasSetServerVersion:Z

    .line 300
    iget-object v0, p0, Lcom/android/vending/api/RequestManager;->mClientContext:Lcom/android/vending/VendingApplication$ApiClientContext;

    invoke-virtual {p1}, Lcom/android/vending/api/RequestManager$BatchRequest;->getBaseResponse()Lcom/android/vending/model/BaseResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/vending/model/BaseResponse;->getResponseProperties()Lcom/android/vending/model/ResponseProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/vending/model/ResponseProperties;->getServerVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/vending/VendingApplication$ApiClientContext;->setServerVersion(I)V

    .line 303
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addRequest(Lcom/android/vending/api/RequestManager$ResponseListener;Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;Z)Lcom/android/vending/api/RequestManager$BatchRequest;
    .locals 2
    .param p1, "listener"    # Lcom/android/vending/api/RequestManager$ResponseListener;
    .param p2, "request"    # Lcom/android/vending/model/BaseRequest;
    .param p3, "response"    # Lcom/android/vending/model/BaseResponse;
    .param p4, "canPostponeRefresh"    # Z

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/vending/api/RequestManager$BatchRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/vending/api/RequestManager$BatchRequest;-><init>(Lcom/android/vending/api/RequestManager$ResponseListener;Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;Z)V

    .line 124
    .local v0, "result":Lcom/android/vending/api/RequestManager$BatchRequest;
    invoke-virtual {p0, v0}, Lcom/android/vending/api/RequestManager;->addRequest(Lcom/android/vending/api/RequestManager$BatchRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit p0

    return-object v0

    .line 123
    .end local v0    # "result":Lcom/android/vending/api/RequestManager$BatchRequest;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized addRequest(Lcom/android/vending/api/RequestManager$BatchRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/android/vending/api/RequestManager$BatchRequest;

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/vending/api/RequestManager;->mRequests:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vending/api/RequestManager;->mRequests:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vending/api/RequestManager;->mNotifiedRequests:Ljava/util/ArrayList;

    .line 140
    :cond_0
    invoke-virtual {p1}, Lcom/android/vending/api/RequestManager$BatchRequest;->getListener()Lcom/android/vending/api/RequestManager$ResponseListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/vending/api/RequestManager$ResponseListener;->clearResponse()V

    .line 141
    iget-object v0, p0, Lcom/android/vending/api/RequestManager;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized doRequests()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vending/api/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/vending/api/RequestManager;->mIsProcessedFromCache:Z

    if-nez v0, :cond_0

    .line 214
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/vending/api/RequestManager;->doRequestsFromCache(Z)Z

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/vending/api/RequestManager;->mRequests:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/vending/api/RequestManager;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 223
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 219
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/vending/api/RequestManager;->mRequestContext:Lcom/android/vending/api/RequestDispatcher$RequestContext;

    invoke-virtual {v0}, Lcom/android/vending/api/RequestDispatcher$RequestContext;->isAllCachedOrPostponed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/android/vending/api/RequestManager;->mRequests:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/vending/api/RequestManager;->mNotifiedRequests:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/vending/api/RequestManager;->mRequestContext:Lcom/android/vending/api/RequestDispatcher$RequestContext;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/vending/api/RequestManager;->doRequestsOverNetwork(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/vending/api/RequestDispatcher$RequestContext;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized doRequestsFromCache(Z)Z
    .locals 7
    .param p1, "checkDiskToo"    # Z

    .prologue
    const/4 v4, 0x1

    .line 156
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/vending/api/RequestManager;->mRequests:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/vending/api/RequestManager;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v3, v4

    .line 179
    :goto_0
    monitor-exit p0

    return v3

    .line 159
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/vending/api/RequestManager;->mRequestDispatcher:Lcom/android/vending/api/RequestDispatcher;

    iget-object v4, p0, Lcom/android/vending/api/RequestManager;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/android/vending/api/RequestDispatcher;->createContext(Ljava/util/List;)Lcom/android/vending/api/RequestDispatcher$RequestContext;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vending/api/RequestManager;->mRequestContext:Lcom/android/vending/api/RequestDispatcher$RequestContext;

    .line 160
    iget-object v3, p0, Lcom/android/vending/api/RequestManager;->mRequestDispatcher:Lcom/android/vending/api/RequestDispatcher;

    iget-object v4, p0, Lcom/android/vending/api/RequestManager;->mRequestContext:Lcom/android/vending/api/RequestDispatcher$RequestContext;

    invoke-virtual {v3, v4, p1}, Lcom/android/vending/api/RequestDispatcher;->performRequestsFromCache(Lcom/android/vending/api/RequestDispatcher$RequestContext;Z)V

    .line 161
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/vending/api/RequestManager;->mIsProcessedFromCache:Z

    .line 163
    iget-object v3, p0, Lcom/android/vending/api/RequestManager;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vending/api/RequestManager$BatchRequest;

    .line 164
    .local v1, "request":Lcom/android/vending/api/RequestManager$BatchRequest;
    invoke-virtual {v1}, Lcom/android/vending/api/RequestManager$BatchRequest;->getBaseResponse()Lcom/android/vending/model/BaseResponse;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/vending/api/RequestManager;->isResponseSuccessful(Lcom/android/vending/model/BaseResponse;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 166
    invoke-virtual {v1}, Lcom/android/vending/api/RequestManager$BatchRequest;->getListener()Lcom/android/vending/api/RequestManager$ResponseListener;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v1, v4}, Lcom/android/vending/api/RequestManager$ResponseListener;->onResponse(Lcom/android/vending/api/RequestManager$BatchRequest;Z)V

    .line 167
    iget-object v3, p0, Lcom/android/vending/api/RequestManager;->mNotifiedRequests:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 156
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "request":Lcom/android/vending/api/RequestManager$BatchRequest;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 172
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/android/vending/api/RequestManager;->mRequestContext:Lcom/android/vending/api/RequestDispatcher$RequestContext;

    invoke-virtual {v3}, Lcom/android/vending/api/RequestDispatcher$RequestContext;->isAllCachedOrPostponed()Z

    move-result v2

    .line 173
    .local v2, "wasProcessedCompletelyFromCache":Z
    iget-object v3, p0, Lcom/android/vending/api/RequestManager;->mRequestContext:Lcom/android/vending/api/RequestDispatcher$RequestContext;

    invoke-virtual {v3}, Lcom/android/vending/api/RequestDispatcher$RequestContext;->isAsyncRequestNeeded()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 174
    new-instance v3, Lcom/android/vending/api/RequestManager$AsynchTaskDoRequestsOverNetwork;

    iget-object v4, p0, Lcom/android/vending/api/RequestManager;->mRequests:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/vending/api/RequestManager;->mNotifiedRequests:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/vending/api/RequestManager;->mRequestContext:Lcom/android/vending/api/RequestDispatcher$RequestContext;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/vending/api/RequestManager$AsynchTaskDoRequestsOverNetwork;-><init>(Lcom/android/vending/api/RequestManager;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/vending/api/RequestDispatcher$RequestContext;)V

    invoke-virtual {v3}, Lcom/android/vending/api/RequestManager$AsynchTaskDoRequestsOverNetwork;->execute()V

    .line 176
    invoke-virtual {p0}, Lcom/android/vending/api/RequestManager;->reset()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    move v3, v2

    .line 179
    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 273
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/vending/api/RequestManager;->mRequests:Ljava/util/ArrayList;

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vending/api/RequestManager;->mNotifiedRequests:Ljava/util/ArrayList;

    .line 275
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vending/api/RequestManager;->mIsProcessedFromCache:Z

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vending/api/RequestManager;->mRequestContext:Lcom/android/vending/api/RequestDispatcher$RequestContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    monitor-exit p0

    return-void

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
