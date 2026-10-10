.class Lcom/android/vending/cache/CacheManagerImpl$CacheCleanComparator;
.super Ljava/lang/Object;
.source "CacheManagerImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/cache/CacheManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheCleanComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vending/cache/CacheManagerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/vending/cache/CacheManagerImpl$1;

    .prologue
    .line 695
    invoke-direct {p0}, Lcom/android/vending/cache/CacheManagerImpl$CacheCleanComparator;-><init>()V

    return-void
.end method

.method private compareLastMod(Ljava/io/File;Ljava/io/File;)I
    .locals 5
    .param p1, "file1"    # Ljava/io/File;
    .param p2, "file2"    # Ljava/io/File;

    .prologue
    .line 703
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 704
    .local v0, "lastMod1":J
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 705
    .local v2, "lastMod2":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v4, -0x1

    :goto_0
    return v4

    :cond_0
    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private comparePriority(Ljava/io/File;Ljava/io/File;)I
    .locals 3
    .param p1, "file1"    # Ljava/io/File;
    .param p2, "file2"    # Ljava/io/File;

    .prologue
    .line 697
    invoke-static {p1}, Lcom/android/vending/cache/CacheManagerImpl;->access$200(Ljava/io/File;)Z

    move-result v0

    .line 698
    .local v0, "prio1":Z
    invoke-static {p2}, Lcom/android/vending/cache/CacheManagerImpl;->access$200(Ljava/io/File;)Z

    move-result v1

    .line 699
    .local v1, "prio2":Z
    if-ne v0, v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 1
    .param p1, "file1"    # Ljava/io/File;
    .param p2, "file2"    # Ljava/io/File;

    .prologue
    .line 709
    invoke-direct {p0, p1, p2}, Lcom/android/vending/cache/CacheManagerImpl$CacheCleanComparator;->comparePriority(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    .line 710
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 711
    invoke-direct {p0, p1, p2}, Lcom/android/vending/cache/CacheManagerImpl$CacheCleanComparator;->compareLastMod(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    .line 713
    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 695
    check-cast p1, Ljava/io/File;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/io/File;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/vending/cache/CacheManagerImpl$CacheCleanComparator;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
