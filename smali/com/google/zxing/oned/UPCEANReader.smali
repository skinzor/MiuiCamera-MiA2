.class public abstract Lcom/google/zxing/oned/UPCEANReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "UPCEANReader.java"


# static fields
.field static final L_AND_G_PATTERNS:[[I

.field static final L_PATTERNS:[[I

.field static final MIDDLE_PATTERN:[I

.field static final START_END_PATTERN:[I


# instance fields
.field private final decodeRowStringBuffer:Ljava/lang/StringBuilder;

.field private final eanManSupport:Lcom/google/zxing/oned/EANManufacturerOrgSupport;

.field private final extensionReader:Lcom/google/zxing/oned/UPCEANExtensionSupport;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 53
    new-array v4, v9, [I

    aput v7, v4, v10

    aput v7, v4, v7

    aput v7, v4, v8

    sput-object v4, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    .line 58
    const/4 v4, 0x5

    new-array v4, v4, [I

    aput v7, v4, v10

    aput v7, v4, v7

    aput v7, v4, v8

    aput v7, v4, v9

    aput v7, v4, v11

    sput-object v4, Lcom/google/zxing/oned/UPCEANReader;->MIDDLE_PATTERN:[I

    .line 63
    const/16 v4, 0xa

    new-array v4, v4, [[I

    .line 64
    new-array v5, v11, [I

    aput v9, v5, v10

    aput v8, v5, v7

    aput v7, v5, v8

    aput v7, v5, v9

    aput-object v5, v4, v10

    .line 65
    new-array v5, v11, [I

    aput v8, v5, v10

    aput v8, v5, v7

    aput v8, v5, v8

    aput v7, v5, v9

    aput-object v5, v4, v7

    .line 66
    new-array v5, v11, [I

    aput v8, v5, v10

    aput v7, v5, v7

    aput v8, v5, v8

    aput v8, v5, v9

    aput-object v5, v4, v8

    .line 67
    new-array v5, v11, [I

    aput v7, v5, v10

    aput v11, v5, v7

    aput v7, v5, v8

    aput v7, v5, v9

    aput-object v5, v4, v9

    .line 68
    new-array v5, v11, [I

    aput v7, v5, v10

    aput v7, v5, v7

    aput v9, v5, v8

    aput v8, v5, v9

    aput-object v5, v4, v11

    const/4 v5, 0x5

    .line 69
    new-array v6, v11, [I

    aput v7, v6, v10

    aput v8, v6, v7

    aput v9, v6, v8

    aput v7, v6, v9

    aput-object v6, v4, v5

    const/4 v5, 0x6

    .line 70
    new-array v6, v11, [I

    aput v7, v6, v10

    aput v7, v6, v7

    aput v7, v6, v8

    aput v11, v6, v9

    aput-object v6, v4, v5

    const/4 v5, 0x7

    .line 71
    new-array v6, v11, [I

    aput v7, v6, v10

    aput v9, v6, v7

    aput v7, v6, v8

    aput v8, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x8

    .line 72
    new-array v6, v11, [I

    aput v7, v6, v10

    aput v8, v6, v7

    aput v7, v6, v8

    aput v9, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x9

    .line 73
    new-array v6, v11, [I

    aput v9, v6, v10

    aput v7, v6, v7

    aput v7, v6, v8

    aput v8, v6, v9

    aput-object v6, v4, v5

    .line 63
    sput-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    .line 82
    const/16 v4, 0x14

    new-array v4, v4, [[I

    sput-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    .line 83
    sget-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    sget-object v5, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    const/16 v6, 0xa

    invoke-static {v4, v10, v5, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    const/16 v0, 0xa

    .local v0, "i":I
    :goto_0
    const/16 v4, 0x14

    if-ge v0, v4, :cond_1

    .line 85
    sget-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    add-int/lit8 v5, v0, -0xa

    aget-object v3, v4, v5

    .line 86
    .local v3, "widths":[I
    array-length v4, v3

    new-array v2, v4, [I

    .line 87
    .local v2, "reversedWidths":[I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 88
    array-length v4, v3

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    aget v4, v3, v4

    aput v4, v2, v1

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 90
    :cond_0
    sget-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    aput-object v2, v4, v0

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    .end local v1    # "j":I
    .end local v2    # "reversedWidths":[I
    .end local v3    # "widths":[I
    :cond_1
    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANReader;->decodeRowStringBuffer:Ljava/lang/StringBuilder;

    .line 100
    new-instance v0, Lcom/google/zxing/oned/UPCEANExtensionSupport;

    invoke-direct {v0}, Lcom/google/zxing/oned/UPCEANExtensionSupport;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANReader;->extensionReader:Lcom/google/zxing/oned/UPCEANExtensionSupport;

    .line 101
    new-instance v0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;

    invoke-direct {v0}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANReader;->eanManSupport:Lcom/google/zxing/oned/EANManufacturerOrgSupport;

    .line 102
    return-void
.end method

.method static checkStandardUPCEANChecksum(Ljava/lang/CharSequence;)Z
    .locals 7
    .param p0, "s"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x9

    const/4 v5, 0x0

    .line 261
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 262
    .local v2, "length":I
    if-eqz v2, :cond_1

    .line 266
    const/4 v3, 0x0

    .line 267
    .local v3, "sum":I
    add-int/lit8 v1, v2, -0x2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 268
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v0, v4, -0x30

    .line 269
    .local v0, "digit":I
    if-gez v0, :cond_2

    .line 270
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    .line 263
    .end local v0    # "digit":I
    .end local v1    # "i":I
    .end local v3    # "sum":I
    :cond_1
    return v5

    .line 269
    .restart local v0    # "digit":I
    .restart local v1    # "i":I
    .restart local v3    # "sum":I
    :cond_2
    if-gt v0, v6, :cond_0

    .line 272
    add-int/2addr v3, v0

    .line 267
    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    .line 274
    .end local v0    # "digit":I
    :cond_3
    mul-int/lit8 v3, v3, 0x3

    .line 275
    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_6

    .line 276
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v0, v4, -0x30

    .line 277
    .restart local v0    # "digit":I
    if-gez v0, :cond_5

    .line 278
    :cond_4
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    .line 277
    :cond_5
    if-gt v0, v6, :cond_4

    .line 280
    add-int/2addr v3, v0

    .line 275
    add-int/lit8 v1, v1, -0x2

    goto :goto_1

    .line 282
    .end local v0    # "digit":I
    :cond_6
    rem-int/lit8 v4, v3, 0xa

    if-eqz v4, :cond_7

    return v5

    :cond_7
    const/4 v4, 0x1

    return v4
.end method

.method static decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I
    .locals 7
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "counters"    # [I
    .param p2, "rowOffset"    # I
    .param p3, "patterns"    # [[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 355
    invoke-static {p0, p2, p1}, Lcom/google/zxing/oned/UPCEANReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 356
    const v1, 0x3ef5c28f    # 0.48f

    .line 357
    .local v1, "bestVariance":F
    const/4 v0, -0x1

    .line 358
    .local v0, "bestMatch":I
    array-length v3, p3

    .line 359
    .local v3, "max":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 360
    aget-object v4, p3, v2

    .line 361
    .local v4, "pattern":[I
    const v6, 0x3f333333    # 0.7f

    invoke-static {p1, v4, v6}, Lcom/google/zxing/oned/UPCEANReader;->patternMatchVariance([I[IF)F

    move-result v5

    .line 362
    .local v5, "variance":F
    cmpg-float v6, v5, v1

    if-gez v6, :cond_0

    .line 363
    move v1, v5

    .line 364
    move v0, v2

    .line 359
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 367
    .end local v4    # "pattern":[I
    .end local v5    # "variance":F
    :cond_1
    if-gez v0, :cond_2

    .line 370
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6

    .line 368
    :cond_2
    return v0
.end method

.method static findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I
    .locals 1
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "rowOffset"    # I
    .param p2, "whiteFirst"    # Z
    .param p3, "pattern"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 293
    array-length v0, p3

    new-array v0, v0, [I

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/zxing/oned/UPCEANReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I[I)[I

    move-result-object v0

    return-object v0
.end method

.method private static findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I[I)[I
    .locals 11
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "rowOffset"    # I
    .param p2, "whiteFirst"    # Z
    .param p3, "pattern"    # [I
    .param p4, "counters"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 312
    array-length v2, p3

    .line 313
    .local v2, "patternLength":I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    .line 314
    .local v4, "width":I
    move v1, p2

    .line 315
    .local v1, "isWhite":Z
    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result p1

    .line 316
    :goto_0
    const/4 v0, 0x0

    .line 317
    .local v0, "counterPosition":I
    move v3, p1

    .line 318
    .local v3, "patternStart":I
    move v5, p1

    .local v5, "x":I
    :goto_1
    if-ge v5, v4, :cond_5

    .line 319
    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v8

    xor-int/2addr v8, v1

    if-nez v8, :cond_1

    .line 322
    add-int/lit8 v8, v2, -0x1

    if-eq v0, v8, :cond_2

    .line 332
    add-int/lit8 v0, v0, 0x1

    .line 334
    :goto_2
    aput v6, p4, v0

    .line 335
    if-nez v1, :cond_4

    move v1, v6

    .line 318
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 315
    .end local v0    # "counterPosition":I
    .end local v3    # "patternStart":I
    .end local v5    # "x":I
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result p1

    goto :goto_0

    .line 320
    .restart local v0    # "counterPosition":I
    .restart local v3    # "patternStart":I
    .restart local v5    # "x":I
    :cond_1
    aget v8, p4, v0

    add-int/lit8 v8, v8, 0x1

    aput v8, p4, v0

    goto :goto_3

    .line 323
    :cond_2
    const v8, 0x3f333333    # 0.7f

    invoke-static {p4, p3, v8}, Lcom/google/zxing/oned/UPCEANReader;->patternMatchVariance([I[IF)F

    move-result v8

    const v9, 0x3ef5c28f    # 0.48f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_3

    .line 324
    new-array v8, v10, [I

    aput v3, v8, v7

    aput v5, v8, v6

    return-object v8

    .line 326
    :cond_3
    aget v8, p4, v7

    aget v9, p4, v6

    add-int/2addr v8, v9

    add-int/2addr v3, v8

    .line 327
    add-int/lit8 v8, v2, -0x2

    invoke-static {p4, v10, p4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    add-int/lit8 v8, v2, -0x2

    aput v7, p4, v8

    .line 329
    add-int/lit8 v8, v2, -0x1

    aput v7, p4, v8

    .line 330
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    move v1, v7

    .line 335
    goto :goto_3

    .line 338
    :cond_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6
.end method

.method static findStartGuardPattern(Lcom/google/zxing/common/BitArray;)[I
    .locals 8
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 105
    const/4 v1, 0x0

    .line 106
    .local v1, "foundStart":Z
    const/4 v5, 0x0

    .line 107
    .local v5, "startRange":[I
    const/4 v2, 0x0

    .line 108
    .local v2, "nextStart":I
    sget-object v6, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    array-length v6, v6

    new-array v0, v6, [I

    .line 109
    .end local v5    # "startRange":[I
    .local v0, "counters":[I
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 110
    sget-object v6, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    array-length v6, v6

    invoke-static {v0, v7, v6, v7}, Ljava/util/Arrays;->fill([IIII)V

    .line 111
    sget-object v6, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    invoke-static {p0, v2, v7, v6, v0}, Lcom/google/zxing/oned/UPCEANReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I[I)[I

    move-result-object v5

    .line 112
    .restart local v5    # "startRange":[I
    aget v4, v5, v7

    .line 113
    .local v4, "start":I
    const/4 v6, 0x1

    aget v2, v5, v6

    .line 117
    sub-int v6, v2, v4

    sub-int v3, v4, v6

    .line 118
    .local v3, "quietStart":I
    if-ltz v3, :cond_0

    .line 119
    invoke-virtual {p0, v3, v4, v7}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v1

    goto :goto_0

    .line 122
    .end local v3    # "quietStart":I
    .end local v4    # "start":I
    .end local v5    # "startRange":[I
    :cond_1
    return-object v5
.end method


# virtual methods
.method checkChecksum(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 249
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEANReader;->checkStandardUPCEANChecksum(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method decodeEnd(Lcom/google/zxing/common/BitArray;I)[I
    .locals 2
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "endStart"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 286
    sget-object v0, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0}, Lcom/google/zxing/oned/UPCEANReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object v0

    return-object v0
.end method

.method protected abstract decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 1
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
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 128
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    invoke-static {p2}, Lcom/google/zxing/oned/UPCEANReader;->findStartGuardPattern(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/zxing/oned/UPCEANReader;->decodeRow(ILcom/google/zxing/common/BitArray;[ILjava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;[ILjava/util/Map;)Lcom/google/zxing/Result;
    .locals 29
    .param p1, "rowNumber"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
    .param p3, "startGuardRange"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "[I",
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

    .prologue
    .line 151
    .local p4, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    if-eqz p4, :cond_1

    .line 152
    sget-object v25, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/google/zxing/ResultPointCallback;

    move-object/from16 v21, v25

    .line 154
    .local v21, "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    :goto_0
    if-nez v21, :cond_2

    .line 160
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/oned/UPCEANReader;->decodeRowStringBuffer:Ljava/lang/StringBuilder;

    move-object/from16 v20, v0

    .line 161
    .local v20, "result":Ljava/lang/StringBuilder;
    const/16 v25, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 162
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/zxing/oned/UPCEANReader;->decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I

    move-result v13

    .line 164
    .local v13, "endStart":I
    if-nez v21, :cond_3

    .line 170
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v13}, Lcom/google/zxing/oned/UPCEANReader;->decodeEnd(Lcom/google/zxing/common/BitArray;I)[I

    move-result-object v12

    .line 172
    .local v12, "endRange":[I
    if-nez v21, :cond_4

    .line 181
    :goto_3
    const/16 v25, 0x1

    aget v11, v12, v25

    .line 182
    .local v11, "end":I
    const/16 v25, 0x0

    aget v25, v12, v25

    sub-int v25, v11, v25

    add-int v19, v11, v25

    .line 183
    .local v19, "quietEnd":I
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v25

    move/from16 v0, v19

    move/from16 v1, v25

    if-lt v0, v1, :cond_5

    .line 184
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v25

    throw v25

    .line 151
    .end local v11    # "end":I
    .end local v12    # "endRange":[I
    .end local v13    # "endStart":I
    .end local v19    # "quietEnd":I
    .end local v20    # "result":Ljava/lang/StringBuilder;
    .end local v21    # "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    :cond_1
    const/16 v21, 0x0

    goto :goto_0

    .line 155
    .restart local v21    # "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    :cond_2
    new-instance v25, Lcom/google/zxing/ResultPoint;

    .line 156
    const/16 v26, 0x0

    aget v26, p3, v26

    const/16 v27, 0x1

    aget v27, p3, v27

    add-int v26, v26, v27

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    div-float v26, v26, v27

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v27, v0

    invoke-direct/range {v25 .. v27}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 155
    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    goto :goto_1

    .line 165
    .restart local v13    # "endStart":I
    .restart local v20    # "result":Ljava/lang/StringBuilder;
    :cond_3
    new-instance v25, Lcom/google/zxing/ResultPoint;

    .line 166
    int-to-float v0, v13

    move/from16 v26, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v27, v0

    invoke-direct/range {v25 .. v27}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 165
    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    goto :goto_2

    .line 173
    .restart local v12    # "endRange":[I
    :cond_4
    new-instance v25, Lcom/google/zxing/ResultPoint;

    .line 174
    const/16 v26, 0x0

    aget v26, v12, v26

    const/16 v27, 0x1

    aget v27, v12, v27

    add-int v26, v26, v27

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    div-float v26, v26, v27

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v27, v0

    invoke-direct/range {v25 .. v27}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 173
    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    goto :goto_3

    .line 183
    .restart local v11    # "end":I
    .restart local v19    # "quietEnd":I
    :cond_5
    const/16 v25, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v25

    invoke-virtual {v0, v11, v1, v2}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 187
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 189
    .local v22, "resultString":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v25

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_8

    .line 192
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/zxing/oned/UPCEANReader;->checkChecksum(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 196
    const/16 v25, 0x1

    aget v25, p3, v25

    const/16 v26, 0x0

    aget v26, p3, v26

    add-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x40000000    # 2.0f

    div-float v17, v25, v26

    .line 197
    .local v17, "left":F
    const/16 v25, 0x1

    aget v25, v12, v25

    const/16 v26, 0x0

    aget v26, v12, v26

    add-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x40000000    # 2.0f

    div-float v23, v25, v26

    .line 198
    .local v23, "right":F
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/UPCEANReader;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v16

    .line 199
    .local v16, "format":Lcom/google/zxing/BarcodeFormat;
    new-instance v10, Lcom/google/zxing/Result;

    .line 201
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    .line 202
    new-instance v27, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v27

    move/from16 v1, v17

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v27, v25, v26

    const/16 v26, 0x1

    .line 203
    new-instance v27, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v27

    move/from16 v1, v23

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v27, v25, v26

    .line 200
    const/16 v26, 0x0

    .line 199
    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    move-object/from16 v3, v16

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 206
    .local v10, "decodeResult":Lcom/google/zxing/Result;
    const/4 v14, 0x0

    .line 209
    .local v14, "extensionLength":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/oned/UPCEANReader;->extensionReader:Lcom/google/zxing/oned/UPCEANExtensionSupport;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget v26, v12, v26

    move-object/from16 v0, v25

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/zxing/oned/UPCEANExtensionSupport;->decodeRow(ILcom/google/zxing/common/BitArray;I)Lcom/google/zxing/Result;

    move-result-object v15

    .line 210
    .local v15, "extensionResult":Lcom/google/zxing/Result;
    sget-object v25, Lcom/google/zxing/ResultMetadataType;->UPC_EAN_EXTENSION:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v15}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v10, v0, v1}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 211
    invoke-virtual {v15}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Lcom/google/zxing/Result;->putAllMetadata(Ljava/util/Map;)V

    .line 212
    invoke-virtual {v15}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Lcom/google/zxing/Result;->addResultPoints([Lcom/google/zxing/ResultPoint;)V

    .line 213
    invoke-virtual {v15}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    .line 219
    .end local v15    # "extensionResult":Lcom/google/zxing/Result;
    :goto_4
    if-eqz p4, :cond_a

    sget-object v25, Lcom/google/zxing/DecodeHintType;->ALLOWED_EAN_EXTENSIONS:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [I

    move-object/from16 v8, v25

    .line 220
    .local v8, "allowedExtensions":[I
    :goto_5
    if-nez v8, :cond_b

    .line 233
    :cond_6
    sget-object v25, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_e

    .line 234
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/oned/UPCEANReader;->eanManSupport:Lcom/google/zxing/oned/EANManufacturerOrgSupport;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->lookupCountryIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 235
    .local v9, "countryID":Ljava/lang/String;
    if-nez v9, :cond_f

    .line 240
    .end local v9    # "countryID":Ljava/lang/String;
    :goto_6
    return-object v10

    .line 190
    .end local v8    # "allowedExtensions":[I
    .end local v10    # "decodeResult":Lcom/google/zxing/Result;
    .end local v14    # "extensionLength":I
    .end local v16    # "format":Lcom/google/zxing/BarcodeFormat;
    .end local v17    # "left":F
    .end local v23    # "right":F
    :cond_8
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v25

    throw v25

    .line 193
    :cond_9
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v25

    throw v25

    .line 214
    .restart local v10    # "decodeResult":Lcom/google/zxing/Result;
    .restart local v14    # "extensionLength":I
    .restart local v16    # "format":Lcom/google/zxing/BarcodeFormat;
    .restart local v17    # "left":F
    .restart local v23    # "right":F
    :catch_0
    move-exception v4

    .local v4, "-l_17_R":Ljava/lang/Object;
    goto :goto_4

    .line 219
    .end local v4    # "-l_17_R":Ljava/lang/Object;
    :cond_a
    const/4 v8, 0x0

    goto :goto_5

    .line 221
    .restart local v8    # "allowedExtensions":[I
    :cond_b
    const/16 v24, 0x0

    .line 222
    .local v24, "valid":Z
    move-object v7, v8

    .local v7, "-l_22_R":Ljava/lang/Object;
    array-length v6, v8

    .local v6, "-l_21_I":I
    const/4 v5, 0x0

    .local v5, "-l_20_I":I
    :goto_7
    if-ge v5, v6, :cond_d

    aget v18, v8, v5

    .line 223
    .local v18, "length":I
    move/from16 v0, v18

    if-eq v14, v0, :cond_c

    .line 222
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 224
    :cond_c
    const/16 v24, 0x1

    .line 228
    .end local v18    # "length":I
    :cond_d
    if-nez v24, :cond_6

    .line 229
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v25

    throw v25

    .line 233
    .end local v5    # "-l_20_I":I
    .end local v6    # "-l_21_I":I
    .end local v7    # "-l_22_R":Ljava/lang/Object;
    .end local v24    # "valid":Z
    :cond_e
    sget-object v25, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_7

    goto :goto_6

    .line 236
    .restart local v9    # "countryID":Ljava/lang/String;
    :cond_f
    sget-object v25, Lcom/google/zxing/ResultMetadataType;->POSSIBLE_COUNTRY:Lcom/google/zxing/ResultMetadataType;

    move-object/from16 v0, v25

    invoke-virtual {v10, v0, v9}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    goto :goto_6
.end method

.method abstract getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
.end method
