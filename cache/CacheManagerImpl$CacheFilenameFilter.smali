.class Lcom/android/vending/cache/CacheManagerImpl$CacheFilenameFilter;
.super Ljava/lang/Object;
.source "CacheManagerImpl.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/cache/CacheManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheFilenameFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vending/cache/CacheManagerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/vending/cache/CacheManagerImpl$1;

    .prologue
    .line 684
    invoke-direct {p0}, Lcom/android/vending/cache/CacheManagerImpl$CacheFilenameFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 686
    const-string v0, "AVMC_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
