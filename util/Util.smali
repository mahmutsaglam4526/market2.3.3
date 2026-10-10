.class public Lcom/android/vending/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/util/Util$CreditCardNumberFilter;
    }
.end annotation


# static fields
.field private static volatile sSystemWasUpgraded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/vending/util/Util;->sSystemWasUpgraded:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static dipsToPixels(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dips"    # I

    .prologue
    .line 312
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static findReceiverName(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 369
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 370
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    invoke-virtual {v1, p2, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 372
    .local v3, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 373
    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 374
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 375
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_0

    .line 376
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 377
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v4, p2

    .line 384
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_0
    return-object v4

    .line 382
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find billing receiver in package \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' for action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    .line 384
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getAssetIdFromInfoUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 78
    const-string v1, "id"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    move-object v1, v0

    .line 85
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getDefaultCountry(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 343
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 344
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 346
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "iso":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 351
    .end local v0    # "iso":Ljava/lang/String;
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 352
    const-string p1, "US"

    .line 355
    :cond_1
    return-object p1
.end method

.method public static getQueryFromSearchUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 98
    const-string v1, "q"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "query":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    move-object v1, v0

    .line 105
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getReferrerFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 121
    const-string v1, "referrer"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "referrer":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    move-object v1, v0

    .line 128
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getScreenDimensions(Landroid/content/Context;)Landroid/util/Pair;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 329
    const-string v5, "window"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 330
    .local v4, "wm":Landroid/view/WindowManager;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 331
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 335
    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 336
    .local v3, "width":I
    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 337
    .local v1, "height":I
    new-instance v0, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 338
    .local v0, "dimensions":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    return-object v0
.end method

.method public static getSearchQueryForPublisher(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "publisher"    # Ljava/lang/String;

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pub:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSearchQueryForRelated(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "similar:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getViewOffsetToChild(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)I
    .locals 1
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 303
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 304
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 305
    iget v0, p2, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public static inflateView(ILandroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p0, "resource"    # I
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/vending/util/Util;->inflateView(ILandroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static inflateView(ILandroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p0, "resource"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 50
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 52
    .local v0, "vi":Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public static isEmptyOrSpaces(Ljava/lang/String;)Z
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 206
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static longestString(Ljava/util/Collection;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 419
    .local p0, "strings":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 420
    .local v1, "longest":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 421
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    .line 423
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method public static needLoadMore(JJJ)Z
    .locals 2
    .param p0, "scrollPosition"    # J
    .param p2, "loadedCount"    # J
    .param p4, "totalCount"    # J

    .prologue
    .line 195
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x3

    add-long/2addr v0, p0

    cmp-long v0, v0, p2

    if-ltz v0, :cond_0

    cmp-long v0, p2, p4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static replaceLanguageAndRegion(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const-string v3, "%region%"

    const-string v2, "%lang%"

    .line 176
    const-string v1, "%lang%"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "%region%"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    :cond_0
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/vending/VendingApplication;->getApiClientContext()Lcom/android/vending/VendingApplication$ApiClientContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/vending/VendingApplication$ApiClientContext;->getUserLocale()Ljava/util/Locale;

    move-result-object v0

    .line 179
    .local v0, "locale":Ljava/util/Locale;
    const-string v1, "%lang%"

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 180
    const-string v1, "%region%"

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 182
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_1
    return-object p0
.end method

.method public static replaceLocale(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const-string v4, "%locale%"

    .line 157
    const-string v2, "%locale%"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/vending/VendingApplication;->getApiClientContext()Lcom/android/vending/VendingApplication$ApiClientContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/vending/VendingApplication$ApiClientContext;->getUserLocale()Ljava/util/Locale;

    move-result-object v0

    .line 160
    .local v0, "locale":Ljava/util/Locale;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "tmp":Ljava/lang/String;
    const-string v2, "%locale%"

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 163
    .end local v0    # "locale":Ljava/util/Locale;
    .end local v1    # "tmp":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static streamToString(Ljava/io/InputStream;ILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "maxLength"    # I
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 219
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 220
    .local v2, "reader":Ljava/io/InputStreamReader;
    const/16 v5, 0x1000

    new-array v0, v5, [C

    .line 221
    .local v0, "buffer":[C
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 222
    .local v3, "sw":Ljava/io/StringWriter;
    const/4 v4, 0x0

    .line 223
    .local v4, "totalRead":I
    const/4 v1, 0x0

    .line 226
    .local v1, "read":I
    :cond_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0, v7, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v3, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 227
    add-int/2addr v4, v1

    .line 228
    array-length v5, v0

    invoke-virtual {v2, v0, v7, v5}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v1

    .line 229
    if-eq v6, p1, :cond_1

    if-ge v4, p1, :cond_2

    :cond_1
    if-ne v1, v6, :cond_0

    .line 231
    :cond_2
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static wasSystemUpgraded()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 394
    sget-boolean v2, Lcom/android/vending/util/Util;->sSystemWasUpgraded:Z

    if-eqz v2, :cond_0

    move v2, v3

    .line 411
    :goto_0
    return v2

    .line 399
    :cond_0
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 400
    .local v0, "currentFingerprint":Ljava/lang/String;
    sget-object v2, Lcom/android/vending/util/VendingPreferences;->LAST_BUILD_FINGERPRINT:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v2}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 402
    .local v1, "lastFingerprint":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 403
    const/4 v2, 0x0

    goto :goto_0

    .line 408
    :cond_1
    sput-boolean v3, Lcom/android/vending/util/Util;->sSystemWasUpgraded:Z

    .line 410
    sget-object v2, Lcom/android/vending/util/VendingPreferences;->LAST_BUILD_FINGERPRINT:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v2, v0}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    move v2, v3

    .line 411
    goto :goto_0
.end method
