.class public Lcom/google/zxing/qrcode/detector/Detector;
.super Ljava/lang/Object;
.source "Detector.java"


# instance fields
.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private resultPointCallback:Lcom/google/zxing/ResultPointCallback;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 0
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 46
    return-void
.end method

.method private calculateModuleSizeOneWay(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
    .locals 7
    .param p1, "pattern"    # Lcom/google/zxing/ResultPoint;
    .param p2, "otherPattern"    # Lcom/google/zxing/ResultPoint;

    .prologue
    const/high16 v6, 0x40e00000    # 7.0f

    .line 242
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 243
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 244
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    float-to-int v4, v4

    .line 245
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 242
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/google/zxing/qrcode/detector/Detector;->sizeOfBlackWhiteBlackRunBothWays(IIII)F

    move-result v0

    .line 246
    .local v0, "moduleSizeEst1":F
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 247
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 248
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    float-to-int v4, v4

    .line 249
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 246
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/google/zxing/qrcode/detector/Detector;->sizeOfBlackWhiteBlackRunBothWays(IIII)F

    move-result v1

    .line 250
    .local v1, "moduleSizeEst2":F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_0

    .line 253
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_1

    .line 258
    add-float v2, v0, v1

    const/high16 v3, 0x41600000    # 14.0f

    div-float/2addr v2, v3

    return v2

    .line 251
    :cond_0
    div-float v2, v1, v6

    return v2

    .line 254
    :cond_1
    div-float v2, v0, v6

    return v2
.end method

.method private static computeDimension(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;F)I
    .locals 4
    .param p0, "topLeft"    # Lcom/google/zxing/ResultPoint;
    .param p1, "topRight"    # Lcom/google/zxing/ResultPoint;
    .param p2, "bottomLeft"    # Lcom/google/zxing/ResultPoint;
    .param p3, "moduleSize"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 202
    invoke-static {p0, p1}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v3

    div-float/2addr v3, p3

    invoke-static {v3}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v2

    .line 203
    .local v2, "tltrCentersDimension":I
    invoke-static {p0, p2}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v3

    div-float/2addr v3, p3

    invoke-static {v3}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v1

    .line 204
    .local v1, "tlblCentersDimension":I
    add-int v3, v2, v1

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v0, v3, 0x7

    .line 205
    .local v0, "dimension":I
    and-int/lit8 v3, v0, 0x3

    packed-switch v3, :pswitch_data_0

    .line 216
    :goto_0
    :pswitch_0
    return v0

    .line 207
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    :pswitch_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 214
    :pswitch_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v3

    throw v3

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static createTransform(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/common/PerspectiveTransform;
    .locals 17
    .param p0, "topLeft"    # Lcom/google/zxing/ResultPoint;
    .param p1, "topRight"    # Lcom/google/zxing/ResultPoint;
    .param p2, "bottomLeft"    # Lcom/google/zxing/ResultPoint;
    .param p3, "alignmentPattern"    # Lcom/google/zxing/ResultPoint;
    .param p4, "dimension"    # I

    .prologue
    .line 149
    move/from16 v0, p4

    int-to-float v1, v0

    const/high16 v2, 0x40600000    # 3.5f

    sub-float v3, v1, v2

    .line 154
    .local v3, "dimMinusThree":F
    if-nez p3, :cond_0

    .line 161
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    add-float v13, v1, v2

    .line 162
    .local v13, "bottomRightX":F
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    add-float v14, v1, v2

    .line 163
    .local v14, "bottomRightY":F
    move v5, v3

    .line 164
    .local v5, "sourceBottomRightX":F
    move v6, v3

    .line 168
    .local v6, "sourceBottomRightY":F
    :goto_0
    const/high16 v1, 0x40600000    # 3.5f

    .line 169
    const/high16 v2, 0x40600000    # 3.5f

    .line 171
    const/high16 v4, 0x40600000    # 3.5f

    .line 174
    const/high16 v7, 0x40600000    # 3.5f

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v10

    .line 178
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v11

    .line 179
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v12

    .line 182
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v15

    .line 183
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v16

    move v8, v3

    .line 167
    invoke-static/range {v1 .. v16}, Lcom/google/zxing/common/PerspectiveTransform;->quadrilateralToQuadrilateral(FFFFFFFFFFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object v1

    return-object v1

    .line 155
    .end local v5    # "sourceBottomRightX":F
    .end local v6    # "sourceBottomRightY":F
    .end local v13    # "bottomRightX":F
    .end local v14    # "bottomRightY":F
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v13

    .line 156
    .restart local v13    # "bottomRightX":F
    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v14

    .line 157
    .restart local v14    # "bottomRightY":F
    const/high16 v1, 0x40400000    # 3.0f

    sub-float v5, v3, v1

    .line 158
    .restart local v5    # "sourceBottomRightX":F
    move v6, v5

    .restart local v6    # "sourceBottomRightY":F
    goto :goto_0
.end method

.method private static sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/common/PerspectiveTransform;I)Lcom/google/zxing/common/BitMatrix;
    .locals 2
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "transform"    # Lcom/google/zxing/common/PerspectiveTransform;
    .param p2, "dimension"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-static {}, Lcom/google/zxing/common/GridSampler;->getInstance()Lcom/google/zxing/common/GridSampler;

    move-result-object v0

    .line 191
    .local v0, "sampler":Lcom/google/zxing/common/GridSampler;
    invoke-virtual {v0, p0, p2, p2, p1}, Lcom/google/zxing/common/GridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    return-object v1
.end method

.method private sizeOfBlackWhiteBlackRun(IIII)F
    .locals 21
    .param p1, "fromX"    # I
    .param p2, "fromY"    # I
    .param p3, "toX"    # I
    .param p4, "toY"    # I

    .prologue
    .line 309
    sub-int v19, p4, p2

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v19

    sub-int v20, p3, p1

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_0

    const/4 v11, 0x0

    .line 310
    .local v11, "steep":Z
    :goto_0
    if-nez v11, :cond_1

    .line 319
    :goto_1
    sub-int v19, p3, p1

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 320
    .local v4, "dx":I
    sub-int v19, p4, p2

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 321
    .local v5, "dy":I
    neg-int v0, v4

    move/from16 v19, v0

    div-int/lit8 v6, v19, 0x2

    .line 322
    .local v6, "error":I
    move/from16 v0, p1

    move/from16 v1, p3

    if-lt v0, v1, :cond_2

    const/16 v16, -0x1

    .line 323
    .local v16, "xstep":I
    :goto_2
    move/from16 v0, p2

    move/from16 v1, p4

    if-lt v0, v1, :cond_3

    const/16 v18, -0x1

    .line 326
    .local v18, "ystep":I
    :goto_3
    const/4 v10, 0x0

    .line 328
    .local v10, "state":I
    add-int v15, p3, v16

    .line 329
    .local v15, "xLimit":I
    move/from16 v14, p1

    .local v14, "x":I
    move/from16 v17, p2

    .local v17, "y":I
    :goto_4
    if-eq v14, v15, :cond_a

    .line 330
    if-nez v11, :cond_4

    move v8, v14

    .line 331
    .local v8, "realX":I
    :goto_5
    if-nez v11, :cond_5

    move/from16 v9, v17

    .line 336
    .local v9, "realY":I
    :goto_6
    const/16 v19, 0x1

    move/from16 v0, v19

    if-eq v10, v0, :cond_6

    const/16 v19, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    .line 343
    :goto_8
    add-int/2addr v6, v5

    .line 344
    if-gtz v6, :cond_9

    .line 329
    :goto_9
    add-int v14, v14, v16

    goto :goto_4

    .line 309
    .end local v4    # "dx":I
    .end local v5    # "dy":I
    .end local v6    # "error":I
    .end local v8    # "realX":I
    .end local v9    # "realY":I
    .end local v10    # "state":I
    .end local v11    # "steep":Z
    .end local v14    # "x":I
    .end local v15    # "xLimit":I
    .end local v16    # "xstep":I
    .end local v17    # "y":I
    .end local v18    # "ystep":I
    :cond_0
    const/4 v11, 0x1

    goto :goto_0

    .line 311
    .restart local v11    # "steep":Z
    :cond_1
    move/from16 v12, p1

    .line 312
    .local v12, "temp":I
    move/from16 v7, p2

    .line 313
    .end local p1    # "fromX":I
    .local v7, "fromX":I
    move/from16 p2, p1

    .line 314
    move/from16 v12, p3

    .line 315
    move/from16 v13, p4

    .line 316
    .end local p3    # "toX":I
    .local v13, "toX":I
    move/from16 p4, p3

    move/from16 p3, v13

    .end local v13    # "toX":I
    .restart local p3    # "toX":I
    move/from16 p1, v7

    .end local v7    # "fromX":I
    .restart local p1    # "fromX":I
    goto :goto_1

    .line 322
    .end local v12    # "temp":I
    .restart local v4    # "dx":I
    .restart local v5    # "dy":I
    .restart local v6    # "error":I
    :cond_2
    const/16 v16, 0x1

    goto :goto_2

    .line 323
    .restart local v16    # "xstep":I
    :cond_3
    const/16 v18, 0x1

    goto :goto_3

    .restart local v10    # "state":I
    .restart local v14    # "x":I
    .restart local v15    # "xLimit":I
    .restart local v17    # "y":I
    .restart local v18    # "ystep":I
    :cond_4
    move/from16 v8, v17

    .line 330
    goto :goto_5

    .restart local v8    # "realX":I
    :cond_5
    move v9, v14

    .line 331
    goto :goto_6

    .line 336
    .restart local v9    # "realY":I
    :cond_6
    const/16 v19, 0x1

    goto :goto_7

    .line 337
    :cond_7
    const/16 v19, 0x2

    move/from16 v0, v19

    if-eq v10, v0, :cond_8

    .line 340
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 338
    :cond_8
    move/from16 v0, v17

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v14, v0, v1, v2}, Lcom/google/zxing/common/detector/MathUtils;->distance(IIII)F

    move-result v19

    return v19

    .line 345
    :cond_9
    move/from16 v0, v17

    move/from16 v1, p4

    if-eq v0, v1, :cond_a

    .line 348
    add-int v17, v17, v18

    .line 349
    sub-int/2addr v6, v4

    goto :goto_9

    .line 355
    .end local v8    # "realX":I
    .end local v9    # "realY":I
    :cond_a
    const/16 v19, 0x2

    move/from16 v0, v19

    if-eq v10, v0, :cond_b

    .line 359
    const/high16 v19, 0x7fc00000    # NaNf

    return v19

    .line 356
    :cond_b
    add-int v19, p3, v16

    move/from16 v0, v19

    move/from16 v1, p4

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/google/zxing/common/detector/MathUtils;->distance(IIII)F

    move-result v19

    return v19
.end method

.method private sizeOfBlackWhiteBlackRunBothWays(IIII)F
    .locals 6
    .param p1, "fromX"    # I
    .param p2, "fromY"    # I
    .param p3, "toX"    # I
    .param p4, "toY"    # I

    .prologue
    .line 268
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/zxing/qrcode/detector/Detector;->sizeOfBlackWhiteBlackRun(IIII)F

    move-result v2

    .line 271
    .local v2, "result":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 272
    .local v3, "scale":F
    sub-int v4, p3, p1

    sub-int v0, p1, v4

    .line 273
    .local v0, "otherToX":I
    if-ltz v0, :cond_0

    .line 276
    iget-object v4, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 280
    :goto_0
    int-to-float v4, p2

    sub-int v5, p4, p2

    int-to-float v5, v5

    mul-float/2addr v5, v3

    sub-float/2addr v4, v5

    float-to-int v1, v4

    .line 282
    .local v1, "otherToY":I
    const/high16 v3, 0x3f800000    # 1.0f

    .line 283
    if-ltz v1, :cond_2

    .line 286
    iget-object v4, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 290
    :goto_1
    int-to-float v4, p1

    sub-int v5, v0, p1

    int-to-float v5, v5

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    float-to-int v0, v4

    .line 292
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/zxing/qrcode/detector/Detector;->sizeOfBlackWhiteBlackRun(IIII)F

    move-result v4

    add-float/2addr v2, v4

    .line 295
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v4, v2, v4

    return v4

    .line 274
    .end local v1    # "otherToY":I
    :cond_0
    int-to-float v4, p1

    sub-int v5, p1, v0

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 275
    const/4 v0, 0x0

    goto :goto_0

    .line 277
    :cond_1
    iget-object v4, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, p1

    int-to-float v4, v4

    sub-int v5, v0, p1

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 278
    iget-object v4, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    goto :goto_0

    .line 284
    .restart local v1    # "otherToY":I
    :cond_2
    int-to-float v4, p2

    sub-int v5, p2, v1

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 285
    const/4 v1, 0x0

    goto :goto_1

    .line 287
    :cond_3
    iget-object v4, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, p2

    int-to-float v4, v4

    sub-int v5, v1, p2

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 288
    iget-object v4, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    goto :goto_1
.end method


# virtual methods
.method protected final calculateModuleSize(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
    .locals 2
    .param p1, "topLeft"    # Lcom/google/zxing/ResultPoint;
    .param p2, "topRight"    # Lcom/google/zxing/ResultPoint;
    .param p3, "bottomLeft"    # Lcom/google/zxing/ResultPoint;

    .prologue
    .line 232
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/qrcode/detector/Detector;->calculateModuleSizeOneWay(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v0

    .line 233
    invoke-direct {p0, p1, p3}, Lcom/google/zxing/qrcode/detector/Detector;->calculateModuleSizeOneWay(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v1

    .line 232
    add-float/2addr v0, v1

    .line 233
    const/high16 v1, 0x40000000    # 2.0f

    .line 232
    div-float/2addr v0, v1

    return v0
.end method

.method public final detect(Ljava/util/Map;)Lcom/google/zxing/common/DetectorResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DetectorResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    const/4 v2, 0x0

    .line 77
    if-eqz p1, :cond_0

    .line 78
    sget-object v2, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/ResultPointCallback;

    .line 77
    :cond_0
    iput-object v2, p0, Lcom/google/zxing/qrcode/detector/Detector;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    .line 80
    new-instance v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;

    iget-object v2, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    iget-object v3, p0, Lcom/google/zxing/qrcode/detector/Detector;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    invoke-direct {v0, v2, v3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V

    .line 81
    .local v0, "finder":Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
    invoke-virtual {v0, p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->find(Ljava/util/Map;)Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    move-result-object v1

    .line 83
    .local v1, "info":Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    invoke-virtual {p0, v1}, Lcom/google/zxing/qrcode/detector/Detector;->processFinderPatternInfo(Lcom/google/zxing/qrcode/detector/FinderPatternInfo;)Lcom/google/zxing/common/DetectorResult;

    move-result-object v2

    return-object v2
.end method

.method protected final findAlignmentInRegion(FIIF)Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    .locals 11
    .param p1, "overallEstModuleSize"    # F
    .param p2, "estAlignmentX"    # I
    .param p3, "estAlignmentY"    # I
    .param p4, "allowanceFactor"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x40400000    # 3.0f

    .line 380
    mul-float v1, p4, p1

    float-to-int v10, v1

    .line 381
    .local v10, "allowance":I
    sub-int v1, p2, v10

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 382
    .local v2, "alignmentAreaLeftX":I
    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    add-int v4, p2, v10

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 383
    .local v9, "alignmentAreaRightX":I
    sub-int v1, v9, v2

    int-to-float v1, v1

    mul-float v4, p1, v5

    cmpg-float v1, v1, v4

    if-gez v1, :cond_0

    .line 384
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 387
    :cond_0
    sub-int v1, p3, v10

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 388
    .local v3, "alignmentAreaTopY":I
    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    add-int v4, p3, v10

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 389
    .local v8, "alignmentAreaBottomY":I
    sub-int v1, v8, v3

    int-to-float v1, v1

    mul-float v4, p1, v5

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    .line 390
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 394
    :cond_1
    new-instance v0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;

    .line 395
    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 398
    sub-int v4, v9, v2

    .line 399
    sub-int v5, v8, v3

    .line 401
    iget-object v7, p0, Lcom/google/zxing/qrcode/detector/Detector;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    move v6, p1

    .line 394
    invoke-direct/range {v0 .. v7}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;IIIIFLcom/google/zxing/ResultPointCallback;)V

    .line 402
    .local v0, "alignmentFinder":Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->find()Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    move-result-object v1

    return-object v1
.end method

.method protected final processFinderPatternInfo(Lcom/google/zxing/qrcode/detector/FinderPatternInfo;)Lcom/google/zxing/common/DetectorResult;
    .locals 23
    .param p1, "info"    # Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v18

    .line 90
    .local v18, "topLeft":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v19

    .line 91
    .local v19, "topRight":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v6

    .line 93
    .local v6, "bottomLeft":Lcom/google/zxing/qrcode/detector/FinderPattern;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/zxing/qrcode/detector/Detector;->calculateModuleSize(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v14

    .line 94
    .local v14, "moduleSize":F
    const/high16 v21, 0x3f800000    # 1.0f

    cmpg-float v21, v14, v21

    if-gez v21, :cond_0

    .line 95
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v21

    throw v21

    .line 97
    :cond_0
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6, v14}, Lcom/google/zxing/qrcode/detector/Detector;->computeDimension(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;F)I

    move-result v10

    .line 98
    .local v10, "dimension":I
    invoke-static {v10}, Lcom/google/zxing/qrcode/decoder/Version;->getProvisionalVersionForDimension(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v17

    .line 99
    .local v17, "provisionalVersion":Lcom/google/zxing/qrcode/decoder/Version;
    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v21

    add-int/lit8 v15, v21, -0x7

    .line 101
    .local v15, "modulesBetweenFPCenters":I
    const/4 v4, 0x0

    .line 103
    .local v4, "alignmentPattern":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/qrcode/decoder/Version;->getAlignmentPatternCenters()[I

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    if-gtz v21, :cond_2

    .line 131
    .end local v4    # "alignmentPattern":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    :cond_1
    :goto_0
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6, v4, v10}, Lcom/google/zxing/qrcode/detector/Detector;->createTransform(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object v20

    .line 133
    .local v20, "transform":Lcom/google/zxing/common/PerspectiveTransform;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10}, Lcom/google/zxing/qrcode/detector/Detector;->sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/common/PerspectiveTransform;I)Lcom/google/zxing/common/BitMatrix;

    move-result-object v5

    .line 136
    .local v5, "bits":Lcom/google/zxing/common/BitMatrix;
    if-eqz v4, :cond_3

    .line 139
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v16, v0

    const/16 v21, 0x0

    aput-object v6, v16, v21

    const/16 v21, 0x1

    aput-object v18, v16, v21

    const/16 v21, 0x2

    aput-object v19, v16, v21

    const/16 v21, 0x3

    aput-object v4, v16, v21

    .line 141
    .local v16, "points":[Lcom/google/zxing/ResultPoint;
    :goto_1
    new-instance v21, Lcom/google/zxing/common/DetectorResult;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-direct {v0, v5, v1}, Lcom/google/zxing/common/DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;)V

    return-object v21

    .line 106
    .end local v5    # "bits":Lcom/google/zxing/common/BitMatrix;
    .end local v16    # "points":[Lcom/google/zxing/ResultPoint;
    .end local v20    # "transform":Lcom/google/zxing/common/PerspectiveTransform;
    .restart local v4    # "alignmentPattern":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    :cond_2
    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v21

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v22

    sub-float v21, v21, v22

    invoke-virtual {v6}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v22

    add-float v7, v21, v22

    .line 107
    .local v7, "bottomRightX":F
    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v21

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v22

    sub-float v21, v21, v22

    invoke-virtual {v6}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v22

    add-float v8, v21, v22

    .line 111
    .local v8, "bottomRightY":F
    int-to-float v0, v15

    move/from16 v21, v0

    const/high16 v22, 0x40400000    # 3.0f

    div-float v21, v22, v21

    const/high16 v22, 0x3f800000    # 1.0f

    sub-float v9, v22, v21

    .line 112
    .local v9, "correctionToTopLeft":F
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v21

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v22

    sub-float v22, v7, v22

    mul-float v22, v22, v9

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v11, v0

    .line 113
    .local v11, "estAlignmentX":I
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v21

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v22

    sub-float v22, v8, v22

    mul-float v22, v22, v9

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v12, v0

    .line 116
    .local v12, "estAlignmentY":I
    const/4 v13, 0x4

    .local v13, "i":I
    :goto_2
    const/16 v21, 0x10

    move/from16 v0, v21

    if-gt v13, v0, :cond_1

    .line 121
    int-to-float v0, v13

    move/from16 v21, v0

    .line 118
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v14, v11, v12, v1}, Lcom/google/zxing/qrcode/detector/Detector;->findAlignmentInRegion(FIIF)Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto/16 :goto_0

    .line 123
    :catch_0
    move-exception v3

    .line 116
    .local v3, "-l_16_R":Ljava/lang/Object;
    shl-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 137
    .end local v3    # "-l_16_R":Ljava/lang/Object;
    .end local v4    # "alignmentPattern":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    .end local v7    # "bottomRightX":F
    .end local v8    # "bottomRightY":F
    .end local v9    # "correctionToTopLeft":F
    .end local v11    # "estAlignmentX":I
    .end local v12    # "estAlignmentY":I
    .end local v13    # "i":I
    .restart local v5    # "bits":Lcom/google/zxing/common/BitMatrix;
    .restart local v20    # "transform":Lcom/google/zxing/common/PerspectiveTransform;
    :cond_3
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v16, v0

    const/16 v21, 0x0

    aput-object v6, v16, v21

    const/16 v21, 0x1

    aput-object v18, v16, v21

    const/16 v21, 0x2

    aput-object v19, v16, v21

    .restart local v16    # "points":[Lcom/google/zxing/ResultPoint;
    goto/16 :goto_1
.end method
