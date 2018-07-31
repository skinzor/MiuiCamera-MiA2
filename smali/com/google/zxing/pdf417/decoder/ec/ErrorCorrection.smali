.class public final Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;
.super Ljava/lang/Object;
.source "ErrorCorrection.java"


# instance fields
.field private final field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->PDF417_GF:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    iput-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    .line 36
    return-void
.end method

.method private findErrorLocations(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)[I
    .locals 5
    .param p1, "errorLocator"    # Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v2

    .line 151
    .local v2, "numErrors":I
    new-array v3, v2, [I

    .line 152
    .local v3, "result":[I
    const/4 v0, 0x0

    .line 153
    .local v0, "e":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->getSize()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 159
    :cond_0
    if-ne v0, v2, :cond_3

    .line 162
    return-object v3

    .line 153
    :cond_1
    if-ge v0, v2, :cond_0

    .line 154
    invoke-virtual {p1, v1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->evaluateAt(I)I

    move-result v4

    if-eqz v4, :cond_2

    .line 153
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    :cond_2
    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v4, v1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->inverse(I)I

    move-result v4

    aput v4, v3, v0

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 160
    :cond_3
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v4

    throw v4
.end method

.method private findErrorMagnitudes(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;[I)[I
    .locals 12
    .param p1, "errorEvaluator"    # Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .param p2, "errorLocator"    # Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .param p3, "errorLocations"    # [I

    .prologue
    .line 168
    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v1

    .line 169
    .local v1, "errorLocatorDegree":I
    new-array v3, v1, [I

    .line 170
    .local v3, "formalDerivativeCoefficients":[I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-gt v4, v1, :cond_0

    .line 171
    sub-int v9, v1, v4

    .line 172
    iget-object v10, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {p2, v4}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getCoefficient(I)I

    move-result v11

    invoke-virtual {v10, v4, v11}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v10

    .line 171
    aput v10, v3, v9

    .line 170
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 174
    :cond_0
    new-instance v2, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    iget-object v9, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-direct {v2, v9, v3}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    .line 177
    .local v2, "formalDerivative":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    array-length v7, p3

    .line 178
    .local v7, "s":I
    new-array v6, v7, [I

    .line 179
    .local v6, "result":[I
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_1

    .line 180
    iget-object v9, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    aget v10, p3, v4

    invoke-virtual {v9, v10}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->inverse(I)I

    move-result v8

    .line 181
    .local v8, "xiInverse":I
    iget-object v9, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {p1, v8}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->evaluateAt(I)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->subtract(II)I

    move-result v5

    .line 182
    .local v5, "numerator":I
    iget-object v9, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v2, v8}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->evaluateAt(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->inverse(I)I

    move-result v0

    .line 183
    .local v0, "denominator":I
    iget-object v9, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v9, v5, v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v9

    aput v9, v6, v4

    .line 179
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 185
    .end local v0    # "denominator":I
    .end local v5    # "numerator":I
    .end local v8    # "xiInverse":I
    :cond_1
    return-object v6
.end method

.method private runEuclideanAlgorithm(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;I)[Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .locals 21
    .param p1, "a"    # Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .param p2, "b"    # Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .param p3, "R"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_1

    .line 106
    :goto_0
    move-object/from16 v10, p1

    .line 107
    .local v10, "rLast":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object/from16 v9, p2

    .line 108
    .local v9, "r":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->getZero()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v16

    .line 109
    .local v16, "tLast":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->getOne()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v15

    .line 112
    .local v15, "t":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :goto_1
    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v19

    div-int/lit8 v20, p3, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_4

    .line 113
    move-object v11, v10

    .line 114
    .local v11, "rLastLast":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object/from16 v17, v16

    .line 115
    .local v17, "tLastLast":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object v10, v9

    .line 116
    move-object/from16 v16, v15

    .line 119
    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v19

    if-nez v19, :cond_2

    .line 123
    move-object v9, v11

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->getZero()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v8

    .line 125
    .local v8, "q":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getCoefficient(I)I

    move-result v4

    .line 126
    .local v4, "denominatorLeadingTerm":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->inverse(I)I

    move-result v5

    .line 127
    .local v5, "dltInverse":I
    :goto_2
    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v19

    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    .line 134
    :cond_0
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->multiply(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->subtract(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->negative()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v15

    goto :goto_1

    .line 101
    .end local v4    # "denominatorLeadingTerm":I
    .end local v5    # "dltInverse":I
    .end local v8    # "q":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .end local v9    # "r":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .end local v10    # "rLast":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .end local v11    # "rLastLast":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .end local v15    # "t":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .end local v16    # "tLast":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .end local v17    # "tLastLast":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :cond_1
    move-object/from16 v18, p1

    .line 102
    .local v18, "temp":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object/from16 v2, p2

    .line 103
    .end local p1    # "a":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .local v2, "a":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object/from16 p2, p1

    move-object/from16 p1, v2

    .end local v2    # "a":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .restart local p1    # "a":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    goto :goto_0

    .line 121
    .end local v18    # "temp":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .restart local v9    # "r":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .restart local v10    # "rLast":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .restart local v11    # "rLastLast":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .restart local v15    # "t":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .restart local v16    # "tLast":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .restart local v17    # "tLastLast":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :cond_2
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v19

    throw v19

    .line 127
    .restart local v4    # "denominatorLeadingTerm":I
    .restart local v5    # "dltInverse":I
    .restart local v8    # "q":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :cond_3
    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v19

    if-nez v19, :cond_0

    .line 128
    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v19

    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v20

    sub-int v3, v19, v20

    .line 129
    .local v3, "degreeDiff":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v19, v0

    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getCoefficient(I)I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v12

    .line 130
    .local v12, "scale":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v12}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->buildMonomial(II)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->add(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v8

    .line 131
    invoke-virtual {v10, v3, v12}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->multiplyByMonomial(II)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->subtract(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v9

    goto :goto_2

    .line 137
    .end local v3    # "degreeDiff":I
    .end local v4    # "denominatorLeadingTerm":I
    .end local v5    # "dltInverse":I
    .end local v8    # "q":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .end local v11    # "rLastLast":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .end local v12    # "scale":I
    .end local v17    # "tLastLast":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :cond_4
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getCoefficient(I)I

    move-result v14

    .line 138
    .local v14, "sigmaTildeAtZero":I
    if-eqz v14, :cond_5

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->inverse(I)I

    move-result v6

    .line 143
    .local v6, "inverse":I
    invoke-virtual {v15, v6}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->multiply(I)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v13

    .line 144
    .local v13, "sigma":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    invoke-virtual {v9, v6}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->multiply(I)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v7

    .line 145
    .local v7, "omega":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v13, v19, v20

    const/16 v20, 0x1

    aput-object v7, v19, v20

    return-object v19

    .line 139
    .end local v6    # "inverse":I
    .end local v7    # "omega":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .end local v13    # "sigma":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :cond_5
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v19

    throw v19
.end method


# virtual methods
.method public decode([II[I)I
    .locals 27
    .param p1, "received"    # [I
    .param p2, "numECCodewords"    # I
    .param p3, "erasures"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 49
    new-instance v17, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    .line 50
    .local v17, "poly":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move/from16 v0, p2

    new-array v7, v0, [I

    .line 51
    .local v7, "S":[I
    const/4 v10, 0x0

    .line 52
    .local v10, "error":Z
    move/from16 v14, p2

    .local v14, "i":I
    :goto_0
    if-lez v14, :cond_1

    .line 53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->exp(I)I

    move-result v23

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->evaluateAt(I)I

    move-result v13

    .line 54
    .local v13, "eval":I
    sub-int v23, p2, v14

    aput v13, v7, v23

    .line 55
    if-nez v13, :cond_0

    .line 52
    :goto_1
    add-int/lit8 v14, v14, -0x1

    goto :goto_0

    .line 56
    :cond_0
    const/4 v10, 0x1

    goto :goto_1

    .line 60
    .end local v13    # "eval":I
    :cond_1
    if-eqz v10, :cond_3

    .line 64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->getOne()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v15

    .line 65
    .local v15, "knownErrors":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    if-nez p3, :cond_4

    .line 74
    :cond_2
    new-instance v21, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v7}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    .line 78
    .local v21, "syndrome":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, p2

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->buildMonomial(II)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->runEuclideanAlgorithm(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;I)[Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v20

    .line 79
    .local v20, "sigmaOmega":[Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    const/16 v23, 0x0

    aget-object v19, v20, v23

    .line 80
    .local v19, "sigma":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    const/16 v23, 0x1

    aget-object v16, v20, v23

    .line 84
    .local v16, "omega":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->findErrorLocations(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)[I

    move-result-object v11

    .line 85
    .local v11, "errorLocations":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v11}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->findErrorMagnitudes(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;[I)[I

    move-result-object v12

    .line 87
    .local v12, "errorMagnitudes":[I
    const/4 v14, 0x0

    :goto_2
    array-length v0, v11

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v14, v0, :cond_6

    .line 88
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v24, v0

    aget v25, v11, v14

    invoke-virtual/range {v24 .. v25}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->log(I)I

    move-result v24

    sub-int v18, v23, v24

    .line 89
    .local v18, "position":I
    if-ltz v18, :cond_5

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v23, v0

    aget v24, p1, v18

    aget v25, v12, v14

    invoke-virtual/range {v23 .. v25}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->subtract(II)I

    move-result v23

    aput v23, p1, v18

    .line 87
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 61
    .end local v11    # "errorLocations":[I
    .end local v12    # "errorMagnitudes":[I
    .end local v15    # "knownErrors":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .end local v16    # "omega":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .end local v18    # "position":I
    .end local v19    # "sigma":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .end local v20    # "sigmaOmega":[Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .end local v21    # "syndrome":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :cond_3
    const/16 v23, 0x0

    return v23

    .line 66
    .restart local v15    # "knownErrors":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :cond_4
    move-object/from16 v5, p3

    .local v5, "-l_11_R":Ljava/lang/Object;
    move-object/from16 v0, p3

    array-length v4, v0

    .local v4, "-l_10_I":I
    const/4 v6, 0x0

    .local v6, "-l_9_I":I
    :goto_3
    if-ge v6, v4, :cond_2

    aget v9, p3, v6

    .line 67
    .local v9, "erasure":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    sub-int v24, v24, v9

    invoke-virtual/range {v23 .. v24}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->exp(I)I

    move-result v8

    .line 69
    .local v8, "b":I
    new-instance v22, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v1, v8}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->subtract(II)I

    move-result v25

    const/16 v26, 0x0

    aput v25, v24, v26

    const/16 v25, 0x1

    const/16 v26, 0x1

    aput v25, v24, v26

    invoke-direct/range {v22 .. v24}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    .line 70
    .local v22, "term":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->multiply(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v15

    .line 66
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 90
    .end local v4    # "-l_10_I":I
    .end local v5    # "-l_11_R":Ljava/lang/Object;
    .end local v6    # "-l_9_I":I
    .end local v8    # "b":I
    .end local v9    # "erasure":I
    .end local v22    # "term":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .restart local v11    # "errorLocations":[I
    .restart local v12    # "errorMagnitudes":[I
    .restart local v16    # "omega":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .restart local v18    # "position":I
    .restart local v19    # "sigma":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .restart local v20    # "sigmaOmega":[Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .restart local v21    # "syndrome":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :cond_5
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v23

    throw v23

    .line 94
    .end local v18    # "position":I
    :cond_6
    array-length v0, v11

    move/from16 v23, v0

    return v23
.end method
