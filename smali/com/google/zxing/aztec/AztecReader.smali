.class public final Lcom/google/zxing/aztec/AztecReader;
.super Ljava/lang/Object;
.source "AztecReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 26
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
    .line 59
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    const/16 v18, 0x0

    .line 60
    .local v18, "notFoundException":Ljava/lang/Exception;
    const/16 v17, 0x0

    .line 61
    .local v17, "formatException":Lcom/google/zxing/FormatException;
    new-instance v10, Lcom/google/zxing/aztec/detector/Detector;

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v10, v0}, Lcom/google/zxing/aztec/detector/Detector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    .line 62
    .local v10, "detector":Lcom/google/zxing/aztec/detector/Detector;
    const/16 v20, 0x0

    .line 63
    .local v20, "points":[Lcom/google/zxing/ResultPoint;
    const/4 v9, 0x0

    .line 65
    .local v9, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    const/16 v23, 0x0

    :try_start_0
    move/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/google/zxing/aztec/detector/Detector;->detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;

    move-result-object v11

    .line 66
    .local v11, "detectorResult":Lcom/google/zxing/aztec/AztecDetectorResult;
    invoke-virtual {v11}, Lcom/google/zxing/aztec/AztecDetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v20

    .line 67
    new-instance v23, Lcom/google/zxing/aztec/decoder/Decoder;

    invoke-direct/range {v23 .. v23}, Lcom/google/zxing/aztec/decoder/Decoder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lcom/google/zxing/aztec/decoder/Decoder;->decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 73
    .end local v9    # "decoderResult":Lcom/google/zxing/common/DecoderResult;
    .end local v11    # "detectorResult":Lcom/google/zxing/aztec/AztecDetectorResult;
    .end local v17    # "formatException":Lcom/google/zxing/FormatException;
    .end local v18    # "notFoundException":Ljava/lang/Exception;
    .end local v20    # "points":[Lcom/google/zxing/ResultPoint;
    :goto_0
    if-eqz v9, :cond_1

    .line 99
    :goto_1
    if-nez p2, :cond_4

    .line 108
    :cond_0
    new-instance v21, Lcom/google/zxing/Result;

    invoke-virtual {v9}, Lcom/google/zxing/common/DecoderResult;->getText()Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v9}, Lcom/google/zxing/common/DecoderResult;->getRawBytes()[B

    move-result-object v24

    sget-object v25, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v20

    move-object/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 110
    .local v21, "result":Lcom/google/zxing/Result;
    invoke-virtual {v9}, Lcom/google/zxing/common/DecoderResult;->getByteSegments()Ljava/util/List;

    move-result-object v8

    .line 111
    .local v8, "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    if-nez v8, :cond_5

    .line 114
    :goto_2
    invoke-virtual {v9}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Ljava/lang/String;

    move-result-object v16

    .line 115
    .local v16, "ecLevel":Ljava/lang/String;
    if-nez v16, :cond_6

    .line 119
    :goto_3
    return-object v21

    .line 68
    .end local v8    # "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v16    # "ecLevel":Ljava/lang/String;
    .end local v21    # "result":Lcom/google/zxing/Result;
    .restart local v9    # "decoderResult":Lcom/google/zxing/common/DecoderResult;
    .restart local v17    # "formatException":Lcom/google/zxing/FormatException;
    .restart local v18    # "notFoundException":Ljava/lang/Exception;
    :catch_0
    move-exception v13

    .line 69
    .local v13, "e":Lcom/google/zxing/NotFoundException;
    move-object/from16 v18, v13

    goto :goto_0

    .line 70
    .end local v13    # "e":Lcom/google/zxing/NotFoundException;
    :catch_1
    move-exception v12

    .line 71
    .local v12, "e":Lcom/google/zxing/FormatException;
    move-object/from16 v17, v12

    goto :goto_0

    .line 75
    .end local v9    # "decoderResult":Lcom/google/zxing/common/DecoderResult;
    .end local v12    # "e":Lcom/google/zxing/FormatException;
    .end local v17    # "formatException":Lcom/google/zxing/FormatException;
    .end local v18    # "notFoundException":Ljava/lang/Exception;
    :cond_1
    const/16 v23, 0x1

    :try_start_1
    move/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/google/zxing/aztec/detector/Detector;->detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;

    move-result-object v11

    .line 76
    .restart local v11    # "detectorResult":Lcom/google/zxing/aztec/AztecDetectorResult;
    invoke-virtual {v11}, Lcom/google/zxing/aztec/AztecDetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v20

    .line 77
    .restart local v20    # "points":[Lcom/google/zxing/ResultPoint;
    new-instance v23, Lcom/google/zxing/aztec/decoder/Decoder;

    invoke-direct/range {v23 .. v23}, Lcom/google/zxing/aztec/decoder/Decoder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lcom/google/zxing/aztec/decoder/Decoder;->decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v9

    .restart local v9    # "decoderResult":Lcom/google/zxing/common/DecoderResult;
    goto :goto_1

    .line 78
    .end local v9    # "decoderResult":Lcom/google/zxing/common/DecoderResult;
    .end local v11    # "detectorResult":Lcom/google/zxing/aztec/AztecDetectorResult;
    .end local v20    # "points":[Lcom/google/zxing/ResultPoint;
    :catch_2
    move-exception v14

    .line 79
    .local v14, "e":Ljava/lang/Exception;
    if-nez v18, :cond_2

    .line 87
    :goto_4
    if-nez v17, :cond_3

    .line 91
    :try_start_2
    throw v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 92
    :catch_3
    move-exception v15

    .line 94
    .local v15, "e1":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 81
    .end local v15    # "e1":Ljava/lang/Exception;
    :cond_2
    :try_start_3
    throw v18
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 82
    :catch_4
    move-exception v15

    .line 84
    .restart local v15    # "e1":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 88
    .end local v15    # "e1":Ljava/lang/Exception;
    :cond_3
    throw v17

    .line 100
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_4
    sget-object v23, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/google/zxing/ResultPointCallback;

    .line 101
    .local v22, "rpcb":Lcom/google/zxing/ResultPointCallback;
    if-eqz v22, :cond_0

    .line 102
    move-object/from16 v7, v20

    .local v7, "-l_12_R":Ljava/lang/Object;
    move-object/from16 v0, v20

    array-length v6, v0

    .local v6, "-l_11_I":I
    const/4 v5, 0x0

    .local v5, "-l_10_I":I
    :goto_5
    if-ge v5, v6, :cond_0

    aget-object v19, v7, v5

    .line 103
    .local v19, "point":Lcom/google/zxing/ResultPoint;
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 102
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 112
    .end local v5    # "-l_10_I":I
    .end local v6    # "-l_11_I":I
    .end local v7    # "-l_12_R":Ljava/lang/Object;
    .end local v19    # "point":Lcom/google/zxing/ResultPoint;
    .end local v22    # "rpcb":Lcom/google/zxing/ResultPointCallback;
    .restart local v8    # "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v21    # "result":Lcom/google/zxing/Result;
    :cond_5
    sget-object v23, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v8}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    goto :goto_2

    .line 116
    .restart local v16    # "ecLevel":Ljava/lang/String;
    :cond_6
    sget-object v23, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method
