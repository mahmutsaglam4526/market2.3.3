.class Lcom/android/vending/velvet/CarouselView$ImageLoader$1$1;
.super Ljava/lang/Object;
.source "CarouselView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/velvet/CarouselView$ImageLoader$1;->onGetImageResponse(Lcom/android/vending/model/GetImageRequest;Lcom/android/vending/model/GetImageResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/vending/velvet/CarouselView$ImageLoader$1;

.field final synthetic val$thumbnail:Lcom/android/vending/velvet/CarouselView$Thumbnail;


# direct methods
.method constructor <init>(Lcom/android/vending/velvet/CarouselView$ImageLoader$1;Lcom/android/vending/velvet/CarouselView$Thumbnail;)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader$1$1;->this$2:Lcom/android/vending/velvet/CarouselView$ImageLoader$1;

    iput-object p2, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader$1$1;->val$thumbnail:Lcom/android/vending/velvet/CarouselView$Thumbnail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader$1$1;->this$2:Lcom/android/vending/velvet/CarouselView$ImageLoader$1;

    iget-object v1, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader$1$1;->val$thumbnail:Lcom/android/vending/velvet/CarouselView$Thumbnail;

    invoke-static {v0, v1}, Lcom/android/vending/velvet/CarouselView$ImageLoader$1;->access$400(Lcom/android/vending/velvet/CarouselView$ImageLoader$1;Lcom/android/vending/velvet/CarouselView$Thumbnail;)V

    .line 446
    return-void
.end method
