.class Lcom/android/vending/util/PreferenceFile$3;
.super Lcom/android/vending/util/PreferenceFile$SharedPreference;
.source "PreferenceFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/util/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/android/vending/util/PreferenceFile$SharedPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/vending/util/PreferenceFile$SharedPreference",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/util/PreferenceFile;


# direct methods
.method constructor <init>(Lcom/android/vending/util/PreferenceFile;Lcom/android/vending/util/PreferenceFile;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .param p2, "x0"    # Lcom/android/vending/util/PreferenceFile;
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # Ljava/lang/Boolean;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/vending/util/PreferenceFile$3;->this$0:Lcom/android/vending/util/PreferenceFile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/vending/util/PreferenceFile$SharedPreference;-><init>(Lcom/android/vending/util/PreferenceFile;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected read(Landroid/content/SharedPreferences;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "sp"    # Landroid/content/SharedPreferences;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/vending/util/PreferenceFile$3;->mKey:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/vending/util/PreferenceFile$3;->mDefaultValue:Ljava/lang/Object;

    .end local p0    # "this":Lcom/android/vending/util/PreferenceFile$3;
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic read(Landroid/content/SharedPreferences;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/content/SharedPreferences;

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/android/vending/util/PreferenceFile$3;->read(Landroid/content/SharedPreferences;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected write(Landroid/content/SharedPreferences$Editor;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p2, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/vending/util/PreferenceFile$3;->mKey:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 100
    return-void
.end method

.method protected bridge synthetic write(Landroid/content/SharedPreferences$Editor;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/SharedPreferences$Editor;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 91
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/vending/util/PreferenceFile$3;->write(Landroid/content/SharedPreferences$Editor;Ljava/lang/Boolean;)V

    return-void
.end method
