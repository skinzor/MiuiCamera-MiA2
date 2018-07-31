.class public final enum Lcom/google/zxing/common/CharacterSetECI;
.super Ljava/lang/Enum;
.source "CharacterSetECI.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/zxing/common/CharacterSetECI;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ASCII:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Big5:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp1250:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp1251:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp1252:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp1256:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp437:Lcom/google/zxing/common/CharacterSetECI;

.field private static final synthetic ENUM$VALUES:[Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum EUC_KR:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum GB18030:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_1:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_10:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_11:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_13:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_14:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_15:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_16:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_2:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_3:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_4:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_5:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_6:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_7:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_8:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_9:Lcom/google/zxing/common/CharacterSetECI;

.field private static final NAME_TO_ECI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/zxing/common/CharacterSetECI;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum SJIS:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum UTF8:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum UnicodeBigUnmarked:Lcom/google/zxing/common/CharacterSetECI;

.field private static final VALUE_TO_ECI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/zxing/common/CharacterSetECI;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final otherEncodingNames:[Ljava/lang/String;

.field private final values:[I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    .line 32
    new-instance v9, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v10, "Cp437"

    const/4 v11, 0x0

    .line 33
    const/4 v12, 0x2

    new-array v12, v12, [I

    const/4 v13, 0x2

    const/4 v14, 0x1

    aput v13, v12, v14

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/String;

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    sput-object v9, Lcom/google/zxing/common/CharacterSetECI;->Cp437:Lcom/google/zxing/common/CharacterSetECI;

    .line 34
    new-instance v9, Lcom/google/zxing/common/CharacterSetECI;

    const/4 v10, 0x2

    new-array v10, v10, [I

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v11, v10, v12

    const/4 v11, 0x3

    const/4 v12, 0x1

    aput v11, v10, v12

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "ISO-8859-1"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "ISO8859_1"

    const/4 v13, 0x1

    invoke-direct {v9, v12, v13, v10, v11}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    sput-object v9, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_1:Lcom/google/zxing/common/CharacterSetECI;

    .line 35
    new-instance v9, Lcom/google/zxing/common/CharacterSetECI;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const-string/jumbo v11, "ISO-8859-2"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-string/jumbo v11, "ISO8859_2"

    const/4 v12, 0x2

    const/4 v13, 0x4

    invoke-direct {v9, v11, v12, v13, v10}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_2:Lcom/google/zxing/common/CharacterSetECI;

    .line 36
    new-instance v9, Lcom/google/zxing/common/CharacterSetECI;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const-string/jumbo v11, "ISO-8859-3"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-string/jumbo v11, "ISO8859_3"

    const/4 v12, 0x3

    const/4 v13, 0x5

    invoke-direct {v9, v11, v12, v13, v10}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_3:Lcom/google/zxing/common/CharacterSetECI;

    .line 37
    new-instance v9, Lcom/google/zxing/common/CharacterSetECI;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const-string/jumbo v11, "ISO-8859-4"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-string/jumbo v11, "ISO8859_4"

    const/4 v12, 0x4

    const/4 v13, 0x6

    invoke-direct {v9, v11, v12, v13, v10}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_4:Lcom/google/zxing/common/CharacterSetECI;

    .line 38
    new-instance v9, Lcom/google/zxing/common/CharacterSetECI;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const-string/jumbo v11, "ISO-8859-5"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-string/jumbo v11, "ISO8859_5"

    const/4 v12, 0x5

    const/4 v13, 0x7

    invoke-direct {v9, v11, v12, v13, v10}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_5:Lcom/google/zxing/common/CharacterSetECI;

    .line 39
    new-instance v9, Lcom/google/zxing/common/CharacterSetECI;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const-string/jumbo v11, "ISO-8859-6"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-string/jumbo v11, "ISO8859_6"

    const/4 v12, 0x6

    const/16 v13, 0x8

    invoke-direct {v9, v11, v12, v13, v10}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_6:Lcom/google/zxing/common/CharacterSetECI;

    .line 40
    new-instance v9, Lcom/google/zxing/common/CharacterSetECI;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const-string/jumbo v11, "ISO-8859-7"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-string/jumbo v11, "ISO8859_7"

    const/4 v12, 0x7

    const/16 v13, 0x9

    invoke-direct {v9, v11, v12, v13, v10}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_7:Lcom/google/zxing/common/CharacterSetECI;

    .line 41
    new-instance v9, Lcom/google/zxing/common/CharacterSetECI;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const-string/jumbo v11, "ISO-8859-8"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-string/jumbo v11, "ISO8859_8"

    const/16 v12, 0x8

    const/16 v13, 0xa

    invoke-direct {v9, v11, v12, v13, v10}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_8:Lcom/google/zxing/common/CharacterSetECI;

    .line 42
    new-instance v9, Lcom/google/zxing/common/CharacterSetECI;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const-string/jumbo v11, "ISO-8859-9"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-string/jumbo v11, "ISO8859_9"

    const/16 v12, 0x9

    const/16 v13, 0xb

    invoke-direct {v9, v11, v12, v13, v10}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_9:Lcom/google/zxing/common/CharacterSetECI;

    .line 43
    new-instance v9, Lcom/google/zxing/common/CharacterSetECI;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const-string/jumbo v11, "ISO-8859-10"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-string/jumbo v11, "ISO8859_10"

    const/16 v12, 0xa

    const/16 v13, 0xc

    invoke-direct {v9, v11, v12, v13, v10}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_10:Lcom/google/zxing/common/CharacterSetECI;

    .line 44
    new-instance v9, Lcom/google/zxing/common/CharacterSetECI;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const-string/jumbo v11, "ISO-8859-11"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-string/jumbo v11, "ISO8859_11"

    const/16 v12, 0xb

    const/16 v13, 0xd

    invoke-direct {v9, v11, v12, v13, v10}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_11:Lcom/google/zxing/common/CharacterSetECI;

    .line 45
    new-instance v9, Lcom/google/zxing/common/CharacterSetECI;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const-string/jumbo v11, "ISO-8859-13"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-string/jumbo v11, "ISO8859_13"

    const/16 v12, 0xc

    const/16 v13, 0xf

    invoke-direct {v9, v11, v12, v13, v10}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_13:Lcom/google/zxing/common/CharacterSetECI;

    .line 46
    new-instance v9, Lcom/google/zxing/common/CharacterSetECI;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const-string/jumbo v11, "ISO-8859-14"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-string/jumbo v11, "ISO8859_14"

    const/16 v12, 0xd

    const/16 v13, 0x10

    invoke-direct {v9, v11, v12, v13, v10}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_14:Lcom/google/zxing/common/CharacterSetECI;

    .line 47
    new-instance v9, Lcom/google/zxing/common/CharacterSetECI;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const-string/jumbo v11, "ISO-8859-15"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-string/jumbo v11, "ISO8859_15"

    const/16 v12, 0xe

    const/16 v13, 0x11

    invoke-direct {v9, v11, v12, v13, v10}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_15:Lcom/google/zxing/common/CharacterSetECI;

    .line 48
    new-instance v9, Lcom/google/zxing/common/CharacterSetECI;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const-string/jumbo v11, "ISO-8859-16"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-string/jumbo v11, "ISO8859_16"

    const/16 v12, 0xf

    const/16 v13, 0x12

    invoke-direct {v9, v11, v12, v13, v10}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_16:Lcom/google/zxing/common/CharacterSetECI;

    .line 49
    new-instance v9, Lcom/google/zxing/common/CharacterSetECI;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const-string/jumbo v11, "Shift_JIS"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-string/jumbo v11, "SJIS"

    const/16 v12, 0x10

    const/16 v13, 0x14

    invoke-direct {v9, v11, v12, v13, v10}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/google/zxing/common/CharacterSetECI;->SJIS:Lcom/google/zxing/common/CharacterSetECI;

    .line 50
    new-instance v9, Lcom/google/zxing/common/CharacterSetECI;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const-string/jumbo v11, "windows-1250"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-string/jumbo v11, "Cp1250"

    const/16 v12, 0x11

    const/16 v13, 0x15

    invoke-direct {v9, v11, v12, v13, v10}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/google/zxing/common/CharacterSetECI;->Cp1250:Lcom/google/zxing/common/CharacterSetECI;

    .line 51
    new-instance v9, Lcom/google/zxing/common/CharacterSetECI;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const-string/jumbo v11, "windows-1251"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-string/jumbo v11, "Cp1251"

    const/16 v12, 0x12

    const/16 v13, 0x16

    invoke-direct {v9, v11, v12, v13, v10}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/google/zxing/common/CharacterSetECI;->Cp1251:Lcom/google/zxing/common/CharacterSetECI;

    .line 52
    new-instance v9, Lcom/google/zxing/common/CharacterSetECI;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const-string/jumbo v11, "windows-1252"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-string/jumbo v11, "Cp1252"

    const/16 v12, 0x13

    const/16 v13, 0x17

    invoke-direct {v9, v11, v12, v13, v10}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/google/zxing/common/CharacterSetECI;->Cp1252:Lcom/google/zxing/common/CharacterSetECI;

    .line 53
    new-instance v9, Lcom/google/zxing/common/CharacterSetECI;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const-string/jumbo v11, "windows-1256"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-string/jumbo v11, "Cp1256"

    const/16 v12, 0x14

    const/16 v13, 0x18

    invoke-direct {v9, v11, v12, v13, v10}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/google/zxing/common/CharacterSetECI;->Cp1256:Lcom/google/zxing/common/CharacterSetECI;

    .line 54
    new-instance v9, Lcom/google/zxing/common/CharacterSetECI;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const-string/jumbo v11, "UTF-16BE"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-string/jumbo v11, "UnicodeBig"

    const/4 v12, 0x1

    aput-object v11, v10, v12

    const-string/jumbo v11, "UnicodeBigUnmarked"

    const/16 v12, 0x15

    const/16 v13, 0x19

    invoke-direct {v9, v11, v12, v13, v10}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/google/zxing/common/CharacterSetECI;->UnicodeBigUnmarked:Lcom/google/zxing/common/CharacterSetECI;

    .line 55
    new-instance v9, Lcom/google/zxing/common/CharacterSetECI;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const-string/jumbo v11, "UTF-8"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-string/jumbo v11, "UTF8"

    const/16 v12, 0x16

    const/16 v13, 0x1a

    invoke-direct {v9, v11, v12, v13, v10}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/google/zxing/common/CharacterSetECI;->UTF8:Lcom/google/zxing/common/CharacterSetECI;

    .line 56
    new-instance v9, Lcom/google/zxing/common/CharacterSetECI;

    const/4 v10, 0x2

    new-array v10, v10, [I

    const/16 v11, 0x1b

    const/4 v12, 0x0

    aput v11, v10, v12

    const/16 v11, 0xaa

    const/4 v12, 0x1

    aput v11, v10, v12

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "US-ASCII"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "ASCII"

    const/16 v13, 0x17

    invoke-direct {v9, v12, v13, v10, v11}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    sput-object v9, Lcom/google/zxing/common/CharacterSetECI;->ASCII:Lcom/google/zxing/common/CharacterSetECI;

    .line 57
    new-instance v9, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v10, "Big5"

    const/16 v11, 0x18

    const/16 v12, 0x1c

    invoke-direct {v9, v10, v11, v12}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/zxing/common/CharacterSetECI;->Big5:Lcom/google/zxing/common/CharacterSetECI;

    .line 58
    new-instance v9, Lcom/google/zxing/common/CharacterSetECI;

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const-string/jumbo v11, "GB2312"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-string/jumbo v11, "EUC_CN"

    const/4 v12, 0x1

    aput-object v11, v10, v12

    const-string/jumbo v11, "GBK"

    const/4 v12, 0x2

    aput-object v11, v10, v12

    const-string/jumbo v11, "GB18030"

    const/16 v12, 0x19

    const/16 v13, 0x1d

    invoke-direct {v9, v11, v12, v13, v10}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/google/zxing/common/CharacterSetECI;->GB18030:Lcom/google/zxing/common/CharacterSetECI;

    .line 59
    new-instance v9, Lcom/google/zxing/common/CharacterSetECI;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const-string/jumbo v11, "EUC-KR"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-string/jumbo v11, "EUC_KR"

    const/16 v12, 0x1a

    const/16 v13, 0x1e

    invoke-direct {v9, v11, v12, v13, v10}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcom/google/zxing/common/CharacterSetECI;->EUC_KR:Lcom/google/zxing/common/CharacterSetECI;

    const/16 v9, 0x1b

    new-array v9, v9, [Lcom/google/zxing/common/CharacterSetECI;

    sget-object v10, Lcom/google/zxing/common/CharacterSetECI;->Cp437:Lcom/google/zxing/common/CharacterSetECI;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    sget-object v10, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_1:Lcom/google/zxing/common/CharacterSetECI;

    const/4 v11, 0x1

    aput-object v10, v9, v11

    sget-object v10, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_2:Lcom/google/zxing/common/CharacterSetECI;

    const/4 v11, 0x2

    aput-object v10, v9, v11

    sget-object v10, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_3:Lcom/google/zxing/common/CharacterSetECI;

    const/4 v11, 0x3

    aput-object v10, v9, v11

    sget-object v10, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_4:Lcom/google/zxing/common/CharacterSetECI;

    const/4 v11, 0x4

    aput-object v10, v9, v11

    sget-object v10, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_5:Lcom/google/zxing/common/CharacterSetECI;

    const/4 v11, 0x5

    aput-object v10, v9, v11

    sget-object v10, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_6:Lcom/google/zxing/common/CharacterSetECI;

    const/4 v11, 0x6

    aput-object v10, v9, v11

    sget-object v10, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_7:Lcom/google/zxing/common/CharacterSetECI;

    const/4 v11, 0x7

    aput-object v10, v9, v11

    sget-object v10, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_8:Lcom/google/zxing/common/CharacterSetECI;

    const/16 v11, 0x8

    aput-object v10, v9, v11

    sget-object v10, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_9:Lcom/google/zxing/common/CharacterSetECI;

    const/16 v11, 0x9

    aput-object v10, v9, v11

    sget-object v10, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_10:Lcom/google/zxing/common/CharacterSetECI;

    const/16 v11, 0xa

    aput-object v10, v9, v11

    sget-object v10, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_11:Lcom/google/zxing/common/CharacterSetECI;

    const/16 v11, 0xb

    aput-object v10, v9, v11

    sget-object v10, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_13:Lcom/google/zxing/common/CharacterSetECI;

    const/16 v11, 0xc

    aput-object v10, v9, v11

    sget-object v10, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_14:Lcom/google/zxing/common/CharacterSetECI;

    const/16 v11, 0xd

    aput-object v10, v9, v11

    sget-object v10, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_15:Lcom/google/zxing/common/CharacterSetECI;

    const/16 v11, 0xe

    aput-object v10, v9, v11

    sget-object v10, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_16:Lcom/google/zxing/common/CharacterSetECI;

    const/16 v11, 0xf

    aput-object v10, v9, v11

    sget-object v10, Lcom/google/zxing/common/CharacterSetECI;->SJIS:Lcom/google/zxing/common/CharacterSetECI;

    const/16 v11, 0x10

    aput-object v10, v9, v11

    sget-object v10, Lcom/google/zxing/common/CharacterSetECI;->Cp1250:Lcom/google/zxing/common/CharacterSetECI;

    const/16 v11, 0x11

    aput-object v10, v9, v11

    sget-object v10, Lcom/google/zxing/common/CharacterSetECI;->Cp1251:Lcom/google/zxing/common/CharacterSetECI;

    const/16 v11, 0x12

    aput-object v10, v9, v11

    sget-object v10, Lcom/google/zxing/common/CharacterSetECI;->Cp1252:Lcom/google/zxing/common/CharacterSetECI;

    const/16 v11, 0x13

    aput-object v10, v9, v11

    sget-object v10, Lcom/google/zxing/common/CharacterSetECI;->Cp1256:Lcom/google/zxing/common/CharacterSetECI;

    const/16 v11, 0x14

    aput-object v10, v9, v11

    sget-object v10, Lcom/google/zxing/common/CharacterSetECI;->UnicodeBigUnmarked:Lcom/google/zxing/common/CharacterSetECI;

    const/16 v11, 0x15

    aput-object v10, v9, v11

    sget-object v10, Lcom/google/zxing/common/CharacterSetECI;->UTF8:Lcom/google/zxing/common/CharacterSetECI;

    const/16 v11, 0x16

    aput-object v10, v9, v11

    sget-object v10, Lcom/google/zxing/common/CharacterSetECI;->ASCII:Lcom/google/zxing/common/CharacterSetECI;

    const/16 v11, 0x17

    aput-object v10, v9, v11

    sget-object v10, Lcom/google/zxing/common/CharacterSetECI;->Big5:Lcom/google/zxing/common/CharacterSetECI;

    const/16 v11, 0x18

    aput-object v10, v9, v11

    sget-object v10, Lcom/google/zxing/common/CharacterSetECI;->GB18030:Lcom/google/zxing/common/CharacterSetECI;

    const/16 v11, 0x19

    aput-object v10, v9, v11

    sget-object v10, Lcom/google/zxing/common/CharacterSetECI;->EUC_KR:Lcom/google/zxing/common/CharacterSetECI;

    const/16 v11, 0x1a

    aput-object v10, v9, v11

    sput-object v9, Lcom/google/zxing/common/CharacterSetECI;->ENUM$VALUES:[Lcom/google/zxing/common/CharacterSetECI;

    .line 61
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    sput-object v9, Lcom/google/zxing/common/CharacterSetECI;->VALUE_TO_ECI:Ljava/util/Map;

    .line 62
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    sput-object v9, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    .line 64
    invoke-static {}, Lcom/google/zxing/common/CharacterSetECI;->values()[Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v2

    .local v2, "-l_3_R":Ljava/lang/Object;
    array-length v1, v2

    .local v1, "-l_2_I":I
    const/4 v0, 0x0

    .local v0, "-l_1_I":I
    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v6, v2, v0

    .line 65
    .local v6, "eci":Lcom/google/zxing/common/CharacterSetECI;
    iget-object v5, v6, Lcom/google/zxing/common/CharacterSetECI;->values:[I

    .local v5, "-l_7_R":Ljava/lang/Object;
    array-length v4, v5

    .local v4, "-l_6_I":I
    const/4 v3, 0x0

    .local v3, "-l_5_I":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget v8, v5, v3

    .line 66
    .local v8, "value":I
    sget-object v9, Lcom/google/zxing/common/CharacterSetECI;->VALUE_TO_ECI:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 68
    .end local v8    # "value":I
    :cond_0
    sget-object v9, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/google/zxing/common/CharacterSetECI;->name()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v5, v6, Lcom/google/zxing/common/CharacterSetECI;->otherEncodingNames:[Ljava/lang/String;

    array-length v4, v5

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_1

    aget-object v7, v5, v3

    .line 70
    .local v7, "name":Ljava/lang/String;
    sget-object v9, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    invoke-interface {v9, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 64
    .end local v7    # "name":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    .end local v3    # "-l_5_I":I
    .end local v4    # "-l_6_I":I
    .end local v5    # "-l_7_R":Ljava/lang/Object;
    .end local v6    # "eci":Lcom/google/zxing/common/CharacterSetECI;
    :cond_2
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .param p3, "value"    # I

    .prologue
    const/4 v1, 0x0

    .line 79
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput p3, v0, v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;II[Ljava/lang/String;)V
    .locals 2
    .param p3, "value"    # I
    .param p4, "otherEncodingNames"    # [Ljava/lang/String;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 83
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p3, v0, v1

    iput-object v0, p0, Lcom/google/zxing/common/CharacterSetECI;->values:[I

    .line 84
    iput-object p4, p0, Lcom/google/zxing/common/CharacterSetECI;->otherEncodingNames:[Ljava/lang/String;

    .line 85
    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[I[Ljava/lang/String;)V
    .locals 0
    .param p3, "values"    # [I
    .param p4, "otherEncodingNames"    # [Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 88
    iput-object p3, p0, Lcom/google/zxing/common/CharacterSetECI;->values:[I

    .line 89
    iput-object p4, p0, Lcom/google/zxing/common/CharacterSetECI;->otherEncodingNames:[Ljava/lang/String;

    .line 90
    return-void
.end method

.method public static getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;
    .locals 2
    .param p0, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 103
    if-gez p0, :cond_1

    .line 104
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 103
    :cond_1
    const/16 v0, 0x384

    if-ge p0, v0, :cond_0

    .line 106
    sget-object v0, Lcom/google/zxing/common/CharacterSetECI;->VALUE_TO_ECI:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/common/CharacterSetECI;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/google/zxing/common/CharacterSetECI;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/common/CharacterSetECI;

    return-object v0
.end method

.method public static values()[Lcom/google/zxing/common/CharacterSetECI;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/zxing/common/CharacterSetECI;->ENUM$VALUES:[Lcom/google/zxing/common/CharacterSetECI;

    .local v0, "-l_0_R":Ljava/lang/Object;
    array-length v1, v0

    .local v1, "-l_1_I":I
    new-array v2, v1, [Lcom/google/zxing/common/CharacterSetECI;

    .local v2, "-l_2_R":Ljava/lang/Object;
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
