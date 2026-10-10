.class public Lcom/android/vending/model/QuerySuggestionResponse$HistoryCursorAdapter;
.super Landroid/database/AbstractCursor;
.source "QuerySuggestionResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/model/QuerySuggestionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HistoryCursorAdapter"
.end annotation


# instance fields
.field private mColumnNames:[Ljava/lang/String;

.field private mHistoryCursor:Landroid/database/Cursor;

.field private mIdColumn:I

.field private mTextColumn:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 10
    .param p1, "historyCursor"    # Landroid/database/Cursor;

    .prologue
    const-string v9, "suggest_text_1"

    const-string v8, "_id"

    .line 160
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 153
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v8, v5, v6

    const/4 v6, 0x1

    const-string v7, "suggest_text_1"

    aput-object v9, v5, v6

    const/4 v6, 0x2

    const-string v7, "suggest_text_2"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "suggest_icon_1"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "suggest_intent_query"

    aput-object v7, v5, v6

    iput-object v5, p0, Lcom/android/vending/model/QuerySuggestionResponse$HistoryCursorAdapter;->mColumnNames:[Ljava/lang/String;

    .line 161
    iput-object p1, p0, Lcom/android/vending/model/QuerySuggestionResponse$HistoryCursorAdapter;->mHistoryCursor:Landroid/database/Cursor;

    .line 163
    const/4 v1, 0x0

    .line 164
    .local v1, "col":I
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    .line 165
    .local v2, "historyCol":Ljava/lang/String;
    const-string v5, "_id"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 166
    iput v1, p0, Lcom/android/vending/model/QuerySuggestionResponse$HistoryCursorAdapter;->mIdColumn:I

    .line 170
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 164
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 167
    :cond_1
    const-string v5, "suggest_text_1"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 168
    iput v1, p0, Lcom/android/vending/model/QuerySuggestionResponse$HistoryCursorAdapter;->mTextColumn:I

    goto :goto_1

    .line 172
    .end local v2    # "historyCol":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/vending/model/QuerySuggestionResponse$HistoryCursorAdapter;->mHistoryCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 177
    return-void
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x5

    return v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/vending/model/QuerySuggestionResponse$HistoryCursorAdapter;->mColumnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/vending/model/QuerySuggestionResponse$HistoryCursorAdapter;->mHistoryCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 203
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public getInt(I)I
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 211
    if-nez p1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/vending/model/QuerySuggestionResponse$HistoryCursorAdapter;->mHistoryCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/vending/model/QuerySuggestionResponse$HistoryCursorAdapter;->mIdColumn:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 214
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 218
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 226
    packed-switch p1, :pswitch_data_0

    .line 234
    :pswitch_0
    const-string v0, ""

    :goto_0
    return-object v0

    .line 230
    :pswitch_1
    iget-object v0, p0, Lcom/android/vending/model/QuerySuggestionResponse$HistoryCursorAdapter;->mHistoryCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/vending/model/QuerySuggestionResponse$HistoryCursorAdapter;->mTextColumn:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 232
    :pswitch_2
    const v0, 0x108004a

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/vending/model/QuerySuggestionResponse$HistoryCursorAdapter;->mHistoryCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/model/QuerySuggestionResponse$HistoryCursorAdapter;->mHistoryCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/vending/model/QuerySuggestionResponse$HistoryCursorAdapter;->mColumnNames:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/model/QuerySuggestionResponse$HistoryCursorAdapter;->mHistoryCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMove(II)Z
    .locals 2
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/vending/model/QuerySuggestionResponse$HistoryCursorAdapter;->mHistoryCursor:Landroid/database/Cursor;

    sub-int v1, p2, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->move(I)Z

    move-result v0

    return v0
.end method

.method public requery()Z
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/vending/model/QuerySuggestionResponse$HistoryCursorAdapter;->mHistoryCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    return v0
.end method
