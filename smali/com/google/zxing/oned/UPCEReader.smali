.class public final Lcom/google/zxing/oned/UPCEReader;
.super Lcom/google/zxing/oned/UPCEANReader;
.source "UPCEReader.java"


# static fields
.field private static final MIDDLE_END_PATTERN:[I

.field private static final NUMSYS_AND_CHECK_DIGIT_PATTERNS:[[I


# instance fields
.field private final decodeMiddleCounters:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [I

    aput v4, v0, v5

    aput v4, v0, v4

    aput v4, v0, v6

    aput v4, v0, v7

    aput v4, v0, v8

    const/4 v1, 0x5

    aput v4, v0, v1

    sput-object v0, Lcom/google/zxing/oned/UPCEReader;->MIDDLE_END_PATTERN:[I

    .line 44
    new-array v0, v6, [[I

    .line 45
    const/16 v1, 0xa

    new-array v1, v1, [I

    const/16 v2, 0x38

    aput v2, v1, v5

    const/16 v2, 0x34

    aput v2, v1, v4

    const/16 v2, 0x32

    aput v2, v1, v6

    const/16 v2, 0x31

    aput v2, v1, v7

    const/16 v2, 0x2c

    aput v2, v1, v8

    const/16 v2, 0x26

    const/4 v3, 0x5

    aput v2, v1, v3

    const/16 v2, 0x23

    const/4 v3, 0x6

    aput v2, v1, v3

    const/16 v2, 0x2a

    const/4 v3, 0x7

    aput v2, v1, v3

    const/16 v2, 0x29

    const/16 v3, 0x8

    aput v2, v1, v3

    const/16 v2, 0x25

    const/16 v3, 0x9

    aput v2, v1, v3

    aput-object v1, v0, v5

    .line 46
    const/16 v1, 0xa

    new-array v1, v1, [I

    const/4 v2, 0x7

    aput v2, v1, v5

    const/16 v2, 0xb

    aput v2, v1, v4

    const/16 v2, 0xd

    aput v2, v1, v6

    const/16 v2, 0xe

    aput v2, v1, v7

    const/16 v2, 0x13

    aput v2, v1, v8

    const/16 v2, 0x19

    const/4 v3, 0x5

    aput v2, v1, v3

    const/16 v2, 0x1c

    const/4 v3, 0x6

    aput v2, v1, v3

    const/16 v2, 0x15

    const/4 v3, 0x7

    aput v2, v1, v3

    const/16 v2, 0x16

    const/16 v3, 0x8

    aput v2, v1, v3

    const/16 v2, 0x1a

    const/16 v3, 0x9

    aput v2, v1, v3

    aput-object v1, v0, v4

    .line 44
    sput-object v0, Lcom/google/zxing/oned/UPCEReader;->NUMSYS_AND_CHECK_DIGIT_PATTERNS:[[I

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANReader;-><init>()V

    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEReader;->decodeMiddleCounters:[I

    .line 53
    return-void
.end method

.method public static convertUPCEtoUPCA(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "upce"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 121
    const/4 v3, 0x6

    new-array v2, v3, [C

    .line 122
    .local v2, "upceChars":[C
    const/4 v3, 0x1

    const/4 v4, 0x7

    invoke-virtual {p0, v3, v4, v2, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0xc

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 124
    .local v1, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    aget-char v0, v2, v9

    .line 126
    .local v0, "lastChar":C
    packed-switch v0, :pswitch_data_0

    .line 146
    invoke-virtual {v1, v2, v5, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 147
    const-string/jumbo v3, "0000"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    :goto_0
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 130
    :pswitch_0
    invoke-virtual {v1, v2, v5, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    const-string/jumbo v3, "0000"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v1, v2, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 136
    :pswitch_1
    invoke-virtual {v1, v2, v5, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 137
    const-string/jumbo v3, "00000"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v1, v2, v7, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 141
    :pswitch_2
    invoke-virtual {v1, v2, v5, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 142
    const-string/jumbo v3, "00000"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    aget-char v3, v2, v8

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static determineNumSysAndCheckDigit(Ljava/lang/StringBuilder;I)V
    .locals 4
    .param p0, "resultString"    # Ljava/lang/StringBuilder;
    .param p1, "lgPatternFound"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 97
    const/4 v1, 0x0

    .local v1, "numSys":I
    :goto_0
    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    .line 98
    const/4 v0, 0x0

    .local v0, "d":I
    :goto_1
    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    .line 99
    sget-object v2, Lcom/google/zxing/oned/UPCEReader;->NUMSYS_AND_CHECK_DIGIT_PATTERNS:[[I

    aget-object v2, v2, v1

    aget v2, v2, v0

    if-eq p1, v2, :cond_0

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 100
    :cond_0
    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 101
    add-int/lit8 v2, v0, 0x30

    int-to-char v2, v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    return-void

    .line 97
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    .end local v0    # "d":I
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method protected checkChecksum(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEReader;->convertUPCEtoUPCA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/google/zxing/oned/UPCEANReader;->checkChecksum(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected decodeEnd(Lcom/google/zxing/common/BitArray;I)[I
    .locals 2
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "endStart"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 86
    sget-object v0, Lcom/google/zxing/oned/UPCEReader;->MIDDLE_END_PATTERN:[I

    const/4 v1, 0x1

    invoke-static {p1, p2, v1, v0}, Lcom/google/zxing/oned/UPCEReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object v0

    return-object v0
.end method

.method protected decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
    .locals 12
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "startRange"    # [I
    .param p3, "result"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v5, p0, Lcom/google/zxing/oned/UPCEReader;->decodeMiddleCounters:[I

    .line 59
    .local v5, "counters":[I
    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v10, v5, v11

    .line 60
    const/4 v10, 0x0

    const/4 v11, 0x1

    aput v10, v5, v11

    .line 61
    const/4 v10, 0x0

    const/4 v11, 0x2

    aput v10, v5, v11

    .line 62
    const/4 v10, 0x0

    const/4 v11, 0x3

    aput v10, v5, v11

    .line 63
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    .line 64
    .local v6, "end":I
    const/4 v10, 0x1

    aget v8, p2, v10

    .line 66
    .local v8, "rowOffset":I
    const/4 v7, 0x0

    .line 68
    .local v7, "lgPatternFound":I
    const/4 v9, 0x0

    .local v9, "x":I
    :goto_0
    const/4 v10, 0x6

    if-lt v9, v10, :cond_1

    .line 79
    :cond_0
    invoke-static {p3, v7}, Lcom/google/zxing/oned/UPCEReader;->determineNumSysAndCheckDigit(Ljava/lang/StringBuilder;I)V

    .line 81
    return v8

    .line 68
    :cond_1
    if-ge v8, v6, :cond_0

    .line 69
    sget-object v10, Lcom/google/zxing/oned/UPCEReader;->L_AND_G_PATTERNS:[[I

    invoke-static {p1, v5, v8, v10}, Lcom/google/zxing/oned/UPCEReader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v3

    .line 70
    .local v3, "bestMatch":I
    rem-int/lit8 v10, v3, 0xa

    add-int/lit8 v10, v10, 0x30

    int-to-char v10, v10

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    move-object v2, v5

    .local v2, "-l_13_R":Ljava/lang/Object;
    array-length v1, v5

    .local v1, "-l_12_I":I
    const/4 v0, 0x0

    .local v0, "-l_11_I":I
    :goto_1
    if-ge v0, v1, :cond_2

    aget v4, v5, v0

    .line 72
    .local v4, "counter":I
    add-int/2addr v8, v4

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 74
    .end local v4    # "counter":I
    :cond_2
    const/16 v10, 0xa

    if-ge v3, v10, :cond_3

    .line 68
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 75
    :cond_3
    rsub-int/lit8 v10, v9, 0x5

    const/4 v11, 0x1

    shl-int v10, v11, v10

    or-int/2addr v7, v10

    goto :goto_2
.end method

.method getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    return-object v0
.end method
