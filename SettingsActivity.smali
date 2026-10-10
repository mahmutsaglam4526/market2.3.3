.class public Lcom/android/vending/SettingsActivity;
.super Lcom/android/vending/BaseActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;,
        Lcom/android/vending/SettingsActivity$PinCodeAccessor;
    }
.end annotation


# static fields
.field private static final mNotificationChoices:[Ljava/lang/Boolean;

.field private static final mNotificationLabelIds:[I

.field private static final mRatingLabelIds:[I

.field private static final mRatingLevels:[Ljava/lang/Integer;


# instance fields
.field private final PINCODE_LOCKED:I

.field private final PINCODE_NOT_SET:I

.field private final PINCODE_VALID:I

.field private mNotificationSpinner:Landroid/widget/Spinner;

.field private mPinCode:Ljava/lang/String;

.field private mPinCodeAccessor:Lcom/android/vending/controller/DialogAccessor;

.field private mPinCodeButton:Landroid/widget/ImageButton;

.field private mPinCodeState:I

.field private mSelectContentRatingAccessor:Lcom/android/vending/controller/DialogAccessor;

.field private mSelectContentRatingButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 82
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/vending/SettingsActivity;->mRatingLabelIds:[I

    .line 97
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/vending/SettingsActivity;->mRatingLevels:[Ljava/lang/Integer;

    .line 112
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/vending/SettingsActivity;->mNotificationLabelIds:[I

    .line 117
    new-array v0, v3, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/vending/SettingsActivity;->mNotificationChoices:[Ljava/lang/Boolean;

    return-void

    .line 82
    :array_0
    .array-data 4
        0x7f0600b1
        0x7f0600b0
        0x7f0600af
        0x7f0600ae
        0x7f0600ad
    .end array-data

    .line 112
    :array_1
    .array-data 4
        0x7f060071
        0x7f060072
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/vending/BaseActivity;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/vending/SettingsActivity;->PINCODE_NOT_SET:I

    .line 70
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/vending/SettingsActivity;->PINCODE_VALID:I

    .line 71
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/vending/SettingsActivity;->PINCODE_LOCKED:I

    .line 444
    return-void
.end method

.method static synthetic access$1000()[I
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/vending/SettingsActivity;->mRatingLabelIds:[I

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/vending/SettingsActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/SettingsActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/vending/SettingsActivity;->mSelectContentRatingButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/vending/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/SettingsActivity;

    .prologue
    .line 36
    iget v0, p0, Lcom/android/vending/SettingsActivity;->mPinCodeState:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/vending/SettingsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/SettingsActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/vending/SettingsActivity;->mPinCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/vending/SettingsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/SettingsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/vending/SettingsActivity;->mPinCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/vending/SettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/SettingsActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/vending/SettingsActivity;->setPinCodeState()V

    return-void
.end method

.method static synthetic access$800()[Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/vending/SettingsActivity;->mRatingLevels:[Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/vending/SettingsActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/SettingsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/vending/SettingsActivity;->saveContentRating(I)V

    return-void
.end method

.method private static findPosition([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 242
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .local v0, "pos":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 243
    aget-object v1, p0, v0

    if-ne v1, p1, :cond_0

    move v1, v0

    .line 247
    :goto_1
    return v1

    .line 242
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static getContentRating()I
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->CONTENT_RATING:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->CONTENT_RATING:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 161
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/vending/compat/VendingGservicesKeys;->VENDING_CONTENT_RATING:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v0}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private initNotificationSpinner()V
    .locals 6

    .prologue
    .line 215
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    invoke-direct {v1, p0, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 217
    .local v1, "notificationAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v4, Lcom/android/vending/SettingsActivity;->mNotificationLabelIds:[I

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 218
    sget-object v4, Lcom/android/vending/SettingsActivity;->mNotificationLabelIds:[I

    aget v4, v4, v0

    invoke-virtual {p0, v4}, Lcom/android/vending/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_0
    const v4, 0x1090009

    invoke-virtual {v1, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 222
    const v4, 0x7f0700f8

    invoke-virtual {p0, v4}, Lcom/android/vending/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/vending/SettingsActivity;->mNotificationSpinner:Landroid/widget/Spinner;

    .line 223
    iget-object v4, p0, Lcom/android/vending/SettingsActivity;->mNotificationSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 224
    iget-object v4, p0, Lcom/android/vending/SettingsActivity;->mNotificationSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 227
    sget-object v4, Lcom/android/vending/util/VendingPreferences;->NOTIFY_UPDATES:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v4}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 228
    .local v2, "notificationChoice":Z
    sget-object v4, Lcom/android/vending/SettingsActivity;->mNotificationChoices:[Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/vending/SettingsActivity;->findPosition([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 229
    .local v3, "pos":I
    iget-object v4, p0, Lcom/android/vending/SettingsActivity;->mNotificationSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 230
    return-void
.end method

.method private initPinCode()V
    .locals 1

    .prologue
    .line 205
    const v0, 0x7f0700f6

    invoke-virtual {p0, v0}, Lcom/android/vending/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/vending/SettingsActivity;->mPinCodeButton:Landroid/widget/ImageButton;

    .line 206
    iget-object v0, p0, Lcom/android/vending/SettingsActivity;->mPinCodeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    new-instance v0, Lcom/android/vending/SettingsActivity$PinCodeAccessor;

    invoke-direct {v0, p0, p0}, Lcom/android/vending/SettingsActivity$PinCodeAccessor;-><init>(Lcom/android/vending/SettingsActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vending/SettingsActivity;->mPinCodeAccessor:Lcom/android/vending/controller/DialogAccessor;

    .line 209
    iget-object v0, p0, Lcom/android/vending/SettingsActivity;->mPinCodeAccessor:Lcom/android/vending/controller/DialogAccessor;

    invoke-virtual {p0, v0}, Lcom/android/vending/SettingsActivity;->registerDialog(Lcom/android/vending/controller/DialogAccessor;)V

    .line 211
    invoke-direct {p0}, Lcom/android/vending/SettingsActivity;->setPinCodeState()V

    .line 212
    return-void
.end method

.method private initRatingSpinner()V
    .locals 8

    .prologue
    const v7, 0x7f0700f4

    const/16 v6, 0x8

    .line 165
    sget-object v5, Lcom/android/vending/compat/VendingGservicesKeys;->VENDING_HIDE_CONTENT_RATING:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v5}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 166
    .local v2, "hideContent":Z
    if-eqz v2, :cond_0

    .line 167
    const v5, 0x7f0700f3

    invoke-virtual {p0, v5}, Lcom/android/vending/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 168
    invoke-virtual {p0, v7}, Lcom/android/vending/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 169
    const v5, 0x7f0700f5

    invoke-virtual {p0, v5}, Lcom/android/vending/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 197
    :goto_0
    return-void

    .line 173
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f0600ab

    invoke-virtual {p0, v6}, Lcom/android/vending/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<br><a href=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "http://market.android.com/support/bin/answer.py?answer=1075738"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0600ac

    invoke-virtual {p0, v6}, Lcom/android/vending/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</a>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "descriptionText":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/android/vending/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 177
    .local v1, "descriptionView":Landroid/widget/TextView;
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 180
    const v5, 0x7f0700f7

    invoke-virtual {p0, v5}, Lcom/android/vending/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/vending/SettingsActivity;->mSelectContentRatingButton:Landroid/widget/Button;

    .line 181
    iget-object v5, p0, Lcom/android/vending/SettingsActivity;->mSelectContentRatingButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    invoke-static {}, Lcom/android/vending/SettingsActivity;->getContentRating()I

    move-result v3

    .line 186
    .local v3, "ratingLevel":I
    const/4 v4, -0x1

    .line 187
    .local v4, "ratingPosition":I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    .line 188
    iget-object v5, p0, Lcom/android/vending/SettingsActivity;->mSelectContentRatingButton:Landroid/widget/Button;

    const v6, 0x7f0600aa

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 194
    :goto_1
    new-instance v5, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;

    sget-object v6, Lcom/android/vending/SettingsActivity;->mRatingLabelIds:[I

    invoke-direct {v5, p0, p0, v6, v4}, Lcom/android/vending/SettingsActivity$SelectContentRatingAccessor;-><init>(Lcom/android/vending/SettingsActivity;Landroid/content/Context;[II)V

    iput-object v5, p0, Lcom/android/vending/SettingsActivity;->mSelectContentRatingAccessor:Lcom/android/vending/controller/DialogAccessor;

    .line 196
    iget-object v5, p0, Lcom/android/vending/SettingsActivity;->mSelectContentRatingAccessor:Lcom/android/vending/controller/DialogAccessor;

    invoke-virtual {p0, v5}, Lcom/android/vending/SettingsActivity;->registerDialog(Lcom/android/vending/controller/DialogAccessor;)V

    goto :goto_0

    .line 190
    :cond_1
    sget-object v5, Lcom/android/vending/SettingsActivity;->mRatingLevels:[Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/vending/SettingsActivity;->findPosition([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 191
    iget-object v5, p0, Lcom/android/vending/SettingsActivity;->mSelectContentRatingButton:Landroid/widget/Button;

    sget-object v6, Lcom/android/vending/SettingsActivity;->mRatingLabelIds:[I

    aget v6, v6, v4

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method private saveContentRating(I)V
    .locals 3
    .param p1, "newContentRating"    # I

    .prologue
    .line 263
    sget-object v1, Lcom/android/vending/util/VendingPreferences;->CONTENT_RATING:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/android/vending/SettingsActivity;
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 264
    .local v0, "oldContentRating":I
    if-ne p1, v0, :cond_0

    .line 274
    :goto_0
    return-void

    .line 268
    :cond_0
    sget-object v1, Lcom/android/vending/util/VendingPreferences;->CONTENT_RATING:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 272
    sget-object v1, Lcom/android/vending/util/VendingPreferences;->SEND_CONTENT_RATING:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 273
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lcom/android/vending/InitializeMarketAction;->setLastSyncTimeMs(J)V

    goto :goto_0
.end method

.method private saveNotificationChoice(Z)V
    .locals 2
    .param p1, "notifyMe"    # Z

    .prologue
    .line 282
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->NOTIFY_UPDATES:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 283
    return-void
.end method

.method private setPinCodeState()V
    .locals 3

    .prologue
    const v2, 0x7f020075

    .line 286
    sget-object v1, Lcom/android/vending/util/VendingPreferences;->PIN_CODE:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 287
    .local v0, "prefsPinCode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/vending/SettingsActivity;->mPinCodeState:I

    .line 289
    iget-object v1, p0, Lcom/android/vending/SettingsActivity;->mPinCodeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 297
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/android/vending/SettingsActivity;->mPinCode:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/vending/SettingsActivity;->mPinCode:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/vending/SettingsActivity;->mPinCodeState:I

    .line 292
    iget-object v1, p0, Lcom/android/vending/SettingsActivity;->mPinCodeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 294
    :cond_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/vending/SettingsActivity;->mPinCodeState:I

    .line 295
    iget-object v1, p0, Lcom/android/vending/SettingsActivity;->mPinCodeButton:Landroid/widget/ImageButton;

    const v2, 0x7f020074

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/vending/SettingsActivity;->mPinCodeButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/vending/SettingsActivity;->mPinCodeAccessor:Lcom/android/vending/controller/DialogAccessor;

    invoke-virtual {p0, v0}, Lcom/android/vending/SettingsActivity;->displayDialog(Lcom/android/vending/controller/DialogAccessor;)V

    .line 328
    :goto_0
    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/android/vending/SettingsActivity;->mSelectContentRatingButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 320
    iget v0, p0, Lcom/android/vending/SettingsActivity;->mPinCodeState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 321
    iget-object v0, p0, Lcom/android/vending/SettingsActivity;->mPinCodeAccessor:Lcom/android/vending/controller/DialogAccessor;

    invoke-virtual {p0, v0}, Lcom/android/vending/SettingsActivity;->displayDialog(Lcom/android/vending/controller/DialogAccessor;)V

    goto :goto_0

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/android/vending/SettingsActivity;->mSelectContentRatingAccessor:Lcom/android/vending/controller/DialogAccessor;

    invoke-virtual {p0, v0}, Lcom/android/vending/SettingsActivity;->displayDialog(Lcom/android/vending/controller/DialogAccessor;)V

    goto :goto_0

    .line 326
    :cond_2
    invoke-super {p0, p1}, Lcom/android/vending/BaseActivity;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/android/vending/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 128
    const v0, 0x7f03004a

    invoke-virtual {p0, v0}, Lcom/android/vending/SettingsActivity;->setContentView(I)V

    .line 129
    const v0, 0x7f060096

    invoke-virtual {p0, v0}, Lcom/android/vending/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/SettingsActivity;->setupSlimTitleBar(Ljava/lang/CharSequence;Z)V

    .line 131
    if-eqz p1, :cond_0

    .line 132
    const-string v0, "PINCODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/SettingsActivity;->mPinCode:Ljava/lang/String;

    .line 135
    :cond_0
    invoke-direct {p0}, Lcom/android/vending/SettingsActivity;->initRatingSpinner()V

    .line 136
    invoke-direct {p0}, Lcom/android/vending/SettingsActivity;->initPinCode()V

    .line 137
    invoke-direct {p0}, Lcom/android/vending/SettingsActivity;->initNotificationSpinner()V

    .line 138
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/vending/SettingsActivity;->mNotificationSpinner:Landroid/widget/Spinner;

    if-ne p1, v1, :cond_0

    .line 304
    sget-object v1, Lcom/android/vending/SettingsActivity;->mNotificationChoices:[Ljava/lang/Boolean;

    aget-object v1, v1, p3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 305
    .local v0, "choice":Z
    invoke-direct {p0, v0}, Lcom/android/vending/SettingsActivity;->saveNotificationChoice(Z)V

    .line 307
    .end local v0    # "choice":Z
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 310
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 142
    invoke-super {p0, p1}, Lcom/android/vending/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 143
    if-eqz p1, :cond_0

    .line 144
    const-string v0, "PINCODE"

    iget-object v1, p0, Lcom/android/vending/SettingsActivity;->mPinCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_0
    return-void
.end method

.method public updateStateDependentUi(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
    .locals 0
    .param p1, "assetId"    # Ljava/lang/String;
    .param p2, "newState"    # Lcom/android/vending/model/LocalAssetInfo$AssetState;

    .prologue
    .line 332
    return-void
.end method
