.class public final enum Lcom/android/vending/model/AssetRequest$SortOrderType;
.super Ljava/lang/Enum;
.source "AssetRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/model/AssetRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SortOrderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/vending/model/AssetRequest$SortOrderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/vending/model/AssetRequest$SortOrderType;

.field public static final enum FEATURED:Lcom/android/vending/model/AssetRequest$SortOrderType;

.field public static final enum NEWEST:Lcom/android/vending/model/AssetRequest$SortOrderType;

.field public static final enum NONE:Lcom/android/vending/model/AssetRequest$SortOrderType;

.field public static final enum POPULAR:Lcom/android/vending/model/AssetRequest$SortOrderType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/android/vending/model/AssetRequest$SortOrderType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/vending/model/AssetRequest$SortOrderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/AssetRequest$SortOrderType;->NONE:Lcom/android/vending/model/AssetRequest$SortOrderType;

    .line 27
    new-instance v0, Lcom/android/vending/model/AssetRequest$SortOrderType;

    const-string v1, "POPULAR"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/vending/model/AssetRequest$SortOrderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/AssetRequest$SortOrderType;->POPULAR:Lcom/android/vending/model/AssetRequest$SortOrderType;

    .line 28
    new-instance v0, Lcom/android/vending/model/AssetRequest$SortOrderType;

    const-string v1, "NEWEST"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/vending/model/AssetRequest$SortOrderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/AssetRequest$SortOrderType;->NEWEST:Lcom/android/vending/model/AssetRequest$SortOrderType;

    .line 29
    new-instance v0, Lcom/android/vending/model/AssetRequest$SortOrderType;

    const-string v1, "FEATURED"

    invoke-direct {v0, v1, v5, v5}, Lcom/android/vending/model/AssetRequest$SortOrderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/AssetRequest$SortOrderType;->FEATURED:Lcom/android/vending/model/AssetRequest$SortOrderType;

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/vending/model/AssetRequest$SortOrderType;

    sget-object v1, Lcom/android/vending/model/AssetRequest$SortOrderType;->NONE:Lcom/android/vending/model/AssetRequest$SortOrderType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/vending/model/AssetRequest$SortOrderType;->POPULAR:Lcom/android/vending/model/AssetRequest$SortOrderType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/vending/model/AssetRequest$SortOrderType;->NEWEST:Lcom/android/vending/model/AssetRequest$SortOrderType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/vending/model/AssetRequest$SortOrderType;->FEATURED:Lcom/android/vending/model/AssetRequest$SortOrderType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/vending/model/AssetRequest$SortOrderType;->$VALUES:[Lcom/android/vending/model/AssetRequest$SortOrderType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "v"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput p3, p0, Lcom/android/vending/model/AssetRequest$SortOrderType;->value:I

    .line 53
    return-void
.end method

.method public static valueOf(I)Lcom/android/vending/model/AssetRequest$SortOrderType;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 37
    packed-switch p0, :pswitch_data_0

    .line 47
    sget-object v0, Lcom/android/vending/model/AssetRequest$SortOrderType;->NONE:Lcom/android/vending/model/AssetRequest$SortOrderType;

    :goto_0
    return-object v0

    .line 39
    :pswitch_0
    sget-object v0, Lcom/android/vending/model/AssetRequest$SortOrderType;->POPULAR:Lcom/android/vending/model/AssetRequest$SortOrderType;

    goto :goto_0

    .line 42
    :pswitch_1
    sget-object v0, Lcom/android/vending/model/AssetRequest$SortOrderType;->NEWEST:Lcom/android/vending/model/AssetRequest$SortOrderType;

    goto :goto_0

    .line 45
    :pswitch_2
    sget-object v0, Lcom/android/vending/model/AssetRequest$SortOrderType;->FEATURED:Lcom/android/vending/model/AssetRequest$SortOrderType;

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vending/model/AssetRequest$SortOrderType;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/android/vending/model/AssetRequest$SortOrderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/vending/model/AssetRequest$SortOrderType;

    return-object p0
.end method

.method public static values()[Lcom/android/vending/model/AssetRequest$SortOrderType;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/vending/model/AssetRequest$SortOrderType;->$VALUES:[Lcom/android/vending/model/AssetRequest$SortOrderType;

    invoke-virtual {v0}, [Lcom/android/vending/model/AssetRequest$SortOrderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vending/model/AssetRequest$SortOrderType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/android/vending/model/AssetRequest$SortOrderType;->value:I

    return v0
.end method
