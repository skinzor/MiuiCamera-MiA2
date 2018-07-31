.class public Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.super Ljava/lang/Object;
.source "FinderPatternFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;,
        Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;
    }
.end annotation


# instance fields
.field private final crossCheckStateCount:[I

.field private hasSkipped:Z

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final possibleCenters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/qrcode/detector/FinderPattern;",
            ">;"
        }
    .end annotation
.end field

.field private final resultPointCallback:Lcom/google/zxing/ResultPointCallback;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V
    .locals 1
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p2, "resultPointCallback"    # Lcom/google/zxing/ResultPointCallback;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    .line 64
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    .line 65
    iput-object p2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    .line 66
    return-void
.end method

.method private static centerFromEnd([II)F
    .locals 3
    .param p0, "stateCount"    # [I
    .param p1, "end"    # I

    .prologue
    .line 191
    const/4 v0, 0x4

    aget v0, p0, v0

    sub-int v0, p1, v0

    const/4 v1, 0x3

    aget v1, p0, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method private crossCheckDiagonal(IIII)Z
    .locals 8
    .param p1, "startI"    # I
    .param p2, "centerJ"    # I
    .param p3, "maxCount"    # I
    .param p4, "originalStateCountTotal"    # I

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object v3

    .line 247
    .local v3, "stateCount":[I
    const/4 v0, 0x0

    .line 248
    .local v0, "i":I
    :goto_0
    if-ge p1, v0, :cond_3

    .line 253
    :cond_0
    :goto_1
    if-ge p1, v0, :cond_4

    .line 254
    :cond_1
    const/4 v5, 0x0

    return v5

    .line 248
    :cond_2
    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    sub-int v6, p2, v0

    sub-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 249
    const/4 v5, 0x2

    aget v5, v3, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x2

    aput v5, v3, v6

    .line 250
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :cond_3
    if-ge p2, v0, :cond_2

    goto :goto_1

    .line 253
    :cond_4
    if-lt p2, v0, :cond_1

    .line 258
    :goto_2
    if-ge p1, v0, :cond_8

    .line 265
    :cond_5
    :goto_3
    if-ge p1, v0, :cond_9

    .line 266
    :cond_6
    const/4 v5, 0x0

    return v5

    .line 259
    :cond_7
    const/4 v5, 0x1

    aget v5, v3, v5

    .line 258
    if-gt v5, p3, :cond_5

    .line 260
    const/4 v5, 0x1

    aget v5, v3, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    aput v5, v3, v6

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 258
    :cond_8
    if-lt p2, v0, :cond_5

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    sub-int v6, p2, v0

    sub-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_3

    .line 265
    :cond_9
    if-lt p2, v0, :cond_6

    const/4 v5, 0x1

    aget v5, v3, v5

    if-gt v5, p3, :cond_6

    .line 270
    :goto_4
    if-ge p1, v0, :cond_e

    .line 275
    :cond_a
    :goto_5
    const/4 v5, 0x0

    aget v5, v3, v5

    if-gt v5, p3, :cond_f

    .line 279
    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v5}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    .line 280
    .local v1, "maxI":I
    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v5}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    .line 283
    .local v2, "maxJ":I
    const/4 v0, 0x1

    .line 284
    :goto_6
    add-int v5, p1, v0

    if-lt v5, v1, :cond_11

    .line 290
    :cond_b
    :goto_7
    add-int v5, p1, v0

    if-lt v5, v1, :cond_12

    .line 291
    :cond_c
    const/4 v5, 0x0

    return v5

    .line 271
    .end local v1    # "maxI":I
    .end local v2    # "maxJ":I
    :cond_d
    const/4 v5, 0x0

    aget v5, v3, v5

    .line 270
    if-gt v5, p3, :cond_a

    .line 272
    const/4 v5, 0x0

    aget v5, v3, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    aput v5, v3, v6

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 270
    :cond_e
    if-lt p2, v0, :cond_a

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    sub-int v6, p2, v0

    sub-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_5

    .line 276
    :cond_f
    const/4 v5, 0x0

    return v5

    .line 284
    .restart local v1    # "maxI":I
    .restart local v2    # "maxJ":I
    :cond_10
    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    add-int v6, p2, v0

    add-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 285
    const/4 v5, 0x2

    aget v5, v3, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x2

    aput v5, v3, v6

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 284
    :cond_11
    add-int v5, p2, v0

    if-lt v5, v2, :cond_10

    goto :goto_7

    .line 290
    :cond_12
    add-int v5, p2, v0

    if-ge v5, v2, :cond_c

    .line 294
    :goto_8
    add-int v5, p1, v0

    if-lt v5, v1, :cond_16

    .line 300
    :cond_13
    :goto_9
    add-int v5, p1, v0

    if-lt v5, v1, :cond_17

    .line 301
    :cond_14
    const/4 v5, 0x0

    return v5

    .line 295
    :cond_15
    const/4 v5, 0x3

    aget v5, v3, v5

    .line 294
    if-ge v5, p3, :cond_13

    .line 296
    const/4 v5, 0x3

    aget v5, v3, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x3

    aput v5, v3, v6

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 294
    :cond_16
    add-int v5, p2, v0

    if-ge v5, v2, :cond_13

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    add-int v6, p2, v0

    add-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_15

    goto :goto_9

    .line 300
    :cond_17
    add-int v5, p2, v0

    if-ge v5, v2, :cond_14

    const/4 v5, 0x3

    aget v5, v3, v5

    if-ge v5, p3, :cond_14

    .line 304
    :goto_a
    add-int v5, p1, v0

    if-lt v5, v1, :cond_1b

    .line 310
    :cond_18
    :goto_b
    const/4 v5, 0x4

    aget v5, v3, v5

    if-ge v5, p3, :cond_1c

    .line 316
    const/4 v5, 0x0

    aget v5, v3, v5

    const/4 v6, 0x1

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x2

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x3

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x4

    aget v6, v3, v6

    add-int v4, v5, v6

    .line 318
    .local v4, "stateCountTotal":I
    sub-int v5, v4, p4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    mul-int/lit8 v6, p4, 0x2

    if-lt v5, v6, :cond_1d

    .line 317
    :cond_19
    const/4 v5, 0x0

    return v5

    .line 305
    .end local v4    # "stateCountTotal":I
    :cond_1a
    const/4 v5, 0x4

    aget v5, v3, v5

    .line 304
    if-ge v5, p3, :cond_18

    .line 306
    const/4 v5, 0x4

    aget v5, v3, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x4

    aput v5, v3, v6

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 304
    :cond_1b
    add-int v5, p2, v0

    if-ge v5, v2, :cond_18

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    add-int v6, p2, v0

    add-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_1a

    goto :goto_b

    .line 311
    :cond_1c
    const/4 v5, 0x0

    return v5

    .line 319
    .restart local v4    # "stateCountTotal":I
    :cond_1d
    invoke-static {v3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 317
    const/4 v5, 0x1

    return v5
.end method

.method private crossCheckHorizontal(IIII)F
    .locals 7
    .param p1, "startJ"    # I
    .param p2, "centerI"    # I
    .param p3, "maxCount"    # I
    .param p4, "originalStateCountTotal"    # I

    .prologue
    .line 407
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 409
    .local v0, "image":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    .line 410
    .local v2, "maxJ":I
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object v3

    .line 412
    .local v3, "stateCount":[I
    move v1, p1

    .line 413
    .local v1, "j":I
    :goto_0
    if-gez v1, :cond_3

    .line 417
    :cond_0
    if-ltz v1, :cond_4

    .line 420
    :goto_1
    if-gez v1, :cond_6

    .line 424
    :cond_1
    :goto_2
    if-gez v1, :cond_7

    .line 425
    :cond_2
    const/high16 v5, 0x7fc00000    # NaNf

    return v5

    .line 413
    :cond_3
    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 414
    const/4 v5, 0x2

    aget v5, v3, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x2

    aput v5, v3, v6

    .line 415
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 418
    :cond_4
    const/high16 v5, 0x7fc00000    # NaNf

    return v5

    .line 420
    :cond_5
    const/4 v5, 0x1

    aget v5, v3, v5

    if-gt v5, p3, :cond_1

    .line 421
    const/4 v5, 0x1

    aget v5, v3, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    aput v5, v3, v6

    .line 422
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 420
    :cond_6
    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    .line 424
    :cond_7
    const/4 v5, 0x1

    aget v5, v3, v5

    if-gt v5, p3, :cond_2

    .line 427
    :goto_3
    if-gez v1, :cond_d

    .line 431
    :cond_8
    :goto_4
    const/4 v5, 0x0

    aget v5, v3, v5

    if-gt v5, p3, :cond_e

    .line 435
    add-int/lit8 v1, p1, 0x1

    .line 436
    :goto_5
    if-lt v1, v2, :cond_f

    .line 440
    :cond_9
    if-eq v1, v2, :cond_10

    .line 443
    :goto_6
    if-lt v1, v2, :cond_12

    .line 447
    :cond_a
    :goto_7
    if-ne v1, v2, :cond_13

    .line 448
    :cond_b
    const/high16 v5, 0x7fc00000    # NaNf

    return v5

    .line 427
    :cond_c
    const/4 v5, 0x0

    aget v5, v3, v5

    if-gt v5, p3, :cond_8

    .line 428
    const/4 v5, 0x0

    aget v5, v3, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    aput v5, v3, v6

    .line 429
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 427
    :cond_d
    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_4

    .line 432
    :cond_e
    const/high16 v5, 0x7fc00000    # NaNf

    return v5

    .line 436
    :cond_f
    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 437
    const/4 v5, 0x2

    aget v5, v3, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x2

    aput v5, v3, v6

    .line 438
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 441
    :cond_10
    const/high16 v5, 0x7fc00000    # NaNf

    return v5

    .line 443
    :cond_11
    const/4 v5, 0x3

    aget v5, v3, v5

    if-ge v5, p3, :cond_a

    .line 444
    const/4 v5, 0x3

    aget v5, v3, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x3

    aput v5, v3, v6

    .line 445
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 443
    :cond_12
    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_7

    .line 447
    :cond_13
    const/4 v5, 0x3

    aget v5, v3, v5

    if-ge v5, p3, :cond_b

    .line 450
    :goto_8
    if-lt v1, v2, :cond_16

    .line 454
    :cond_14
    :goto_9
    const/4 v5, 0x4

    aget v5, v3, v5

    if-ge v5, p3, :cond_17

    .line 460
    const/4 v5, 0x0

    aget v5, v3, v5

    const/4 v6, 0x1

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x2

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x3

    aget v6, v3, v6

    add-int/2addr v5, v6

    .line 461
    const/4 v6, 0x4

    aget v6, v3, v6

    .line 460
    add-int v4, v5, v6

    .line 462
    .local v4, "stateCountTotal":I
    sub-int v5, v4, p4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x5

    if-ge v5, p4, :cond_18

    .line 466
    invoke-static {v3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v5

    if-nez v5, :cond_19

    const/high16 v5, 0x7fc00000    # NaNf

    :goto_a
    return v5

    .line 450
    .end local v4    # "stateCountTotal":I
    :cond_15
    const/4 v5, 0x4

    aget v5, v3, v5

    if-ge v5, p3, :cond_14

    .line 451
    const/4 v5, 0x4

    aget v5, v3, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x4

    aput v5, v3, v6

    .line 452
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 450
    :cond_16
    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_15

    goto :goto_9

    .line 455
    :cond_17
    const/high16 v5, 0x7fc00000    # NaNf

    return v5

    .line 463
    .restart local v4    # "stateCountTotal":I
    :cond_18
    const/high16 v5, 0x7fc00000    # NaNf

    return v5

    .line 466
    :cond_19
    invoke-static {v3, v1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result v5

    goto :goto_a
.end method

.method private crossCheckVertical(IIII)F
    .locals 7
    .param p1, "startI"    # I
    .param p2, "centerJ"    # I
    .param p3, "maxCount"    # I
    .param p4, "originalStateCountTotal"    # I

    .prologue
    .line 335
    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 337
    .local v1, "image":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v2

    .line 338
    .local v2, "maxI":I
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object v3

    .line 341
    .local v3, "stateCount":[I
    move v0, p1

    .line 342
    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_3

    .line 346
    :cond_0
    if-ltz v0, :cond_4

    .line 349
    :goto_1
    if-gez v0, :cond_6

    .line 354
    :cond_1
    :goto_2
    if-gez v0, :cond_7

    .line 355
    :cond_2
    const/high16 v5, 0x7fc00000    # NaNf

    return v5

    .line 342
    :cond_3
    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 343
    const/4 v5, 0x2

    aget v5, v3, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x2

    aput v5, v3, v6

    .line 344
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 347
    :cond_4
    const/high16 v5, 0x7fc00000    # NaNf

    return v5

    .line 349
    :cond_5
    const/4 v5, 0x1

    aget v5, v3, v5

    if-gt v5, p3, :cond_1

    .line 350
    const/4 v5, 0x1

    aget v5, v3, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    aput v5, v3, v6

    .line 351
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 349
    :cond_6
    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    .line 354
    :cond_7
    const/4 v5, 0x1

    aget v5, v3, v5

    if-gt v5, p3, :cond_2

    .line 357
    :goto_3
    if-gez v0, :cond_d

    .line 361
    :cond_8
    :goto_4
    const/4 v5, 0x0

    aget v5, v3, v5

    if-gt v5, p3, :cond_e

    .line 366
    add-int/lit8 v0, p1, 0x1

    .line 367
    :goto_5
    if-lt v0, v2, :cond_f

    .line 371
    :cond_9
    if-eq v0, v2, :cond_10

    .line 374
    :goto_6
    if-lt v0, v2, :cond_12

    .line 378
    :cond_a
    :goto_7
    if-ne v0, v2, :cond_13

    .line 379
    :cond_b
    const/high16 v5, 0x7fc00000    # NaNf

    return v5

    .line 357
    :cond_c
    const/4 v5, 0x0

    aget v5, v3, v5

    if-gt v5, p3, :cond_8

    .line 358
    const/4 v5, 0x0

    aget v5, v3, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    aput v5, v3, v6

    .line 359
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 357
    :cond_d
    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_4

    .line 362
    :cond_e
    const/high16 v5, 0x7fc00000    # NaNf

    return v5

    .line 367
    :cond_f
    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 368
    const/4 v5, 0x2

    aget v5, v3, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x2

    aput v5, v3, v6

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 372
    :cond_10
    const/high16 v5, 0x7fc00000    # NaNf

    return v5

    .line 374
    :cond_11
    const/4 v5, 0x3

    aget v5, v3, v5

    if-ge v5, p3, :cond_a

    .line 375
    const/4 v5, 0x3

    aget v5, v3, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x3

    aput v5, v3, v6

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 374
    :cond_12
    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_7

    .line 378
    :cond_13
    const/4 v5, 0x3

    aget v5, v3, v5

    if-ge v5, p3, :cond_b

    .line 381
    :goto_8
    if-lt v0, v2, :cond_16

    .line 385
    :cond_14
    :goto_9
    const/4 v5, 0x4

    aget v5, v3, v5

    if-ge v5, p3, :cond_17

    .line 391
    const/4 v5, 0x0

    aget v5, v3, v5

    const/4 v6, 0x1

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x2

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x3

    aget v6, v3, v6

    add-int/2addr v5, v6

    .line 392
    const/4 v6, 0x4

    aget v6, v3, v6

    .line 391
    add-int v4, v5, v6

    .line 393
    .local v4, "stateCountTotal":I
    sub-int v5, v4, p4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x5

    mul-int/lit8 v6, p4, 0x2

    if-ge v5, v6, :cond_18

    .line 397
    invoke-static {v3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v5

    if-nez v5, :cond_19

    const/high16 v5, 0x7fc00000    # NaNf

    :goto_a
    return v5

    .line 381
    .end local v4    # "stateCountTotal":I
    :cond_15
    const/4 v5, 0x4

    aget v5, v3, v5

    if-ge v5, p3, :cond_14

    .line 382
    const/4 v5, 0x4

    aget v5, v3, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x4

    aput v5, v3, v6

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 381
    :cond_16
    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_15

    goto :goto_9

    .line 386
    :cond_17
    const/high16 v5, 0x7fc00000    # NaNf

    return v5

    .line 394
    .restart local v4    # "stateCountTotal":I
    :cond_18
    const/high16 v5, 0x7fc00000    # NaNf

    return v5

    .line 397
    :cond_19
    invoke-static {v3, v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result v5

    goto :goto_a
.end method

.method private findRowSkip()I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 528
    iget-object v4, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 529
    .local v3, "max":I
    if-le v3, v7, :cond_1

    .line 532
    const/4 v2, 0x0

    .line 533
    .local v2, "firstConfirmedCenter":Lcom/google/zxing/ResultPoint;
    iget-object v4, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .end local v2    # "firstConfirmedCenter":Lcom/google/zxing/ResultPoint;
    .local v0, "-l_4_R":Ljava/lang/Object;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 534
    .local v1, "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    .line 535
    if-eqz v2, :cond_2

    .line 543
    iput-boolean v7, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    .line 544
    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 545
    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 544
    sub-float/2addr v4, v5

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    return v4

    .line 530
    .end local v0    # "-l_4_R":Ljava/lang/Object;
    .end local v1    # "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_1
    return v6

    .line 536
    .restart local v0    # "-l_4_R":Ljava/lang/Object;
    .restart local v1    # "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_2
    move-object v2, v1

    .restart local v2    # "firstConfirmedCenter":Lcom/google/zxing/ResultPoint;
    goto :goto_0

    .line 549
    .end local v1    # "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v2    # "firstConfirmedCenter":Lcom/google/zxing/ResultPoint;
    :cond_3
    return v6
.end method

.method protected static foundPatternCross([I)Z
    .locals 10
    .param p0, "stateCount"    # [I

    .prologue
    const/4 v9, 0x1

    const/high16 v8, 0x40400000    # 3.0f

    const/4 v7, 0x0

    .line 200
    const/4 v4, 0x0

    .line 201
    .local v4, "totalModuleSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v5, 0x5

    if-ge v1, v5, :cond_1

    .line 202
    aget v0, p0, v1

    .line 203
    .local v0, "count":I
    if-eqz v0, :cond_0

    .line 206
    add-int/2addr v4, v0

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    :cond_0
    return v7

    .line 208
    .end local v0    # "count":I
    :cond_1
    const/4 v5, 0x7

    if-lt v4, v5, :cond_2

    .line 211
    int-to-float v5, v4

    const/high16 v6, 0x40e00000    # 7.0f

    div-float v3, v5, v6

    .line 212
    .local v3, "moduleSize":F
    const/high16 v5, 0x40000000    # 2.0f

    div-float v2, v3, v5

    .line 215
    .local v2, "maxVariance":F
    aget v5, p0, v7

    int-to-float v5, v5

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v2

    if-gez v5, :cond_3

    .line 216
    aget v5, p0, v9

    int-to-float v5, v5

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v2

    if-gez v5, :cond_3

    .line 217
    mul-float v5, v8, v3

    const/4 v6, 0x2

    aget v6, p0, v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float v6, v8, v2

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    .line 218
    const/4 v5, 0x3

    aget v5, p0, v5

    int-to-float v5, v5

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v2

    if-gez v5, :cond_3

    .line 219
    const/4 v5, 0x4

    aget v5, p0, v5

    int-to-float v5, v5

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 214
    cmpg-float v5, v5, v2

    if-gez v5, :cond_3

    return v9

    .line 209
    .end local v2    # "maxVariance":F
    .end local v3    # "moduleSize":F
    :cond_2
    return v7

    .line 214
    .restart local v2    # "maxVariance":F
    .restart local v3    # "moduleSize":F
    :cond_3
    return v7
.end method

.method private getCrossCheckStateCount()[I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 223
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    aput v2, v0, v2

    .line 224
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 225
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 226
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 227
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    const/4 v1, 0x4

    aput v2, v0, v1

    .line 228
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    return-object v0
.end method

.method private haveMultiplyConfirmedCenters()Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 558
    const/4 v3, 0x0

    .line 559
    .local v3, "confirmedCount":I
    const/4 v7, 0x0

    .line 560
    .local v7, "totalModuleSize":F
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    .line 561
    .local v4, "max":I
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "-l_5_R":Ljava/lang/Object;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 562
    .local v5, "pattern":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v5}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_0

    .line 563
    add-int/lit8 v3, v3, 0x1

    .line 564
    invoke-virtual {v5}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v8

    add-float/2addr v7, v8

    goto :goto_0

    .line 567
    .end local v5    # "pattern":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_1
    const/4 v8, 0x3

    if-lt v3, v8, :cond_2

    .line 574
    int-to-float v8, v4

    div-float v2, v7, v8

    .line 575
    .local v2, "average":F
    const/4 v6, 0x0

    .line 576
    .local v6, "totalDeviation":F
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "-l_7_R":Ljava/lang/Object;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 577
    .restart local v5    # "pattern":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v5}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v8

    sub-float/2addr v8, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    add-float/2addr v6, v8

    goto :goto_1

    .line 568
    .end local v1    # "-l_7_R":Ljava/lang/Object;
    .end local v2    # "average":F
    .end local v5    # "pattern":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v6    # "totalDeviation":F
    :cond_2
    return v10

    .line 579
    .restart local v1    # "-l_7_R":Ljava/lang/Object;
    .restart local v2    # "average":F
    .restart local v6    # "totalDeviation":F
    :cond_3
    const v8, 0x3d4ccccd    # 0.05f

    mul-float/2addr v8, v7

    cmpg-float v8, v6, v8

    if-gtz v8, :cond_4

    const/4 v8, 0x1

    return v8

    :cond_4
    return v10
.end method

.method private selectBestPatterns()[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 590
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v12

    .line 591
    .local v12, "startSize":I
    const/4 v15, 0x3

    if-lt v12, v15, :cond_1

    .line 597
    const/4 v15, 0x3

    if-gt v12, v15, :cond_2

    .line 622
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    const/16 v16, 0x3

    move/from16 v0, v16

    if-gt v15, v0, :cond_5

    .line 637
    :goto_0
    const/4 v15, 0x3

    new-array v0, v15, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 638
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v15, v16, v17

    const/16 v17, 0x1

    .line 639
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v15, v16, v17

    const/16 v17, 0x2

    .line 640
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v15, v16, v17

    .line 637
    return-object v16

    .line 593
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v15

    throw v15

    .line 599
    :cond_2
    const/4 v14, 0x0

    .line 600
    .local v14, "totalModuleSize":F
    const/4 v11, 0x0

    .line 601
    .local v11, "square":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "-l_5_R":Ljava/lang/Object;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 602
    .local v5, "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v5}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v10

    .line 603
    .local v10, "size":F
    add-float/2addr v14, v10

    .line 604
    mul-float v15, v10, v10

    add-float/2addr v11, v15

    goto :goto_1

    .line 606
    .end local v5    # "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v10    # "size":F
    :cond_3
    int-to-float v15, v12

    div-float v4, v14, v15

    .line 607
    .local v4, "average":F
    int-to-float v15, v12

    div-float v15, v11, v15

    mul-float v16, v4, v4

    sub-float v15, v15, v16

    float-to-double v0, v15

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v13, v0

    .line 609
    .local v13, "stdDev":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    new-instance v16, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v4, v1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;-><init>(FLcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;)V

    invoke-static/range {v15 .. v16}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 611
    const v15, 0x3e4ccccd    # 0.2f

    mul-float/2addr v15, v4

    invoke-static {v15, v13}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 613
    .local v7, "limit":F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v6, v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    const/16 v16, 0x3

    move/from16 v0, v16

    if-le v15, v0, :cond_0

    .line 614
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 615
    .local v8, "pattern":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v15

    sub-float/2addr v15, v4

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    cmpl-float v15, v15, v7

    if-lez v15, :cond_4

    .line 616
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v15, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 617
    add-int/lit8 v6, v6, -0x1

    .line 613
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 625
    .end local v3    # "-l_5_R":Ljava/lang/Object;
    .end local v4    # "average":F
    .end local v6    # "i":I
    .end local v7    # "limit":F
    .end local v8    # "pattern":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v11    # "square":F
    .end local v13    # "stdDev":F
    .end local v14    # "totalModuleSize":F
    :cond_5
    const/4 v14, 0x0

    .line 626
    .restart local v14    # "totalModuleSize":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "-l_4_R":Ljava/lang/Object;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 627
    .local v9, "possibleCenter":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v9}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v15

    add-float/2addr v14, v15

    goto :goto_3

    .line 630
    .end local v9    # "possibleCenter":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    int-to-float v15, v15

    div-float v4, v14, v15

    .line 632
    .restart local v4    # "average":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    new-instance v16, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v4, v1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;-><init>(FLcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;)V

    invoke-static/range {v15 .. v16}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 634
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    const/16 v17, 0x3

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-interface {v15, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->clear()V

    goto/16 :goto_0
.end method


# virtual methods
.method final find(Ljava/util/Map;)Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/qrcode/detector/FinderPatternInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    if-nez p1, :cond_4

    :cond_0
    const/4 v13, 0x0

    .line 78
    .local v13, "tryHarder":Z
    :goto_0
    if-nez p1, :cond_5

    :cond_1
    const/4 v10, 0x0

    .line 79
    .local v10, "pureBarcode":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v14}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v7

    .line 80
    .local v7, "maxI":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v14}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v8

    .line 88
    .local v8, "maxJ":I
    mul-int/lit8 v14, v7, 0x3

    div-int/lit16 v5, v14, 0xe4

    .line 89
    .local v5, "iSkip":I
    const/4 v14, 0x3

    if-ge v5, v14, :cond_6

    .line 90
    :cond_2
    const/4 v5, 0x3

    .line 93
    :goto_2
    const/4 v3, 0x0

    .line 94
    .local v3, "done":Z
    const/4 v14, 0x5

    new-array v12, v14, [I

    .line 95
    .local v12, "stateCount":[I
    add-int/lit8 v4, v5, -0x1

    .local v4, "i":I
    :goto_3
    if-lt v4, v7, :cond_7

    .line 180
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->selectBestPatterns()[Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v9

    .line 181
    .local v9, "patternInfo":[Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-static {v9}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 183
    new-instance v14, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-direct {v14, v9}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    return-object v14

    .line 77
    .end local v3    # "done":Z
    .end local v4    # "i":I
    .end local v5    # "iSkip":I
    .end local v7    # "maxI":I
    .end local v8    # "maxJ":I
    .end local v9    # "patternInfo":[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v10    # "pureBarcode":Z
    .end local v12    # "stateCount":[I
    .end local v13    # "tryHarder":Z
    :cond_4
    sget-object v14, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    .line 78
    .restart local v13    # "tryHarder":Z
    :cond_5
    sget-object v14, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    .line 89
    .restart local v5    # "iSkip":I
    .restart local v7    # "maxI":I
    .restart local v8    # "maxJ":I
    .restart local v10    # "pureBarcode":Z
    :cond_6
    if-nez v13, :cond_2

    goto :goto_2

    .line 95
    .restart local v3    # "done":Z
    .restart local v4    # "i":I
    .restart local v12    # "stateCount":[I
    :cond_7
    if-nez v3, :cond_3

    .line 97
    const/4 v14, 0x0

    const/4 v15, 0x0

    aput v14, v12, v15

    .line 98
    const/4 v14, 0x0

    const/4 v15, 0x1

    aput v14, v12, v15

    .line 99
    const/4 v14, 0x0

    const/4 v15, 0x2

    aput v14, v12, v15

    .line 100
    const/4 v14, 0x0

    const/4 v15, 0x3

    aput v14, v12, v15

    .line 101
    const/4 v14, 0x0

    const/4 v15, 0x4

    aput v14, v12, v15

    .line 102
    const/4 v2, 0x0

    .line 103
    .local v2, "currentState":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_4
    if-ge v6, v8, :cond_10

    .line 104
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v14, v6, v4}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v14

    if-nez v14, :cond_8

    .line 111
    and-int/lit8 v14, v2, 0x1

    if-eqz v14, :cond_a

    .line 164
    aget v14, v12, v2

    add-int/lit8 v14, v14, 0x1

    aput v14, v12, v2

    .line 103
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 106
    :cond_8
    and-int/lit8 v14, v2, 0x1

    const/4 v15, 0x1

    if-eq v14, v15, :cond_9

    .line 109
    :goto_6
    aget v14, v12, v2

    add-int/lit8 v14, v14, 0x1

    aput v14, v12, v2

    goto :goto_5

    .line 107
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 112
    :cond_a
    const/4 v14, 0x4

    if-eq v2, v14, :cond_b

    .line 161
    add-int/lit8 v2, v2, 0x1

    aget v14, v12, v2

    add-int/lit8 v14, v14, 0x1

    aput v14, v12, v2

    goto :goto_5

    .line 113
    :cond_b
    invoke-static {v12}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v14

    if-nez v14, :cond_c

    .line 153
    const/4 v14, 0x2

    aget v14, v12, v14

    const/4 v15, 0x0

    aput v14, v12, v15

    .line 154
    const/4 v14, 0x3

    aget v14, v12, v14

    const/4 v15, 0x1

    aput v14, v12, v15

    .line 155
    const/4 v14, 0x4

    aget v14, v12, v14

    const/4 v15, 0x2

    aput v14, v12, v15

    .line 156
    const/4 v14, 0x1

    const/4 v15, 0x3

    aput v14, v12, v15

    .line 157
    const/4 v14, 0x0

    const/4 v15, 0x4

    aput v14, v12, v15

    .line 158
    const/4 v2, 0x3

    goto :goto_5

    .line 114
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v4, v6, v10}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([IIIZ)Z

    move-result v1

    .line 115
    .local v1, "confirmed":Z
    if-nez v1, :cond_d

    .line 137
    const/4 v14, 0x2

    aget v14, v12, v14

    const/4 v15, 0x0

    aput v14, v12, v15

    .line 138
    const/4 v14, 0x3

    aget v14, v12, v14

    const/4 v15, 0x1

    aput v14, v12, v15

    .line 139
    const/4 v14, 0x4

    aget v14, v12, v14

    const/4 v15, 0x2

    aput v14, v12, v15

    .line 140
    const/4 v14, 0x1

    const/4 v15, 0x3

    aput v14, v12, v15

    .line 141
    const/4 v14, 0x0

    const/4 v15, 0x4

    aput v14, v12, v15

    .line 142
    const/4 v2, 0x3

    goto :goto_5

    .line 118
    :cond_d
    const/4 v5, 0x2

    .line 119
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    if-nez v14, :cond_e

    .line 122
    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->findRowSkip()I

    move-result v11

    .line 123
    .local v11, "rowSkip":I
    const/4 v14, 0x2

    aget v14, v12, v14

    if-gt v11, v14, :cond_f

    .line 146
    .end local v11    # "rowSkip":I
    :goto_7
    const/4 v2, 0x0

    .line 147
    const/4 v14, 0x0

    const/4 v15, 0x0

    aput v14, v12, v15

    .line 148
    const/4 v14, 0x0

    const/4 v15, 0x1

    aput v14, v12, v15

    .line 149
    const/4 v14, 0x0

    const/4 v15, 0x2

    aput v14, v12, v15

    .line 150
    const/4 v14, 0x0

    const/4 v15, 0x3

    aput v14, v12, v15

    .line 151
    const/4 v14, 0x0

    const/4 v15, 0x4

    aput v14, v12, v15

    goto/16 :goto_5

    .line 120
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->haveMultiplyConfirmedCenters()Z

    move-result v3

    goto :goto_7

    .line 132
    .restart local v11    # "rowSkip":I
    :cond_f
    const/4 v14, 0x2

    aget v14, v12, v14

    sub-int v14, v11, v14

    add-int/lit8 v14, v14, -0x2

    add-int/2addr v4, v14

    .line 133
    add-int/lit8 v6, v8, -0x1

    goto :goto_7

    .line 168
    .end local v1    # "confirmed":Z
    .end local v11    # "rowSkip":I
    :cond_10
    invoke-static {v12}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v14

    if-nez v14, :cond_12

    .line 95
    :cond_11
    :goto_8
    add-int/2addr v4, v5

    goto/16 :goto_3

    .line 169
    :cond_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v4, v8, v10}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([IIIZ)Z

    move-result v1

    .line 170
    .restart local v1    # "confirmed":Z
    if-eqz v1, :cond_11

    .line 171
    const/4 v14, 0x0

    aget v5, v12, v14

    .line 172
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    if-eqz v14, :cond_11

    .line 174
    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->haveMultiplyConfirmedCenters()Z

    move-result v3

    goto :goto_8
.end method

.method protected final handlePossibleCenter([IIIZ)Z
    .locals 11
    .param p1, "stateCount"    # [I
    .param p2, "i"    # I
    .param p3, "j"    # I
    .param p4, "pureBarcode"    # Z

    .prologue
    .line 488
    const/4 v8, 0x0

    aget v8, p1, v8

    const/4 v9, 0x1

    aget v9, p1, v9

    add-int/2addr v8, v9

    const/4 v9, 0x2

    aget v9, p1, v9

    add-int/2addr v8, v9

    const/4 v9, 0x3

    aget v9, p1, v9

    add-int/2addr v8, v9

    .line 489
    const/4 v9, 0x4

    aget v9, p1, v9

    .line 488
    add-int v7, v8, v9

    .line 490
    .local v7, "stateCountTotal":I
    invoke-static {p1, p3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result v2

    .line 491
    .local v2, "centerJ":F
    float-to-int v8, v2

    const/4 v9, 0x2

    aget v9, p1, v9

    invoke-direct {p0, p2, v8, v9, v7}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckVertical(IIII)F

    move-result v1

    .line 492
    .local v1, "centerI":F
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 518
    :cond_0
    :goto_0
    const/4 v8, 0x0

    return v8

    .line 494
    :cond_1
    float-to-int v8, v2

    float-to-int v9, v1

    const/4 v10, 0x2

    aget v10, p1, v10

    invoke-direct {p0, v8, v9, v10, v7}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckHorizontal(IIII)F

    move-result v2

    .line 495
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_0

    .line 496
    if-nez p4, :cond_3

    .line 497
    :cond_2
    int-to-float v8, v7

    const/high16 v9, 0x40e00000    # 7.0f

    div-float v3, v8, v9

    .line 498
    .local v3, "estimatedModuleSize":F
    const/4 v4, 0x0

    .line 499
    .local v4, "found":Z
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_1
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_5

    .line 500
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 502
    .local v0, "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->aboutEquals(FFF)Z

    move-result v8

    if-nez v8, :cond_4

    .line 499
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 496
    .end local v0    # "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v3    # "estimatedModuleSize":F
    .end local v4    # "found":Z
    .end local v5    # "index":I
    :cond_3
    float-to-int v8, v1

    float-to-int v9, v2

    const/4 v10, 0x2

    aget v10, p1, v10

    invoke-direct {p0, v8, v9, v10, v7}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckDiagonal(IIII)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_0

    .line 503
    .restart local v0    # "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .restart local v3    # "estimatedModuleSize":F
    .restart local v4    # "found":Z
    .restart local v5    # "index":I
    :cond_4
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;->combineEstimate(FFF)Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v9

    invoke-interface {v8, v5, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 504
    const/4 v4, 0x1

    .line 508
    .end local v0    # "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_5
    if-eqz v4, :cond_7

    .line 515
    :cond_6
    :goto_2
    const/4 v8, 0x1

    return v8

    .line 509
    :cond_7
    new-instance v6, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-direct {v6, v2, v1, v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;-><init>(FFF)V

    .line 510
    .local v6, "point":Lcom/google/zxing/qrcode/detector/FinderPattern;
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    if-eqz v8, :cond_6

    .line 512
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    invoke-interface {v8, v6}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    goto :goto_2
.end method
