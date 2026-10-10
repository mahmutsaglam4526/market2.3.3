.class Lcom/android/vending/util/WorkService$Holder;
.super Ljava/lang/Object;
.source "WorkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/util/WorkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final instance:Lcom/android/vending/util/WorkService$Facade;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/android/vending/util/WorkService$Facade;

    invoke-direct {v0}, Lcom/android/vending/util/WorkService$Facade;-><init>()V

    sput-object v0, Lcom/android/vending/util/WorkService$Holder;->instance:Lcom/android/vending/util/WorkService$Facade;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/vending/util/WorkService$Facade;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/android/vending/util/WorkService$Holder;->instance:Lcom/android/vending/util/WorkService$Facade;

    return-object v0
.end method
