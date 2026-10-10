.class Lcom/android/vending/TabbedAppBrowser$2;
.super Ljava/lang/Object;
.source "TabbedAppBrowser.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/TabbedAppBrowser;->initTab(Landroid/view/ViewGroup;Ljava/lang/String;ILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/TabbedAppBrowser;


# direct methods
.method constructor <init>(Lcom/android/vending/TabbedAppBrowser;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/vending/TabbedAppBrowser$2;->this$0:Lcom/android/vending/TabbedAppBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/vending/TabbedAppBrowser$2;->this$0:Lcom/android/vending/TabbedAppBrowser;

    invoke-static {v0, p1}, Lcom/android/vending/TabbedAppBrowser;->access$200(Lcom/android/vending/TabbedAppBrowser;Landroid/view/View;)V

    .line 175
    const/4 v0, 0x0

    return v0
.end method
