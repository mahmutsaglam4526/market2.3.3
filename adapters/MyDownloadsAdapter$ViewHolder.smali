.class final Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MyDownloadsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/adapters/MyDownloadsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewHolder"
.end annotation


# instance fields
.field public final author:Landroid/widget/TextView;

.field public final image:Landroid/widget/ImageView;

.field public final isRunning:Z

.field public final progress:Landroid/widget/ProgressBar;

.field public final rating:Landroid/widget/RatingBar;

.field public final state:Landroid/widget/TextView;

.field public final status:Landroid/widget/TextView;

.field public final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 2
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "isRunning"    # Z

    .prologue
    const/4 v1, 0x0

    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 563
    const v0, 0x7f07001c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;->rating:Landroid/widget/RatingBar;

    .line 564
    const v0, 0x7f07001b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 565
    const v0, 0x7f07001d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;->state:Landroid/widget/TextView;

    .line 566
    const v0, 0x7f07001e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    .line 567
    iput-boolean p2, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;->isRunning:Z

    .line 569
    if-eqz p2, :cond_0

    .line 570
    const v0, 0x7f0700bd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    .line 571
    const v0, 0x7f0700be

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;->status:Landroid/widget/TextView;

    .line 572
    iput-object v1, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;->author:Landroid/widget/TextView;

    .line 579
    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 580
    return-void

    .line 574
    :cond_0
    const v0, 0x7f070051

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;->author:Landroid/widget/TextView;

    .line 575
    iput-object v1, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    .line 576
    iput-object v1, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;->status:Landroid/widget/TextView;

    goto :goto_0
.end method
