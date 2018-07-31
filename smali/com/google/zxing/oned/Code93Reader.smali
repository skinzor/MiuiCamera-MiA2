.class public final Lcom/google/zxing/oned/Code93Reader;
.super Lcom/google/zxing/oned/OneDReader;
.source "Code93Reader.java"


# static fields
.field private static final ALPHABET:[C

.field private static final ASTERISK_ENCODING:I

.field private static final CHARACTER_ENCODINGS:[I


# instance fields
.field private final counters:[I

.field private final decodeRowResult:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x2f

    .line 41
    const-string/jumbo v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/Code93Reader;->ALPHABET:[C

    .line 47
    const/16 v0, 0x30

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 48
    const/16 v2, 0x114

    aput v2, v0, v1

    const/16 v1, 0x148

    const/4 v2, 0x1

    aput v1, v0, v2

    const/16 v1, 0x144

    const/4 v2, 0x2

    aput v1, v0, v2

    const/16 v1, 0x142

    const/4 v2, 0x3

    aput v1, v0, v2

    const/16 v1, 0x128

    const/4 v2, 0x4

    aput v1, v0, v2

    const/16 v1, 0x124

    const/4 v2, 0x5

    aput v1, v0, v2

    const/16 v1, 0x122

    const/4 v2, 0x6

    aput v1, v0, v2

    const/16 v1, 0x150

    const/4 v2, 0x7

    aput v1, v0, v2

    const/16 v1, 0x112

    const/16 v2, 0x8

    aput v1, v0, v2

    const/16 v1, 0x10a

    const/16 v2, 0x9

    aput v1, v0, v2

    const/16 v1, 0xa

    .line 49
    const/16 v2, 0x1a8

    aput v2, v0, v1

    const/16 v1, 0x1a4

    const/16 v2, 0xb

    aput v1, v0, v2

    const/16 v1, 0x1a2

    const/16 v2, 0xc

    aput v1, v0, v2

    const/16 v1, 0x194

    const/16 v2, 0xd

    aput v1, v0, v2

    const/16 v1, 0x192

    const/16 v2, 0xe

    aput v1, v0, v2

    const/16 v1, 0x18a

    const/16 v2, 0xf

    aput v1, v0, v2

    const/16 v1, 0x168

    const/16 v2, 0x10

    aput v1, v0, v2

    const/16 v1, 0x164

    const/16 v2, 0x11

    aput v1, v0, v2

    const/16 v1, 0x162

    const/16 v2, 0x12

    aput v1, v0, v2

    const/16 v1, 0x134

    const/16 v2, 0x13

    aput v1, v0, v2

    const/16 v1, 0x14

    .line 50
    const/16 v2, 0x11a

    aput v2, v0, v1

    const/16 v1, 0x158

    const/16 v2, 0x15

    aput v1, v0, v2

    const/16 v1, 0x14c

    const/16 v2, 0x16

    aput v1, v0, v2

    const/16 v1, 0x146

    const/16 v2, 0x17

    aput v1, v0, v2

    const/16 v1, 0x12c

    const/16 v2, 0x18

    aput v1, v0, v2

    const/16 v1, 0x116

    const/16 v2, 0x19

    aput v1, v0, v2

    const/16 v1, 0x1b4

    const/16 v2, 0x1a

    aput v1, v0, v2

    const/16 v1, 0x1b2

    const/16 v2, 0x1b

    aput v1, v0, v2

    const/16 v1, 0x1ac

    const/16 v2, 0x1c

    aput v1, v0, v2

    const/16 v1, 0x1a6

    const/16 v2, 0x1d

    aput v1, v0, v2

    const/16 v1, 0x1e

    .line 51
    const/16 v2, 0x196

    aput v2, v0, v1

    const/16 v1, 0x19a

    const/16 v2, 0x1f

    aput v1, v0, v2

    const/16 v1, 0x16c

    const/16 v2, 0x20

    aput v1, v0, v2

    const/16 v1, 0x166

    const/16 v2, 0x21

    aput v1, v0, v2

    const/16 v1, 0x136

    const/16 v2, 0x22

    aput v1, v0, v2

    const/16 v1, 0x13a

    const/16 v2, 0x23

    aput v1, v0, v2

    const/16 v1, 0x24

    .line 52
    const/16 v2, 0x12e

    aput v2, v0, v1

    const/16 v1, 0x1d4

    const/16 v2, 0x25

    aput v1, v0, v2

    const/16 v1, 0x1d2

    const/16 v2, 0x26

    aput v1, v0, v2

    const/16 v1, 0x1ca

    const/16 v2, 0x27

    aput v1, v0, v2

    const/16 v1, 0x16e

    const/16 v2, 0x28

    aput v1, v0, v2

    const/16 v1, 0x176

    const/16 v2, 0x29

    aput v1, v0, v2

    const/16 v1, 0x1ae

    const/16 v2, 0x2a

    aput v1, v0, v2

    const/16 v1, 0x2b

    .line 53
    const/16 v2, 0x126

    aput v2, v0, v1

    const/16 v1, 0x1da

    const/16 v2, 0x2c

    aput v1, v0, v2

    const/16 v1, 0x1d6

    const/16 v2, 0x2d

    aput v1, v0, v2

    const/16 v1, 0x132

    const/16 v2, 0x2e

    aput v1, v0, v2

    const/16 v1, 0x15e

    aput v1, v0, v3

    .line 47
    sput-object v0, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    .line 55
    sget-object v0, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    aget v0, v0, v3

    sput v0, Lcom/google/zxing/oned/Code93Reader;->ASTERISK_ENCODING:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/Code93Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 62
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/Code93Reader;->counters:[I

    .line 63
    return-void
.end method

.method private static checkChecksums(Ljava/lang/CharSequence;)V
    .locals 3
    .param p0, "result"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 258
    .local v0, "length":I
    add-int/lit8 v1, v0, -0x2

    const/16 v2, 0x14

    invoke-static {p0, v1, v2}, Lcom/google/zxing/oned/Code93Reader;->checkOneChecksum(Ljava/lang/CharSequence;II)V

    .line 259
    add-int/lit8 v1, v0, -0x1

    const/16 v2, 0xf

    invoke-static {p0, v1, v2}, Lcom/google/zxing/oned/Code93Reader;->checkOneChecksum(Ljava/lang/CharSequence;II)V

    .line 260
    return-void
.end method

.method private static checkOneChecksum(Ljava/lang/CharSequence;II)V
    .locals 6
    .param p0, "result"    # Ljava/lang/CharSequence;
    .param p1, "checkPosition"    # I
    .param p2, "weightMax"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 264
    const/4 v2, 0x1

    .line 265
    .local v2, "weight":I
    const/4 v1, 0x0

    .line 266
    .local v1, "total":I
    add-int/lit8 v0, p1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 267
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const-string/jumbo v4, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    mul-int/2addr v3, v2

    add-int/2addr v1, v3

    .line 268
    add-int/lit8 v2, v2, 0x1

    if-gt v2, p2, :cond_0

    .line 266
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 269
    :cond_0
    const/4 v2, 0x1

    goto :goto_1

    .line 272
    :cond_1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    sget-object v4, Lcom/google/zxing/oned/Code93Reader;->ALPHABET:[C

    rem-int/lit8 v5, v1, 0x2f

    aget-char v4, v4, v5

    if-ne v3, v4, :cond_2

    .line 275
    return-void

    .line 273
    :cond_2
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v3

    throw v3
.end method

.method private static decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 9
    .param p0, "encoded"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x5a

    const/16 v7, 0x41

    .line 198
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 199
    .local v4, "length":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 200
    .local v1, "decoded":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_e

    .line 201
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 202
    .local v0, "c":C
    const/16 v6, 0x61

    if-ge v0, v6, :cond_1

    .line 250
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 202
    :cond_1
    const/16 v6, 0x64

    if-gt v0, v6, :cond_0

    .line 203
    add-int/lit8 v6, v4, -0x1

    if-ge v3, v6, :cond_2

    .line 206
    add-int/lit8 v6, v3, 0x1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 207
    .local v5, "next":C
    const/4 v2, 0x0

    .line 208
    .local v2, "decodedChar":C
    packed-switch v0, :pswitch_data_0

    .line 246
    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 248
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 204
    .end local v2    # "decodedChar":C
    .end local v5    # "next":C
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 211
    .restart local v2    # "decodedChar":C
    .restart local v5    # "next":C
    :pswitch_0
    if-ge v5, v7, :cond_4

    .line 214
    :cond_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 211
    :cond_4
    if-gt v5, v8, :cond_3

    .line 212
    add-int/lit8 v6, v5, 0x20

    int-to-char v2, v6

    goto :goto_2

    .line 219
    :pswitch_1
    if-ge v5, v7, :cond_6

    .line 222
    :cond_5
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 219
    :cond_6
    if-gt v5, v8, :cond_5

    .line 220
    add-int/lit8 v6, v5, -0x40

    int-to-char v2, v6

    goto :goto_2

    .line 227
    :pswitch_2
    if-ge v5, v7, :cond_9

    .line 229
    :cond_7
    const/16 v6, 0x46

    if-ge v5, v6, :cond_a

    .line 232
    :cond_8
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 227
    :cond_9
    const/16 v6, 0x45

    if-gt v5, v6, :cond_7

    .line 228
    add-int/lit8 v6, v5, -0x26

    int-to-char v2, v6

    goto :goto_2

    .line 229
    :cond_a
    const/16 v6, 0x57

    if-gt v5, v6, :cond_8

    .line 230
    add-int/lit8 v6, v5, -0xb

    int-to-char v2, v6

    goto :goto_2

    .line 237
    :pswitch_3
    if-ge v5, v7, :cond_c

    .line 239
    :cond_b
    if-eq v5, v8, :cond_d

    .line 242
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 237
    :cond_c
    const/16 v6, 0x4f

    if-gt v5, v6, :cond_b

    .line 238
    add-int/lit8 v6, v5, -0x20

    int-to-char v2, v6

    goto :goto_2

    .line 240
    :cond_d
    const/16 v2, 0x3a

    goto :goto_2

    .line 253
    .end local v0    # "c":C
    .end local v2    # "decodedChar":C
    .end local v5    # "next":C
    :cond_e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private findAsteriskPattern(Lcom/google/zxing/common/BitArray;)[I
    .locals 13
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 132
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    .line 133
    .local v7, "width":I
    invoke-virtual {p1, v9}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v5

    .line 135
    .local v5, "rowOffset":I
    iget-object v10, p0, Lcom/google/zxing/oned/Code93Reader;->counters:[I

    invoke-static {v10, v9}, Ljava/util/Arrays;->fill([II)V

    .line 136
    iget-object v6, p0, Lcom/google/zxing/oned/Code93Reader;->counters:[I

    .line 137
    .local v6, "theCounters":[I
    move v4, v5

    .line 138
    .local v4, "patternStart":I
    const/4 v2, 0x0

    .line 139
    .local v2, "isWhite":Z
    array-length v3, v6

    .line 141
    .local v3, "patternLength":I
    const/4 v0, 0x0

    .line 142
    .local v0, "counterPosition":I
    move v1, v5

    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_4

    .line 143
    invoke-virtual {p1, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v10

    xor-int/2addr v10, v2

    if-nez v10, :cond_0

    .line 146
    add-int/lit8 v10, v3, -0x1

    if-eq v0, v10, :cond_1

    .line 156
    add-int/lit8 v0, v0, 0x1

    .line 158
    :goto_1
    aput v8, v6, v0

    .line 159
    if-nez v2, :cond_3

    move v2, v8

    .line 142
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    :cond_0
    aget v10, v6, v0

    add-int/lit8 v10, v10, 0x1

    aput v10, v6, v0

    goto :goto_2

    .line 147
    :cond_1
    invoke-static {v6}, Lcom/google/zxing/oned/Code93Reader;->toPattern([I)I

    move-result v10

    sget v11, Lcom/google/zxing/oned/Code93Reader;->ASTERISK_ENCODING:I

    if-eq v10, v11, :cond_2

    .line 150
    aget v10, v6, v9

    aget v11, v6, v8

    add-int/2addr v10, v11

    add-int/2addr v4, v10

    .line 151
    add-int/lit8 v10, v3, -0x2

    invoke-static {v6, v12, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    add-int/lit8 v10, v3, -0x2

    aput v9, v6, v10

    .line 153
    add-int/lit8 v10, v3, -0x1

    aput v9, v6, v10

    .line 154
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 148
    :cond_2
    new-array v10, v12, [I

    aput v4, v10, v9

    aput v1, v10, v8

    return-object v10

    :cond_3
    move v2, v9

    .line 159
    goto :goto_2

    .line 162
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v8

    throw v8
.end method

.method private static patternToChar(I)C
    .locals 2
    .param p0, "pattern"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 189
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 190
    sget-object v1, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    aget v1, v1, v0

    if-eq v1, p0, :cond_0

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_0
    sget-object v1, Lcom/google/zxing/oned/Code93Reader;->ALPHABET:[C

    aget-char v1, v1, v0

    return v1

    .line 194
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method

.method private static toPattern([I)I
    .locals 12
    .param p0, "counters"    # [I

    .prologue
    .line 166
    array-length v6, p0

    .line 167
    .local v6, "max":I
    const/4 v9, 0x0

    .line 168
    .local v9, "sum":I
    move-object v2, p0

    .local v2, "-l_6_R":Ljava/lang/Object;
    array-length v1, p0

    .local v1, "-l_5_I":I
    const/4 v0, 0x0

    .local v0, "-l_4_I":I
    :goto_0
    if-ge v0, v1, :cond_0

    aget v3, p0, v0

    .line 169
    .local v3, "counter":I
    add-int/2addr v9, v3

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    .end local v3    # "counter":I
    :cond_0
    const/4 v7, 0x0

    .line 172
    .local v7, "pattern":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v6, :cond_5

    .line 173
    aget v10, p0, v4

    int-to-float v10, v10

    const/high16 v11, 0x41100000    # 9.0f

    mul-float/2addr v10, v11

    int-to-float v11, v9

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 174
    .local v8, "scaled":I
    const/4 v10, 0x1

    if-ge v8, v10, :cond_2

    .line 175
    :cond_1
    const/4 v10, -0x1

    return v10

    .line 174
    :cond_2
    const/4 v10, 0x4

    if-gt v8, v10, :cond_1

    .line 177
    and-int/lit8 v10, v4, 0x1

    if-eqz v10, :cond_4

    .line 182
    shl-int/2addr v7, v8

    .line 172
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 178
    :cond_4
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    if-ge v5, v8, :cond_3

    .line 179
    shl-int/lit8 v10, v7, 0x1

    or-int/lit8 v7, v10, 0x1

    .line 178
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 185
    .end local v5    # "j":I
    .end local v8    # "scaled":I
    :cond_5
    return v7
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 26
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
    .line 69
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/zxing/oned/Code93Reader;->findAsteriskPattern(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v19

    .line 71
    .local v19, "start":[I
    const/16 v21, 0x1

    aget v21, v19, v21

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v14

    .line 72
    .local v14, "nextStart":I
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v10

    .line 74
    .local v10, "end":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/oned/Code93Reader;->counters:[I

    move-object/from16 v20, v0

    .line 75
    .local v20, "theCounters":[I
    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Ljava/util/Arrays;->fill([II)V

    .line 76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/oned/Code93Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    .line 77
    .local v16, "result":Ljava/lang/StringBuilder;
    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 82
    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-static {v0, v14, v1}, Lcom/google/zxing/oned/Code93Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 83
    invoke-static/range {v20 .. v20}, Lcom/google/zxing/oned/Code93Reader;->toPattern([I)I

    move-result v15

    .line 84
    .local v15, "pattern":I
    if-ltz v15, :cond_1

    .line 87
    invoke-static {v15}, Lcom/google/zxing/oned/Code93Reader;->patternToChar(I)C

    move-result v9

    .line 88
    .local v9, "decodedChar":C
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    move v12, v14

    .line 90
    .local v12, "lastStart":I
    move-object/from16 v7, v20

    .local v7, "-l_15_R":Ljava/lang/Object;
    move-object/from16 v0, v20

    array-length v6, v0

    .local v6, "-l_14_I":I
    const/4 v5, 0x0

    .local v5, "-l_13_I":I
    :goto_0
    if-ge v5, v6, :cond_2

    aget v8, v20, v5

    .line 91
    .local v8, "counter":I
    add-int/2addr v14, v8

    .line 90
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 85
    .end local v5    # "-l_13_I":I
    .end local v6    # "-l_14_I":I
    .end local v7    # "-l_15_R":Ljava/lang/Object;
    .end local v8    # "counter":I
    .end local v9    # "decodedChar":C
    .end local v12    # "lastStart":I
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v21

    throw v21

    .line 94
    .restart local v5    # "-l_13_I":I
    .restart local v6    # "-l_14_I":I
    .restart local v7    # "-l_15_R":Ljava/lang/Object;
    .restart local v9    # "decodedChar":C
    .restart local v12    # "lastStart":I
    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v14

    .line 95
    const/16 v21, 0x2a

    move/from16 v0, v21

    if-ne v9, v0, :cond_0

    .line 96
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 98
    const/4 v11, 0x0

    .line 99
    .local v11, "lastPatternSize":I
    move-object/from16 v7, v20

    move-object/from16 v0, v20

    array-length v6, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_3

    aget v8, v20, v5

    .line 100
    .restart local v8    # "counter":I
    add-int/2addr v11, v8

    .line 99
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 104
    .end local v8    # "counter":I
    :cond_3
    if-ne v14, v10, :cond_5

    .line 105
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v21

    throw v21

    .line 104
    :cond_5
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 108
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_6

    .line 113
    invoke-static/range {v16 .. v16}, Lcom/google/zxing/oned/Code93Reader;->checkChecksums(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x2

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 117
    invoke-static/range {v16 .. v16}, Lcom/google/zxing/oned/Code93Reader;->decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    .line 119
    .local v17, "resultString":Ljava/lang/String;
    const/16 v21, 0x1

    aget v21, v19, v21

    const/16 v22, 0x0

    aget v22, v19, v22

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v13, v21, v22

    .line 120
    .local v13, "left":F
    int-to-float v0, v12

    move/from16 v21, v0

    int-to-float v0, v11

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v18, v21, v22

    .line 121
    .local v18, "right":F
    new-instance v21, Lcom/google/zxing/Result;

    .line 124
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    .line 125
    new-instance v24, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v0, v13, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v24, v22, v23

    const/16 v23, 0x1

    .line 126
    new-instance v24, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v18

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v24, v22, v23

    .line 127
    sget-object v23, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    .line 123
    const/16 v24, 0x0

    .line 121
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    move-object/from16 v2, v24

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v21

    .line 110
    .end local v13    # "left":F
    .end local v17    # "resultString":Ljava/lang/String;
    .end local v18    # "right":F
    :cond_6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v21

    throw v21
.end method
