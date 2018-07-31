.class public abstract Lcom/google/zxing/oned/OneDReader;
.super Ljava/lang/Object;
.source "OneDReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doDecode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 22
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 105
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getWidth()I

    move-result v17

    .line 106
    .local v17, "width":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result v4

    .line 107
    .local v4, "height":I
    new-instance v12, Lcom/google/zxing/common/BitArray;

    move/from16 v0, v17

    invoke-direct {v12, v0}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 109
    .local v12, "row":Lcom/google/zxing/common/BitArray;
    shr-int/lit8 v8, v4, 0x1

    .line 110
    .local v8, "middle":I
    if-nez p2, :cond_3

    :cond_0
    const/16 v16, 0x0

    .line 111
    .local v16, "tryHarder":Z
    :goto_0
    const/16 v20, 0x1

    if-nez v16, :cond_4

    const/16 v19, 0x5

    :goto_1
    shr-int v19, v4, v19

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 113
    .local v14, "rowStep":I
    if-nez v16, :cond_5

    .line 116
    const/16 v7, 0xf

    .line 119
    .local v7, "maxLines":I
    :goto_2
    const/16 v18, 0x0

    .local v18, "x":I
    :goto_3
    move/from16 v0, v18

    if-ge v0, v7, :cond_2

    .line 122
    add-int/lit8 v19, v18, 0x1

    div-int/lit8 v15, v19, 0x2

    .line 123
    .local v15, "rowStepsAboveOrBelow":I
    and-int/lit8 v19, v18, 0x1

    if-eqz v19, :cond_6

    const/4 v6, 0x0

    .line 124
    .local v6, "isAbove":Z
    :goto_4
    if-nez v6, :cond_1

    neg-int v15, v15

    .end local v15    # "rowStepsAboveOrBelow":I
    :cond_1
    mul-int v19, v14, v15

    add-int v13, v8, v19

    .line 125
    .local v13, "rowNumber":I
    if-gez v13, :cond_7

    .line 174
    .end local v6    # "isAbove":Z
    .end local v13    # "rowNumber":I
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v19

    throw v19

    .line 110
    .end local v7    # "maxLines":I
    .end local v14    # "rowStep":I
    .end local v16    # "tryHarder":Z
    .end local v18    # "x":I
    :cond_3
    sget-object v19, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v16, 0x1

    goto :goto_0

    .line 111
    .restart local v16    # "tryHarder":Z
    :cond_4
    const/16 v19, 0x8

    goto :goto_1

    .line 114
    .restart local v14    # "rowStep":I
    :cond_5
    move v7, v4

    .restart local v7    # "maxLines":I
    goto :goto_2

    .line 123
    .restart local v15    # "rowStepsAboveOrBelow":I
    .restart local v18    # "x":I
    :cond_6
    const/4 v6, 0x1

    goto :goto_4

    .line 125
    .end local v15    # "rowStepsAboveOrBelow":I
    .restart local v6    # "isAbove":Z
    .restart local v13    # "rowNumber":I
    :cond_7
    if-ge v13, v4, :cond_2

    .line 132
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v12}, Lcom/google/zxing/BinaryBitmap;->getBlackRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 139
    const/4 v3, 0x0

    .local v3, "attempt":I
    :goto_5
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ge v3, v0, :cond_a

    .line 140
    const/16 v19, 0x1

    move/from16 v0, v19

    if-eq v3, v0, :cond_b

    .line 155
    :cond_8
    :goto_6
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v13, v12, v1}, Lcom/google/zxing/oned/OneDReader;->decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    :try_end_1
    .catch Lcom/google/zxing/ReaderException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .line 157
    .local v11, "result":Lcom/google/zxing/Result;
    const/16 v19, 0x1

    move/from16 v0, v19

    if-eq v3, v0, :cond_c

    .line 167
    :cond_9
    :goto_7
    return-object v11

    .line 133
    .end local v3    # "attempt":I
    .end local v11    # "result":Lcom/google/zxing/Result;
    :catch_0
    move-exception v5

    .line 119
    :cond_a
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 141
    .restart local v3    # "attempt":I
    :cond_b
    invoke-virtual {v12}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 146
    if-eqz p2, :cond_8

    sget-object v19, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 147
    new-instance v9, Ljava/util/EnumMap;

    const-class v19, Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 148
    .local v9, "newHints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    move-object/from16 v0, p2

    invoke-interface {v9, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 149
    sget-object v19, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    move-object/from16 p2, v9

    goto :goto_6

    .line 159
    .end local v9    # "newHints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    .restart local v11    # "result":Lcom/google/zxing/Result;
    :cond_c
    :try_start_2
    sget-object v19, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    const/16 v20, 0xb4

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 161
    invoke-virtual {v11}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v10

    .line 162
    .local v10, "points":[Lcom/google/zxing/ResultPoint;
    if-eqz v10, :cond_9

    .line 163
    new-instance v19, Lcom/google/zxing/ResultPoint;

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    aget-object v21, v10, v21

    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v21

    sub-float v20, v20, v21

    const/high16 v21, 0x3f800000    # 1.0f

    sub-float v20, v20, v21

    const/16 v21, 0x0

    aget-object v21, v10, v21

    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v21

    invoke-direct/range {v19 .. v21}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/16 v20, 0x0

    aput-object v19, v10, v20

    .line 164
    new-instance v19, Lcom/google/zxing/ResultPoint;

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x1

    aget-object v21, v10, v21

    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v21

    sub-float v20, v20, v21

    const/high16 v21, 0x3f800000    # 1.0f

    sub-float v20, v20, v21

    const/16 v21, 0x1

    aget-object v21, v10, v21

    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v21

    invoke-direct/range {v19 .. v21}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/16 v20, 0x1

    aput-object v19, v10, v20
    :try_end_2
    .catch Lcom/google/zxing/ReaderException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_7

    .line 168
    .end local v10    # "points":[Lcom/google/zxing/ResultPoint;
    .end local v11    # "result":Lcom/google/zxing/Result;
    :catch_1
    move-exception v2

    .line 139
    .local v2, "-l_15_R":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5
.end method

.method protected static patternMatchVariance([I[IF)F
    .locals 13
    .param p0, "counters"    # [I
    .param p1, "pattern"    # [I
    .param p2, "maxIndividualVariance"    # F

    .prologue
    const/high16 v12, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 253
    array-length v2, p0

    .line 254
    .local v2, "numCounters":I
    const/4 v5, 0x0

    .line 255
    .local v5, "total":I
    const/4 v3, 0x0

    .line 256
    .local v3, "patternLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 257
    aget v10, p0, v1

    add-int/2addr v5, v10

    .line 258
    aget v10, p1, v1

    add-int/2addr v3, v10

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    :cond_0
    if-lt v5, v3, :cond_1

    .line 266
    int-to-float v10, v5

    int-to-float v11, v3

    div-float v7, v10, v11

    .line 267
    .local v7, "unitBarWidth":F
    mul-float/2addr p2, v7

    .line 269
    const/4 v6, 0x0

    .line 270
    .local v6, "totalVariance":F
    const/4 v9, 0x0

    .local v9, "x":I
    :goto_1
    if-ge v9, v2, :cond_4

    .line 271
    aget v0, p0, v9

    .line 272
    .local v0, "counter":I
    aget v10, p1, v9

    int-to-float v10, v10

    mul-float v4, v10, v7

    .line 273
    .local v4, "scaledPattern":F
    int-to-float v10, v0

    cmpl-float v10, v10, v4

    if-lez v10, :cond_2

    int-to-float v10, v0

    sub-float v8, v10, v4

    .line 274
    .local v8, "variance":F
    :goto_2
    cmpl-float v10, v8, p2

    if-lez v10, :cond_3

    .line 275
    return v12

    .line 263
    .end local v0    # "counter":I
    .end local v4    # "scaledPattern":F
    .end local v6    # "totalVariance":F
    .end local v7    # "unitBarWidth":F
    .end local v8    # "variance":F
    .end local v9    # "x":I
    :cond_1
    return v12

    .line 273
    .restart local v0    # "counter":I
    .restart local v4    # "scaledPattern":F
    .restart local v6    # "totalVariance":F
    .restart local v7    # "unitBarWidth":F
    .restart local v9    # "x":I
    :cond_2
    int-to-float v10, v0

    sub-float v8, v4, v10

    goto :goto_2

    .line 277
    .restart local v8    # "variance":F
    :cond_3
    add-float/2addr v6, v8

    .line 270
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 279
    .end local v0    # "counter":I
    .end local v4    # "scaledPattern":F
    .end local v8    # "variance":F
    :cond_4
    int-to-float v10, v5

    div-float v10, v6, v10

    return v10
.end method

.method protected static recordPattern(Lcom/google/zxing/common/BitArray;I[I)V
    .locals 8
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "start"    # I
    .param p2, "counters"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 193
    array-length v4, p2

    .line 194
    .local v4, "numCounters":I
    invoke-static {p2, v6, v4, v6}, Ljava/util/Arrays;->fill([IIII)V

    .line 195
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    .line 196
    .local v1, "end":I
    if-ge p1, v1, :cond_0

    .line 199
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    if-nez v7, :cond_1

    move v3, v5

    .line 200
    .local v3, "isWhite":Z
    :goto_0
    const/4 v0, 0x0

    .line 201
    .local v0, "counterPosition":I
    move v2, p1

    .line 202
    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_4

    .line 203
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    xor-int/2addr v7, v3

    if-nez v7, :cond_2

    .line 206
    add-int/lit8 v0, v0, 0x1

    .line 207
    if-eq v0, v4, :cond_4

    .line 210
    aput v5, p2, v0

    .line 211
    if-nez v3, :cond_3

    move v3, v5

    .line 214
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 197
    .end local v0    # "counterPosition":I
    .end local v2    # "i":I
    .end local v3    # "isWhite":Z
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5

    :cond_1
    move v3, v6

    .line 199
    goto :goto_0

    .line 204
    .restart local v0    # "counterPosition":I
    .restart local v2    # "i":I
    .restart local v3    # "isWhite":Z
    :cond_2
    aget v7, p2, v0

    add-int/lit8 v7, v7, 0x1

    aput v7, p2, v0

    goto :goto_2

    :cond_3
    move v3, v6

    .line 211
    goto :goto_2

    .line 218
    :cond_4
    if-ne v0, v4, :cond_5

    .line 221
    :goto_3
    return-void

    .line 218
    :cond_5
    add-int/lit8 v5, v4, -0x1

    if-eq v0, v5, :cond_7

    .line 219
    :cond_6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5

    .line 218
    :cond_7
    if-ne v2, v1, :cond_6

    goto :goto_3
.end method

.method protected static recordPatternInReverse(Lcom/google/zxing/common/BitArray;I[I)V
    .locals 4
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "start"    # I
    .param p2, "counters"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 226
    array-length v1, p2

    .line 227
    .local v1, "numTransitionsLeft":I
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v0

    .line 228
    .local v0, "last":Z
    :cond_0
    :goto_0
    if-gtz p1, :cond_2

    .line 234
    :cond_1
    if-gez v1, :cond_4

    .line 237
    add-int/lit8 v2, p1, 0x1

    invoke-static {p0, v2, p2}, Lcom/google/zxing/oned/OneDReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 238
    return-void

    .line 228
    :cond_2
    if-ltz v1, :cond_1

    .line 229
    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eq v3, v0, :cond_0

    .line 230
    add-int/lit8 v1, v1, -0x1

    .line 231
    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    .line 235
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 12
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    const/4 v8, 0x0

    .line 54
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/oned/OneDReader;->doDecode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    return-object v9

    .line 55
    :catch_0
    move-exception v3

    .line 56
    .local v3, "nfe":Lcom/google/zxing/NotFoundException;
    if-nez p2, :cond_2

    .line 57
    .local v8, "tryHarder":Z
    :cond_0
    :goto_0
    if-nez v8, :cond_3

    .line 79
    :cond_1
    throw v3

    .line 56
    .end local v8    # "tryHarder":Z
    :cond_2
    sget-object v9, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    .line 57
    .restart local v8    # "tryHarder":Z
    :cond_3
    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->isRotateSupported()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 58
    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->rotateCounterClockwise()Lcom/google/zxing/BinaryBitmap;

    move-result-object v7

    .line 59
    .local v7, "rotatedImage":Lcom/google/zxing/BinaryBitmap;
    invoke-direct {p0, v7, p2}, Lcom/google/zxing/oned/OneDReader;->doDecode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v6

    .line 61
    .local v6, "result":Lcom/google/zxing/Result;
    invoke-virtual {v6}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v2

    .line 62
    .local v2, "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;*>;"
    const/16 v4, 0x10e

    .line 63
    .local v4, "orientation":I
    if-nez v2, :cond_6

    .line 68
    :cond_4
    :goto_1
    sget-object v9, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 70
    invoke-virtual {v6}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v5

    .line 71
    .local v5, "points":[Lcom/google/zxing/ResultPoint;
    if-nez v5, :cond_7

    .line 77
    :cond_5
    return-object v6

    .line 63
    .end local v5    # "points":[Lcom/google/zxing/ResultPoint;
    :cond_6
    sget-object v9, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 66
    sget-object v9, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 65
    add-int/lit16 v9, v9, 0x10e

    rem-int/lit16 v4, v9, 0x168

    goto :goto_1

    .line 72
    .restart local v5    # "points":[Lcom/google/zxing/ResultPoint;
    :cond_7
    invoke-virtual {v7}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result v0

    .line 73
    .local v0, "height":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v9, v5

    if-ge v1, v9, :cond_5

    .line 74
    new-instance v9, Lcom/google/zxing/ResultPoint;

    int-to-float v10, v0

    aget-object v11, v5, v1

    invoke-virtual {v11}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v11

    sub-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v10, v11

    aget-object v11, v5, v1

    invoke-virtual {v11}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v11

    invoke-direct {v9, v10, v11}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v9, v5, v1

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public abstract decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
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
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method
