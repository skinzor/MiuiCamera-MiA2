.class public final Lcom/google/zxing/oned/ITFReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "ITFReader.java"


# static fields
.field private static final DEFAULT_ALLOWED_LENGTHS:[I

.field private static final END_PATTERN_REVERSED:[I

.field static final PATTERNS:[[I

.field private static final START_PATTERN:[I


# instance fields
.field private narrowLineWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 54
    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x6

    aput v1, v0, v5

    const/16 v1, 0x8

    aput v1, v0, v3

    const/16 v1, 0xa

    aput v1, v0, v6

    const/16 v1, 0xc

    aput v1, v0, v4

    const/16 v1, 0xe

    aput v1, v0, v7

    sput-object v0, Lcom/google/zxing/oned/ITFReader;->DEFAULT_ALLOWED_LENGTHS:[I

    .line 65
    new-array v0, v7, [I

    aput v3, v0, v5

    aput v3, v0, v3

    aput v3, v0, v6

    aput v3, v0, v4

    sput-object v0, Lcom/google/zxing/oned/ITFReader;->START_PATTERN:[I

    .line 66
    new-array v0, v4, [I

    aput v3, v0, v5

    aput v3, v0, v3

    aput v4, v0, v6

    sput-object v0, Lcom/google/zxing/oned/ITFReader;->END_PATTERN_REVERSED:[I

    .line 71
    const/16 v0, 0xa

    new-array v0, v0, [[I

    .line 72
    const/4 v1, 0x5

    new-array v1, v1, [I

    aput v3, v1, v5

    aput v3, v1, v3

    aput v4, v1, v6

    aput v4, v1, v4

    aput v3, v1, v7

    aput-object v1, v0, v5

    .line 73
    const/4 v1, 0x5

    new-array v1, v1, [I

    aput v4, v1, v5

    aput v3, v1, v3

    aput v3, v1, v6

    aput v3, v1, v4

    aput v4, v1, v7

    aput-object v1, v0, v3

    .line 74
    const/4 v1, 0x5

    new-array v1, v1, [I

    aput v3, v1, v5

    aput v4, v1, v3

    aput v3, v1, v6

    aput v3, v1, v4

    aput v4, v1, v7

    aput-object v1, v0, v6

    .line 75
    const/4 v1, 0x5

    new-array v1, v1, [I

    aput v4, v1, v5

    aput v4, v1, v3

    aput v3, v1, v6

    aput v3, v1, v4

    aput v3, v1, v7

    aput-object v1, v0, v4

    .line 76
    const/4 v1, 0x5

    new-array v1, v1, [I

    aput v3, v1, v5

    aput v3, v1, v3

    aput v4, v1, v6

    aput v3, v1, v4

    aput v4, v1, v7

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 77
    const/4 v2, 0x5

    new-array v2, v2, [I

    aput v4, v2, v5

    aput v3, v2, v3

    aput v4, v2, v6

    aput v3, v2, v4

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 78
    const/4 v2, 0x5

    new-array v2, v2, [I

    aput v3, v2, v5

    aput v4, v2, v3

    aput v4, v2, v6

    aput v3, v2, v4

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 79
    const/4 v2, 0x5

    new-array v2, v2, [I

    aput v3, v2, v5

    aput v3, v2, v3

    aput v3, v2, v6

    aput v4, v2, v4

    aput v4, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 80
    const/4 v2, 0x5

    new-array v2, v2, [I

    aput v4, v2, v5

    aput v3, v2, v3

    aput v3, v2, v6

    aput v4, v2, v4

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 81
    const/4 v2, 0x5

    new-array v2, v2, [I

    aput v3, v2, v5

    aput v4, v2, v3

    aput v3, v2, v6

    aput v4, v2, v4

    aput v3, v2, v7

    aput-object v2, v0, v1

    .line 71
    sput-object v0, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    .line 82
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    .line 45
    return-void
.end method

.method private static decodeDigit([I)I
    .locals 7
    .param p0, "counters"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 339
    const v1, 0x3ec28f5c    # 0.38f

    .line 340
    .local v1, "bestVariance":F
    const/4 v0, -0x1

    .line 341
    .local v0, "bestMatch":I
    sget-object v6, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    array-length v3, v6

    .line 342
    .local v3, "max":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 343
    sget-object v6, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    aget-object v4, v6, v2

    .line 344
    .local v4, "pattern":[I
    const v6, 0x3f47ae14    # 0.78f

    invoke-static {p0, v4, v6}, Lcom/google/zxing/oned/ITFReader;->patternMatchVariance([I[IF)F

    move-result v5

    .line 345
    .local v5, "variance":F
    cmpg-float v6, v5, v1

    if-gez v6, :cond_0

    .line 346
    move v1, v5

    .line 347
    move v0, v2

    .line 342
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 350
    .end local v4    # "pattern":[I
    .end local v5    # "variance":F
    :cond_1
    if-gez v0, :cond_2

    .line 353
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6

    .line 351
    :cond_2
    return v0
.end method

.method private static decodeMiddle(Lcom/google/zxing/common/BitArray;IILjava/lang/StringBuilder;)V
    .locals 12
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "payloadStart"    # I
    .param p2, "payloadEnd"    # I
    .param p3, "resultString"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x5

    .line 150
    const/16 v10, 0xa

    new-array v6, v10, [I

    .line 151
    .local v6, "counterDigitPair":[I
    new-array v4, v11, [I

    .line 152
    .local v4, "counterBlack":[I
    new-array v7, v11, [I

    .line 154
    .local v7, "counterWhite":[I
    :cond_0
    if-ge p1, p2, :cond_2

    .line 157
    invoke-static {p0, p1, v6}, Lcom/google/zxing/oned/ITFReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 159
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_0
    if-ge v8, v11, :cond_1

    .line 160
    mul-int/lit8 v9, v8, 0x2

    .line 161
    .local v9, "twoK":I
    aget v10, v6, v9

    aput v10, v4, v8

    .line 162
    add-int/lit8 v10, v9, 0x1

    aget v10, v6, v10

    aput v10, v7, v8

    .line 159
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 165
    .end local v9    # "twoK":I
    :cond_1
    invoke-static {v4}, Lcom/google/zxing/oned/ITFReader;->decodeDigit([I)I

    move-result v3

    .line 166
    .local v3, "bestMatch":I
    add-int/lit8 v10, v3, 0x30

    int-to-char v10, v10

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    invoke-static {v7}, Lcom/google/zxing/oned/ITFReader;->decodeDigit([I)I

    move-result v3

    .line 168
    add-int/lit8 v10, v3, 0x30

    int-to-char v10, v10

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    move-object v1, v6

    .local v1, "-l_11_R":Ljava/lang/Object;
    array-length v0, v6

    .local v0, "-l_10_I":I
    const/4 v2, 0x0

    .local v2, "-l_9_I":I
    :goto_1
    if-ge v2, v0, :cond_0

    aget v5, v6, v2

    .line 171
    .local v5, "counterDigit":I
    add-int/2addr p1, v5

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 174
    .end local v0    # "-l_10_I":I
    .end local v1    # "-l_11_R":Ljava/lang/Object;
    .end local v2    # "-l_9_I":I
    .end local v3    # "bestMatch":I
    .end local v5    # "counterDigit":I
    .end local v8    # "k":I
    :cond_2
    return-void
.end method

.method private static findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I
    .locals 12
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "rowOffset"    # I
    .param p2, "pattern"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 300
    array-length v3, p2

    .line 301
    .local v3, "patternLength":I
    new-array v1, v3, [I

    .line 302
    .local v1, "counters":[I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    .line 303
    .local v5, "width":I
    const/4 v2, 0x0

    .line 305
    .local v2, "isWhite":Z
    const/4 v0, 0x0

    .line 306
    .local v0, "counterPosition":I
    move v4, p1

    .line 307
    .local v4, "patternStart":I
    move v6, p1

    .local v6, "x":I
    :goto_0
    if-ge v6, v5, :cond_4

    .line 308
    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    xor-int/2addr v9, v2

    if-nez v9, :cond_0

    .line 311
    add-int/lit8 v9, v3, -0x1

    if-eq v0, v9, :cond_1

    .line 321
    add-int/lit8 v0, v0, 0x1

    .line 323
    :goto_1
    aput v7, v1, v0

    .line 324
    if-nez v2, :cond_3

    move v2, v7

    .line 307
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 309
    :cond_0
    aget v9, v1, v0

    add-int/lit8 v9, v9, 0x1

    aput v9, v1, v0

    goto :goto_2

    .line 312
    :cond_1
    const v9, 0x3f47ae14    # 0.78f

    invoke-static {v1, p2, v9}, Lcom/google/zxing/oned/ITFReader;->patternMatchVariance([I[IF)F

    move-result v9

    const v10, 0x3ec28f5c    # 0.38f

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    .line 313
    new-array v9, v11, [I

    aput v4, v9, v8

    aput v6, v9, v7

    return-object v9

    .line 315
    :cond_2
    aget v9, v1, v8

    aget v10, v1, v7

    add-int/2addr v9, v10

    add-int/2addr v4, v9

    .line 316
    add-int/lit8 v9, v3, -0x2

    invoke-static {v1, v11, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 317
    add-int/lit8 v9, v3, -0x2

    aput v8, v1, v9

    .line 318
    add-int/lit8 v9, v3, -0x1

    aput v8, v1, v9

    .line 319
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    move v2, v8

    .line 324
    goto :goto_2

    .line 327
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v7

    throw v7
.end method

.method private static skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I
    .locals 3
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    .line 241
    .local v1, "width":I
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v0

    .line 242
    .local v0, "endStart":I
    if-eq v0, v1, :cond_0

    .line 246
    return v0

    .line 243
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2
.end method

.method private validateQuietZone(Lcom/google/zxing/common/BitArray;I)V
    .locals 3
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "startPattern"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 215
    iget v2, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    mul-int/lit8 v1, v2, 0xa

    .line 218
    .local v1, "quietCount":I
    if-lt v1, p2, :cond_0

    move v1, p2

    .line 220
    :cond_0
    add-int/lit8 v0, p2, -0x1

    .local v0, "i":I
    :goto_0
    if-gtz v1, :cond_2

    .line 226
    :cond_1
    if-nez v1, :cond_3

    .line 230
    return-void

    .line 220
    :cond_2
    if-ltz v0, :cond_1

    .line 221
    invoke-virtual {p1, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 224
    add-int/lit8 v1, v1, -0x1

    .line 220
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 228
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method decodeEnd(Lcom/google/zxing/common/BitArray;)[I
    .locals 7
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 263
    :try_start_0
    invoke-static {p1}, Lcom/google/zxing/oned/ITFReader;->skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I

    move-result v3

    .line 264
    .local v3, "endStart":I
    sget-object v5, Lcom/google/zxing/oned/ITFReader;->END_PATTERN_REVERSED:[I

    invoke-static {p1, v3, v5}, Lcom/google/zxing/oned/ITFReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I

    move-result-object v2

    .line 269
    .local v2, "endPattern":[I
    const/4 v5, 0x0

    aget v5, v2, v5

    invoke-direct {p0, p1, v5}, Lcom/google/zxing/oned/ITFReader;->validateQuietZone(Lcom/google/zxing/common/BitArray;I)V

    .line 274
    const/4 v5, 0x0

    aget v4, v2, v5

    .line 275
    .local v4, "temp":I
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    const/4 v6, 0x1

    aget v6, v2, v6

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    aput v5, v2, v6

    .line 276
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    sub-int/2addr v5, v4

    const/4 v6, 0x1

    aput v5, v2, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    move-object v1, v2

    .line 281
    .local v1, "-l_6_R":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 278
    return-object v2

    .line 279
    .end local v1    # "-l_6_R":Ljava/lang/Object;
    .end local v2    # "endPattern":[I
    .end local v3    # "endStart":I
    .end local v4    # "temp":I
    :catchall_0
    move-exception v0

    .line 281
    .local v0, "-l_5_R":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 282
    throw v0
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 20
    .param p1, "rowNumber"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 89
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/zxing/oned/ITFReader;->decodeStart(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v13

    .line 90
    .local v13, "startRange":[I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/zxing/oned/ITFReader;->decodeEnd(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v7

    .line 92
    .local v7, "endRange":[I
    new-instance v11, Ljava/lang/StringBuilder;

    const/16 v14, 0x14

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 93
    .local v11, "result":Ljava/lang/StringBuilder;
    const/4 v14, 0x1

    aget v14, v13, v14

    const/4 v15, 0x0

    aget v15, v7, v15

    move-object/from16 v0, p2

    invoke-static {v0, v14, v15, v11}, Lcom/google/zxing/oned/ITFReader;->decodeMiddle(Lcom/google/zxing/common/BitArray;IILjava/lang/StringBuilder;)V

    .line 94
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 96
    .local v12, "resultString":Ljava/lang/String;
    const/4 v6, 0x0

    .line 97
    .local v6, "allowedLengths":[I
    if-nez p3, :cond_0

    .line 101
    .end local v6    # "allowedLengths":[I
    :goto_0
    if-eqz v6, :cond_1

    .line 107
    :goto_1
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v8

    .line 108
    .local v8, "length":I
    const/4 v9, 0x0

    .line 109
    .local v9, "lengthOK":Z
    const/4 v10, 0x0

    .line 110
    .local v10, "maxAllowedLength":I
    move-object v4, v6

    .local v4, "-l_15_R":Ljava/lang/Object;
    array-length v3, v6

    .local v3, "-l_14_I":I
    const/4 v2, 0x0

    .local v2, "-l_13_I":I
    :goto_2
    if-ge v2, v3, :cond_3

    aget v5, v4, v2

    .line 111
    .local v5, "allowedLength":I
    if-eq v8, v5, :cond_2

    .line 115
    if-gt v5, v10, :cond_5

    .line 110
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 98
    .end local v2    # "-l_13_I":I
    .end local v3    # "-l_14_I":I
    .end local v4    # "-l_15_R":Ljava/lang/Object;
    .end local v5    # "allowedLength":I
    .end local v8    # "length":I
    .end local v9    # "lengthOK":Z
    .end local v10    # "maxAllowedLength":I
    .restart local v6    # "allowedLengths":[I
    :cond_0
    sget-object v14, Lcom/google/zxing/DecodeHintType;->ALLOWED_LENGTHS:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "allowedLengths":[I
    check-cast v6, [I

    .restart local v6    # "allowedLengths":[I
    goto :goto_0

    .line 102
    .end local v6    # "allowedLengths":[I
    :cond_1
    sget-object v6, Lcom/google/zxing/oned/ITFReader;->DEFAULT_ALLOWED_LENGTHS:[I

    .restart local v6    # "allowedLengths":[I
    goto :goto_1

    .line 112
    .end local v6    # "allowedLengths":[I
    .restart local v2    # "-l_13_I":I
    .restart local v3    # "-l_14_I":I
    .restart local v4    # "-l_15_R":Ljava/lang/Object;
    .restart local v5    # "allowedLength":I
    .restart local v8    # "length":I
    .restart local v9    # "lengthOK":Z
    .restart local v10    # "maxAllowedLength":I
    :cond_2
    const/4 v9, 0x1

    .line 119
    .end local v5    # "allowedLength":I
    :cond_3
    if-eqz v9, :cond_6

    .line 122
    :cond_4
    :goto_4
    if-eqz v9, :cond_7

    .line 126
    new-instance v14, Lcom/google/zxing/Result;

    .line 129
    const/4 v15, 0x2

    new-array v15, v15, [Lcom/google/zxing/ResultPoint;

    const/16 v16, 0x0

    new-instance v17, Lcom/google/zxing/ResultPoint;

    const/16 v18, 0x1

    aget v18, v13, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v17, v15, v16

    const/16 v16, 0x1

    .line 130
    new-instance v17, Lcom/google/zxing/ResultPoint;

    const/16 v18, 0x0

    aget v18, v7, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v17, v15, v16

    .line 131
    sget-object v16, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    .line 128
    const/16 v17, 0x0

    .line 126
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v14, v12, v0, v15, v1}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v14

    .line 116
    .restart local v5    # "allowedLength":I
    :cond_5
    move v10, v5

    goto :goto_3

    .line 119
    .end local v5    # "allowedLength":I
    :cond_6
    if-le v8, v10, :cond_4

    .line 120
    const/4 v9, 0x1

    goto :goto_4

    .line 123
    :cond_7
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v14

    throw v14
.end method

.method decodeStart(Lcom/google/zxing/common/BitArray;)[I
    .locals 5
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 185
    invoke-static {p1}, Lcom/google/zxing/oned/ITFReader;->skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I

    move-result v0

    .line 186
    .local v0, "endStart":I
    sget-object v2, Lcom/google/zxing/oned/ITFReader;->START_PATTERN:[I

    invoke-static {p1, v0, v2}, Lcom/google/zxing/oned/ITFReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I

    move-result-object v1

    .line 191
    .local v1, "startPattern":[I
    const/4 v2, 0x1

    aget v2, v1, v2

    aget v3, v1, v4

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    .line 193
    aget v2, v1, v4

    invoke-direct {p0, p1, v2}, Lcom/google/zxing/oned/ITFReader;->validateQuietZone(Lcom/google/zxing/common/BitArray;I)V

    .line 195
    return-object v1
.end method
