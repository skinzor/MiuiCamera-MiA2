.class public final Lcom/google/zxing/qrcode/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# instance fields
.field private final rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    sget-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    iput-object v0, p0, Lcom/google/zxing/qrcode/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    .line 42
    return-void
.end method

.method private correctErrors([BI)V
    .locals 6
    .param p1, "codewordBytes"    # [B
    .param p2, "numDataCodewords"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 194
    array-length v3, p1

    .line 196
    .local v3, "numCodewords":I
    new-array v0, v3, [I

    .line 197
    .local v0, "codewordsInts":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 198
    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    aput v5, v0, v1

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    :cond_0
    array-length v5, p1

    sub-int v4, v5, p2

    .line 202
    .local v4, "numECCodewords":I
    :try_start_0
    iget-object v5, p0, Lcom/google/zxing/qrcode/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    invoke-virtual {v5, v0, v4}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_1

    .line 209
    aget v5, v0, v1

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, p1, v1

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 203
    :catch_0
    move-exception v2

    .line 204
    .local v2, "ignored":Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v5

    throw v5

    .line 211
    .end local v2    # "ignored":Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    :cond_1
    return-void
.end method

.method private decode(Lcom/google/zxing/qrcode/decoder/BitMatrixParser;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .locals 21
    .param p1, "parser"    # Lcom/google/zxing/qrcode/decoder/BitMatrixParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/qrcode/decoder/BitMatrixParser;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 155
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readVersion()Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v19

    .line 156
    .local v19, "version":Lcom/google/zxing/qrcode/decoder/Version;
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readFormatInformation()Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->getErrorCorrectionLevel()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object v12

    .line 159
    .local v12, "ecLevel":Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readCodewords()[B

    move-result-object v9

    .line 161
    .local v9, "codewords":[B
    move-object/from16 v0, v19

    invoke-static {v9, v0, v12}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getDataBlocks([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)[Lcom/google/zxing/qrcode/decoder/DataBlock;

    move-result-object v11

    .line 164
    .local v11, "dataBlocks":[Lcom/google/zxing/qrcode/decoder/DataBlock;
    const/16 v18, 0x0

    .line 165
    .local v18, "totalBytes":I
    move-object v4, v11

    .local v4, "-l_11_R":Ljava/lang/Object;
    array-length v2, v11

    .local v2, "-l_10_I":I
    const/4 v7, 0x0

    .local v7, "-l_9_I":I
    :goto_0
    if-ge v7, v2, :cond_0

    aget-object v10, v4, v7

    .line 166
    .local v10, "dataBlock":Lcom/google/zxing/qrcode/decoder/DataBlock;
    invoke-virtual {v10}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getNumDataCodewords()I

    move-result v20

    add-int v18, v18, v20

    .line 165
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 168
    .end local v10    # "dataBlock":Lcom/google/zxing/qrcode/decoder/DataBlock;
    :cond_0
    move/from16 v0, v18

    new-array v15, v0, [B

    .line 169
    .local v15, "resultBytes":[B
    const/16 v16, 0x0

    .line 172
    .local v16, "resultOffset":I
    move-object v6, v11

    .local v6, "-l_13_R":Ljava/lang/Object;
    array-length v5, v11

    .local v5, "-l_12_I":I
    const/4 v3, 0x0

    .local v3, "-l_11_I":I
    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v10, v11, v3

    .line 173
    .restart local v10    # "dataBlock":Lcom/google/zxing/qrcode/decoder/DataBlock;
    invoke-virtual {v10}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getCodewords()[B

    move-result-object v8

    .line 174
    .local v8, "codewordBytes":[B
    invoke-virtual {v10}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getNumDataCodewords()I

    move-result v14

    .line 175
    .local v14, "numDataCodewords":I
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v14}, Lcom/google/zxing/qrcode/decoder/Decoder;->correctErrors([BI)V

    .line 176
    const/4 v13, 0x0

    .local v13, "i":I
    move/from16 v17, v16

    .end local v16    # "resultOffset":I
    .local v17, "resultOffset":I
    :goto_2
    if-ge v13, v14, :cond_1

    .line 177
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "resultOffset":I
    .restart local v16    # "resultOffset":I
    aget-byte v20, v8, v13

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v15, v17

    .line 176
    add-int/lit8 v13, v13, 0x1

    move/from16 v17, v16

    .end local v16    # "resultOffset":I
    .restart local v17    # "resultOffset":I
    goto :goto_2

    .line 172
    :cond_1
    add-int/lit8 v3, v3, 0x1

    move/from16 v16, v17

    .end local v17    # "resultOffset":I
    .restart local v16    # "resultOffset":I
    goto :goto_1

    .line 182
    .end local v8    # "codewordBytes":[B
    .end local v10    # "dataBlock":Lcom/google/zxing/qrcode/decoder/DataBlock;
    .end local v13    # "i":I
    .end local v14    # "numDataCodewords":I
    :cond_2
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-static {v15, v0, v12, v1}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decode([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v20

    return-object v20
.end method


# virtual methods
.method public decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .locals 8
    .param p1, "bits"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitMatrix;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 89
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    new-instance v4, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;

    invoke-direct {v4, p1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    .line 90
    .local v4, "parser":Lcom/google/zxing/qrcode/decoder/BitMatrixParser;
    const/4 v3, 0x0

    .line 91
    .local v3, "fe":Lcom/google/zxing/FormatException;
    const/4 v0, 0x0

    .line 93
    .local v0, "ce":Lcom/google/zxing/ChecksumException;
    :try_start_0
    invoke-direct {p0, v4, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/qrcode/decoder/BitMatrixParser;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    :try_end_0
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/zxing/ChecksumException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    return-object v6

    .line 94
    :catch_0
    move-exception v2

    .line 95
    .local v2, "e":Lcom/google/zxing/FormatException;
    move-object v3, v2

    .line 103
    .end local v0    # "ce":Lcom/google/zxing/ChecksumException;
    .end local v2    # "e":Lcom/google/zxing/FormatException;
    .end local v3    # "fe":Lcom/google/zxing/FormatException;
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->remask()V

    .line 106
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->setMirror(Z)V

    .line 109
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readVersion()Lcom/google/zxing/qrcode/decoder/Version;

    .line 112
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readFormatInformation()Lcom/google/zxing/qrcode/decoder/FormatInformation;

    .line 121
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->mirror()V

    .line 123
    invoke-direct {p0, v4, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/qrcode/decoder/BitMatrixParser;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v5

    .line 126
    .local v5, "result":Lcom/google/zxing/common/DecoderResult;
    new-instance v6, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;-><init>(Z)V

    invoke-virtual {v5, v6}, Lcom/google/zxing/common/DecoderResult;->setOther(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/zxing/ChecksumException; {:try_start_1 .. :try_end_1} :catch_3

    .line 128
    return-object v5

    .line 96
    .end local v5    # "result":Lcom/google/zxing/common/DecoderResult;
    .restart local v0    # "ce":Lcom/google/zxing/ChecksumException;
    .restart local v3    # "fe":Lcom/google/zxing/FormatException;
    :catch_1
    move-exception v1

    .line 97
    .local v1, "e":Lcom/google/zxing/ChecksumException;
    move-object v0, v1

    goto :goto_0

    .line 130
    .end local v0    # "ce":Lcom/google/zxing/ChecksumException;
    .end local v1    # "e":Lcom/google/zxing/ChecksumException;
    .end local v3    # "fe":Lcom/google/zxing/FormatException;
    :catch_2
    move-exception v2

    .line 132
    .restart local v2    # "e":Lcom/google/zxing/FormatException;
    if-nez v3, :cond_0

    .line 135
    if-nez v0, :cond_1

    .line 138
    throw v2

    .line 133
    :cond_0
    throw v3

    .line 136
    :cond_1
    throw v0

    .line 140
    .end local v2    # "e":Lcom/google/zxing/FormatException;
    :catch_3
    move-exception v1

    .line 142
    .restart local v1    # "e":Lcom/google/zxing/ChecksumException;
    if-nez v3, :cond_2

    .line 145
    if-nez v0, :cond_3

    .line 148
    throw v1

    .line 143
    :cond_2
    throw v3

    .line 146
    :cond_3
    throw v0
.end method
