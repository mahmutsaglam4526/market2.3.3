.class public final enum Lcom/android/vending/BaseActivity$AuthService;
.super Ljava/lang/Enum;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AuthService"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/vending/BaseActivity$AuthService;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/vending/BaseActivity$AuthService;

.field public static final enum ANDROID:Lcom/android/vending/BaseActivity$AuthService;

.field public static final enum ANDROID_SECURE:Lcom/android/vending/BaseActivity$AuthService;

.field public static final enum CHECKOUT:Lcom/android/vending/BaseActivity$AuthService;

.field public static final enum CHECKOUT_QA:Lcom/android/vending/BaseActivity$AuthService;

.field public static final enum CHECKOUT_SANDBOX:Lcom/android/vending/BaseActivity$AuthService;


# instance fields
.field private final authCode:I

.field private final invalidateCode:I

.field private preferredAccount:Landroid/accounts/Account;

.field private final requiredFeatureSets:[[Ljava/lang/String;

.field private final serviceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 89
    new-instance v0, Lcom/android/vending/BaseActivity$AuthService;

    const-string v1, "CHECKOUT"

    const/4 v2, 0x0

    const-string v3, "sierra"

    const/16 v4, 0x1b6

    const/16 v5, 0x1b7

    const-string v6, "legacy_google"

    invoke-direct/range {v0 .. v6}, Lcom/android/vending/BaseActivity$AuthService;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/vending/BaseActivity$AuthService;->CHECKOUT:Lcom/android/vending/BaseActivity$AuthService;

    .line 91
    new-instance v0, Lcom/android/vending/BaseActivity$AuthService;

    const-string v1, "CHECKOUT_QA"

    const/4 v2, 0x1

    const-string v3, "sierraqa"

    const/16 v4, 0x1b8

    const/16 v5, 0x1b9

    const-string v6, "legacy_google"

    invoke-direct/range {v0 .. v6}, Lcom/android/vending/BaseActivity$AuthService;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/vending/BaseActivity$AuthService;->CHECKOUT_QA:Lcom/android/vending/BaseActivity$AuthService;

    .line 93
    new-instance v0, Lcom/android/vending/BaseActivity$AuthService;

    const-string v1, "CHECKOUT_SANDBOX"

    const/4 v2, 0x2

    const-string v3, "sierrasandbox"

    const/16 v4, 0x1c0

    const/16 v5, 0x1c1

    const-string v6, "legacy_google"

    invoke-direct/range {v0 .. v6}, Lcom/android/vending/BaseActivity$AuthService;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/vending/BaseActivity$AuthService;->CHECKOUT_SANDBOX:Lcom/android/vending/BaseActivity$AuthService;

    .line 95
    new-instance v0, Lcom/android/vending/BaseActivity$AuthService;

    const-string v1, "ANDROID"

    const/4 v2, 0x3

    const-string v3, "android"

    const/16 v4, 0x1ba

    const/16 v5, 0x1bb

    const-string v6, "legacy_hosted_or_google"

    invoke-direct/range {v0 .. v6}, Lcom/android/vending/BaseActivity$AuthService;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/vending/BaseActivity$AuthService;->ANDROID:Lcom/android/vending/BaseActivity$AuthService;

    .line 97
    new-instance v0, Lcom/android/vending/BaseActivity$AuthService;

    const-string v1, "ANDROID_SECURE"

    const/4 v2, 0x4

    const-string v3, "androidsecure"

    const/16 v4, 0x1bc

    const/16 v5, 0x1bd

    const-string v6, "legacy_hosted_or_google"

    invoke-direct/range {v0 .. v6}, Lcom/android/vending/BaseActivity$AuthService;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/vending/BaseActivity$AuthService;->ANDROID_SECURE:Lcom/android/vending/BaseActivity$AuthService;

    .line 88
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/vending/BaseActivity$AuthService;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/vending/BaseActivity$AuthService;->CHECKOUT:Lcom/android/vending/BaseActivity$AuthService;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/vending/BaseActivity$AuthService;->CHECKOUT_QA:Lcom/android/vending/BaseActivity$AuthService;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/vending/BaseActivity$AuthService;->CHECKOUT_SANDBOX:Lcom/android/vending/BaseActivity$AuthService;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/vending/BaseActivity$AuthService;->ANDROID:Lcom/android/vending/BaseActivity$AuthService;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/vending/BaseActivity$AuthService;->ANDROID_SECURE:Lcom/android/vending/BaseActivity$AuthService;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/vending/BaseActivity$AuthService;->$VALUES:[Lcom/android/vending/BaseActivity$AuthService;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    .locals 3
    .param p3, "serviceName"    # Ljava/lang/String;
    .param p4, "authCode"    # I
    .param p5, "invalidateCode"    # I
    .param p6, "requiredFeature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 160
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 161
    iput-object p3, p0, Lcom/android/vending/BaseActivity$AuthService;->serviceName:Ljava/lang/String;

    .line 162
    iput p4, p0, Lcom/android/vending/BaseActivity$AuthService;->authCode:I

    .line 163
    iput p5, p0, Lcom/android/vending/BaseActivity$AuthService;->invalidateCode:I

    .line 164
    new-array v0, v1, [[Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/String;

    aput-object p6, v1, v2

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/vending/BaseActivity$AuthService;->requiredFeatureSets:[[Ljava/lang/String;

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vending/BaseActivity$AuthService;->preferredAccount:Landroid/accounts/Account;

    .line 166
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vending/BaseActivity$AuthService;
    .locals 1

    .prologue
    .line 88
    const-class v0, Lcom/android/vending/BaseActivity$AuthService;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/vending/BaseActivity$AuthService;

    return-object p0
.end method

.method public static values()[Lcom/android/vending/BaseActivity$AuthService;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/android/vending/BaseActivity$AuthService;->$VALUES:[Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {v0}, [Lcom/android/vending/BaseActivity$AuthService;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vending/BaseActivity$AuthService;

    return-object v0
.end method


# virtual methods
.method public getAuthCode()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/android/vending/BaseActivity$AuthService;->authCode:I

    return v0
.end method

.method public getInvalidateCode()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/android/vending/BaseActivity$AuthService;->invalidateCode:I

    return v0
.end method

.method public getPreferredAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/vending/BaseActivity$AuthService;->preferredAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getRequiredFeatureSets()[[Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/vending/BaseActivity$AuthService;->requiredFeatureSets:[[Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/vending/BaseActivity$AuthService;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public isCheckout()Z
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/android/vending/BaseActivity$AuthService;->CHECKOUT:Lcom/android/vending/BaseActivity$AuthService;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/vending/BaseActivity$AuthService;->CHECKOUT_QA:Lcom/android/vending/BaseActivity$AuthService;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/vending/BaseActivity$AuthService;->CHECKOUT_SANDBOX:Lcom/android/vending/BaseActivity$AuthService;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPreferredAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 149
    new-instance v0, Landroid/accounts/Account;

    invoke-direct {v0, p1, p2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/vending/BaseActivity$AuthService;->preferredAccount:Landroid/accounts/Account;

    .line 150
    return-void
.end method
