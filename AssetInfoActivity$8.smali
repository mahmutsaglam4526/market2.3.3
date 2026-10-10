.class Lcom/android/vending/AssetInfoActivity$8;
.super Ljava/lang/Object;
.source "AssetInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/AssetInfoActivity;->initComments()V
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
    .line 890
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$8;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 892
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$8;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/android/vending/AssetInfoActivity$8;
    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/vending/AssetInfoActivity;->access$1600(Lcom/android/vending/AssetInfoActivity;Ljava/lang/String;)V

    .line 893
    return-void
.end method
