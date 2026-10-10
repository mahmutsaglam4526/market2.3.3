.class Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;
.super Lcom/android/vending/AssetInfoActivity$Section;
.source "AssetInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AssetInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AboutDeveloperSection"
.end annotation


# instance fields
.field private mCall:Landroid/view/View;

.field private mSendEmail:Landroid/view/View;

.field private mViewOtherApplications:Landroid/view/View;

.field private mViewWebsite:Landroid/view/View;

.field final synthetic this$0:Lcom/android/vending/AssetInfoActivity;


# direct methods
.method private constructor <init>(Lcom/android/vending/AssetInfoActivity;)V
    .locals 1

    .prologue
    .line 2232
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/vending/AssetInfoActivity$Section;-><init>(Lcom/android/vending/AssetInfoActivity;Lcom/android/vending/AssetInfoActivity$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vending/AssetInfoActivity;Lcom/android/vending/AssetInfoActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/vending/AssetInfoActivity;
    .param p2, "x1"    # Lcom/android/vending/AssetInfoActivity$1;

    .prologue
    .line 2232
    invoke-direct {p0, p1}, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;-><init>(Lcom/android/vending/AssetInfoActivity;)V

    return-void
.end method

.method private updateTextView(Landroid/view/View;ZLjava/lang/String;)V
    .locals 2
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "isVisible"    # Z
    .param p3, "contents"    # Ljava/lang/String;

    .prologue
    .line 2293
    const v1, 0x1020015

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2294
    .local v0, "tv":Landroid/widget/TextView;
    if-eqz p2, :cond_0

    .line 2295
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2296
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2300
    :goto_0
    return-void

    .line 2298
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public isVisible()Z
    .locals 1

    .prologue
    .line 2244
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v0}, Lcom/android/vending/AssetInfoActivity;->access$3100(Lcom/android/vending/AssetInfoActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttach()V
    .locals 4

    .prologue
    const v3, 0x7f030013

    const v2, 0x1020014

    .line 2249
    const v0, 0x7f06019b

    const v1, 0x7f06019c

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->addHeader(II)Landroid/widget/TwoLineListItem;

    .line 2251
    const v0, 0x7f030012

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v0, v1}, Lcom/android/vending/util/Util;->inflateView(ILandroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->mViewOtherApplications:Landroid/view/View;

    .line 2253
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->mViewOtherApplications:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f06019d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2254
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->mViewOtherApplications:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->setActionTag(Landroid/view/View;I)V

    .line 2255
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->mViewOtherApplications:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->addView(Landroid/view/View;)V

    .line 2257
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v3, v0}, Lcom/android/vending/util/Util;->inflateView(ILandroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->mSendEmail:Landroid/view/View;

    .line 2259
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->mSendEmail:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f06019e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2261
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->mSendEmail:Landroid/view/View;

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->setActionTag(Landroid/view/View;I)V

    .line 2262
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->mSendEmail:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->addView(Landroid/view/View;)V

    .line 2264
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v3, v0}, Lcom/android/vending/util/Util;->inflateView(ILandroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->mViewWebsite:Landroid/view/View;

    .line 2266
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->mViewWebsite:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f06019f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2268
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->mViewWebsite:Landroid/view/View;

    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->setActionTag(Landroid/view/View;I)V

    .line 2269
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->mViewWebsite:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->addView(Landroid/view/View;)V

    .line 2271
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v3, v0}, Lcom/android/vending/util/Util;->inflateView(ILandroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->mCall:Landroid/view/View;

    .line 2273
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->mCall:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0601a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2275
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->mCall:Landroid/view/View;

    const/16 v1, 0x10

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->setActionTag(Landroid/view/View;I)V

    .line 2276
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->mCall:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->addView(Landroid/view/View;)V

    .line 2277
    return-void
.end method

.method public onRefresh()V
    .locals 3

    .prologue
    .line 2281
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->mSendEmail:Landroid/view/View;

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v1, v1, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v1}, Lcom/android/vending/model/Asset;->hasContactEmail()Z

    move-result v1

    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v2, v2, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v2}, Lcom/android/vending/model/Asset;->getContactEmail()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->updateTextView(Landroid/view/View;ZLjava/lang/String;)V

    .line 2284
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->mCall:Landroid/view/View;

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v1, v1, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v1}, Lcom/android/vending/model/Asset;->hasContactPhone()Z

    move-result v1

    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v2, v2, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v2}, Lcom/android/vending/model/Asset;->getContactPhone()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->updateTextView(Landroid/view/View;ZLjava/lang/String;)V

    .line 2287
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->mViewWebsite:Landroid/view/View;

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v1, v1, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v1}, Lcom/android/vending/model/Asset;->hasContactWebsite()Z

    move-result v1

    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v2, v2, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v2}, Lcom/android/vending/model/Asset;->getContactWebsite()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->updateTextView(Landroid/view/View;ZLjava/lang/String;)V

    .line 2290
    return-void
.end method
