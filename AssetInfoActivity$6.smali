.class Lcom/android/vending/AssetInfoActivity$6;
.super Ljava/lang/Object;
.source "AssetInfoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 320
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$6;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$6;->this$0:Lcom/android/vending/AssetInfoActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/vending/AssetInfoActivity;->access$702(Lcom/android/vending/AssetInfoActivity;Z)Z

    .line 323
    return-void
.end method
