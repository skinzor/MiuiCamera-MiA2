.class public final Lcom/google/zxing/oned/EAN13Reader;
.super Lcom/google/zxing/oned/UPCEANReader;
.source "EAN13Reader.java"


# static fields
.field static final FIRST_DIGIT_ENCODINGS:[I


# instance fields
.field private final decodeMiddleCounters:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    const/16 v0, 0xa

    new-array v0, v0, [I

    const/4 v1, 0x1

    .line 62
    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0xd

    const/4 v2, 0x2

    aput v1, v0, v2

    const/16 v1, 0xe

    const/4 v2, 0x3

    aput v1, v0, v2

    const/16 v1, 0x13

    const/4 v2, 0x4

    aput v1, v0, v2

    const/16 v1, 0x19

    const/4 v2, 0x5

    aput v1, v0, v2

    const/16 v1, 0x1c

    const/4 v2, 0x6

    aput v1, v0, v2

    const/16 v1, 0x15

    const/4 v2, 0x7

    aput v1, v0, v2

    const/16 v1, 0x16

    const/16 v2, 0x8

    aput v1, v0, v2

    const/16 v1, 0x1a

    const/16 v2, 0x9

    aput v1, v0, v2

    .line 61
    sput-object v0, Lcom/google/zxing/oned/EAN13Reader;->FIRST_DIGIT_ENCODINGS:[I

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANReader;-><init>()V

    .line 68
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/EAN13Reader;->decodeMiddleCounters:[I

    .line 69
    return-void
.end method

.method private static determineFirstDigit(Ljava/lang/StringBuilder;I)V
    .locals 3
    .param p0, "resultString"    # Ljava/lang/StringBuilder;
    .param p1, "lgPatternFound"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 129
    const/4 v0, 0x0

    .local v0, "d":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 130
    sget-object v1, Lcom/google/zxing/oned/EAN13Reader;->FIRST_DIGIT_ENCODINGS:[I

    aget v1, v1, v0

    if-eq p1, v1, :cond_0

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    add-int/lit8 v1, v0, 0x30

    int-to-char v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 132
    return-void

    .line 135
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method protected decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
    .locals 16
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "startRange"    # [I
    .param p3, "resultString"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 75
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/zxing/oned/EAN13Reader;->decodeMiddleCounters:[I

    .line 76
    .local v8, "counters":[I
    const/4 v14, 0x0

    const/4 v15, 0x0

    aput v14, v8, v15

    .line 77
    const/4 v14, 0x0

    const/4 v15, 0x1

    aput v14, v8, v15

    .line 78
    const/4 v14, 0x0

    const/4 v15, 0x2

    aput v14, v8, v15

    .line 79
    const/4 v14, 0x0

    const/4 v15, 0x3

    aput v14, v8, v15

    .line 80
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v9

    .line 81
    .local v9, "end":I
    const/4 v14, 0x1

    aget v12, p2, v14

    .line 83
    .local v12, "rowOffset":I
    const/4 v10, 0x0

    .line 85
    .local v10, "lgPatternFound":I
    const/4 v13, 0x0

    .local v13, "x":I
    :goto_0
    const/4 v14, 0x6

    if-lt v13, v14, :cond_2

    .line 96
    :cond_0
    move-object/from16 v0, p3

    invoke-static {v0, v10}, Lcom/google/zxing/oned/EAN13Reader;->determineFirstDigit(Ljava/lang/StringBuilder;I)V

    .line 98
    sget-object v14, Lcom/google/zxing/oned/EAN13Reader;->MIDDLE_PATTERN:[I

    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v12, v15, v14}, Lcom/google/zxing/oned/EAN13Reader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object v11

    .line 99
    .local v11, "middleRange":[I
    const/4 v14, 0x1

    aget v12, v11, v14

    .line 101
    const/4 v13, 0x0

    :goto_1
    const/4 v14, 0x6

    if-lt v13, v14, :cond_5

    .line 109
    :cond_1
    return v12

    .line 85
    .end local v11    # "middleRange":[I
    :cond_2
    if-ge v12, v9, :cond_0

    .line 86
    sget-object v14, Lcom/google/zxing/oned/EAN13Reader;->L_AND_G_PATTERNS:[[I

    move-object/from16 v0, p1

    invoke-static {v0, v8, v12, v14}, Lcom/google/zxing/oned/EAN13Reader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v6

    .line 87
    .local v6, "bestMatch":I
    rem-int/lit8 v14, v6, 0xa

    add-int/lit8 v14, v14, 0x30

    int-to-char v14, v14

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    move-object v4, v8

    .local v4, "-l_13_R":Ljava/lang/Object;
    array-length v2, v8

    .local v2, "-l_12_I":I
    const/4 v1, 0x0

    .local v1, "-l_11_I":I
    :goto_2
    if-ge v1, v2, :cond_3

    aget v7, v8, v1

    .line 89
    .local v7, "counter":I
    add-int/2addr v12, v7

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 91
    .end local v7    # "counter":I
    :cond_3
    const/16 v14, 0xa

    if-ge v6, v14, :cond_4

    .line 85
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 92
    :cond_4
    rsub-int/lit8 v14, v13, 0x5

    const/4 v15, 0x1

    shl-int v14, v15, v14

    or-int/2addr v10, v14

    goto :goto_3

    .line 101
    .end local v1    # "-l_11_I":I
    .end local v2    # "-l_12_I":I
    .end local v4    # "-l_13_R":Ljava/lang/Object;
    .end local v6    # "bestMatch":I
    .restart local v11    # "middleRange":[I
    :cond_5
    if-ge v12, v9, :cond_1

    .line 102
    sget-object v14, Lcom/google/zxing/oned/EAN13Reader;->L_PATTERNS:[[I

    move-object/from16 v0, p1

    invoke-static {v0, v8, v12, v14}, Lcom/google/zxing/oned/EAN13Reader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v6

    .line 103
    .restart local v6    # "bestMatch":I
    add-int/lit8 v14, v6, 0x30

    int-to-char v14, v14

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    move-object v5, v8

    .local v5, "-l_14_R":Ljava/lang/Object;
    array-length v3, v8

    .local v3, "-l_13_I":I
    const/4 v2, 0x0

    .restart local v2    # "-l_12_I":I
    :goto_4
    if-ge v2, v3, :cond_6

    aget v7, v8, v2

    .line 105
    .restart local v7    # "counter":I
    add-int/2addr v12, v7

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 101
    .end local v7    # "counter":I
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_1
.end method

.method getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    return-object v0
.end method
