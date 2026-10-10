.class public Lcom/android/vending/compat/RemoteViewsHelper;
.super Ljava/lang/Object;
.source "RemoteViewsHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addView(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)V
    .locals 1
    .param p0, "parent"    # Landroid/widget/RemoteViews;
    .param p1, "id"    # I
    .param p2, "child"    # Landroid/widget/RemoteViews;

    .prologue
    .line 15
    const v0, 0x7f070110

    invoke-virtual {p0, v0, p2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 16
    return-void
.end method

.method public static final removeAllViews(Landroid/widget/RemoteViews;I)V
    .locals 0
    .param p0, "views"    # Landroid/widget/RemoteViews;
    .param p1, "id"    # I

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 12
    return-void
.end method
