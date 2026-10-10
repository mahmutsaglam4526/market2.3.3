.class public Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;
.super Landroid/database/AbstractCursor;
.source "QuerySuggestionResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/model/QuerySuggestionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SuggestServerResultCursor"
.end annotation


# instance fields
.field private mColumnNames:[Ljava/lang/String;

.field private mSuggestions:Lcom/android/vending/model/QuerySuggestionResponse;

.field final synthetic this$0:Lcom/android/vending/model/QuerySuggestionResponse;


# direct methods
.method public constructor <init>(Lcom/android/vending/model/QuerySuggestionResponse;Lcom/android/vending/model/QuerySuggestionResponse;)V
    .locals 3
    .param p2, "suggestions"    # Lcom/android/vending/model/QuerySuggestionResponse;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;->this$0:Lcom/android/vending/model/QuerySuggestionResponse;

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 254
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "suggest_intent_query"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;->mColumnNames:[Ljava/lang/String;

    .line 259
    iput-object p2, p0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;->mSuggestions:Lcom/android/vending/model/QuerySuggestionResponse;

    .line 260
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;->mSuggestions:Lcom/android/vending/model/QuerySuggestionResponse;

    .line 270
    return-void
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x5

    return v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;->mColumnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;->mSuggestions:Lcom/android/vending/model/QuerySuggestionResponse;

    if-nez v0, :cond_0

    .line 290
    const/4 v0, 0x0

    .line 292
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;->mSuggestions:Lcom/android/vending/model/QuerySuggestionResponse;

    invoke-virtual {v0}, Lcom/android/vending/model/QuerySuggestionResponse;->getNumSuggestions()I

    move-result v0

    goto :goto_0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 296
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 304
    if-nez p1, :cond_0

    .line 306
    iget v0, p0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;->mPos:I

    .line 308
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 3
    .param p1, "column"    # I

    .prologue
    .line 312
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 313
    iget-object v1, p0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;->mSuggestions:Lcom/android/vending/model/QuerySuggestionResponse;

    iget v2, p0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;->mPos:I

    invoke-virtual {v1, v2}, Lcom/android/vending/model/QuerySuggestionResponse;->getSuggestionType(I)Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;

    move-result-object v0

    .line 314
    .local v0, "suggestionType":Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;
    sget-object v1, Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;->APP_SUGGESTION:Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;

    if-ne v0, v1, :cond_0

    .line 315
    const-wide/32 v1, 0x7f020036

    .line 320
    .end local v0    # "suggestionType":Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;
    :goto_0
    return-wide v1

    .line 317
    .restart local v0    # "suggestionType":Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;
    :cond_0
    const-wide/32 v1, 0x108004f

    goto :goto_0

    .line 320
    .end local v0    # "suggestionType":Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;
    :cond_1
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 324
    const/4 v0, 0x0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4
    .param p1, "column"    # I

    .prologue
    .line 328
    packed-switch p1, :pswitch_data_0

    .line 340
    const-string v2, ""

    :goto_0
    return-object v2

    .line 332
    :pswitch_0
    iget-object v2, p0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;->mSuggestions:Lcom/android/vending/model/QuerySuggestionResponse;

    iget v3, p0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;->mPos:I

    invoke-virtual {v2, v3}, Lcom/android/vending/model/QuerySuggestionResponse;->getSuggestionType(I)Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;

    move-result-object v0

    .line 333
    .local v0, "suggType":Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;
    iget-object v2, p0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;->mSuggestions:Lcom/android/vending/model/QuerySuggestionResponse;

    iget v3, p0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;->mPos:I

    invoke-virtual {v2, v3}, Lcom/android/vending/model/QuerySuggestionResponse;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;->getMainText(Lcom/google/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 335
    .end local v0    # "suggType":Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;
    :pswitch_1
    iget-object v2, p0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;->mSuggestions:Lcom/android/vending/model/QuerySuggestionResponse;

    iget v3, p0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;->mPos:I

    invoke-virtual {v2, v3}, Lcom/android/vending/model/QuerySuggestionResponse;->getSuggestionType(I)Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;

    move-result-object v1

    .line 336
    .local v1, "suggTypeSecondary":Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;
    iget-object v2, p0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;->mSuggestions:Lcom/android/vending/model/QuerySuggestionResponse;

    iget v3, p0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;->mPos:I

    invoke-virtual {v2, v3}, Lcom/android/vending/model/QuerySuggestionResponse;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;->getSecondaryText(Lcom/google/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 338
    .end local v1    # "suggTypeSecondary":Lcom/android/vending/model/QuerySuggestionResponse$SuggestionType;
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;->mSuggestions:Lcom/android/vending/model/QuerySuggestionResponse;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/vending/model/QuerySuggestionResponse$SuggestServerResultCursor;->mColumnNames:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
