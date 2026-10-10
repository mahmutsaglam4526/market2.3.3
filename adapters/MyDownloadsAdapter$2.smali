.class Lcom/android/vending/adapters/MyDownloadsAdapter$2;
.super Ljava/lang/Object;
.source "MyDownloadsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/adapters/MyDownloadsAdapter;->addAssets(Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/adapters/MyDownloadsAdapter;

.field final synthetic val$assets:Ljava/util/List;

.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$correctedAssets:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/vending/adapters/MyDownloadsAdapter;Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$2;->this$0:Lcom/android/vending/adapters/MyDownloadsAdapter;

    iput-object p2, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$2;->val$assets:Ljava/util/List;

    iput-object p3, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$2;->val$correctedAssets:Ljava/util/List;

    iput-object p4, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$2;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$2;->this$0:Lcom/android/vending/adapters/MyDownloadsAdapter;

    iget-object v1, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$2;->val$assets:Ljava/util/List;

    iget-object v2, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$2;->val$correctedAssets:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/adapters/MyDownloadsAdapter;->addAssets(Ljava/util/List;Ljava/util/List;)V

    .line 232
    iget-object v0, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$2;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 233
    return-void
.end method
