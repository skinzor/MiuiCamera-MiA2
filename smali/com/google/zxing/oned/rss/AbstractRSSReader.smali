.class public abstract Lcom/google/zxing/oned/rss/AbstractRSSReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "AbstractRSSReader.java"


# instance fields
.field private final dataCharacterCounters:[I

.field private final decodeFinderCounters:[I

.field private final evenCounts:[I

.field private final evenRoundingErrors:[F

.field private final oddCounts:[I

.field private final oddRoundingErrors:[F


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 37
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 38
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->decodeFinderCounters:[I

    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->dataCharacterCounters:[I

    .line 40
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->oddRoundingErrors:[F

    .line 41
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->evenRoundingErrors:[F

    .line 42
    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->dataCharacterCounters:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->oddCounts:[I

    .line 43
    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->dataCharacterCounters:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->evenCounts:[I

    .line 44
    return-void
.end method

.method protected static count([I)I
    .locals 5
    .param p0, "array"    # [I

    .prologue
    .line 82
    const/4 v4, 0x0

    .line 83
    .local v4, "count":I
    move-object v2, p0

    .local v2, "-l_5_R":Ljava/lang/Object;
    array-length v1, p0

    .local v1, "-l_4_I":I
    const/4 v0, 0x0

    .local v0, "-l_3_I":I
    :goto_0
    if-ge v0, v1, :cond_0

    aget v3, p0, v0

    .line 84
    .local v3, "a":I
    add-int/2addr v4, v3

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    .end local v3    # "a":I
    :cond_0
    return v4
.end method

.method protected static decrement([I[F)V
    .locals 4
    .param p0, "array"    # [I
    .param p1, "errors"    # [F

    .prologue
    .line 102
    const/4 v2, 0x0

    .line 103
    .local v2, "index":I
    const/4 v3, 0x0

    aget v0, p1, v3

    .line 104
    .local v0, "biggestError":F
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 105
    aget v3, p1, v1

    cmpg-float v3, v3, v0

    if-gez v3, :cond_0

    .line 106
    aget v0, p1, v1

    .line 107
    move v2, v1

    .line 104
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    :cond_1
    aget v3, p0, v2

    add-int/lit8 v3, v3, -0x1

    aput v3, p0, v2

    .line 111
    return-void
.end method

.method protected static increment([I[F)V
    .locals 4
    .param p0, "array"    # [I
    .param p1, "errors"    # [F

    .prologue
    .line 90
    const/4 v2, 0x0

    .line 91
    .local v2, "index":I
    const/4 v3, 0x0

    aget v0, p1, v3

    .line 92
    .local v0, "biggestError":F
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 93
    aget v3, p1, v1

    cmpl-float v3, v3, v0

    if-lez v3, :cond_0

    .line 94
    aget v0, p1, v1

    .line 95
    move v2, v1

    .line 92
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    :cond_1
    aget v3, p0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, p0, v2

    .line 99
    return-void
.end method

.method protected static isFinderPattern([I)Z
    .locals 13
    .param p0, "counters"    # [I

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 114
    aget v9, p0, v11

    aget v10, p0, v12

    add-int v4, v9, v10

    .line 115
    .local v4, "firstTwoSum":I
    const/4 v9, 0x2

    aget v9, p0, v9

    add-int/2addr v9, v4

    const/4 v10, 0x3

    aget v10, p0, v10

    add-int v8, v9, v10

    .line 116
    .local v8, "sum":I
    int-to-float v9, v4

    int-to-float v10, v8

    div-float v7, v9, v10

    .line 117
    .local v7, "ratio":F
    const v9, 0x3f4aaaab

    cmpl-float v9, v7, v9

    if-ltz v9, :cond_4

    const v9, 0x3f649249

    cmpg-float v9, v7, v9

    if-gtz v9, :cond_4

    .line 119
    const v6, 0x7fffffff

    .line 120
    .local v6, "minCounter":I
    const/high16 v5, -0x80000000

    .line 121
    .local v5, "maxCounter":I
    move-object v2, p0

    .local v2, "-l_9_R":Ljava/lang/Object;
    array-length v1, p0

    .local v1, "-l_8_I":I
    const/4 v0, 0x0

    .local v0, "-l_7_I":I
    :goto_0
    if-ge v0, v1, :cond_2

    aget v3, p0, v0

    .line 122
    .local v3, "counter":I
    if-gt v3, v5, :cond_0

    .line 125
    :goto_1
    if-lt v3, v6, :cond_1

    .line 121
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_0
    move v5, v3

    goto :goto_1

    .line 126
    :cond_1
    move v6, v3

    goto :goto_2

    .line 129
    .end local v3    # "counter":I
    :cond_2
    mul-int/lit8 v9, v6, 0xa

    if-lt v5, v9, :cond_3

    return v11

    :cond_3
    return v12

    .line 131
    .end local v0    # "-l_7_I":I
    .end local v1    # "-l_8_I":I
    .end local v2    # "-l_9_R":Ljava/lang/Object;
    .end local v5    # "maxCounter":I
    .end local v6    # "minCounter":I
    :cond_4
    return v11
.end method

.method protected static parseFinderValue([I[[I)I
    .locals 3
    .param p0, "counters"    # [I
    .param p1, "finderPatterns"    # [[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x0

    .local v0, "value":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 73
    aget-object v1, p1, v0

    const v2, 0x3ee66666    # 0.45f

    invoke-static {p0, v1, v2}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->patternMatchVariance([I[IF)F

    move-result v1

    .line 74
    const v2, 0x3e4ccccd    # 0.2f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 75
    return v0

    .line 72
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method protected final getDataCharacterCounters()[I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->dataCharacterCounters:[I

    return-object v0
.end method

.method protected final getDecodeFinderCounters()[I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->decodeFinderCounters:[I

    return-object v0
.end method

.method protected final getEvenCounts()[I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->evenCounts:[I

    return-object v0
.end method

.method protected final getEvenRoundingErrors()[F
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->evenRoundingErrors:[F

    return-object v0
.end method

.method protected final getOddCounts()[I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->oddCounts:[I

    return-object v0
.end method

.method protected final getOddRoundingErrors()[F
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->oddRoundingErrors:[F

    return-object v0
.end method
