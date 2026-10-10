.class Lcom/android/vending/AssetInfoActivity$PermissionsSection$3;
.super Lcom/android/vending/compat/animation/AnimatorListenerAdapter;
.source "AssetInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/AssetInfoActivity$PermissionsSection;->deactivate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/vending/AssetInfoActivity$PermissionsSection;


# direct methods
.method constructor <init>(Lcom/android/vending/AssetInfoActivity$PermissionsSection;)V
    .locals 0

    .prologue
    .line 1546
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection$3;->this$1:Lcom/android/vending/AssetInfoActivity$PermissionsSection;

    invoke-direct {p0}, Lcom/android/vending/compat/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/android/vending/compat/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Lcom/android/vending/compat/animation/Animator;

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection$3;->this$1:Lcom/android/vending/AssetInfoActivity$PermissionsSection;

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection$3;->this$1:Lcom/android/vending/AssetInfoActivity$PermissionsSection;

    iget-object v1, v1, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-virtual {v1}, Lcom/android/vending/AssetInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->access$3200(Lcom/android/vending/AssetInfoActivity$PermissionsSection;I)V

    .line 1550
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection$3;->this$1:Lcom/android/vending/AssetInfoActivity$PermissionsSection;

    invoke-static {v0}, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->access$3901(Lcom/android/vending/AssetInfoActivity$PermissionsSection;)V

    .line 1551
    return-void
.end method
