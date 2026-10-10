.class Lcom/android/vending/AssetInfoActivity$PermissionsSection$2;
.super Lcom/android/vending/compat/animation/AnimatorListenerAdapter;
.source "AssetInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/AssetInfoActivity$PermissionsSection;->activate()V
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
    .line 1524
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection$2;->this$1:Lcom/android/vending/AssetInfoActivity$PermissionsSection;

    invoke-direct {p0}, Lcom/android/vending/compat/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/android/vending/compat/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Lcom/android/vending/compat/animation/Animator;

    .prologue
    .line 1528
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection$2;->this$1:Lcom/android/vending/AssetInfoActivity$PermissionsSection;

    iget-object v2, v2, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v2}, Lcom/android/vending/AssetInfoActivity;->access$3700(Lcom/android/vending/AssetInfoActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vending/AssetInfoActivity$Section;

    .line 1529
    .local v1, "s":Lcom/android/vending/AssetInfoActivity$Section;
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection$2;->this$1:Lcom/android/vending/AssetInfoActivity$PermissionsSection;

    iget-object v2, v2, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v2}, Lcom/android/vending/AssetInfoActivity;->access$3800(Lcom/android/vending/AssetInfoActivity;)Lcom/android/vending/AssetInfoActivity$PermissionsSection;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 1530
    invoke-virtual {v1}, Lcom/android/vending/AssetInfoActivity$Section;->deactivate()V

    goto :goto_0

    .line 1533
    .end local v1    # "s":Lcom/android/vending/AssetInfoActivity$Section;
    :cond_1
    return-void
.end method
