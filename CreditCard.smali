.class public Lcom/android/vending/model/CreditCard;
.super Lcom/android/vending/model/CreditDebitCard;
.source "CreditCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/model/CreditCard$1;,
        Lcom/android/vending/model/CreditCard$CardType;
    }
.end annotation


# instance fields
.field private final mCVC:Ljava/lang/String;

.field private mCardType:Lcom/android/vending/model/CreditCard$CardType;

.field private mErrors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/vending/model/CcValidator$CcInputKey;",
            "Lcom/android/vending/model/CcMatcher$CcError;",
            ">;"
        }
    .end annotation
.end field

.field private final mExpirationMonth:I

.field private final mExpirationYear:I

.field private final mIsDefault:Z

.field private final mLastDigits:Ljava/lang/String;

.field private final mNumber:Ljava/lang/String;

.field private final mPersonName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/common/io/protocol/ProtoBuf;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "ccInfoBuf"    # Lcom/google/common/io/protocol/ProtoBuf;
    .param p2, "ccNumber"    # Ljava/lang/String;
    .param p3, "cvc"    # Ljava/lang/String;

    .prologue
    .line 75
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v8

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v10

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lcom/android/vending/model/Address;

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {p1, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc

    invoke-virtual {p1, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {p1, v5}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    invoke-virtual {p1, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/android/vending/model/Address;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v9

    move-object v1, p0

    move-object v2, p2

    move v3, v8

    move v4, v10

    move-object v5, p3

    move-object v6, v11

    move-object v8, v0

    invoke-direct/range {v1 .. v9}, Lcom/android/vending/model/CreditCard;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/model/Address;Z)V

    .line 90
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/model/CreditCard$CardType;->valueOf(Ljava/lang/String;)Lcom/android/vending/model/CreditCard$CardType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/model/CreditCard;->mCardType:Lcom/android/vending/model/CreditCard$CardType;

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/model/Address;Z)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "expirationMonth"    # I
    .param p3, "expirationYear"    # I
    .param p4, "CVC"    # Ljava/lang/String;
    .param p5, "personName"    # Ljava/lang/String;
    .param p6, "phone"    # Ljava/lang/String;
    .param p7, "address"    # Lcom/android/vending/model/Address;
    .param p8, "isDefault"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p6, p7}, Lcom/android/vending/model/CreditDebitCard;-><init>(Ljava/lang/String;Lcom/android/vending/model/Address;)V

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/vending/model/CreditCard;->cleanAccountNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/model/CreditCard;->mNumber:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/android/vending/model/CreditCard;->mNumber:Ljava/lang/String;

    invoke-direct {p0, v0, p4, p2, p3}, Lcom/android/vending/model/CreditCard;->detectCardType(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/vending/model/CreditCard$CardType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/model/CreditCard;->mCardType:Lcom/android/vending/model/CreditCard$CardType;

    .line 66
    iget-object v0, p0, Lcom/android/vending/model/CreditCard;->mNumber:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/vending/model/CreditCard;->getLastDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/model/CreditCard;->mLastDigits:Ljava/lang/String;

    .line 67
    iput p2, p0, Lcom/android/vending/model/CreditCard;->mExpirationMonth:I

    .line 68
    iput p3, p0, Lcom/android/vending/model/CreditCard;->mExpirationYear:I

    .line 69
    iput-object p4, p0, Lcom/android/vending/model/CreditCard;->mCVC:Ljava/lang/String;

    .line 70
    iput-object p5, p0, Lcom/android/vending/model/CreditCard;->mPersonName:Ljava/lang/String;

    .line 71
    iput-boolean p8, p0, Lcom/android/vending/model/CreditCard;->mIsDefault:Z

    .line 72
    return-void
.end method

.method private detectCardType(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/vending/model/CreditCard$CardType;
    .locals 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "cvc"    # Ljava/lang/String;
    .param p3, "endMonth"    # I
    .param p4, "endYear"    # I

    .prologue
    .line 156
    new-instance v1, Lcom/android/vending/model/CcValidator;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/android/vending/model/CcValidator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .local v1, "ccValidator":Lcom/android/vending/model/CcValidator;
    invoke-virtual {v1}, Lcom/android/vending/model/CcValidator;->validateInput()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/android/vending/model/CreditCard;->mErrors:Ljava/util/Map;

    .line 159
    invoke-virtual {v1}, Lcom/android/vending/model/CcValidator;->getCcType()Lcom/android/vending/model/CcDefinition;

    move-result-object v0

    .line 160
    .local v0, "ccDef":Lcom/android/vending/model/CcDefinition;
    invoke-static {v0}, Lcom/android/vending/model/CreditCard$CardType;->fromCcDefinition(Lcom/android/vending/model/CcDefinition;)Lcom/android/vending/model/CreditCard$CardType;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getCVC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/vending/model/CreditCard;->mCVC:Ljava/lang/String;

    return-object v0
.end method

.method public getCardType()Lcom/android/vending/model/CreditCard$CardType;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/vending/model/CreditCard;->mCardType:Lcom/android/vending/model/CreditCard$CardType;

    return-object v0
.end method

.method public getExpirationMonth()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/android/vending/model/CreditCard;->mExpirationMonth:I

    return v0
.end method

.method public getExpirationYear()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/android/vending/model/CreditCard;->mExpirationYear:I

    return v0
.end method

.method public getLastDigits()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/vending/model/CreditCard;->mLastDigits:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/vending/model/CreditCard;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/vending/model/CreditCard;->mPersonName:Ljava/lang/String;

    return-object v0
.end method

.method public isDefault()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/android/vending/model/CreditCard;->mIsDefault:Z

    return v0
.end method

.method public isValidCVC()Z
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/vending/model/CreditCard;->mErrors:Ljava/util/Map;

    sget-object v1, Lcom/android/vending/model/CcValidator$CcInputKey;->CVC:Lcom/android/vending/model/CcValidator$CcInputKey;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidCreditCardNumber()Z
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/vending/model/CreditCard;->mErrors:Ljava/util/Map;

    sget-object v1, Lcom/android/vending/model/CcValidator$CcInputKey;->NUMBER:Lcom/android/vending/model/CcValidator$CcInputKey;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CardType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/model/CreditCard;->mCardType:Lcom/android/vending/model/CreditCard$CardType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Number=*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/model/CreditCard;->mLastDigits:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", CVC=*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ExpMonth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/vending/model/CreditCard;->mExpirationMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ExpYear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/vending/model/CreditCard;->mExpirationYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/model/CreditCard;->mPersonName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/model/CreditCard;->mPhone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/model/CreditCard;->mAddress:Lcom/android/vending/model/Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", IsDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/vending/model/CreditCard;->mIsDefault:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
