.class public Lcom/android/vending/model/QuerySuggestionResponse;
.super Lcom/android/vending/model/BaseResponse;
.source "QuerySuggestionResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/model/QuerySuggestionResponse$1;,
        Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;,
        Lcom/android/vending/model/QuerySuggestionResponse$HistoryCursorAdapter;,
        Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;
    }
.end annotation


# instance fields
.field private mCursor:Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 96
    sget-object v0, Lcom/android/vending/model/ApiDefsMessageTypes;->QUERY_SUGGESTION_RESPONSE_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x18

    invoke-direct {p0, v0, v1}, Lcom/android/vending/model/BaseResponse;-><init>(Lcom/google/common/io/protocol/ProtoBufType;I)V

    .line 98
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/android/vending/model/ApiDefsMessageTypes;->QUERY_SUGGESTION_RESPONSE_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/android/vending/model/QuerySuggestionResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vending/model/QuerySuggestionResponse;->mCursor:Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;

    .line 100
    return-void
.end method


# virtual methods
.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/vending/model/QuerySuggestionResponse;->mCursor:Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;

    invoke-direct {v0, p0, p0}, Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;-><init>(Lcom/android/vending/model/QuerySuggestionResponse;Lcom/android/vending/model/QuerySuggestionResponse;)V

    iput-object v0, p0, Lcom/android/vending/model/QuerySuggestionResponse;->mCursor:Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/QuerySuggestionResponse;->mCursor:Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;

    return-object v0
.end method

.method public getNumSuggestions()I
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/vending/model/QuerySuggestionResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 117
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/QuerySuggestionResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    goto :goto_0
.end method

.method public getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 140
    .local v0, "suggestion":Lcom/google/common/io/protocol/ProtoBuf;
    :try_start_0
    iget-object v1, p0, Lcom/android/vending/model/QuerySuggestionResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 144
    :goto_0
    return-object v0

    .line 142
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getSuggestionType(I)Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x1

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/vending/model/QuerySuggestionResponse;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 122
    .local v0, "suggestion":Lcom/google/common/io/protocol/ProtoBuf;
    if-nez v0, :cond_0

    .line 123
    sget-object v1, Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;->UNKNOWN:Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;

    .line 133
    :goto_0
    return-object v1

    .line 126
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 128
    sget-object v1, Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;->APP_SUGGESTION:Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;

    goto :goto_0

    .line 129
    :cond_1
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 131
    sget-object v1, Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;->QUERY_SUGGESTION:Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;

    goto :goto_0

    .line 133
    :cond_2
    sget-object v1, Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;->UNKNOWN:Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;

    goto :goto_0
.end method
