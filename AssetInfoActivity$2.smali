.class Lcom/android/vending/AssetInfoActivity$2;
.super Ljava/lang/Object;
.source "AssetInfoActivity.java"

# interfaces
.implements Lcom/android/vending/util/CommentUtil$OnMarkedAsSpamHandler;


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
    .line 284
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$2;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMarkedAsSpam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "assetId"    # Ljava/lang/String;
    .param p2, "creatorId"    # Ljava/lang/String;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$2;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v0, p2}, Lcom/android/vending/AssetInfoActivity;->access$200(Lcom/android/vending/AssetInfoActivity;Ljava/lang/String;)V

    .line 287
    return-void
.end method
