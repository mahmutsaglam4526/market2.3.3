.class Lcom/android/vending/util/WorkService$1;
.super Ljava/lang/Object;
.source "WorkService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/util/WorkService;->handleStartCommand(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/util/WorkService;

.field final synthetic val$r:Ljava/lang/Runnable;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/android/vending/util/WorkService;Ljava/lang/Runnable;I)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/vending/util/WorkService$1;->this$0:Lcom/android/vending/util/WorkService;

    iput-object p2, p0, Lcom/android/vending/util/WorkService$1;->val$r:Ljava/lang/Runnable;

    iput p3, p0, Lcom/android/vending/util/WorkService$1;->val$startId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/vending/util/WorkService$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 81
    iget-object v0, p0, Lcom/android/vending/util/WorkService$1;->this$0:Lcom/android/vending/util/WorkService;

    iget v1, p0, Lcom/android/vending/util/WorkService$1;->val$startId:I

    invoke-virtual {v0, v1}, Lcom/android/vending/util/WorkService;->stopSelfResult(I)Z

    .line 82
    return-void
.end method
