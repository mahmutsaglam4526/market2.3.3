.class Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor;
.super Ljava/lang/Object;
.source "AssetInfoActivity.java"

# interfaces
.implements Lcom/android/vending/controller/DialogAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AssetInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RatingDialogAccessor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/AssetInfoActivity;


# direct methods
.method private constructor <init>(Lcom/android/vending/AssetInfoActivity;)V
    .locals 0

    .prologue
    .line 2770
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2787
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vending/AssetInfoActivity;Lcom/android/vending/AssetInfoActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/vending/AssetInfoActivity;
    .param p2, "x1"    # Lcom/android/vending/AssetInfoActivity$1;

    .prologue
    .line 2770
    invoke-direct {p0, p1}, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor;-><init>(Lcom/android/vending/AssetInfoActivity;)V

    return-void
.end method


# virtual methods
.method public create()Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 2772
    new-instance v0, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-direct {v0, p0, v1}, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;-><init>(Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor;Landroid/content/Context;)V

    return-object v0
.end method

.method public prepare(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 2776
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;I)V
    .locals 0
    .param p1, "icicle"    # Landroid/os/Bundle;
    .param p2, "id"    # I

    .prologue
    .line 2780
    return-void
.end method

.method public saveState(Landroid/os/Bundle;I)V
    .locals 0
    .param p1, "icicle"    # Landroid/os/Bundle;
    .param p2, "id"    # I

    .prologue
    .line 2778
    return-void
.end method
