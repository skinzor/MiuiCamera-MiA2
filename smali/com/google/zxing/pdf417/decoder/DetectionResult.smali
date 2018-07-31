.class final Lcom/google/zxing/pdf417/decoder/DetectionResult;
.super Ljava/lang/Object;
.source "DetectionResult.java"


# instance fields
.field private final barcodeColumnCount:I

.field private final barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

.field private boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

.field private final detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;


# direct methods
.method constructor <init>(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;Lcom/google/zxing/pdf417/decoder/BoundingBox;)V
    .locals 1
    .param p1, "barcodeMetadata"    # Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    .param p2, "boundingBox"    # Lcom/google/zxing/pdf417/decoder/BoundingBox;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    .line 37
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getColumnCount()I

    move-result v0

    iput v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    .line 38
    iput-object p2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

    .line 39
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iput-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    .line 40
    return-void
.end method

.method private adjustIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V
    .locals 1
    .param p1, "detectionResultColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    .prologue
    .line 55
    if-nez p1, :cond_0

    .line 59
    .end local p1    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    :goto_0
    return-void

    .line 56
    .restart local p1    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    :cond_0
    check-cast p1, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    .line 57
    .end local p1    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    invoke-virtual {p1, v0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->adjustCompleteIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)I

    goto :goto_0
.end method

.method private static adjustRowNumber(Lcom/google/zxing/pdf417/decoder/Codeword;Lcom/google/zxing/pdf417/decoder/Codeword;)Z
    .locals 3
    .param p0, "codeword"    # Lcom/google/zxing/pdf417/decoder/Codeword;
    .param p1, "otherCodeword"    # Lcom/google/zxing/pdf417/decoder/Codeword;

    .prologue
    const/4 v2, 0x0

    .line 230
    if-eqz p1, :cond_1

    .line 233
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v0

    if-nez v0, :cond_2

    .line 237
    :cond_0
    return v2

    .line 231
    :cond_1
    return v2

    .line 233
    :cond_2
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getBucket()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getBucket()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 234
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumber(I)V

    .line 235
    const/4 v0, 0x1

    return v0
.end method

.method private static adjustRowNumberIfValid(IILcom/google/zxing/pdf417/decoder/Codeword;)I
    .locals 1
    .param p0, "rowIndicatorRowNumber"    # I
    .param p1, "invalidRowCounts"    # I
    .param p2, "codeword"    # Lcom/google/zxing/pdf417/decoder/Codeword;

    .prologue
    .line 172
    if-eqz p2, :cond_0

    .line 175
    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    :goto_0
    return p1

    .line 173
    :cond_0
    return p1

    .line 176
    :cond_1
    invoke-virtual {p2, p0}, Lcom/google/zxing/pdf417/decoder/Codeword;->isValidRowNumber(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 180
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 177
    :cond_2
    invoke-virtual {p2, p0}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumber(I)V

    .line 178
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private adjustRowNumbers()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 69
    invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbersByRow()I

    move-result v3

    .line 70
    .local v3, "unadjustedCount":I
    if-eqz v3, :cond_1

    .line 73
    const/4 v0, 0x1

    .local v0, "barcodeColumn":I
    :goto_0
    iget v4, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v4, v4, 0x1

    if-ge v0, v4, :cond_4

    .line 74
    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    .line 75
    .local v1, "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    const/4 v2, 0x0

    .local v2, "codewordsRow":I
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_3

    .line 76
    aget-object v4, v1, v2

    if-eqz v4, :cond_0

    .line 79
    aget-object v4, v1, v2

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 75
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 71
    .end local v0    # "barcodeColumn":I
    .end local v1    # "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v2    # "codewordsRow":I
    :cond_1
    return v4

    .line 80
    .restart local v0    # "barcodeColumn":I
    .restart local v1    # "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    .restart local v2    # "codewordsRow":I
    :cond_2
    invoke-direct {p0, v0, v2, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbers(II[Lcom/google/zxing/pdf417/decoder/Codeword;)V

    goto :goto_2

    .line 73
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    .end local v1    # "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v2    # "codewordsRow":I
    :cond_4
    return v3
.end method

.method private adjustRowNumbers(II[Lcom/google/zxing/pdf417/decoder/Codeword;)V
    .locals 12
    .param p1, "barcodeColumn"    # I
    .param p2, "codewordsRow"    # I
    .param p3, "codewords"    # [Lcom/google/zxing/pdf417/decoder/Codeword;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 187
    aget-object v3, p3, p2

    .line 188
    .local v3, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    iget-object v8, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    add-int/lit8 v9, p1, -0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v7

    .line 189
    .local v7, "previousColumnCodewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    move-object v4, v7

    .line 190
    .local v4, "nextColumnCodewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    iget-object v8, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    add-int/lit8 v9, p1, 0x1

    aget-object v8, v8, v9

    if-nez v8, :cond_0

    .line 194
    :goto_0
    const/16 v8, 0xe

    new-array v6, v8, [Lcom/google/zxing/pdf417/decoder/Codeword;

    .line 196
    .local v6, "otherCodewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    aget-object v8, v7, p2

    const/4 v9, 0x2

    aput-object v8, v6, v9

    .line 197
    aget-object v8, v4, p2

    const/4 v9, 0x3

    aput-object v8, v6, v9

    .line 199
    if-gtz p2, :cond_1

    .line 204
    :goto_1
    if-gt p2, v11, :cond_2

    .line 209
    :goto_2
    array-length v8, p3

    add-int/lit8 v8, v8, -0x1

    if-lt p2, v8, :cond_3

    .line 214
    :goto_3
    array-length v8, p3

    add-int/lit8 v8, v8, -0x2

    if-lt p2, v8, :cond_4

    .line 219
    :goto_4
    move-object v1, v6

    .local v1, "-l_11_R":Ljava/lang/Object;
    array-length v0, v6

    .local v0, "-l_10_I":I
    const/4 v2, 0x0

    .local v2, "-l_9_I":I
    :goto_5
    if-ge v2, v0, :cond_6

    aget-object v5, v6, v2

    .line 220
    .local v5, "otherCodeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    invoke-static {v3, v5}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumber(Lcom/google/zxing/pdf417/decoder/Codeword;Lcom/google/zxing/pdf417/decoder/Codeword;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 219
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 191
    .end local v0    # "-l_10_I":I
    .end local v1    # "-l_11_R":Ljava/lang/Object;
    .end local v2    # "-l_9_I":I
    .end local v5    # "otherCodeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v6    # "otherCodewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_0
    iget-object v8, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    add-int/lit8 v9, p1, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v4

    goto :goto_0

    .line 200
    .restart local v6    # "otherCodewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_1
    add-int/lit8 v8, p2, -0x1

    aget-object v8, p3, v8

    aput-object v8, v6, v10

    .line 201
    add-int/lit8 v8, p2, -0x1

    aget-object v8, v7, v8

    const/4 v9, 0x4

    aput-object v8, v6, v9

    .line 202
    add-int/lit8 v8, p2, -0x1

    aget-object v8, v4, v8

    const/4 v9, 0x5

    aput-object v8, v6, v9

    goto :goto_1

    .line 205
    :cond_2
    add-int/lit8 v8, p2, -0x2

    aget-object v8, p3, v8

    const/16 v9, 0x8

    aput-object v8, v6, v9

    .line 206
    add-int/lit8 v8, p2, -0x2

    aget-object v8, v7, v8

    const/16 v9, 0xa

    aput-object v8, v6, v9

    .line 207
    add-int/lit8 v8, p2, -0x2

    aget-object v8, v4, v8

    const/16 v9, 0xb

    aput-object v8, v6, v9

    goto :goto_2

    .line 210
    :cond_3
    add-int/lit8 v8, p2, 0x1

    aget-object v8, p3, v8

    aput-object v8, v6, v11

    .line 211
    add-int/lit8 v8, p2, 0x1

    aget-object v8, v7, v8

    const/4 v9, 0x6

    aput-object v8, v6, v9

    .line 212
    add-int/lit8 v8, p2, 0x1

    aget-object v8, v4, v8

    const/4 v9, 0x7

    aput-object v8, v6, v9

    goto :goto_3

    .line 215
    :cond_4
    add-int/lit8 v8, p2, 0x2

    aget-object v8, p3, v8

    const/16 v9, 0x9

    aput-object v8, v6, v9

    .line 216
    add-int/lit8 v8, p2, 0x2

    aget-object v8, v7, v8

    const/16 v9, 0xc

    aput-object v8, v6, v9

    .line 217
    add-int/lit8 v8, p2, 0x2

    aget-object v8, v4, v8

    const/16 v9, 0xd

    aput-object v8, v6, v9

    goto :goto_4

    .line 221
    .restart local v0    # "-l_10_I":I
    .restart local v1    # "-l_11_R":Ljava/lang/Object;
    .restart local v2    # "-l_9_I":I
    .restart local v5    # "otherCodeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_5
    return-void

    .line 224
    .end local v5    # "otherCodeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_6
    return-void
.end method

.method private adjustRowNumbersByRow()I
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbersFromBothRI()V

    .line 93
    invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbersFromLRI()I

    move-result v0

    .line 94
    .local v0, "unadjustedCount":I
    invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbersFromRRI()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method private adjustRowNumbersFromBothRI()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 98
    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v5, v5, v8

    if-nez v5, :cond_1

    .line 99
    :cond_0
    return-void

    .line 98
    :cond_1
    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iget v6, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v6, v6, 0x1

    aget-object v5, v5, v6

    if-eqz v5, :cond_0

    .line 101
    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v0

    .line 102
    .local v0, "LRIcodewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iget v6, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v6, v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    .line 103
    .local v1, "RRIcodewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    const/4 v4, 0x0

    .local v4, "codewordsRow":I
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_6

    .line 104
    aget-object v5, v0, v4

    if-nez v5, :cond_3

    .line 103
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 105
    :cond_3
    aget-object v5, v1, v4

    if-eqz v5, :cond_2

    .line 106
    aget-object v5, v0, v4

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v5

    aget-object v6, v1, v4

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 107
    const/4 v2, 0x1

    .local v2, "barcodeColumn":I
    :goto_1
    iget v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    if-gt v2, v5, :cond_2

    .line 108
    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v5

    aget-object v3, v5, v4

    .line 109
    .local v3, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-eqz v3, :cond_4

    .line 112
    aget-object v5, v0, v4

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumber(I)V

    .line 113
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 107
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 114
    :cond_5
    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v5

    aput-object v7, v5, v4

    goto :goto_2

    .line 119
    .end local v2    # "barcodeColumn":I
    .end local v3    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_6
    return-void
.end method

.method private adjustRowNumbersFromLRI()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 147
    iget-object v7, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v7, v7, v8

    if-eqz v7, :cond_1

    .line 150
    const/4 v6, 0x0

    .line 151
    .local v6, "unadjustedCount":I
    iget-object v7, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v2

    .line 152
    .local v2, "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    const/4 v3, 0x0

    .local v3, "codewordsRow":I
    :goto_0
    array-length v7, v2

    if-ge v3, v7, :cond_5

    .line 153
    aget-object v7, v2, v3

    if-eqz v7, :cond_0

    .line 156
    aget-object v7, v2, v3

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v5

    .line 157
    .local v5, "rowIndicatorRowNumber":I
    const/4 v4, 0x0

    .line 158
    .local v4, "invalidRowCounts":I
    const/4 v0, 0x1

    .local v0, "barcodeColumn":I
    :goto_1
    iget v7, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v7, v7, 0x1

    if-lt v0, v7, :cond_2

    .line 152
    .end local v0    # "barcodeColumn":I
    .end local v4    # "invalidRowCounts":I
    .end local v5    # "rowIndicatorRowNumber":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 148
    .end local v2    # "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v3    # "codewordsRow":I
    .end local v6    # "unadjustedCount":I
    :cond_1
    return v8

    .line 158
    .restart local v0    # "barcodeColumn":I
    .restart local v2    # "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    .restart local v3    # "codewordsRow":I
    .restart local v4    # "invalidRowCounts":I
    .restart local v5    # "rowIndicatorRowNumber":I
    .restart local v6    # "unadjustedCount":I
    :cond_2
    const/4 v7, 0x2

    if-ge v4, v7, :cond_0

    .line 159
    iget-object v7, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v7

    aget-object v1, v7, v3

    .line 160
    .local v1, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-nez v1, :cond_4

    .line 158
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 161
    :cond_4
    invoke-static {v5, v4, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumberIfValid(IILcom/google/zxing/pdf417/decoder/Codeword;)I

    move-result v4

    .line 162
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v7

    if-nez v7, :cond_3

    .line 163
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 168
    .end local v0    # "barcodeColumn":I
    .end local v1    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v4    # "invalidRowCounts":I
    .end local v5    # "rowIndicatorRowNumber":I
    :cond_5
    return v6
.end method

.method private adjustRowNumbersFromRRI()I
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 122
    iget-object v7, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iget v8, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v8, v8, 0x1

    aget-object v7, v7, v8

    if-eqz v7, :cond_1

    .line 125
    const/4 v6, 0x0

    .line 126
    .local v6, "unadjustedCount":I
    iget-object v7, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iget v8, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v8, v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v2

    .line 127
    .local v2, "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    const/4 v3, 0x0

    .local v3, "codewordsRow":I
    :goto_0
    array-length v7, v2

    if-ge v3, v7, :cond_5

    .line 128
    aget-object v7, v2, v3

    if-eqz v7, :cond_0

    .line 131
    aget-object v7, v2, v3

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v5

    .line 132
    .local v5, "rowIndicatorRowNumber":I
    const/4 v4, 0x0

    .line 133
    .local v4, "invalidRowCounts":I
    iget v7, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v0, v7, 0x1

    .local v0, "barcodeColumn":I
    :goto_1
    if-gtz v0, :cond_2

    .line 127
    .end local v0    # "barcodeColumn":I
    .end local v4    # "invalidRowCounts":I
    .end local v5    # "rowIndicatorRowNumber":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 123
    .end local v2    # "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v3    # "codewordsRow":I
    .end local v6    # "unadjustedCount":I
    :cond_1
    return v9

    .line 133
    .restart local v0    # "barcodeColumn":I
    .restart local v2    # "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    .restart local v3    # "codewordsRow":I
    .restart local v4    # "invalidRowCounts":I
    .restart local v5    # "rowIndicatorRowNumber":I
    .restart local v6    # "unadjustedCount":I
    :cond_2
    const/4 v7, 0x2

    if-ge v4, v7, :cond_0

    .line 134
    iget-object v7, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v7

    aget-object v1, v7, v3

    .line 135
    .local v1, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-nez v1, :cond_4

    .line 133
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 136
    :cond_4
    invoke-static {v5, v4, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumberIfValid(IILcom/google/zxing/pdf417/decoder/Codeword;)I

    move-result v4

    .line 137
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v7

    if-nez v7, :cond_3

    .line 138
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 143
    .end local v0    # "barcodeColumn":I
    .end local v1    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v4    # "invalidRowCounts":I
    .end local v5    # "rowIndicatorRowNumber":I
    :cond_5
    return v6
.end method


# virtual methods
.method getBarcodeColumnCount()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    return v0
.end method

.method getBarcodeECLevel()I
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getErrorCorrectionLevel()I

    move-result v0

    return v0
.end method

.method getBarcodeRowCount()I
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v0

    return v0
.end method

.method getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

    return-object v0
.end method

.method getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .locals 1
    .param p1, "barcodeColumn"    # I

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v0, v0, p1

    return-object v0
.end method

.method getDetectionResultColumns()[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 43
    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    .line 44
    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iget v3, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    .line 45
    const/16 v1, 0x3a0

    .line 48
    .local v1, "unadjustedCodewordCount":I
    :goto_0
    move v0, v1

    .line 49
    .local v0, "previousUnadjustedCount":I
    invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbers()I

    move-result v1

    .line 50
    if-gtz v1, :cond_1

    .line 51
    :cond_0
    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    return-object v2

    .line 47
    :cond_1
    if-ge v1, v0, :cond_0

    goto :goto_0
.end method

.method public setBoundingBox(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V
    .locals 0
    .param p1, "boundingBox"    # Lcom/google/zxing/pdf417/decoder/BoundingBox;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

    .line 254
    return-void
.end method

.method setDetectionResultColumn(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V
    .locals 1
    .param p1, "barcodeColumn"    # I
    .param p2, "detectionResultColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aput-object p2, v0, p1

    .line 262
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 270
    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v5, v6, v8

    .line 271
    .local v5, "rowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    if-eqz v5, :cond_0

    .line 274
    :goto_0
    new-instance v3, Ljava/util/Formatter;

    invoke-direct {v3}, Ljava/util/Formatter;-><init>()V

    .line 275
    .local v3, "formatter":Ljava/util/Formatter;
    const/4 v2, 0x0

    .local v2, "codewordsRow":I
    :goto_1
    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v6

    array-length v6, v6

    if-ge v2, v6, :cond_4

    .line 276
    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const-string/jumbo v7, "CW %3d:"

    invoke-virtual {v3, v7, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 277
    const/4 v0, 0x0

    .local v0, "barcodeColumn":I
    :goto_2
    iget v6, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v6, v6, 0x2

    if-ge v0, v6, :cond_3

    .line 278
    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v6, v6, v0

    if-eqz v6, :cond_1

    .line 282
    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v6

    aget-object v1, v6, v2

    .line 283
    .local v1, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-eqz v1, :cond_2

    .line 287
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    const-string/jumbo v7, " %3d|%3d"

    invoke-virtual {v3, v7, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 277
    .end local v1    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 272
    .end local v0    # "barcodeColumn":I
    .end local v2    # "codewordsRow":I
    .end local v3    # "formatter":Ljava/util/Formatter;
    :cond_0
    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iget v7, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v7, v7, 0x1

    aget-object v5, v6, v7

    goto :goto_0

    .line 279
    .restart local v0    # "barcodeColumn":I
    .restart local v2    # "codewordsRow":I
    .restart local v3    # "formatter":Ljava/util/Formatter;
    :cond_1
    new-array v6, v8, [Ljava/lang/Object;

    const-string/jumbo v7, "    |   "

    invoke-virtual {v3, v7, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_3

    .line 284
    .restart local v1    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_2
    new-array v6, v8, [Ljava/lang/Object;

    const-string/jumbo v7, "    |   "

    invoke-virtual {v3, v7, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_3

    .line 289
    .end local v1    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_3
    new-array v6, v8, [Ljava/lang/Object;

    const-string/jumbo v7, "%n"

    invoke-virtual {v3, v7, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 275
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 291
    .end local v0    # "barcodeColumn":I
    :cond_4
    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    .line 292
    .local v4, "result":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/Formatter;->close()V

    .line 293
    return-object v4
.end method
