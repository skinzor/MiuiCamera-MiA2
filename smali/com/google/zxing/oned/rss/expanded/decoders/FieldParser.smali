.class final Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;
.super Ljava/lang/Object;
.source "FieldParser.java"


# static fields
.field private static final FOUR_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final THREE_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final TWO_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final VARIABLE_LENGTH:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x6

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    .line 39
    const/16 v0, 0x18

    new-array v0, v0, [[Ljava/lang/Object;

    .line 44
    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "00"

    aput-object v2, v1, v5

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    .line 45
    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "01"

    aput-object v2, v1, v5

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    .line 46
    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "02"

    aput-object v2, v1, v5

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    .line 48
    new-array v1, v8, [Ljava/lang/Object;

    const-string/jumbo v2, "10"

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v2, v1, v6

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object v1, v0, v8

    const/4 v1, 0x4

    .line 49
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "11"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 50
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "12"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    .line 51
    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "13"

    aput-object v2, v1, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    const/4 v1, 0x7

    .line 52
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "15"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 53
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "17"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 55
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "20"

    aput-object v3, v2, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 56
    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "21"

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v6

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 57
    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "22"

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v6

    const/16 v3, 0x1d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 59
    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "30"

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v6

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 60
    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "37"

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v6

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 63
    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "90"

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v6

    const/16 v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 64
    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "91"

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v6

    const/16 v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 65
    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "92"

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v6

    const/16 v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 66
    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "93"

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v6

    const/16 v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 67
    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "94"

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v6

    const/16 v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 68
    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "95"

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v6

    const/16 v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 69
    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "96"

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v6

    const/16 v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 70
    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "97"

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v6

    const/16 v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 71
    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "98"

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v6

    const/16 v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 72
    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "99"

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v6

    const/16 v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    .line 39
    sput-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    .line 75
    const/16 v0, 0x17

    new-array v0, v0, [[Ljava/lang/Object;

    .line 78
    new-array v1, v8, [Ljava/lang/Object;

    const-string/jumbo v2, "240"

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v2, v1, v6

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    .line 79
    new-array v1, v8, [Ljava/lang/Object;

    const-string/jumbo v2, "241"

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v2, v1, v6

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object v1, v0, v6

    .line 80
    new-array v1, v8, [Ljava/lang/Object;

    const-string/jumbo v2, "242"

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v2, v1, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    .line 81
    new-array v1, v8, [Ljava/lang/Object;

    const-string/jumbo v2, "250"

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v2, v1, v6

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object v1, v0, v8

    const/4 v1, 0x4

    .line 82
    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "251"

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v6

    const/16 v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 83
    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "253"

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v6

    const/16 v3, 0x11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    .line 84
    new-array v1, v8, [Ljava/lang/Object;

    const-string/jumbo v2, "254"

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v2, v1, v6

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object v1, v0, v7

    const/4 v1, 0x7

    .line 86
    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "400"

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v6

    const/16 v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 87
    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "401"

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v6

    const/16 v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 88
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "402"

    aput-object v3, v2, v5

    const/16 v3, 0x11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 89
    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "403"

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v6

    const/16 v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 90
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "410"

    aput-object v3, v2, v5

    const/16 v3, 0xd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 91
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "411"

    aput-object v3, v2, v5

    const/16 v3, 0xd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 92
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "412"

    aput-object v3, v2, v5

    const/16 v3, 0xd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 93
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "413"

    aput-object v3, v2, v5

    const/16 v3, 0xd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 94
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "414"

    aput-object v3, v2, v5

    const/16 v3, 0xd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 95
    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "420"

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v6

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 96
    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "421"

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v6

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 97
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "422"

    aput-object v3, v2, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 98
    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "423"

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v6

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 99
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "424"

    aput-object v3, v2, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 100
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "425"

    aput-object v3, v2, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 101
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "426"

    aput-object v3, v2, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    .line 75
    sput-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    .line 104
    const/16 v0, 0x39

    new-array v0, v0, [[Ljava/lang/Object;

    .line 107
    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "310"

    aput-object v2, v1, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    .line 108
    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "311"

    aput-object v2, v1, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    .line 109
    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "312"

    aput-object v2, v1, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    .line 110
    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "313"

    aput-object v2, v1, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object v1, v0, v8

    const/4 v1, 0x4

    .line 111
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "314"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 112
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "315"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    .line 113
    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "316"

    aput-object v2, v1, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    const/4 v1, 0x7

    .line 114
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "320"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 115
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "321"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 116
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "322"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 117
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "323"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 118
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "324"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 119
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "325"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 120
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "326"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 121
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "327"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 122
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "328"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 123
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "329"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 124
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "330"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 125
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "331"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 126
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "332"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 127
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "333"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 128
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "334"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 129
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "335"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 130
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "336"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 131
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "340"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 132
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "341"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 133
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "342"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 134
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "343"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 135
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "344"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 136
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "345"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 137
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "346"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 138
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "347"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 139
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "348"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 140
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "349"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 141
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "350"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x23

    .line 142
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "351"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 143
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "352"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x25

    .line 144
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "353"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x26

    .line 145
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "354"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x27

    .line 146
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "355"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x28

    .line 147
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "356"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x29

    .line 148
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "357"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    .line 149
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "360"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    .line 150
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "361"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    .line 151
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "362"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    .line 152
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "363"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    .line 153
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "364"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    .line 154
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "365"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x30

    .line 155
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "366"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x31

    .line 156
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "367"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x32

    .line 157
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "368"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x33

    .line 158
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "369"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x34

    .line 159
    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "390"

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v6

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x35

    .line 160
    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "391"

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v6

    const/16 v3, 0x12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x36

    .line 161
    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "392"

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v6

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x37

    .line 162
    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "393"

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v6

    const/16 v3, 0x12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x38

    .line 163
    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "703"

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v6

    const/16 v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    .line 104
    sput-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    .line 166
    const/16 v0, 0x12

    new-array v0, v0, [[Ljava/lang/Object;

    .line 169
    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "7001"

    aput-object v2, v1, v5

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    .line 170
    new-array v1, v8, [Ljava/lang/Object;

    const-string/jumbo v2, "7002"

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v2, v1, v6

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object v1, v0, v6

    .line 171
    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "7003"

    aput-object v2, v1, v5

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    .line 173
    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "8001"

    aput-object v2, v1, v5

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object v1, v0, v8

    const/4 v1, 0x4

    .line 174
    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "8002"

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v6

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 175
    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "8003"

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v6

    const/16 v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    .line 176
    new-array v1, v8, [Ljava/lang/Object;

    const-string/jumbo v2, "8004"

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v2, v1, v6

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object v1, v0, v7

    const/4 v1, 0x7

    .line 177
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "8005"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 178
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "8006"

    aput-object v3, v2, v5

    const/16 v3, 0x12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 179
    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "8007"

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v6

    const/16 v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 180
    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "8008"

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v6

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 181
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "8018"

    aput-object v3, v2, v5

    const/16 v3, 0x12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 182
    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "8020"

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v6

    const/16 v3, 0x19

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 183
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "8100"

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 184
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "8101"

    aput-object v3, v2, v5

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 185
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "8102"

    aput-object v3, v2, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 186
    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "8110"

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v6

    const/16 v3, 0x46

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 187
    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "8200"

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v6

    const/16 v3, 0x46

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    .line 166
    sput-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    .line 188
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    return-void
.end method

.method static parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "rawInformation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 200
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x2

    if-lt v11, v12, :cond_1

    .line 204
    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-virtual {p0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 206
    .local v10, "firstTwoDigits":Ljava/lang/String;
    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    .local v3, "-l_5_R":Ljava/lang/Object;
    array-length v1, v3

    .local v1, "-l_4_I":I
    const/4 v0, 0x0

    .local v0, "-l_3_I":I
    :goto_0
    if-ge v0, v1, :cond_4

    aget-object v7, v3, v0

    .line 207
    .local v7, "dataLength":[Ljava/lang/Object;
    const/4 v11, 0x0

    aget-object v11, v7, v11

    invoke-virtual {v11, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    .end local v0    # "-l_3_I":I
    .end local v1    # "-l_4_I":I
    .end local v3    # "-l_5_R":Ljava/lang/Object;
    .end local v7    # "dataLength":[Ljava/lang/Object;
    .end local v10    # "firstTwoDigits":Ljava/lang/String;
    :cond_0
    const/4 v11, 0x0

    return-object v11

    .line 201
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v11

    throw v11

    .line 208
    .restart local v0    # "-l_3_I":I
    .restart local v1    # "-l_4_I":I
    .restart local v3    # "-l_5_R":Ljava/lang/Object;
    .restart local v7    # "dataLength":[Ljava/lang/Object;
    .restart local v10    # "firstTwoDigits":Ljava/lang/String;
    :cond_2
    const/4 v11, 0x1

    aget-object v11, v7, v11

    sget-object v12, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    if-eq v11, v12, :cond_3

    .line 211
    const/4 v11, 0x1

    aget-object v11, v7, v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, 0x2

    invoke-static {v12, v11, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 209
    :cond_3
    const/4 v11, 0x2

    aget-object v11, v7, v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, 0x2

    invoke-static {v12, v11, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 215
    .end local v7    # "dataLength":[Ljava/lang/Object;
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x3

    if-lt v11, v12, :cond_5

    .line 219
    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-virtual {p0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 221
    .local v9, "firstThreeDigits":Ljava/lang/String;
    sget-object v5, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    .local v5, "-l_6_R":Ljava/lang/Object;
    array-length v2, v5

    .local v2, "-l_5_I":I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_8

    aget-object v7, v5, v1

    .line 222
    .restart local v7    # "dataLength":[Ljava/lang/Object;
    const/4 v11, 0x0

    aget-object v11, v7, v11

    invoke-virtual {v11, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 216
    .end local v2    # "-l_5_I":I
    .end local v5    # "-l_6_R":Ljava/lang/Object;
    .end local v7    # "dataLength":[Ljava/lang/Object;
    .end local v9    # "firstThreeDigits":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v11

    throw v11

    .line 223
    .restart local v2    # "-l_5_I":I
    .restart local v5    # "-l_6_R":Ljava/lang/Object;
    .restart local v7    # "dataLength":[Ljava/lang/Object;
    .restart local v9    # "firstThreeDigits":Ljava/lang/String;
    :cond_6
    const/4 v11, 0x1

    aget-object v11, v7, v11

    sget-object v12, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    if-eq v11, v12, :cond_7

    .line 226
    const/4 v11, 0x1

    aget-object v11, v7, v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, 0x3

    invoke-static {v12, v11, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 224
    :cond_7
    const/4 v11, 0x2

    aget-object v11, v7, v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, 0x3

    invoke-static {v12, v11, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 231
    .end local v7    # "dataLength":[Ljava/lang/Object;
    :cond_8
    sget-object v5, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    array-length v2, v5

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_b

    aget-object v7, v5, v1

    .line 232
    .restart local v7    # "dataLength":[Ljava/lang/Object;
    const/4 v11, 0x0

    aget-object v11, v7, v11

    invoke-virtual {v11, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 233
    :cond_9
    const/4 v11, 0x1

    aget-object v11, v7, v11

    sget-object v12, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    if-eq v11, v12, :cond_a

    .line 236
    const/4 v11, 0x1

    aget-object v11, v7, v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, 0x4

    invoke-static {v12, v11, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 234
    :cond_a
    const/4 v11, 0x2

    aget-object v11, v7, v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, 0x4

    invoke-static {v12, v11, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 240
    .end local v7    # "dataLength":[Ljava/lang/Object;
    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x4

    if-lt v11, v12, :cond_c

    .line 244
    const/4 v11, 0x0

    const/4 v12, 0x4

    invoke-virtual {p0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 246
    .local v8, "firstFourDigits":Ljava/lang/String;
    sget-object v6, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    .local v6, "-l_7_R":Ljava/lang/Object;
    array-length v4, v6

    .local v4, "-l_6_I":I
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v4, :cond_f

    aget-object v7, v6, v2

    .line 247
    .restart local v7    # "dataLength":[Ljava/lang/Object;
    const/4 v11, 0x0

    aget-object v11, v7, v11

    invoke-virtual {v11, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    .line 246
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 241
    .end local v4    # "-l_6_I":I
    .end local v6    # "-l_7_R":Ljava/lang/Object;
    .end local v7    # "dataLength":[Ljava/lang/Object;
    .end local v8    # "firstFourDigits":Ljava/lang/String;
    :cond_c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v11

    throw v11

    .line 248
    .restart local v4    # "-l_6_I":I
    .restart local v6    # "-l_7_R":Ljava/lang/Object;
    .restart local v7    # "dataLength":[Ljava/lang/Object;
    .restart local v8    # "firstFourDigits":Ljava/lang/String;
    :cond_d
    const/4 v11, 0x1

    aget-object v11, v7, v11

    sget-object v12, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    if-eq v11, v12, :cond_e

    .line 251
    const/4 v11, 0x1

    aget-object v11, v7, v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, 0x4

    invoke-static {v12, v11, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 249
    :cond_e
    const/4 v11, 0x2

    aget-object v11, v7, v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, 0x4

    invoke-static {v12, v11, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 255
    .end local v7    # "dataLength":[Ljava/lang/Object;
    :cond_f
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v11

    throw v11
.end method

.method private static processFixedAI(IILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "aiSize"    # I
    .param p1, "fieldSize"    # I
    .param p2, "rawInformation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 259
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, p0, :cond_1

    .line 263
    const/4 v5, 0x0

    invoke-virtual {p2, v5, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "ai":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int v6, p0, p1

    if-lt v5, v6, :cond_2

    .line 269
    add-int v5, p0, p1

    invoke-virtual {p2, p0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "field":Ljava/lang/String;
    add-int v5, p0, p1

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 271
    .local v3, "remaining":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x28

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 272
    .local v4, "result":Ljava/lang/String;
    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, "parsedAI":Ljava/lang/String;
    if-eqz v2, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v4    # "result":Ljava/lang/String;
    :cond_0
    return-object v4

    .line 260
    .end local v0    # "ai":Ljava/lang/String;
    .end local v1    # "field":Ljava/lang/String;
    .end local v2    # "parsedAI":Ljava/lang/String;
    .end local v3    # "remaining":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5

    .line 266
    .restart local v0    # "ai":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5
.end method

.method private static processVariableAI(IILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "aiSize"    # I
    .param p1, "variableFieldSize"    # I
    .param p2, "rawInformation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 278
    const/4 v6, 0x0

    invoke-virtual {p2, v6, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "ai":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int v7, p0, p1

    if-lt v6, v7, :cond_1

    .line 283
    add-int v2, p0, p1

    .line 285
    .local v2, "maxSize":I
    :goto_0
    invoke-virtual {p2, p0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, "field":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 287
    .local v4, "remaining":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x28

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x29

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 288
    .local v5, "result":Ljava/lang/String;
    invoke-static {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 289
    .local v3, "parsedAI":Ljava/lang/String;
    if-eqz v3, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v5    # "result":Ljava/lang/String;
    :cond_0
    return-object v5

    .line 281
    .end local v1    # "field":Ljava/lang/String;
    .end local v2    # "maxSize":I
    .end local v3    # "parsedAI":Ljava/lang/String;
    .end local v4    # "remaining":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .restart local v2    # "maxSize":I
    goto :goto_0
.end method
