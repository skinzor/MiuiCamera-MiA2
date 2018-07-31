.class public final Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
.super Ljava/lang/Object;
.source "ReedSolomonDecoder.java"


# instance fields
.field private final field:Lcom/google/zxing/common/reedsolomon/GenericGF;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V
    .locals 0
    .param p1, "field"    # Lcom/google/zxing/common/reedsolomon/GenericGF;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 47
    return-void
.end method

.method private findErrorLocations(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)[I
    .locals 7
    .param p1, "errorLocator"    # Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 145
    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v2

    .line 146
    .local v2, "numErrors":I
    if-eq v2, v5, :cond_1

    .line 149
    new-array v3, v2, [I

    .line 150
    .local v3, "result":[I
    const/4 v0, 0x0

    .line 151
    .local v0, "e":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v4}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getSize()I

    move-result v4

    if-lt v1, v4, :cond_2

    .line 157
    :cond_0
    if-ne v0, v2, :cond_4

    .line 160
    return-object v3

    .line 147
    .end local v0    # "e":I
    .end local v1    # "i":I
    .end local v3    # "result":[I
    :cond_1
    new-array v4, v5, [I

    invoke-virtual {p1, v5}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v5

    aput v5, v4, v6

    return-object v4

    .line 151
    .restart local v0    # "e":I
    .restart local v1    # "i":I
    .restart local v3    # "result":[I
    :cond_2
    if-ge v0, v2, :cond_0

    .line 152
    invoke-virtual {p1, v1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->evaluateAt(I)I

    move-result v4

    if-eqz v4, :cond_3

    .line 151
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    :cond_3
    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v4, v1}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    move-result v4

    aput v4, v3, v0

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 158
    :cond_4
    new-instance v4, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    const-string/jumbo v5, "Error locator degree does not match number of roots"

    invoke-direct {v4, v5}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private findErrorMagnitudes(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;[I)[I
    .locals 11
    .param p1, "errorEvaluator"    # Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .param p2, "errorLocations"    # [I

    .prologue
    .line 165
    array-length v4, p2

    .line 166
    .local v4, "s":I
    new-array v3, v4, [I

    .line 167
    .local v3, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_4

    .line 168
    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    aget v9, p2, v1

    invoke-virtual {v8, v9}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    move-result v7

    .line 169
    .local v7, "xiInverse":I
    const/4 v0, 0x1

    .line 170
    .local v0, "denominator":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 171
    if-ne v1, v2, :cond_0

    .line 170
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 176
    :cond_0
    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    aget v9, p2, v2

    invoke-virtual {v8, v9, v7}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v5

    .line 177
    .local v5, "term":I
    and-int/lit8 v8, v5, 0x1

    if-eqz v8, :cond_1

    and-int/lit8 v6, v5, -0x2

    .line 178
    .local v6, "termPlus1":I
    :goto_3
    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v8, v0, v6}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v0

    goto :goto_2

    .line 177
    .end local v6    # "termPlus1":I
    :cond_1
    or-int/lit8 v6, v5, 0x1

    goto :goto_3

    .line 181
    .end local v5    # "term":I
    :cond_2
    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {p1, v7}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->evaluateAt(I)I

    move-result v9

    .line 182
    iget-object v10, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v10, v0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    move-result v10

    .line 181
    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v8

    aput v8, v3, v1

    .line 183
    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v8}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getGeneratorBase()I

    move-result v8

    if-nez v8, :cond_3

    .line 167
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    :cond_3
    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    aget v9, v3, v1

    invoke-virtual {v8, v9, v7}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v8

    aput v8, v3, v1

    goto :goto_4

    .line 187
    .end local v0    # "denominator":I
    .end local v2    # "j":I
    .end local v7    # "xiInverse":I
    :cond_4
    return-object v3
.end method

.method private runEuclideanAlgorithm(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;Lcom/google/zxing/common/reedsolomon/GenericGFPoly;I)[Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .locals 21
    .param p1, "a"    # Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .param p2, "b"    # Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .param p3, "R"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_2

    .line 97
    :goto_0
    move-object/from16 v10, p1

    .line 98
    .local v10, "rLast":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object/from16 v9, p2

    .line 99
    .local v9, "r":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getZero()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v16

    .line 100
    .local v16, "tLast":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getOne()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v15

    .line 103
    .local v15, "t":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    :cond_0
    invoke-virtual {v9}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v19

    div-int/lit8 v20, p3, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_5

    .line 104
    move-object v11, v10

    .line 105
    .local v11, "rLastLast":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object/from16 v17, v16

    .line 106
    .local v17, "tLastLast":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object v10, v9

    .line 107
    move-object/from16 v16, v15

    .line 110
    invoke-virtual {v10}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v19

    if-nez v19, :cond_3

    .line 114
    move-object v9, v11

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getZero()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v8

    .line 116
    .local v8, "q":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    invoke-virtual {v10}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v4

    .line 117
    .local v4, "denominatorLeadingTerm":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    move-result v5

    .line 118
    .local v5, "dltInverse":I
    :goto_1
    invoke-virtual {v9}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v19

    invoke-virtual {v10}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    .line 125
    :cond_1
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiply(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v15

    .line 127
    invoke-virtual {v9}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v19

    invoke-virtual {v10}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_0

    .line 128
    new-instance v19, Ljava/lang/IllegalStateException;

    const-string/jumbo v20, "Division algorithm failed to reduce polynomial?"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 92
    .end local v4    # "denominatorLeadingTerm":I
    .end local v5    # "dltInverse":I
    .end local v8    # "q":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .end local v9    # "r":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .end local v10    # "rLast":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .end local v11    # "rLastLast":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .end local v15    # "t":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .end local v16    # "tLast":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .end local v17    # "tLastLast":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    :cond_2
    move-object/from16 v18, p1

    .line 93
    .local v18, "temp":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object/from16 v2, p2

    .line 94
    .end local p1    # "a":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .local v2, "a":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object/from16 p2, p1

    move-object/from16 p1, v2

    .end local v2    # "a":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .restart local p1    # "a":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    goto/16 :goto_0

    .line 112
    .end local v18    # "temp":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .restart local v9    # "r":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .restart local v10    # "rLast":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .restart local v11    # "rLastLast":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .restart local v15    # "t":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .restart local v16    # "tLast":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .restart local v17    # "tLastLast":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    :cond_3
    new-instance v19, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    const-string/jumbo v20, "r_{i-1} was zero"

    invoke-direct/range {v19 .. v20}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 118
    .restart local v4    # "denominatorLeadingTerm":I
    .restart local v5    # "dltInverse":I
    .restart local v8    # "q":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    :cond_4
    invoke-virtual {v9}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v19

    if-nez v19, :cond_1

    .line 119
    invoke-virtual {v9}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v19

    invoke-virtual {v10}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v20

    sub-int v3, v19, v20

    .line 120
    .local v3, "degreeDiff":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v19, v0

    invoke-virtual {v9}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v12

    .line 121
    .local v12, "scale":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v12}, Lcom/google/zxing/common/reedsolomon/GenericGF;->buildMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v8

    .line 122
    invoke-virtual {v10, v3, v12}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiplyByMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v9

    goto/16 :goto_1

    .line 132
    .end local v3    # "degreeDiff":I
    .end local v4    # "denominatorLeadingTerm":I
    .end local v5    # "dltInverse":I
    .end local v8    # "q":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .end local v11    # "rLastLast":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .end local v12    # "scale":I
    .end local v17    # "tLastLast":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    :cond_5
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v14

    .line 133
    .local v14, "sigmaTildeAtZero":I
    if-eqz v14, :cond_6

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    move-result v6

    .line 138
    .local v6, "inverse":I
    invoke-virtual {v15, v6}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiply(I)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v13

    .line 139
    .local v13, "sigma":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    invoke-virtual {v9, v6}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiply(I)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v7

    .line 140
    .local v7, "omega":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v13, v19, v20

    const/16 v20, 0x1

    aput-object v7, v19, v20

    return-object v19

    .line 134
    .end local v6    # "inverse":I
    .end local v7    # "omega":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .end local v13    # "sigma":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    :cond_6
    new-instance v19, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    const-string/jumbo v20, "sigmaTilde(0) was zero"

    invoke-direct/range {v19 .. v20}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    throw v19
.end method


# virtual methods
.method public decode([II)V
    .locals 17
    .param p1, "received"    # [I
    .param p2, "twoS"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
        }
    .end annotation

    .prologue
    .line 59
    new-instance v8, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v0, p1

    invoke-direct {v8, v14, v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    .line 60
    .local v8, "poly":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move/from16 v0, p2

    new-array v13, v0, [I

    .line 61
    .local v13, "syndromeCoefficients":[I
    const/4 v6, 0x1

    .line 62
    .local v6, "noError":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move/from16 v0, p2

    if-ge v5, v0, :cond_1

    .line 63
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v15}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getGeneratorBase()I

    move-result v15

    add-int/2addr v15, v5

    invoke-virtual {v14, v15}, Lcom/google/zxing/common/reedsolomon/GenericGF;->exp(I)I

    move-result v14

    invoke-virtual {v8, v14}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->evaluateAt(I)I

    move-result v4

    .line 64
    .local v4, "eval":I
    array-length v14, v13

    add-int/lit8 v14, v14, -0x1

    sub-int/2addr v14, v5

    aput v4, v13, v14

    .line 65
    if-nez v4, :cond_0

    .line 62
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 66
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 69
    .end local v4    # "eval":I
    :cond_1
    if-nez v6, :cond_2

    .line 72
    new-instance v12, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v12, v14, v13}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    .line 74
    .local v12, "syndrome":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    const/4 v15, 0x1

    move/from16 v0, p2

    invoke-virtual {v14, v0, v15}, Lcom/google/zxing/common/reedsolomon/GenericGF;->buildMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v14

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v14, v12, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->runEuclideanAlgorithm(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;Lcom/google/zxing/common/reedsolomon/GenericGFPoly;I)[Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v11

    .line 75
    .local v11, "sigmaOmega":[Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    const/4 v14, 0x0

    aget-object v10, v11, v14

    .line 76
    .local v10, "sigma":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    const/4 v14, 0x1

    aget-object v7, v11, v14

    .line 77
    .local v7, "omega":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->findErrorLocations(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)[I

    move-result-object v2

    .line 78
    .local v2, "errorLocations":[I
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->findErrorMagnitudes(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;[I)[I

    move-result-object v3

    .line 79
    .local v3, "errorMagnitudes":[I
    const/4 v5, 0x0

    :goto_2
    array-length v14, v2

    if-ge v5, v14, :cond_4

    .line 80
    move-object/from16 v0, p1

    array-length v14, v0

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    aget v16, v2, v5

    invoke-virtual/range {v15 .. v16}, Lcom/google/zxing/common/reedsolomon/GenericGF;->log(I)I

    move-result v15

    sub-int v9, v14, v15

    .line 81
    .local v9, "position":I
    if-ltz v9, :cond_3

    .line 84
    aget v14, p1, v9

    aget v15, v3, v5

    invoke-static {v14, v15}, Lcom/google/zxing/common/reedsolomon/GenericGF;->addOrSubtract(II)I

    move-result v14

    aput v14, p1, v9

    .line 79
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 70
    .end local v2    # "errorLocations":[I
    .end local v3    # "errorMagnitudes":[I
    .end local v7    # "omega":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .end local v9    # "position":I
    .end local v10    # "sigma":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .end local v11    # "sigmaOmega":[Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .end local v12    # "syndrome":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    :cond_2
    return-void

    .line 82
    .restart local v2    # "errorLocations":[I
    .restart local v3    # "errorMagnitudes":[I
    .restart local v7    # "omega":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .restart local v9    # "position":I
    .restart local v10    # "sigma":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .restart local v11    # "sigmaOmega":[Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .restart local v12    # "syndrome":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    :cond_3
    new-instance v14, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    const-string/jumbo v15, "Bad error location"

    invoke-direct {v14, v15}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 86
    .end local v9    # "position":I
    :cond_4
    return-void
.end method
