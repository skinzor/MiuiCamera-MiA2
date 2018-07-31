.class public final Lcom/google/zxing/aztec/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/aztec/decoder/Decoder$Table;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$google$zxing$aztec$decoder$Decoder$Table:[I

.field private static final DIGIT_TABLE:[Ljava/lang/String;

.field private static final LOWER_TABLE:[Ljava/lang/String;

.field private static final MIXED_TABLE:[Ljava/lang/String;

.field private static final PUNCT_TABLE:[Ljava/lang/String;

.field private static final UPPER_TABLE:[Ljava/lang/String;


# instance fields
.field private ddata:Lcom/google/zxing/aztec/AztecDetectorResult;


# direct methods
.method static synthetic $SWITCH_TABLE$com$google$zxing$aztec$decoder$Decoder$Table()[I
    .locals 3

    .prologue
    .line 35
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder;->$SWITCH_TABLE$com$google$zxing$aztec$decoder$Decoder$Table:[I

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/zxing/aztec/decoder/Decoder$Table;->values()[Lcom/google/zxing/aztec/decoder/Decoder$Table;

    move-result-object v1

    array-length v1, v1

    new-array v0, v1, [I

    .local v0, "-l_0_R":Ljava/lang/Object;
    :try_start_0
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    invoke-virtual {v1}, Lcom/google/zxing/aztec/decoder/Decoder$Table;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    invoke-virtual {v1}, Lcom/google/zxing/aztec/decoder/Decoder$Table;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder$Table;->LOWER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    invoke-virtual {v1}, Lcom/google/zxing/aztec/decoder/Decoder$Table;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder$Table;->MIXED:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    invoke-virtual {v1}, Lcom/google/zxing/aztec/decoder/Decoder$Table;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder$Table;->PUNCT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    invoke-virtual {v1}, Lcom/google/zxing/aztec/decoder/Decoder$Table;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    invoke-virtual {v1}, Lcom/google/zxing/aztec/decoder/Decoder$Table;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->$SWITCH_TABLE$com$google$zxing$aztec$decoder$Decoder$Table:[I

    return-object v0

    .end local v0    # "-l_0_R":Ljava/lang/Object;
    :cond_0
    return-object v1

    .restart local v0    # "-l_0_R":Ljava/lang/Object;
    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    .line 47
    const-string/jumbo v1, "CTRL_PS"

    aput-object v1, v0, v3

    const-string/jumbo v1, " "

    aput-object v1, v0, v4

    const-string/jumbo v1, "A"

    aput-object v1, v0, v5

    const-string/jumbo v1, "B"

    aput-object v1, v0, v6

    const-string/jumbo v1, "C"

    aput-object v1, v0, v7

    const-string/jumbo v1, "D"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "E"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "F"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "G"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "H"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "I"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "J"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "K"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "L"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "M"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "N"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "O"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "P"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const/16 v1, 0x12

    .line 48
    const-string/jumbo v2, "Q"

    aput-object v2, v0, v1

    const-string/jumbo v1, "R"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "S"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "T"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "U"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "V"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string/jumbo v1, "W"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string/jumbo v1, "X"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string/jumbo v1, "Y"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string/jumbo v1, "Z"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string/jumbo v1, "CTRL_LL"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string/jumbo v1, "CTRL_ML"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string/jumbo v1, "CTRL_DL"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string/jumbo v1, "CTRL_BS"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 46
    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->UPPER_TABLE:[Ljava/lang/String;

    .line 51
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    .line 52
    const-string/jumbo v1, "CTRL_PS"

    aput-object v1, v0, v3

    const-string/jumbo v1, " "

    aput-object v1, v0, v4

    const-string/jumbo v1, "a"

    aput-object v1, v0, v5

    const-string/jumbo v1, "b"

    aput-object v1, v0, v6

    const-string/jumbo v1, "c"

    aput-object v1, v0, v7

    const-string/jumbo v1, "d"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "e"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "f"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "g"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "h"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "i"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "j"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "k"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "l"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "m"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "n"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "o"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "p"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const/16 v1, 0x12

    .line 53
    const-string/jumbo v2, "q"

    aput-object v2, v0, v1

    const-string/jumbo v1, "r"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "s"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "t"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "u"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "v"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string/jumbo v1, "w"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string/jumbo v1, "x"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string/jumbo v1, "y"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string/jumbo v1, "z"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string/jumbo v1, "CTRL_US"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string/jumbo v1, "CTRL_ML"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string/jumbo v1, "CTRL_DL"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string/jumbo v1, "CTRL_BS"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 51
    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->LOWER_TABLE:[Ljava/lang/String;

    .line 56
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    .line 57
    const-string/jumbo v1, "CTRL_PS"

    aput-object v1, v0, v3

    const-string/jumbo v1, " "

    aput-object v1, v0, v4

    const-string/jumbo v1, "\u0001"

    aput-object v1, v0, v5

    const-string/jumbo v1, "\u0002"

    aput-object v1, v0, v6

    const-string/jumbo v1, "\u0003"

    aput-object v1, v0, v7

    const-string/jumbo v1, "\u0004"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u0005"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u0006"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u0007"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u0008"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "\t"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "\n"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const/16 v1, 0xc

    .line 58
    const-string/jumbo v2, "\u000b"

    aput-object v2, v0, v1

    const-string/jumbo v1, "\u000c"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "\r"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u001b"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u001c"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u001d"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u001e"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u001f"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "@"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "\\"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "^"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "_"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const/16 v1, 0x18

    .line 59
    const-string/jumbo v2, "`"

    aput-object v2, v0, v1

    const-string/jumbo v1, "|"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string/jumbo v1, "~"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u007f"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string/jumbo v1, "CTRL_LL"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string/jumbo v1, "CTRL_UL"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string/jumbo v1, "CTRL_PL"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string/jumbo v1, "CTRL_BS"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 56
    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->MIXED_TABLE:[Ljava/lang/String;

    .line 62
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    .line 63
    const-string/jumbo v1, ""

    aput-object v1, v0, v3

    const-string/jumbo v1, "\r"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\r\n"

    aput-object v1, v0, v5

    const-string/jumbo v1, ". "

    aput-object v1, v0, v6

    const-string/jumbo v1, ", "

    aput-object v1, v0, v7

    const-string/jumbo v1, ": "

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "!"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "\""

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "#"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "$"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "%"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "&"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "\'"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "("

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, ")"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const/16 v1, 0xf

    .line 64
    const-string/jumbo v2, "*"

    aput-object v2, v0, v1

    const-string/jumbo v1, "+"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, ","

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "-"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "."

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "/"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, ":"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, ";"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "<"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string/jumbo v1, "="

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string/jumbo v1, ">"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string/jumbo v1, "?"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string/jumbo v1, "["

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string/jumbo v1, "]"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string/jumbo v1, "{"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string/jumbo v1, "}"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string/jumbo v1, "CTRL_UL"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 62
    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->PUNCT_TABLE:[Ljava/lang/String;

    .line 67
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    .line 68
    const-string/jumbo v1, "CTRL_PS"

    aput-object v1, v0, v3

    const-string/jumbo v1, " "

    aput-object v1, v0, v4

    const-string/jumbo v1, "0"

    aput-object v1, v0, v5

    const-string/jumbo v1, "1"

    aput-object v1, v0, v6

    const-string/jumbo v1, "2"

    aput-object v1, v0, v7

    const-string/jumbo v1, "3"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "4"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "5"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "6"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "7"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "8"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "9"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, ","

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "."

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "CTRL_UL"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "CTRL_US"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 67
    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->DIGIT_TABLE:[Ljava/lang/String;

    .line 69
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private correctBits([Z)[Z
    .locals 21
    .param p1, "rawbits"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_0

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_1

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v19

    const/16 v20, 0x16

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_2

    .line 212
    const/16 v3, 0xc

    .line 213
    .local v3, "codewordSize":I
    sget-object v7, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 216
    .local v7, "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbDatablocks()I

    move-result v14

    .line 217
    .local v14, "numDataCodewords":I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    div-int v13, v19, v3

    .line 218
    .local v13, "numCodewords":I
    if-lt v13, v14, :cond_3

    .line 221
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    rem-int v16, v19, v3

    .line 222
    .local v16, "offset":I
    sub-int v15, v13, v14

    .line 224
    .local v15, "numECCodewords":I
    new-array v6, v13, [I

    .line 225
    .local v6, "dataWords":[I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v13, :cond_4

    .line 226
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1, v3}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v19

    aput v19, v6, v8

    .line 225
    add-int/lit8 v8, v8, 0x1

    add-int v16, v16, v3

    goto :goto_1

    .line 203
    .end local v3    # "codewordSize":I
    .end local v6    # "dataWords":[I
    .end local v7    # "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    .end local v8    # "i":I
    .end local v13    # "numCodewords":I
    .end local v14    # "numDataCodewords":I
    .end local v15    # "numECCodewords":I
    .end local v16    # "offset":I
    :cond_0
    const/4 v3, 0x6

    .line 204
    .restart local v3    # "codewordSize":I
    sget-object v7, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .restart local v7    # "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    goto :goto_0

    .line 206
    .end local v3    # "codewordSize":I
    .end local v7    # "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    :cond_1
    const/16 v3, 0x8

    .line 207
    .restart local v3    # "codewordSize":I
    sget-object v7, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .restart local v7    # "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    goto :goto_0

    .line 209
    .end local v3    # "codewordSize":I
    .end local v7    # "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    :cond_2
    const/16 v3, 0xa

    .line 210
    .restart local v3    # "codewordSize":I
    sget-object v7, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .restart local v7    # "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    goto :goto_0

    .line 219
    .restart local v13    # "numCodewords":I
    .restart local v14    # "numDataCodewords":I
    :cond_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v19

    throw v19

    .line 230
    .restart local v6    # "dataWords":[I
    .restart local v8    # "i":I
    .restart local v15    # "numECCodewords":I
    .restart local v16    # "offset":I
    :cond_4
    :try_start_0
    new-instance v17, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    move-object/from16 v0, v17

    invoke-direct {v0, v7}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    .line 231
    .local v17, "rsDecoder":Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v15}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    const/16 v19, 0x1

    shl-int v19, v19, v3

    add-int/lit8 v12, v19, -0x1

    .line 239
    .local v12, "mask":I
    const/16 v18, 0x0

    .line 240
    .local v18, "stuffedBits":I
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v14, :cond_9

    .line 241
    aget v5, v6, v8

    .line 242
    .local v5, "dataWord":I
    if-nez v5, :cond_6

    .line 243
    :cond_5
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v19

    throw v19

    .line 232
    .end local v5    # "dataWord":I
    .end local v12    # "mask":I
    .end local v17    # "rsDecoder":Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
    .end local v18    # "stuffedBits":I
    :catch_0
    move-exception v9

    .line 233
    .local v9, "ignored":Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v19

    throw v19

    .line 242
    .end local v9    # "ignored":Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    .restart local v5    # "dataWord":I
    .restart local v12    # "mask":I
    .restart local v17    # "rsDecoder":Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
    .restart local v18    # "stuffedBits":I
    :cond_6
    if-eq v5, v12, :cond_5

    .line 244
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v5, v0, :cond_8

    .line 245
    :cond_7
    add-int/lit8 v18, v18, 0x1

    .line 240
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 244
    :cond_8
    add-int/lit8 v19, v12, -0x1

    move/from16 v0, v19

    if-eq v5, v0, :cond_7

    goto :goto_3

    .line 249
    .end local v5    # "dataWord":I
    :cond_9
    mul-int v19, v14, v3

    sub-int v19, v19, v18

    move/from16 v0, v19

    new-array v4, v0, [Z

    .line 250
    .local v4, "correctedBits":[Z
    const/4 v10, 0x0

    .line 251
    .local v10, "index":I
    const/4 v8, 0x0

    :goto_4
    if-ge v8, v14, :cond_e

    .line 252
    aget v5, v6, v8

    .line 253
    .restart local v5    # "dataWord":I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v5, v0, :cond_b

    .line 255
    :cond_a
    add-int v19, v10, v3

    add-int/lit8 v20, v19, -0x1

    const/16 v19, 0x1

    move/from16 v0, v19

    if-gt v5, v0, :cond_c

    const/16 v19, 0x0

    :goto_5
    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v4, v10, v0, v1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 256
    add-int/lit8 v19, v3, -0x1

    add-int v10, v10, v19

    .line 251
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 253
    :cond_b
    add-int/lit8 v19, v12, -0x1

    move/from16 v0, v19

    if-eq v5, v0, :cond_a

    .line 258
    add-int/lit8 v2, v3, -0x1

    .local v2, "bit":I
    move v11, v10

    .end local v10    # "index":I
    .local v11, "index":I
    :goto_7
    if-ltz v2, :cond_f

    .line 259
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "index":I
    .restart local v10    # "index":I
    const/16 v19, 0x1

    shl-int v19, v19, v2

    and-int v19, v19, v5

    if-nez v19, :cond_d

    const/16 v19, 0x0

    :goto_8
    aput-boolean v19, v4, v11

    .line 258
    add-int/lit8 v2, v2, -0x1

    move v11, v10

    .end local v10    # "index":I
    .restart local v11    # "index":I
    goto :goto_7

    .line 255
    .end local v2    # "bit":I
    .end local v11    # "index":I
    .restart local v10    # "index":I
    :cond_c
    const/16 v19, 0x1

    goto :goto_5

    .line 259
    .restart local v2    # "bit":I
    :cond_d
    const/16 v19, 0x1

    goto :goto_8

    .line 263
    .end local v2    # "bit":I
    .end local v5    # "dataWord":I
    :cond_e
    return-object v4

    .end local v10    # "index":I
    .restart local v2    # "bit":I
    .restart local v5    # "dataWord":I
    .restart local v11    # "index":I
    :cond_f
    move v10, v11

    .end local v11    # "index":I
    .restart local v10    # "index":I
    goto :goto_6
.end method

.method private static getCharacter(Lcom/google/zxing/aztec/decoder/Decoder$Table;I)Ljava/lang/String;
    .locals 2
    .param p0, "table"    # Lcom/google/zxing/aztec/decoder/Decoder$Table;
    .param p1, "code"    # I

    .prologue
    .line 175
    invoke-static {}, Lcom/google/zxing/aztec/decoder/Decoder;->$SWITCH_TABLE$com$google$zxing$aztec$decoder$Decoder$Table()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/zxing/aztec/decoder/Decoder$Table;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 188
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Bad table"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :pswitch_0
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->UPPER_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 179
    :pswitch_1
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->LOWER_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 181
    :pswitch_2
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->MIXED_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 183
    :pswitch_3
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->PUNCT_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 185
    :pswitch_4
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->DIGIT_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private static getEncodedData([Z)Ljava/lang/String;
    .locals 15
    .param p0, "correctedBits"    # [Z

    .prologue
    const/16 v14, 0xb

    const/16 v13, 0x8

    const/4 v10, 0x5

    .line 93
    array-length v2, p0

    .line 94
    .local v2, "endIndex":I
    sget-object v4, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 95
    .local v4, "latchTable":Lcom/google/zxing/aztec/decoder/Decoder$Table;
    sget-object v7, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 96
    .local v7, "shiftTable":Lcom/google/zxing/aztec/decoder/Decoder$Table;
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v11, 0x14

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 97
    .local v6, "result":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 98
    .local v3, "index":I
    :cond_0
    :goto_0
    if-ge v3, v2, :cond_7

    .line 99
    sget-object v11, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    if-eq v7, v11, :cond_1

    .line 124
    sget-object v11, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    if-eq v7, v11, :cond_5

    move v8, v10

    .line 125
    .local v8, "size":I
    :goto_1
    sub-int v11, v2, v3

    if-lt v11, v8, :cond_7

    .line 128
    invoke-static {p0, v3, v8}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v1

    .line 129
    .local v1, "code":I
    add-int/2addr v3, v8

    .line 130
    invoke-static {v7, v1}, Lcom/google/zxing/aztec/decoder/Decoder;->getCharacter(Lcom/google/zxing/aztec/decoder/Decoder$Table;I)Ljava/lang/String;

    move-result-object v9

    .line 131
    .local v9, "str":Ljava/lang/String;
    const-string/jumbo v11, "CTRL_"

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 138
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    move-object v7, v4

    goto :goto_0

    .line 100
    .end local v1    # "code":I
    .end local v8    # "size":I
    .end local v9    # "str":Ljava/lang/String;
    :cond_1
    sub-int v11, v2, v3

    if-lt v11, v10, :cond_7

    .line 103
    invoke-static {p0, v3, v10}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v5

    .line 104
    .local v5, "length":I
    add-int/lit8 v3, v3, 0x5

    .line 105
    if-eqz v5, :cond_2

    .line 112
    :goto_2
    const/4 v0, 0x0

    .local v0, "charCount":I
    :goto_3
    if-ge v0, v5, :cond_4

    .line 113
    sub-int v11, v2, v3

    if-lt v11, v13, :cond_3

    .line 117
    invoke-static {p0, v3, v13}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v1

    .line 118
    .restart local v1    # "code":I
    int-to-char v11, v1

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    add-int/lit8 v3, v3, 0x8

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 106
    .end local v0    # "charCount":I
    .end local v1    # "code":I
    :cond_2
    sub-int v11, v2, v3

    if-lt v11, v14, :cond_7

    .line 109
    invoke-static {p0, v3, v14}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v11

    add-int/lit8 v5, v11, 0x1f

    .line 110
    add-int/lit8 v3, v3, 0xb

    goto :goto_2

    .line 114
    .restart local v0    # "charCount":I
    :cond_3
    move v3, v2

    .line 122
    :cond_4
    move-object v7, v4

    goto :goto_0

    .line 124
    .end local v0    # "charCount":I
    .end local v5    # "length":I
    :cond_5
    const/4 v8, 0x4

    goto :goto_1

    .line 133
    .restart local v1    # "code":I
    .restart local v8    # "size":I
    .restart local v9    # "str":Ljava/lang/String;
    :cond_6
    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lcom/google/zxing/aztec/decoder/Decoder;->getTable(C)Lcom/google/zxing/aztec/decoder/Decoder$Table;

    move-result-object v7

    .line 134
    const/4 v11, 0x6

    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x4c

    if-ne v11, v12, :cond_0

    .line 135
    move-object v4, v7

    goto :goto_0

    .line 144
    .end local v1    # "code":I
    .end local v8    # "size":I
    .end local v9    # "str":Ljava/lang/String;
    :cond_7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method

.method private static getTable(C)Lcom/google/zxing/aztec/decoder/Decoder$Table;
    .locals 1
    .param p0, "t"    # C

    .prologue
    .line 151
    sparse-switch p0, :sswitch_data_0

    .line 164
    :sswitch_0
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object v0

    .line 153
    :sswitch_1
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->LOWER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object v0

    .line 155
    :sswitch_2
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->PUNCT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object v0

    .line 157
    :sswitch_3
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->MIXED:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object v0

    .line 159
    :sswitch_4
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object v0

    .line 161
    :sswitch_5
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object v0

    .line 151
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_5
        0x44 -> :sswitch_4
        0x4c -> :sswitch_1
        0x4d -> :sswitch_3
        0x50 -> :sswitch_2
        0x55 -> :sswitch_0
    .end sparse-switch
.end method

.method private static readCode([ZII)I
    .locals 3
    .param p0, "rawbits"    # [Z
    .param p1, "startIndex"    # I
    .param p2, "length"    # I

    .prologue
    .line 325
    const/4 v1, 0x0

    .line 326
    .local v1, "res":I
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int v2, p1, p2

    if-ge v0, v2, :cond_1

    .line 327
    shl-int/lit8 v1, v1, 0x1

    .line 328
    aget-boolean v2, p0, v0

    if-nez v2, :cond_0

    .line 326
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    :cond_0
    or-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 332
    :cond_1
    return v1
.end method

.method private static totalBitsInLayer(IZ)I
    .locals 2
    .param p0, "layers"    # I
    .param p1, "compact"    # Z

    .prologue
    .line 336
    if-nez p1, :cond_0

    const/16 v0, 0x70

    :goto_0
    mul-int/lit8 v1, p0, 0x10

    add-int/2addr v0, v1

    mul-int/2addr v0, p0

    return v0

    :cond_0
    const/16 v0, 0x58

    goto :goto_0
.end method


# virtual methods
.method public decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;
    .locals 6
    .param p1, "detectorResult"    # Lcom/google/zxing/aztec/AztecDetectorResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 74
    iput-object p1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    .line 75
    invoke-virtual {p1}, Lcom/google/zxing/aztec/AztecDetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    .line 76
    .local v1, "matrix":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual {p0, v1}, Lcom/google/zxing/aztec/decoder/Decoder;->extractBits(Lcom/google/zxing/common/BitMatrix;)[Z

    move-result-object v2

    .line 77
    .local v2, "rawbits":[Z
    invoke-direct {p0, v2}, Lcom/google/zxing/aztec/decoder/Decoder;->correctBits([Z)[Z

    move-result-object v0

    .line 78
    .local v0, "correctedBits":[Z
    invoke-static {v0}, Lcom/google/zxing/aztec/decoder/Decoder;->getEncodedData([Z)Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "result":Ljava/lang/String;
    new-instance v4, Lcom/google/zxing/common/DecoderResult;

    invoke-direct {v4, v5, v3, v5, v5}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v4
.end method

.method extractBits(Lcom/google/zxing/common/BitMatrix;)[Z
    .locals 23
    .param p1, "matrix"    # Lcom/google/zxing/common/BitMatrix;

    .prologue
    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/aztec/AztecDetectorResult;->isCompact()Z

    move-result v7

    .line 273
    .local v7, "compact":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v12

    .line 274
    .local v12, "layers":I
    if-nez v7, :cond_0

    mul-int/lit8 v20, v12, 0x4

    add-int/lit8 v4, v20, 0xe

    .line 275
    .local v4, "baseMatrixSize":I
    :goto_0
    new-array v3, v4, [I

    .line 276
    .local v3, "alignmentMap":[I
    invoke-static {v12, v7}, Lcom/google/zxing/aztec/decoder/Decoder;->totalBitsInLayer(IZ)I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [Z

    move-object/from16 v17, v0

    .line 278
    .local v17, "rawbits":[Z
    if-nez v7, :cond_1

    .line 283
    add-int/lit8 v20, v4, 0x1

    div-int/lit8 v21, v4, 0x2

    add-int/lit8 v21, v21, -0x1

    div-int/lit8 v21, v21, 0xf

    mul-int/lit8 v21, v21, 0x2

    add-int v14, v20, v21

    .line 284
    .local v14, "matrixSize":I
    div-int/lit8 v16, v4, 0x2

    .line 285
    .local v16, "origCenter":I
    div-int/lit8 v5, v14, 0x2

    .line 286
    .local v5, "center":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    move/from16 v0, v16

    if-ge v9, v0, :cond_2

    .line 287
    div-int/lit8 v20, v9, 0xf

    add-int v15, v9, v20

    .line 288
    .local v15, "newOffset":I
    sub-int v20, v16, v9

    add-int/lit8 v20, v20, -0x1

    sub-int v21, v5, v15

    add-int/lit8 v21, v21, -0x1

    aput v21, v3, v20

    .line 289
    add-int v20, v16, v9

    add-int v21, v5, v15

    add-int/lit8 v21, v21, 0x1

    aput v21, v3, v20

    .line 286
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 274
    .end local v3    # "alignmentMap":[I
    .end local v4    # "baseMatrixSize":I
    .end local v5    # "center":I
    .end local v9    # "i":I
    .end local v14    # "matrixSize":I
    .end local v15    # "newOffset":I
    .end local v16    # "origCenter":I
    .end local v17    # "rawbits":[Z
    :cond_0
    mul-int/lit8 v20, v12, 0x4

    add-int/lit8 v4, v20, 0xb

    goto :goto_0

    .line 279
    .restart local v3    # "alignmentMap":[I
    .restart local v4    # "baseMatrixSize":I
    .restart local v17    # "rawbits":[Z
    :cond_1
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_2
    array-length v0, v3

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v9, v0, :cond_2

    .line 280
    aput v9, v3, v9

    .line 279
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 292
    :cond_2
    const/4 v9, 0x0

    const/16 v18, 0x0

    .local v18, "rowOffset":I
    :goto_3
    if-ge v9, v12, :cond_6

    .line 293
    if-nez v7, :cond_3

    sub-int v20, v12, v9

    mul-int/lit8 v20, v20, 0x4

    add-int/lit8 v19, v20, 0xc

    .line 295
    .local v19, "rowSize":I
    :goto_4
    mul-int/lit8 v13, v9, 0x2

    .line 297
    .local v13, "low":I
    add-int/lit8 v20, v4, -0x1

    sub-int v8, v20, v13

    .line 299
    .local v8, "high":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_5
    move/from16 v0, v19

    if-ge v10, v0, :cond_5

    .line 300
    mul-int/lit8 v6, v10, 0x2

    .line 301
    .local v6, "columnOffset":I
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_6
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ge v11, v0, :cond_4

    .line 303
    add-int v20, v18, v6

    add-int v20, v20, v11

    .line 304
    add-int v21, v13, v11

    aget v21, v3, v21

    add-int v22, v13, v10

    aget v22, v3, v22

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v21

    .line 303
    aput-boolean v21, v17, v20

    .line 306
    mul-int/lit8 v20, v19, 0x2

    add-int v20, v20, v18

    add-int v20, v20, v6

    add-int v20, v20, v11

    .line 307
    add-int v21, v13, v10

    aget v21, v3, v21

    sub-int v22, v8, v11

    aget v22, v3, v22

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v21

    .line 306
    aput-boolean v21, v17, v20

    .line 309
    mul-int/lit8 v20, v19, 0x4

    add-int v20, v20, v18

    add-int v20, v20, v6

    add-int v20, v20, v11

    .line 310
    sub-int v21, v8, v11

    aget v21, v3, v21

    sub-int v22, v8, v10

    aget v22, v3, v22

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v21

    .line 309
    aput-boolean v21, v17, v20

    .line 312
    mul-int/lit8 v20, v19, 0x6

    add-int v20, v20, v18

    add-int v20, v20, v6

    add-int v20, v20, v11

    .line 313
    sub-int v21, v8, v10

    aget v21, v3, v21

    add-int v22, v13, v11

    aget v22, v3, v22

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v21

    .line 312
    aput-boolean v21, v17, v20

    .line 301
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 293
    .end local v6    # "columnOffset":I
    .end local v8    # "high":I
    .end local v10    # "j":I
    .end local v11    # "k":I
    .end local v13    # "low":I
    .end local v19    # "rowSize":I
    :cond_3
    sub-int v20, v12, v9

    mul-int/lit8 v20, v20, 0x4

    add-int/lit8 v19, v20, 0x9

    goto/16 :goto_4

    .line 299
    .restart local v6    # "columnOffset":I
    .restart local v8    # "high":I
    .restart local v10    # "j":I
    .restart local v11    # "k":I
    .restart local v13    # "low":I
    .restart local v19    # "rowSize":I
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_5

    .line 316
    .end local v6    # "columnOffset":I
    .end local v11    # "k":I
    :cond_5
    mul-int/lit8 v20, v19, 0x8

    add-int v18, v18, v20

    .line 292
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 318
    .end local v8    # "high":I
    .end local v10    # "j":I
    .end local v13    # "low":I
    .end local v19    # "rowSize":I
    :cond_6
    return-object v17
.end method
