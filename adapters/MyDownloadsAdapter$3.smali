.class Lcom/android/vending/adapters/MyDownloadsAdapter$3;
.super Ljava/lang/Object;
.source "MyDownloadsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/adapters/MyDownloadsAdapter;->postNotifyDataSetChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/adapters/MyDownloadsAdapter;


# direct methods
.method constructor <init>(Lcom/android/vending/adapters/MyDownloadsAdapter;)V
    .locals 0

    .prologue
    .line 530
    iput-object p1, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$3;->this$0:Lcom/android/vending/adapters/MyDownloadsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$3;->this$0:Lcom/android/vending/adapters/MyDownloadsAdapter;

    invoke-virtual {v0}, Lcom/android/vending/adapters/MyDownloadsAdapter;->notifyDataSetChanged()V

    .line 533
    return-void
.end method
