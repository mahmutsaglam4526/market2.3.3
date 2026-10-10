.class public Lcom/android/vending/compat/GoogleHttpClient;
.super Lcom/google/android/common/http/GoogleHttpClient;
.source "GoogleHttpClient.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appAndVersion"    # Ljava/lang/String;
    .param p3, "gzipCapable"    # Z

    .prologue
    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/common/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 9
    return-void
.end method
