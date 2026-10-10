.class public Lcom/android/vending/util/CommentUtil;
.super Ljava/lang/Object;
.source "CommentUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/util/CommentUtil$LifecycleHandler;,
        Lcom/android/vending/util/CommentUtil$OnMarkedAsSpamHandler;,
        Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    return-void
.end method

.method public static createCommentsRequest(Ljava/lang/String;ILjava/lang/String;)Lcom/android/vending/model/CommentsRequest;
    .locals 5
    .param p0, "assetId"    # Ljava/lang/String;
    .param p1, "pageNum"    # I
    .param p2, "assetReferrer"    # Ljava/lang/String;

    .prologue
    .line 219
    invoke-static {p1}, Lcom/android/vending/util/CommentUtil;->getStartIndexForPage(I)I

    move-result v2

    .line 220
    .local v2, "startIndex":I
    const/16 v0, 0xa

    .line 222
    .local v0, "numComments":I
    new-instance v1, Lcom/android/vending/model/CommentsRequest;

    invoke-direct {v1}, Lcom/android/vending/model/CommentsRequest;-><init>()V

    .line 223
    .local v1, "request":Lcom/android/vending/model/CommentsRequest;
    invoke-virtual {v1, p0}, Lcom/android/vending/model/CommentsRequest;->setAssetId(Ljava/lang/String;)V

    .line 224
    int-to-long v3, v2

    invoke-virtual {v1, v3, v4}, Lcom/android/vending/model/CommentsRequest;->setStartIndex(J)V

    .line 225
    int-to-long v3, v0

    invoke-virtual {v1, v3, v4}, Lcom/android/vending/model/CommentsRequest;->setNumEntries(J)V

    .line 226
    invoke-virtual {v1, p2}, Lcom/android/vending/model/CommentsRequest;->setAssetReferrer(Ljava/lang/String;)V

    .line 229
    if-nez p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v1, v3}, Lcom/android/vending/model/CommentsRequest;->setShouldReturnSelfComment(Z)V

    .line 230
    return-object v1

    .line 229
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getStartIndexForPage(I)I
    .locals 1
    .param p0, "pageNum"    # I

    .prologue
    .line 240
    mul-int/lit8 v0, p0, 0xa

    return v0
.end method

.method public static invalidateCachedCommentsResponses(Ljava/lang/String;Z)V
    .locals 6
    .param p0, "assetId"    # Ljava/lang/String;
    .param p1, "withSelfCommentOnly"    # Z

    .prologue
    .line 252
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getCacheManager()Lcom/android/vending/cache/CacheManager;

    move-result-object v0

    .line 254
    .local v0, "cacheManager":Lcom/android/vending/cache/CacheManager;
    const/4 v1, 0x1

    .line 255
    .local v1, "invalidateNextPage":Z
    const/4 v2, 0x0

    .local v2, "pageNum":I
    move v3, v2

    .line 259
    .end local v2    # "pageNum":I
    .local v3, "pageNum":I
    :goto_0
    if-eqz v1, :cond_1

    .line 260
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "pageNum":I
    .restart local v2    # "pageNum":I
    const/4 v5, 0x0

    invoke-static {p0, v3, v5}, Lcom/android/vending/util/CommentUtil;->createCommentsRequest(Ljava/lang/String;ILjava/lang/String;)Lcom/android/vending/model/CommentsRequest;

    move-result-object v4

    .line 263
    .local v4, "request":Lcom/android/vending/model/CommentsRequest;
    invoke-interface {v0, v4}, Lcom/android/vending/cache/CacheManager;->invalidate(Lcom/android/vending/cache/Cacheable;)Z

    move-result v1

    .line 265
    if-eqz p1, :cond_0

    .line 266
    const/4 v1, 0x0

    :cond_0
    move v3, v2

    .line 268
    .end local v2    # "pageNum":I
    .restart local v3    # "pageNum":I
    goto :goto_0

    .line 269
    .end local v4    # "request":Lcom/android/vending/model/CommentsRequest;
    :cond_1
    return-void
.end method

.method public static sendCommentRating(Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/model/RateCommentRequest$CommentRating;)V
    .locals 2
    .param p0, "assetId"    # Ljava/lang/String;
    .param p1, "creatorId"    # Ljava/lang/String;
    .param p2, "commentRating"    # Lcom/android/vending/model/RateCommentRequest$CommentRating;

    .prologue
    .line 204
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getAsynchRequestRunner()Lcom/android/vending/AsynchRequestRunner;

    move-result-object v0

    new-instance v1, Lcom/android/vending/AsynchRateCommentRequest;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/vending/AsynchRateCommentRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/model/RateCommentRequest$CommentRating;)V

    invoke-virtual {v0, v1}, Lcom/android/vending/AsynchRequestRunner;->runRequest(Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;)V

    .line 206
    return-void
.end method
