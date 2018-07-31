.class final Lcom/google/zxing/datamatrix/decoder/DataBlock;
.super Ljava/lang/Object;
.source "DataBlock.java"


# instance fields
.field private final codewords:[B

.field private final numDataCodewords:I


# direct methods
.method private constructor <init>(I[B)V
    .locals 0
    .param p1, "numDataCodewords"    # I
    .param p2, "codewords"    # [B

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->numDataCodewords:I

    .line 33
    iput-object p2, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    .line 34
    return-void
.end method

.method static getDataBlocks([BLcom/google/zxing/datamatrix/decoder/Version;)[Lcom/google/zxing/datamatrix/decoder/DataBlock;
    .locals 32
    .param p0, "rawCodewords"    # [B
    .param p1, "version"    # Lcom/google/zxing/datamatrix/decoder/Version;

    .prologue
    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/datamatrix/decoder/Version;->getECBlocks()Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-result-object v11

    .line 52
    .local v11, "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    const/16 v28, 0x0

    .line 53
    .local v28, "totalBlocks":I
    invoke-virtual {v11}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECBlocks()[Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-result-object v10

    .line 54
    .local v10, "ecBlockArray":[Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    move-object v7, v10

    .local v7, "-l_8_R":Ljava/lang/Object;
    array-length v5, v10

    .local v5, "-l_7_I":I
    const/4 v4, 0x0

    .local v4, "-l_6_I":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v9, v7, v4

    .line 55
    .local v9, "ecBlock":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    invoke-virtual {v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getCount()I

    move-result v29

    add-int v28, v28, v29

    .line 54
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 59
    .end local v9    # "ecBlock":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    :cond_0
    move/from16 v0, v28

    new-array v0, v0, [Lcom/google/zxing/datamatrix/decoder/DataBlock;

    move-object/from16 v25, v0

    .line 60
    .local v25, "result":[Lcom/google/zxing/datamatrix/decoder/DataBlock;
    const/16 v21, 0x0

    .line 61
    .local v21, "numResultBlocks":I
    move-object v3, v10

    .local v3, "-l_10_R":Ljava/lang/Object;
    array-length v8, v10

    .local v8, "-l_9_I":I
    const/4 v6, 0x0

    .local v6, "-l_8_I":I
    :goto_1
    if-ge v6, v8, :cond_2

    aget-object v9, v10, v6

    .line 62
    .restart local v9    # "ecBlock":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    const/4 v12, 0x0

    .local v12, "i":I
    move/from16 v22, v21

    .end local v21    # "numResultBlocks":I
    .local v22, "numResultBlocks":I
    :goto_2
    invoke-virtual {v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getCount()I

    move-result v29

    move/from16 v0, v29

    if-ge v12, v0, :cond_1

    .line 63
    invoke-virtual {v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getDataCodewords()I

    move-result v19

    .line 64
    .local v19, "numDataCodewords":I
    invoke-virtual {v11}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECCodewords()I

    move-result v29

    add-int v18, v29, v19

    .line 65
    .local v18, "numBlockCodewords":I
    add-int/lit8 v21, v22, 0x1

    .end local v22    # "numResultBlocks":I
    .restart local v21    # "numResultBlocks":I
    new-instance v29, Lcom/google/zxing/datamatrix/decoder/DataBlock;

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move/from16 v1, v19

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/datamatrix/decoder/DataBlock;-><init>(I[B)V

    aput-object v29, v25, v22

    .line 62
    add-int/lit8 v12, v12, 0x1

    move/from16 v22, v21

    .end local v21    # "numResultBlocks":I
    .restart local v22    # "numResultBlocks":I
    goto :goto_2

    .line 61
    .end local v18    # "numBlockCodewords":I
    .end local v19    # "numDataCodewords":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    move/from16 v21, v22

    .end local v22    # "numResultBlocks":I
    .restart local v21    # "numResultBlocks":I
    goto :goto_1

    .line 72
    .end local v9    # "ecBlock":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    .end local v12    # "i":I
    :cond_2
    const/16 v29, 0x0

    aget-object v29, v25, v29

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v16, v0

    .line 75
    .local v16, "longerBlocksTotalCodewords":I
    invoke-virtual {v11}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECCodewords()I

    move-result v29

    sub-int v15, v16, v29

    .line 76
    .local v15, "longerBlocksNumDataCodewords":I
    add-int/lit8 v26, v15, -0x1

    .line 79
    .local v26, "shorterBlocksNumDataCodewords":I
    const/16 v23, 0x0

    .line 80
    .local v23, "rawCodewordsOffset":I
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_3
    move/from16 v0, v26

    if-ge v12, v0, :cond_4

    .line 81
    const/4 v14, 0x0

    .local v14, "j":I
    move/from16 v24, v23

    .end local v23    # "rawCodewordsOffset":I
    .local v24, "rawCodewordsOffset":I
    :goto_4
    move/from16 v0, v21

    if-ge v14, v0, :cond_3

    .line 82
    aget-object v29, v25, v14

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    move-object/from16 v29, v0

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "rawCodewordsOffset":I
    .restart local v23    # "rawCodewordsOffset":I
    aget-byte v30, p0, v24

    move/from16 v0, v30

    int-to-byte v0, v0

    move/from16 v30, v0

    aput-byte v30, v29, v12

    .line 81
    add-int/lit8 v14, v14, 0x1

    move/from16 v24, v23

    .end local v23    # "rawCodewordsOffset":I
    .restart local v24    # "rawCodewordsOffset":I
    goto :goto_4

    .line 80
    :cond_3
    add-int/lit8 v12, v12, 0x1

    move/from16 v23, v24

    .end local v24    # "rawCodewordsOffset":I
    .restart local v23    # "rawCodewordsOffset":I
    goto :goto_3

    .line 87
    .end local v14    # "j":I
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/datamatrix/decoder/Version;->getVersionNumber()I

    move-result v29

    const/16 v30, 0x18

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_5

    const/16 v27, 0x0

    .line 88
    .local v27, "specialVersion":Z
    :goto_5
    if-nez v27, :cond_6

    move/from16 v20, v21

    .line 89
    .local v20, "numLongerBlocks":I
    :goto_6
    const/4 v14, 0x0

    .restart local v14    # "j":I
    move/from16 v24, v23

    .end local v23    # "rawCodewordsOffset":I
    .restart local v24    # "rawCodewordsOffset":I
    :goto_7
    move/from16 v0, v20

    if-ge v14, v0, :cond_7

    .line 90
    aget-object v29, v25, v14

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    move-object/from16 v29, v0

    add-int/lit8 v30, v15, -0x1

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "rawCodewordsOffset":I
    .restart local v23    # "rawCodewordsOffset":I
    aget-byte v31, p0, v24

    move/from16 v0, v31

    int-to-byte v0, v0

    move/from16 v31, v0

    aput-byte v31, v29, v30

    .line 89
    add-int/lit8 v14, v14, 0x1

    move/from16 v24, v23

    .end local v23    # "rawCodewordsOffset":I
    .restart local v24    # "rawCodewordsOffset":I
    goto :goto_7

    .line 87
    .end local v14    # "j":I
    .end local v20    # "numLongerBlocks":I
    .end local v24    # "rawCodewordsOffset":I
    .end local v27    # "specialVersion":Z
    .restart local v23    # "rawCodewordsOffset":I
    :cond_5
    const/16 v27, 0x1

    goto :goto_5

    .line 88
    .restart local v27    # "specialVersion":Z
    :cond_6
    const/16 v20, 0x8

    goto :goto_6

    .line 94
    .end local v23    # "rawCodewordsOffset":I
    .restart local v14    # "j":I
    .restart local v20    # "numLongerBlocks":I
    .restart local v24    # "rawCodewordsOffset":I
    :cond_7
    const/16 v29, 0x0

    aget-object v29, v25, v29

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v17, v0

    .line 95
    .local v17, "max":I
    move v12, v15

    move/from16 v23, v24

    .end local v24    # "rawCodewordsOffset":I
    .restart local v23    # "rawCodewordsOffset":I
    :goto_8
    move/from16 v0, v17

    if-ge v12, v0, :cond_b

    .line 96
    const/4 v14, 0x0

    move/from16 v24, v23

    .end local v23    # "rawCodewordsOffset":I
    .restart local v24    # "rawCodewordsOffset":I
    :goto_9
    move/from16 v0, v21

    if-ge v14, v0, :cond_a

    .line 97
    if-nez v27, :cond_9

    :cond_8
    move v13, v12

    .line 98
    .local v13, "iOffset":I
    :goto_a
    aget-object v29, v25, v14

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    move-object/from16 v29, v0

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "rawCodewordsOffset":I
    .restart local v23    # "rawCodewordsOffset":I
    aget-byte v30, p0, v24

    move/from16 v0, v30

    int-to-byte v0, v0

    move/from16 v30, v0

    aput-byte v30, v29, v13

    .line 96
    add-int/lit8 v14, v14, 0x1

    move/from16 v24, v23

    .end local v23    # "rawCodewordsOffset":I
    .restart local v24    # "rawCodewordsOffset":I
    goto :goto_9

    .line 97
    .end local v13    # "iOffset":I
    :cond_9
    const/16 v29, 0x7

    move/from16 v0, v29

    if-le v14, v0, :cond_8

    add-int/lit8 v13, v12, -0x1

    goto :goto_a

    .line 95
    :cond_a
    add-int/lit8 v12, v12, 0x1

    move/from16 v23, v24

    .end local v24    # "rawCodewordsOffset":I
    .restart local v23    # "rawCodewordsOffset":I
    goto :goto_8

    .line 102
    :cond_b
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v23

    move/from16 v1, v29

    if-ne v0, v1, :cond_c

    .line 106
    return-object v25

    .line 103
    :cond_c
    new-instance v29, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v29 .. v29}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v29
.end method


# virtual methods
.method getCodewords()[B
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    return-object v0
.end method

.method getNumDataCodewords()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->numDataCodewords:I

    return v0
.end method
