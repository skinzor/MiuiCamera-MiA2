.class final Lcom/google/zxing/qrcode/decoder/DataBlock;
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
    iput p1, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->numDataCodewords:I

    .line 33
    iput-object p2, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    .line 34
    return-void
.end method

.method static getDataBlocks([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)[Lcom/google/zxing/qrcode/decoder/DataBlock;
    .locals 30
    .param p0, "rawCodewords"    # [B
    .param p1, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p2, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .prologue
    .line 51
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v28, v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_0

    .line 57
    invoke-virtual/range {p1 .. p2}, Lcom/google/zxing/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object v11

    .line 60
    .local v11, "ecBlocks":Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    const/16 v27, 0x0

    .line 61
    .local v27, "totalBlocks":I
    invoke-virtual {v11}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECBlocks()[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v10

    .line 62
    .local v10, "ecBlockArray":[Lcom/google/zxing/qrcode/decoder/Version$ECB;
    move-object v8, v10

    .local v8, "-l_9_R":Ljava/lang/Object;
    array-length v6, v10

    .local v6, "-l_8_I":I
    const/4 v5, 0x0

    .local v5, "-l_7_I":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v9, v8, v5

    .line 63
    .local v9, "ecBlock":Lcom/google/zxing/qrcode/decoder/Version$ECB;
    invoke-virtual {v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getCount()I

    move-result v28

    add-int v27, v27, v28

    .line 62
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 52
    .end local v5    # "-l_7_I":I
    .end local v6    # "-l_8_I":I
    .end local v8    # "-l_9_R":Ljava/lang/Object;
    .end local v9    # "ecBlock":Lcom/google/zxing/qrcode/decoder/Version$ECB;
    .end local v10    # "ecBlockArray":[Lcom/google/zxing/qrcode/decoder/Version$ECB;
    .end local v11    # "ecBlocks":Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    .end local v27    # "totalBlocks":I
    :cond_0
    new-instance v28, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v28 .. v28}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v28

    .line 67
    .restart local v5    # "-l_7_I":I
    .restart local v6    # "-l_8_I":I
    .restart local v8    # "-l_9_R":Ljava/lang/Object;
    .restart local v10    # "ecBlockArray":[Lcom/google/zxing/qrcode/decoder/Version$ECB;
    .restart local v11    # "ecBlocks":Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    .restart local v27    # "totalBlocks":I
    :cond_1
    move/from16 v0, v27

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/DataBlock;

    move-object/from16 v24, v0

    .line 68
    .local v24, "result":[Lcom/google/zxing/qrcode/decoder/DataBlock;
    const/16 v20, 0x0

    .line 69
    .local v20, "numResultBlocks":I
    move-object v4, v10

    .local v4, "-l_11_R":Ljava/lang/Object;
    array-length v3, v10

    .local v3, "-l_10_I":I
    const/4 v7, 0x0

    .local v7, "-l_9_I":I
    :goto_1
    if-ge v7, v3, :cond_3

    aget-object v9, v10, v7

    .line 70
    .restart local v9    # "ecBlock":Lcom/google/zxing/qrcode/decoder/Version$ECB;
    const/4 v12, 0x0

    .local v12, "i":I
    move/from16 v21, v20

    .end local v20    # "numResultBlocks":I
    .local v21, "numResultBlocks":I
    :goto_2
    invoke-virtual {v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getCount()I

    move-result v28

    move/from16 v0, v28

    if-ge v12, v0, :cond_2

    .line 71
    invoke-virtual {v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getDataCodewords()I

    move-result v19

    .line 72
    .local v19, "numDataCodewords":I
    invoke-virtual {v11}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECCodewordsPerBlock()I

    move-result v28

    add-int v17, v28, v19

    .line 73
    .local v17, "numBlockCodewords":I
    add-int/lit8 v20, v21, 0x1

    .end local v21    # "numResultBlocks":I
    .restart local v20    # "numResultBlocks":I
    new-instance v28, Lcom/google/zxing/qrcode/decoder/DataBlock;

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move/from16 v1, v19

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/qrcode/decoder/DataBlock;-><init>(I[B)V

    aput-object v28, v24, v21

    .line 70
    add-int/lit8 v12, v12, 0x1

    move/from16 v21, v20

    .end local v20    # "numResultBlocks":I
    .restart local v21    # "numResultBlocks":I
    goto :goto_2

    .line 69
    .end local v17    # "numBlockCodewords":I
    .end local v19    # "numDataCodewords":I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    move/from16 v20, v21

    .end local v21    # "numResultBlocks":I
    .restart local v20    # "numResultBlocks":I
    goto :goto_1

    .line 79
    .end local v9    # "ecBlock":Lcom/google/zxing/qrcode/decoder/Version$ECB;
    .end local v12    # "i":I
    :cond_3
    const/16 v28, 0x0

    aget-object v28, v24, v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v26, v0

    .line 80
    .local v26, "shorterBlocksTotalCodewords":I
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v28, v0

    add-int/lit8 v15, v28, -0x1

    .line 81
    .local v15, "longerBlocksStartAt":I
    :goto_3
    if-ltz v15, :cond_4

    .line 82
    aget-object v28, v24, v15

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v18, v0

    .line 83
    .local v18, "numCodewords":I
    move/from16 v0, v18

    move/from16 v1, v26

    if-eq v0, v1, :cond_4

    .line 86
    add-int/lit8 v15, v15, -0x1

    goto :goto_3

    .line 88
    .end local v18    # "numCodewords":I
    :cond_4
    add-int/lit8 v15, v15, 0x1

    .line 90
    invoke-virtual {v11}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECCodewordsPerBlock()I

    move-result v28

    sub-int v25, v26, v28

    .line 93
    .local v25, "shorterBlocksNumDataCodewords":I
    const/16 v22, 0x0

    .line 94
    .local v22, "rawCodewordsOffset":I
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_4
    move/from16 v0, v25

    if-ge v12, v0, :cond_6

    .line 95
    const/4 v14, 0x0

    .local v14, "j":I
    move/from16 v23, v22

    .end local v22    # "rawCodewordsOffset":I
    .local v23, "rawCodewordsOffset":I
    :goto_5
    move/from16 v0, v20

    if-ge v14, v0, :cond_5

    .line 96
    aget-object v28, v24, v14

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v28, v0

    add-int/lit8 v22, v23, 0x1

    .end local v23    # "rawCodewordsOffset":I
    .restart local v22    # "rawCodewordsOffset":I
    aget-byte v29, p0, v23

    move/from16 v0, v29

    int-to-byte v0, v0

    move/from16 v29, v0

    aput-byte v29, v28, v12

    .line 95
    add-int/lit8 v14, v14, 0x1

    move/from16 v23, v22

    .end local v22    # "rawCodewordsOffset":I
    .restart local v23    # "rawCodewordsOffset":I
    goto :goto_5

    .line 94
    :cond_5
    add-int/lit8 v12, v12, 0x1

    move/from16 v22, v23

    .end local v23    # "rawCodewordsOffset":I
    .restart local v22    # "rawCodewordsOffset":I
    goto :goto_4

    .line 100
    .end local v14    # "j":I
    :cond_6
    move v14, v15

    .restart local v14    # "j":I
    move/from16 v23, v22

    .end local v22    # "rawCodewordsOffset":I
    .restart local v23    # "rawCodewordsOffset":I
    :goto_6
    move/from16 v0, v20

    if-ge v14, v0, :cond_7

    .line 101
    aget-object v28, v24, v14

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v28, v0

    add-int/lit8 v22, v23, 0x1

    .end local v23    # "rawCodewordsOffset":I
    .restart local v22    # "rawCodewordsOffset":I
    aget-byte v29, p0, v23

    move/from16 v0, v29

    int-to-byte v0, v0

    move/from16 v29, v0

    aput-byte v29, v28, v25

    .line 100
    add-int/lit8 v14, v14, 0x1

    move/from16 v23, v22

    .end local v22    # "rawCodewordsOffset":I
    .restart local v23    # "rawCodewordsOffset":I
    goto :goto_6

    .line 104
    :cond_7
    const/16 v28, 0x0

    aget-object v28, v24, v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v16, v0

    .line 105
    .local v16, "max":I
    move/from16 v12, v25

    move/from16 v22, v23

    .end local v23    # "rawCodewordsOffset":I
    .restart local v22    # "rawCodewordsOffset":I
    :goto_7
    move/from16 v0, v16

    if-ge v12, v0, :cond_a

    .line 106
    const/4 v14, 0x0

    move/from16 v23, v22

    .end local v22    # "rawCodewordsOffset":I
    .restart local v23    # "rawCodewordsOffset":I
    :goto_8
    move/from16 v0, v20

    if-ge v14, v0, :cond_9

    .line 107
    if-lt v14, v15, :cond_8

    add-int/lit8 v13, v12, 0x1

    .line 108
    .local v13, "iOffset":I
    :goto_9
    aget-object v28, v24, v14

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v28, v0

    add-int/lit8 v22, v23, 0x1

    .end local v23    # "rawCodewordsOffset":I
    .restart local v22    # "rawCodewordsOffset":I
    aget-byte v29, p0, v23

    move/from16 v0, v29

    int-to-byte v0, v0

    move/from16 v29, v0

    aput-byte v29, v28, v13

    .line 106
    add-int/lit8 v14, v14, 0x1

    move/from16 v23, v22

    .end local v22    # "rawCodewordsOffset":I
    .restart local v23    # "rawCodewordsOffset":I
    goto :goto_8

    .end local v13    # "iOffset":I
    :cond_8
    move v13, v12

    .line 107
    goto :goto_9

    .line 105
    :cond_9
    add-int/lit8 v12, v12, 0x1

    move/from16 v22, v23

    .end local v23    # "rawCodewordsOffset":I
    .restart local v22    # "rawCodewordsOffset":I
    goto :goto_7

    .line 111
    :cond_a
    return-object v24
.end method


# virtual methods
.method getCodewords()[B
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    return-object v0
.end method

.method getNumDataCodewords()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->numDataCodewords:I

    return v0
.end method
