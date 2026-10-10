.class Lcom/android/vending/velvet/CarouselView$7;
.super Ljava/lang/Object;
.source "CarouselView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/velvet/CarouselView;->load([Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/velvet/CarouselView;


# direct methods
.method constructor <init>(Lcom/android/vending/velvet/CarouselView;)V
    .locals 0

    .prologue
    .line 1301
    iput-object p1, p0, Lcom/android/vending/velvet/CarouselView$7;->this$0:Lcom/android/vending/velvet/CarouselView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView$7;->this$0:Lcom/android/vending/velvet/CarouselView;

    invoke-static {v0}, Lcom/android/vending/velvet/CarouselView;->access$1600(Lcom/android/vending/velvet/CarouselView;)V

    .line 1304
    return-void
.end method
