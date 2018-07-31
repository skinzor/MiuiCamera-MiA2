.class public final Lcom/google/zxing/common/detector/WhiteRectangleDetector;
.super Ljava/lang/Object;
.source "WhiteRectangleDetector.java"


# instance fields
.field private final downInit:I

.field private final height:I

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final leftInit:I

.field private final rightInit:I

.field private final upInit:I

.field private final width:I


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 3
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/16 v2, 0xa

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;III)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;III)V
    .locals 3
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p2, "initSize"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 59
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    .line 60
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    .line 61
    div-int/lit8 v0, p2, 0x2

    .line 62
    .local v0, "halfsize":I
    sub-int v1, p3, v0

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    .line 63
    add-int v1, p3, v0

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    .line 64
    sub-int v1, p4, v0

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    .line 65
    add-int v1, p4, v0

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    .line 66
    iget v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    if-gez v1, :cond_1

    .line 67
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 66
    :cond_1
    iget v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    iget v2, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    iget v2, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    if-ge v1, v2, :cond_0

    .line 69
    return-void
.end method

.method private centerEdges(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;
    .locals 13
    .param p1, "y"    # Lcom/google/zxing/ResultPoint;
    .param p2, "z"    # Lcom/google/zxing/ResultPoint;
    .param p3, "x"    # Lcom/google/zxing/ResultPoint;
    .param p4, "t"    # Lcom/google/zxing/ResultPoint;

    .prologue
    .line 290
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    .line 291
    .local v4, "yi":F
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    .line 292
    .local v5, "yj":F
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    .line 293
    .local v6, "zi":F
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    .line 294
    .local v7, "zj":F
    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    .line 295
    .local v2, "xi":F
    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    .line 296
    .local v3, "xj":F
    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    .line 297
    .local v0, "ti":F
    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    .line 299
    .local v1, "tj":F
    iget v8, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    cmpg-float v8, v4, v8

    if-gez v8, :cond_0

    .line 300
    const/4 v8, 0x4

    new-array v8, v8, [Lcom/google/zxing/ResultPoint;

    const/4 v9, 0x0

    .line 301
    new-instance v10, Lcom/google/zxing/ResultPoint;

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v11, v0, v11

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v12, v1

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 302
    new-instance v10, Lcom/google/zxing/ResultPoint;

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v11, v6

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v12, v7

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v8, v9

    const/4 v9, 0x2

    .line 303
    new-instance v10, Lcom/google/zxing/ResultPoint;

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v11, v2, v11

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v12, v3, v12

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v8, v9

    const/4 v9, 0x3

    .line 304
    new-instance v10, Lcom/google/zxing/ResultPoint;

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v11, v4

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v12, v5, v12

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v8, v9

    .line 300
    return-object v8

    .line 306
    :cond_0
    const/4 v8, 0x4

    new-array v8, v8, [Lcom/google/zxing/ResultPoint;

    const/4 v9, 0x0

    .line 307
    new-instance v10, Lcom/google/zxing/ResultPoint;

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v11, v0

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v12, v1

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 308
    new-instance v10, Lcom/google/zxing/ResultPoint;

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v11, v6

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v12, v7, v12

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v8, v9

    const/4 v9, 0x2

    .line 309
    new-instance v10, Lcom/google/zxing/ResultPoint;

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v11, v2, v11

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v12, v3

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v8, v9

    const/4 v9, 0x3

    .line 310
    new-instance v10, Lcom/google/zxing/ResultPoint;

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v11, v4, v11

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v12, v5, v12

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v8, v9

    .line 306
    return-object v8
.end method

.method private containsBlackPoint(IIIZ)Z
    .locals 5
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "fixed"    # I
    .param p4, "horizontal"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 325
    if-nez p4, :cond_0

    .line 332
    move v1, p1

    .local v1, "y":I
    :goto_0
    if-gt v1, p2, :cond_3

    .line 333
    iget-object v2, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, p3, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 332
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 326
    .end local v1    # "y":I
    :cond_0
    move v0, p1

    .local v0, "x":I
    :goto_1
    if-gt v0, p2, :cond_3

    .line 327
    iget-object v2, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v0, p3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 328
    :cond_1
    return v4

    .line 334
    .end local v0    # "x":I
    .restart local v1    # "y":I
    :cond_2
    return v4

    .line 339
    .end local v1    # "y":I
    :cond_3
    return v3
.end method

.method private getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;
    .locals 9
    .param p1, "aX"    # F
    .param p2, "aY"    # F
    .param p3, "bX"    # F
    .param p4, "bY"    # F

    .prologue
    .line 253
    invoke-static {p1, p2, p3, p4}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v6

    invoke-static {v6}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v0

    .line 254
    .local v0, "dist":I
    sub-float v6, p3, p1

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 255
    .local v3, "xStep":F
    sub-float v6, p4, p2

    int-to-float v7, v0

    div-float v5, v6, v7

    .line 257
    .local v5, "yStep":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 258
    int-to-float v6, v1

    mul-float/2addr v6, v3

    add-float/2addr v6, p1

    invoke-static {v6}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v2

    .line 259
    .local v2, "x":I
    int-to-float v6, v1

    mul-float/2addr v6, v5

    add-float/2addr v6, p2

    invoke-static {v6}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v4

    .line 260
    .local v4, "y":I
    iget-object v6, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v6, v2, v4}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-nez v6, :cond_0

    .line 257
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    :cond_0
    new-instance v6, Lcom/google/zxing/ResultPoint;

    int-to-float v7, v2

    int-to-float v8, v4

    invoke-direct {v6, v7, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object v6

    .line 264
    .end local v2    # "x":I
    .end local v4    # "y":I
    :cond_1
    const/4 v6, 0x0

    return-object v6
.end method


# virtual methods
.method public detect()[Lcom/google/zxing/ResultPoint;
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 87
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    .line 88
    .local v14, "left":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    move/from16 v17, v0

    .line 89
    .local v17, "right":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    move/from16 v22, v0

    .line 90
    .local v22, "up":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    .line 91
    .local v12, "down":I
    const/16 v19, 0x0

    .line 92
    .local v19, "sizeExceeded":Z
    const/4 v5, 0x1

    .line 93
    .local v5, "aBlackPointFoundOnBorder":Z
    const/4 v6, 0x0

    .line 95
    .local v6, "atLeastOneBlackPointFoundOnBorder":Z
    const/4 v9, 0x0

    .line 96
    .local v9, "atLeastOneBlackPointFoundOnRight":Z
    const/4 v7, 0x0

    .line 97
    .local v7, "atLeastOneBlackPointFoundOnBottom":Z
    const/4 v8, 0x0

    .line 98
    .local v8, "atLeastOneBlackPointFoundOnLeft":Z
    const/4 v10, 0x0

    .line 100
    .local v10, "atLeastOneBlackPointFoundOnTop":Z
    :cond_0
    :goto_0
    if-eqz v5, :cond_9

    .line 102
    const/4 v5, 0x0

    .line 107
    const/16 v18, 0x1

    .line 108
    .local v18, "rightBorderNotWhite":Z
    :cond_1
    :goto_1
    if-eqz v18, :cond_4

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    move/from16 v26, v0

    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_5

    .line 109
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v17

    move/from16 v3, v26

    invoke-direct {v0, v1, v12, v2, v3}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v18

    .line 110
    if-nez v18, :cond_3

    .line 114
    if-nez v9, :cond_1

    .line 115
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 111
    :cond_3
    add-int/lit8 v17, v17, 0x1

    .line 112
    const/4 v5, 0x1

    .line 113
    const/4 v9, 0x1

    goto :goto_1

    .line 108
    :cond_4
    if-eqz v9, :cond_2

    .line 119
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    move/from16 v26, v0

    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_8

    .line 127
    const/4 v11, 0x1

    .line 128
    .local v11, "bottomBorderNotWhite":Z
    :cond_6
    :goto_2
    if-eqz v11, :cond_c

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v12, v0, :cond_d

    .line 129
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v26

    invoke-direct {v0, v14, v1, v12, v2}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v11

    .line 130
    if-nez v11, :cond_b

    .line 134
    if-nez v7, :cond_6

    .line 135
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 120
    .end local v11    # "bottomBorderNotWhite":Z
    :cond_8
    const/16 v19, 0x1

    .line 190
    .end local v18    # "rightBorderNotWhite":Z
    :cond_9
    :goto_3
    if-eqz v19, :cond_1b

    .line 248
    :cond_a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v26

    throw v26

    .line 131
    .restart local v11    # "bottomBorderNotWhite":Z
    .restart local v18    # "rightBorderNotWhite":Z
    :cond_b
    add-int/lit8 v12, v12, 0x1

    .line 132
    const/4 v5, 0x1

    .line 133
    const/4 v7, 0x1

    goto :goto_2

    .line 128
    :cond_c
    if-eqz v7, :cond_7

    .line 139
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v12, v0, :cond_10

    .line 147
    const/4 v15, 0x1

    .line 148
    .local v15, "leftBorderNotWhite":Z
    :cond_e
    :goto_4
    if-eqz v15, :cond_12

    :cond_f
    if-ltz v14, :cond_13

    .line 149
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v26

    invoke-direct {v0, v1, v12, v14, v2}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v15

    .line 150
    if-nez v15, :cond_11

    .line 154
    if-nez v8, :cond_e

    .line 155
    add-int/lit8 v14, v14, -0x1

    goto :goto_4

    .line 140
    .end local v15    # "leftBorderNotWhite":Z
    :cond_10
    const/16 v19, 0x1

    goto :goto_3

    .line 151
    .restart local v15    # "leftBorderNotWhite":Z
    :cond_11
    add-int/lit8 v14, v14, -0x1

    .line 152
    const/4 v5, 0x1

    .line 153
    const/4 v8, 0x1

    goto :goto_4

    .line 148
    :cond_12
    if-eqz v8, :cond_f

    .line 159
    :cond_13
    if-ltz v14, :cond_16

    .line 167
    const/16 v21, 0x1

    .line 168
    .local v21, "topBorderNotWhite":Z
    :cond_14
    :goto_5
    if-eqz v21, :cond_18

    :cond_15
    if-ltz v22, :cond_19

    .line 169
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v22

    move/from16 v3, v26

    invoke-direct {v0, v14, v1, v2, v3}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v21

    .line 170
    if-nez v21, :cond_17

    .line 174
    if-nez v10, :cond_14

    .line 175
    add-int/lit8 v22, v22, -0x1

    goto :goto_5

    .line 160
    .end local v21    # "topBorderNotWhite":Z
    :cond_16
    const/16 v19, 0x1

    goto :goto_3

    .line 171
    .restart local v21    # "topBorderNotWhite":Z
    :cond_17
    add-int/lit8 v22, v22, -0x1

    .line 172
    const/4 v5, 0x1

    .line 173
    const/4 v10, 0x1

    goto :goto_5

    .line 168
    :cond_18
    if-eqz v10, :cond_15

    .line 179
    :cond_19
    if-ltz v22, :cond_1a

    .line 184
    if-eqz v5, :cond_0

    .line 185
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 180
    :cond_1a
    const/16 v19, 0x1

    goto :goto_3

    .line 190
    .end local v11    # "bottomBorderNotWhite":Z
    .end local v15    # "leftBorderNotWhite":Z
    .end local v18    # "rightBorderNotWhite":Z
    .end local v21    # "topBorderNotWhite":Z
    :cond_1b
    if-eqz v6, :cond_a

    .line 192
    sub-int v16, v17, v14

    .line 194
    .local v16, "maxSize":I
    const/16 v25, 0x0

    .line 195
    .local v25, "z":Lcom/google/zxing/ResultPoint;
    const/4 v13, 0x1

    .end local v25    # "z":Lcom/google/zxing/ResultPoint;
    .local v13, "i":I
    :goto_6
    move/from16 v0, v16

    if-ge v13, v0, :cond_1c

    .line 196
    int-to-float v0, v14

    move/from16 v26, v0

    sub-int v27, v12, v13

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    add-int v28, v14, v13

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    int-to-float v0, v12

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v25

    .line 197
    .restart local v25    # "z":Lcom/google/zxing/ResultPoint;
    if-nez v25, :cond_1c

    .line 195
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 202
    .end local v25    # "z":Lcom/google/zxing/ResultPoint;
    :cond_1c
    if-eqz v25, :cond_1d

    .line 206
    const/16 v20, 0x0

    .line 208
    .local v20, "t":Lcom/google/zxing/ResultPoint;
    const/4 v13, 0x1

    .end local v20    # "t":Lcom/google/zxing/ResultPoint;
    :goto_7
    move/from16 v0, v16

    if-ge v13, v0, :cond_1e

    .line 209
    int-to-float v0, v14

    move/from16 v26, v0

    add-int v27, v22, v13

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    add-int v28, v14, v13

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v20

    .line 210
    .restart local v20    # "t":Lcom/google/zxing/ResultPoint;
    if-nez v20, :cond_1e

    .line 208
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 203
    .end local v20    # "t":Lcom/google/zxing/ResultPoint;
    :cond_1d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v26

    throw v26

    .line 215
    :cond_1e
    if-eqz v20, :cond_1f

    .line 219
    const/16 v23, 0x0

    .line 221
    .local v23, "x":Lcom/google/zxing/ResultPoint;
    const/4 v13, 0x1

    .end local v23    # "x":Lcom/google/zxing/ResultPoint;
    :goto_8
    move/from16 v0, v16

    if-ge v13, v0, :cond_20

    .line 222
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v26, v0

    add-int v27, v22, v13

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    sub-int v28, v17, v13

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v23

    .line 223
    .restart local v23    # "x":Lcom/google/zxing/ResultPoint;
    if-nez v23, :cond_20

    .line 221
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 216
    .end local v23    # "x":Lcom/google/zxing/ResultPoint;
    :cond_1f
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v26

    throw v26

    .line 228
    :cond_20
    if-eqz v23, :cond_21

    .line 232
    const/16 v24, 0x0

    .line 234
    .local v24, "y":Lcom/google/zxing/ResultPoint;
    const/4 v13, 0x1

    .end local v24    # "y":Lcom/google/zxing/ResultPoint;
    :goto_9
    move/from16 v0, v16

    if-ge v13, v0, :cond_22

    .line 235
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v26, v0

    sub-int v27, v12, v13

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    sub-int v28, v17, v13

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    int-to-float v0, v12

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v24

    .line 236
    .restart local v24    # "y":Lcom/google/zxing/ResultPoint;
    if-nez v24, :cond_22

    .line 234
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 229
    .end local v24    # "y":Lcom/google/zxing/ResultPoint;
    :cond_21
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v26

    throw v26

    .line 241
    :cond_22
    if-eqz v24, :cond_23

    .line 245
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v23

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->centerEdges(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;

    move-result-object v26

    return-object v26

    .line 242
    :cond_23
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v26

    throw v26
.end method
