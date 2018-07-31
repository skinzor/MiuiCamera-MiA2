.class public final Lcom/google/zxing/oned/EAN8Reader;
.super Lcom/google/zxing/oned/UPCEANReader;
.source "EAN8Reader.java"


# instance fields
.field private final decodeMiddleCounters:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANReader;-><init>()V

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/EAN8Reader;->decodeMiddleCounters:[I

    .line 34
    return-void
.end method


# virtual methods
.method protected decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
    .locals 15
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "startRange"    # [I
    .param p3, "result"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v8, p0, Lcom/google/zxing/oned/EAN8Reader;->decodeMiddleCounters:[I

    .line 41
    .local v8, "counters":[I
    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v13, v8, v14

    .line 42
    const/4 v13, 0x0

    const/4 v14, 0x1

    aput v13, v8, v14

    .line 43
    const/4 v13, 0x0

    const/4 v14, 0x2

    aput v13, v8, v14

    .line 44
    const/4 v13, 0x0

    const/4 v14, 0x3

    aput v13, v8, v14

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v9

    .line 46
    .local v9, "end":I
    const/4 v13, 0x1

    aget v11, p2, v13

    .line 48
    .local v11, "rowOffset":I
    const/4 v12, 0x0

    .local v12, "x":I
    :goto_0
    const/4 v13, 0x4

    if-lt v12, v13, :cond_2

    .line 56
    :cond_0
    sget-object v13, Lcom/google/zxing/oned/EAN8Reader;->MIDDLE_PATTERN:[I

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v11, v14, v13}, Lcom/google/zxing/oned/EAN8Reader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object v10

    .line 57
    .local v10, "middleRange":[I
    const/4 v13, 0x1

    aget v11, v10, v13

    .line 59
    const/4 v12, 0x0

    :goto_1
    const/4 v13, 0x4

    if-lt v12, v13, :cond_4

    .line 67
    :cond_1
    return v11

    .line 48
    .end local v10    # "middleRange":[I
    :cond_2
    if-ge v11, v9, :cond_0

    .line 49
    sget-object v13, Lcom/google/zxing/oned/EAN8Reader;->L_PATTERNS:[[I

    move-object/from16 v0, p1

    invoke-static {v0, v8, v11, v13}, Lcom/google/zxing/oned/EAN8Reader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v6

    .line 50
    .local v6, "bestMatch":I
    add-int/lit8 v13, v6, 0x30

    int-to-char v13, v13

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    move-object v4, v8

    .local v4, "-l_12_R":Ljava/lang/Object;
    array-length v2, v8

    .local v2, "-l_11_I":I
    const/4 v1, 0x0

    .local v1, "-l_10_I":I
    :goto_2
    if-ge v1, v2, :cond_3

    aget v7, v8, v1

    .line 52
    .local v7, "counter":I
    add-int/2addr v11, v7

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 48
    .end local v7    # "counter":I
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 59
    .end local v1    # "-l_10_I":I
    .end local v2    # "-l_11_I":I
    .end local v4    # "-l_12_R":Ljava/lang/Object;
    .end local v6    # "bestMatch":I
    .restart local v10    # "middleRange":[I
    :cond_4
    if-ge v11, v9, :cond_1

    .line 60
    sget-object v13, Lcom/google/zxing/oned/EAN8Reader;->L_PATTERNS:[[I

    move-object/from16 v0, p1

    invoke-static {v0, v8, v11, v13}, Lcom/google/zxing/oned/EAN8Reader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v6

    .line 61
    .restart local v6    # "bestMatch":I
    add-int/lit8 v13, v6, 0x30

    int-to-char v13, v13

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    move-object v5, v8

    .local v5, "-l_13_R":Ljava/lang/Object;
    array-length v3, v8

    .local v3, "-l_12_I":I
    const/4 v2, 0x0

    .restart local v2    # "-l_11_I":I
    :goto_3
    if-ge v2, v3, :cond_5

    aget v7, v8, v2

    .line 63
    .restart local v7    # "counter":I
    add-int/2addr v11, v7

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 59
    .end local v7    # "counter":I
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_1
.end method

.method getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    return-object v0
.end method
