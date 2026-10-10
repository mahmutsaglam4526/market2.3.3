.class public interface abstract Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;
.super Ljava/lang/Object;
.source "AsynchRequestRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AsynchRequestRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ManagedAsynchRequest"
.end annotation


# virtual methods
.method public abstract doRequest(Lcom/android/vending/api/RequestManager;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vending/api/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onException(Ljava/lang/Throwable;)V
.end method
