.class public Lcom/android/vending/BaseActivity$ProgressDialogAccessor;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/android/vending/controller/DialogAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProgressDialogAccessor"
.end annotation


# instance fields
.field private mMessage:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/vending/BaseActivity;


# direct methods
.method public constructor <init>(Lcom/android/vending/BaseActivity;)V
    .locals 0

    .prologue
    .line 2113
    iput-object p1, p0, Lcom/android/vending/BaseActivity$ProgressDialogAccessor;->this$0:Lcom/android/vending/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2114
    return-void
.end method

.method public constructor <init>(Lcom/android/vending/BaseActivity;Ljava/lang/CharSequence;)V
    .locals 0
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 2116
    iput-object p1, p0, Lcom/android/vending/BaseActivity$ProgressDialogAccessor;->this$0:Lcom/android/vending/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2117
    iput-object p2, p0, Lcom/android/vending/BaseActivity$ProgressDialogAccessor;->mMessage:Ljava/lang/CharSequence;

    .line 2118
    return-void
.end method


# virtual methods
.method public create()Landroid/app/Dialog;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2121
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/vending/BaseActivity$ProgressDialogAccessor;->this$0:Lcom/android/vending/BaseActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 2122
    .local v0, "dialog":Landroid/app/ProgressDialog;
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2123
    iget-object v1, p0, Lcom/android/vending/BaseActivity$ProgressDialogAccessor;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2124
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 2125
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 2126
    return-object v0
.end method

.method public prepare(Landroid/app/Dialog;)V
    .locals 1
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 2134
    check-cast p1, Landroid/app/ProgressDialog;

    .end local p1    # "dialog":Landroid/app/Dialog;
    iget-object v0, p0, Lcom/android/vending/BaseActivity$ProgressDialogAccessor;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2135
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;I)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;
    .param p2, "id"    # I

    .prologue
    .line 2143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "progress_dialog_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2144
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/BaseActivity$ProgressDialogAccessor;->mMessage:Ljava/lang/CharSequence;

    .line 2145
    return-void
.end method

.method public saveState(Landroid/os/Bundle;I)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;
    .param p2, "id"    # I

    .prologue
    .line 2138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "progress_dialog_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2139
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/vending/BaseActivity$ProgressDialogAccessor;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2140
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 2130
    iput-object p1, p0, Lcom/android/vending/BaseActivity$ProgressDialogAccessor;->mMessage:Ljava/lang/CharSequence;

    .line 2131
    return-void
.end method
