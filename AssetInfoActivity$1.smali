.class Lcom/android/vending/AssetInfoActivity$1;
.super Landroid/database/DataSetObserver;
.source "AssetInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/AssetInfoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/AssetInfoActivity;


# direct methods
.method constructor <init>(Lcom/android/vending/AssetInfoActivity;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$1;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 274
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 275
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$1;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v0}, Lcom/android/vending/AssetInfoActivity;->access$000(Lcom/android/vending/AssetInfoActivity;)V

    .line 276
    return-void
.end method
