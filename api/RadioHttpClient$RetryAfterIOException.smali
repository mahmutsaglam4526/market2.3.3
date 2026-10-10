.class public Lcom/android/vending/api/RadioHttpClient$RetryAfterIOException;
.super Ljava/io/IOException;
.source "RadioHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/api/RadioHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RetryAfterIOException"
.end annotation


# instance fields
.field private mRetryAfterSeconds:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "retryAfterSeconds"    # I

    .prologue
    .line 374
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 375
    iput p1, p0, Lcom/android/vending/api/RadioHttpClient$RetryAfterIOException;->mRetryAfterSeconds:I

    .line 376
    return-void
.end method


# virtual methods
.method public getRetryAfterSeconds()I
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lcom/android/vending/api/RadioHttpClient$RetryAfterIOException;->mRetryAfterSeconds:I

    return v0
.end method
