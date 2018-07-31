.class public final Lcom/google/zxing/datamatrix/decoder/Version;
.super Ljava/lang/Object;
.source "Version.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/datamatrix/decoder/Version$ECB;,
        Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    }
.end annotation


# static fields
.field private static final VERSIONS:[Lcom/google/zxing/datamatrix/decoder/Version;


# instance fields
.field private final dataRegionSizeColumns:I

.field private final dataRegionSizeRows:I

.field private final ecBlocks:Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

.field private final symbolSizeColumns:I

.field private final symbolSizeRows:I

.field private final totalCodewords:I

.field private final versionNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/google/zxing/datamatrix/decoder/Version;->buildVersions()[Lcom/google/zxing/datamatrix/decoder/Version;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/datamatrix/decoder/Version;->VERSIONS:[Lcom/google/zxing/datamatrix/decoder/Version;

    return-void
.end method

.method private constructor <init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V
    .locals 9
    .param p1, "versionNumber"    # I
    .param p2, "symbolSizeRows"    # I
    .param p3, "symbolSizeColumns"    # I
    .param p4, "dataRegionSizeRows"    # I
    .param p5, "dataRegionSizeColumns"    # I
    .param p6, "ecBlocks"    # Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/google/zxing/datamatrix/decoder/Version;->versionNumber:I

    .line 46
    iput p2, p0, Lcom/google/zxing/datamatrix/decoder/Version;->symbolSizeRows:I

    .line 47
    iput p3, p0, Lcom/google/zxing/datamatrix/decoder/Version;->symbolSizeColumns:I

    .line 48
    iput p4, p0, Lcom/google/zxing/datamatrix/decoder/Version;->dataRegionSizeRows:I

    .line 49
    iput p5, p0, Lcom/google/zxing/datamatrix/decoder/Version;->dataRegionSizeColumns:I

    .line 50
    iput-object p6, p0, Lcom/google/zxing/datamatrix/decoder/Version;->ecBlocks:Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    .line 53
    const/4 v6, 0x0

    .line 54
    .local v6, "total":I
    invoke-virtual {p6}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECCodewords()I

    move-result v4

    .line 55
    .local v4, "ecCodewords":I
    invoke-virtual {p6}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECBlocks()[Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-result-object v5

    .line 56
    .local v5, "ecbArray":[Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    move-object v2, v5

    .local v2, "-l_13_R":Ljava/lang/Object;
    array-length v1, v5

    .local v1, "-l_12_I":I
    const/4 v0, 0x0

    .local v0, "-l_11_I":I
    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v3, v2, v0

    .line 57
    .local v3, "ecBlock":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getCount()I

    move-result v7

    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getDataCodewords()I

    move-result v8

    add-int/2addr v8, v4

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    .end local v3    # "ecBlock":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    :cond_0
    iput v6, p0, Lcom/google/zxing/datamatrix/decoder/Version;->totalCodewords:I

    .line 60
    return-void
.end method

.method private static buildVersions()[Lcom/google/zxing/datamatrix/decoder/Version;
    .locals 14

    .prologue
    .line 173
    const/16 v0, 0x1e

    new-array v7, v0, [Lcom/google/zxing/datamatrix/decoder/Version;

    const/4 v8, 0x0

    .line 174
    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    const/4 v1, 0x1

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0x8

    const/16 v5, 0x8

    .line 175
    new-instance v6, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x3

    invoke-direct {v9, v11, v12, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/4 v10, 0x0

    const/4 v11, 0x5

    invoke-direct {v6, v11, v9, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 174
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/4 v8, 0x1

    .line 176
    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    const/4 v1, 0x2

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0xa

    const/16 v5, 0xa

    .line 177
    new-instance v6, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/4 v10, 0x0

    const/4 v11, 0x7

    invoke-direct {v6, v11, v9, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 176
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/4 v8, 0x2

    .line 178
    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    const/4 v1, 0x3

    const/16 v2, 0xe

    const/16 v3, 0xe

    const/16 v4, 0xc

    const/16 v5, 0xc

    .line 179
    new-instance v6, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v12, 0x8

    invoke-direct {v9, v11, v12, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/4 v10, 0x0

    const/16 v11, 0xa

    invoke-direct {v6, v11, v9, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 178
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/4 v8, 0x3

    .line 180
    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    const/4 v1, 0x4

    const/16 v2, 0x10

    const/16 v3, 0x10

    const/16 v4, 0xe

    const/16 v5, 0xe

    .line 181
    new-instance v6, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v12, 0xc

    invoke-direct {v9, v11, v12, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/4 v10, 0x0

    const/16 v11, 0xc

    invoke-direct {v6, v11, v9, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 180
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/4 v8, 0x4

    .line 182
    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    const/4 v1, 0x5

    const/16 v2, 0x12

    const/16 v3, 0x12

    const/16 v4, 0x10

    const/16 v5, 0x10

    .line 183
    new-instance v6, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v12, 0x12

    invoke-direct {v9, v11, v12, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/4 v10, 0x0

    const/16 v11, 0xe

    invoke-direct {v6, v11, v9, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 182
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/4 v8, 0x5

    .line 184
    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    const/4 v1, 0x6

    const/16 v2, 0x14

    const/16 v3, 0x14

    const/16 v4, 0x12

    const/16 v5, 0x12

    .line 185
    new-instance v6, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v12, 0x16

    invoke-direct {v9, v11, v12, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/4 v10, 0x0

    const/16 v11, 0x12

    invoke-direct {v6, v11, v9, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 184
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/4 v8, 0x6

    .line 186
    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    const/4 v1, 0x7

    const/16 v2, 0x16

    const/16 v3, 0x16

    const/16 v4, 0x14

    const/16 v5, 0x14

    .line 187
    new-instance v6, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v12, 0x1e

    invoke-direct {v9, v11, v12, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/4 v10, 0x0

    const/16 v11, 0x14

    invoke-direct {v6, v11, v9, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 186
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/4 v8, 0x7

    .line 188
    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    const/16 v1, 0x8

    const/16 v2, 0x18

    const/16 v3, 0x18

    const/16 v4, 0x16

    const/16 v5, 0x16

    .line 189
    new-instance v6, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v12, 0x24

    invoke-direct {v9, v11, v12, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/4 v10, 0x0

    const/16 v11, 0x18

    invoke-direct {v6, v11, v9, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 188
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/16 v8, 0x8

    .line 190
    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    const/16 v1, 0x9

    const/16 v2, 0x1a

    const/16 v3, 0x1a

    const/16 v4, 0x18

    const/16 v5, 0x18

    .line 191
    new-instance v6, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v12, 0x2c

    invoke-direct {v9, v11, v12, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/4 v10, 0x0

    const/16 v11, 0x1c

    invoke-direct {v6, v11, v9, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 190
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/16 v8, 0x9

    .line 192
    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    const/16 v1, 0xa

    const/16 v2, 0x20

    const/16 v3, 0x20

    const/16 v4, 0xe

    const/16 v5, 0xe

    .line 193
    new-instance v6, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v12, 0x3e

    invoke-direct {v9, v11, v12, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/4 v10, 0x0

    const/16 v11, 0x24

    invoke-direct {v6, v11, v9, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 192
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/16 v8, 0xa

    .line 194
    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    const/16 v1, 0xb

    const/16 v2, 0x24

    const/16 v3, 0x24

    const/16 v4, 0x10

    const/16 v5, 0x10

    .line 195
    new-instance v6, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v12, 0x56

    invoke-direct {v9, v11, v12, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/4 v10, 0x0

    const/16 v11, 0x2a

    invoke-direct {v6, v11, v9, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 194
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/16 v8, 0xb

    .line 196
    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    const/16 v1, 0xc

    const/16 v2, 0x28

    const/16 v3, 0x28

    const/16 v4, 0x12

    const/16 v5, 0x12

    .line 197
    new-instance v6, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v12, 0x72

    invoke-direct {v9, v11, v12, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/4 v10, 0x0

    const/16 v11, 0x30

    invoke-direct {v6, v11, v9, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 196
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/16 v8, 0xc

    .line 198
    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    const/16 v1, 0xd

    const/16 v2, 0x2c

    const/16 v3, 0x2c

    const/16 v4, 0x14

    const/16 v5, 0x14

    .line 199
    new-instance v6, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v12, 0x90

    invoke-direct {v9, v11, v12, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/4 v10, 0x0

    const/16 v11, 0x38

    invoke-direct {v6, v11, v9, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 198
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/16 v8, 0xd

    .line 200
    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    const/16 v1, 0xe

    const/16 v2, 0x30

    const/16 v3, 0x30

    const/16 v4, 0x16

    const/16 v5, 0x16

    .line 201
    new-instance v6, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v12, 0xae

    invoke-direct {v9, v11, v12, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/4 v10, 0x0

    const/16 v11, 0x44

    invoke-direct {v6, v11, v9, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 200
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/16 v8, 0xe

    .line 202
    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    const/16 v1, 0xf

    const/16 v2, 0x34

    const/16 v3, 0x34

    const/16 v4, 0x18

    const/16 v5, 0x18

    .line 203
    new-instance v6, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/16 v12, 0x66

    invoke-direct {v9, v11, v12, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/4 v10, 0x0

    const/16 v11, 0x2a

    invoke-direct {v6, v11, v9, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 202
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/16 v8, 0xf

    .line 204
    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    const/16 v1, 0x10

    const/16 v2, 0x40

    const/16 v3, 0x40

    const/16 v4, 0xe

    const/16 v5, 0xe

    .line 205
    new-instance v6, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/16 v12, 0x8c

    invoke-direct {v9, v11, v12, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/4 v10, 0x0

    const/16 v11, 0x38

    invoke-direct {v6, v11, v9, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 204
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/16 v8, 0x10

    .line 206
    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    const/16 v1, 0x11

    const/16 v2, 0x48

    const/16 v3, 0x48

    const/16 v4, 0x10

    const/16 v5, 0x10

    .line 207
    new-instance v6, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/16 v12, 0x5c

    invoke-direct {v9, v11, v12, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/4 v10, 0x0

    const/16 v11, 0x24

    invoke-direct {v6, v11, v9, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 206
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/16 v8, 0x11

    .line 208
    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    const/16 v1, 0x12

    const/16 v2, 0x50

    const/16 v3, 0x50

    const/16 v4, 0x12

    const/16 v5, 0x12

    .line 209
    new-instance v6, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/16 v12, 0x72

    invoke-direct {v9, v11, v12, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/4 v10, 0x0

    const/16 v11, 0x30

    invoke-direct {v6, v11, v9, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 208
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/16 v8, 0x12

    .line 210
    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    const/16 v1, 0x13

    const/16 v2, 0x58

    const/16 v3, 0x58

    const/16 v4, 0x14

    const/16 v5, 0x14

    .line 211
    new-instance v6, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/16 v12, 0x90

    invoke-direct {v9, v11, v12, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/4 v10, 0x0

    const/16 v11, 0x38

    invoke-direct {v6, v11, v9, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 210
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/16 v8, 0x13

    .line 212
    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    const/16 v1, 0x14

    const/16 v2, 0x60

    const/16 v3, 0x60

    const/16 v4, 0x16

    const/16 v5, 0x16

    .line 213
    new-instance v6, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/16 v12, 0xae

    invoke-direct {v9, v11, v12, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/4 v10, 0x0

    const/16 v11, 0x44

    invoke-direct {v6, v11, v9, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 212
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/16 v8, 0x14

    .line 214
    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    const/16 v1, 0x15

    const/16 v2, 0x68

    const/16 v3, 0x68

    const/16 v4, 0x18

    const/16 v5, 0x18

    .line 215
    new-instance v6, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/16 v12, 0x88

    invoke-direct {v9, v11, v12, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/4 v10, 0x0

    const/16 v11, 0x38

    invoke-direct {v6, v11, v9, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 214
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/16 v8, 0x15

    .line 216
    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    const/16 v1, 0x16

    const/16 v2, 0x78

    const/16 v3, 0x78

    const/16 v4, 0x12

    const/16 v5, 0x12

    .line 217
    new-instance v6, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/16 v12, 0xaf

    invoke-direct {v9, v11, v12, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/4 v10, 0x0

    const/16 v11, 0x44

    invoke-direct {v6, v11, v9, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 216
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/16 v8, 0x16

    .line 218
    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    const/16 v1, 0x17

    const/16 v2, 0x84

    const/16 v3, 0x84

    const/16 v4, 0x14

    const/16 v5, 0x14

    .line 219
    new-instance v6, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/4 v10, 0x0

    const/16 v11, 0x8

    const/16 v12, 0xa3

    invoke-direct {v9, v11, v12, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/4 v10, 0x0

    const/16 v11, 0x3e

    invoke-direct {v6, v11, v9, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 218
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/16 v8, 0x17

    .line 220
    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    const/16 v1, 0x18

    const/16 v2, 0x90

    const/16 v3, 0x90

    const/16 v4, 0x16

    const/16 v5, 0x16

    .line 221
    new-instance v6, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/4 v10, 0x0

    const/16 v11, 0x8

    const/16 v12, 0x9c

    invoke-direct {v9, v11, v12, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    new-instance v10, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/16 v13, 0x9b

    invoke-direct {v10, v12, v13, v11}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/4 v11, 0x0

    const/16 v12, 0x3e

    invoke-direct {v6, v12, v9, v10, v11}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 220
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/16 v8, 0x18

    .line 222
    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    const/16 v1, 0x19

    const/16 v2, 0x8

    const/16 v3, 0x12

    const/4 v4, 0x6

    const/16 v5, 0x10

    .line 223
    new-instance v6, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/4 v10, 0x0

    const/4 v11, 0x7

    invoke-direct {v6, v11, v9, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 222
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/16 v8, 0x19

    .line 224
    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    const/16 v1, 0x1a

    const/16 v2, 0x8

    const/16 v3, 0x20

    const/4 v4, 0x6

    const/16 v5, 0xe

    .line 225
    new-instance v6, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v12, 0xa

    invoke-direct {v9, v11, v12, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/4 v10, 0x0

    const/16 v11, 0xb

    invoke-direct {v6, v11, v9, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 224
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/16 v8, 0x1a

    .line 226
    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    const/16 v1, 0x1b

    const/16 v2, 0xc

    const/16 v3, 0x1a

    const/16 v4, 0xa

    const/16 v5, 0x18

    .line 227
    new-instance v6, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v12, 0x10

    invoke-direct {v9, v11, v12, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/4 v10, 0x0

    const/16 v11, 0xe

    invoke-direct {v6, v11, v9, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 226
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/16 v8, 0x1b

    .line 228
    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    const/16 v1, 0x1c

    const/16 v2, 0xc

    const/16 v3, 0x24

    const/16 v4, 0xa

    const/16 v5, 0x10

    .line 229
    new-instance v6, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v12, 0x16

    invoke-direct {v9, v11, v12, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/4 v10, 0x0

    const/16 v11, 0x12

    invoke-direct {v6, v11, v9, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 228
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/16 v8, 0x1c

    .line 230
    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    const/16 v1, 0x1d

    const/16 v2, 0x10

    const/16 v3, 0x24

    const/16 v4, 0xe

    const/16 v5, 0x10

    .line 231
    new-instance v6, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v12, 0x20

    invoke-direct {v9, v11, v12, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/4 v10, 0x0

    const/16 v11, 0x18

    invoke-direct {v6, v11, v9, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 230
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    const/16 v8, 0x1d

    .line 232
    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    const/16 v1, 0x1e

    const/16 v2, 0x10

    const/16 v3, 0x30

    const/16 v4, 0xe

    const/16 v5, 0x16

    .line 233
    new-instance v6, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v12, 0x31

    invoke-direct {v9, v11, v12, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/4 v10, 0x0

    const/16 v11, 0x1c

    invoke-direct {v6, v11, v9, v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 232
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v0, v7, v8

    .line 173
    return-object v7
.end method

.method public static getVersionForDimensions(II)Lcom/google/zxing/datamatrix/decoder/Version;
    .locals 5
    .param p0, "numRows"    # I
    .param p1, "numColumns"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 99
    and-int/lit8 v4, p0, 0x1

    if-eqz v4, :cond_1

    .line 100
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    .line 99
    :cond_1
    and-int/lit8 v4, p1, 0x1

    if-nez v4, :cond_0

    .line 103
    sget-object v2, Lcom/google/zxing/datamatrix/decoder/Version;->VERSIONS:[Lcom/google/zxing/datamatrix/decoder/Version;

    .local v2, "-l_5_R":Ljava/lang/Object;
    array-length v1, v2

    .local v1, "-l_4_I":I
    const/4 v0, 0x0

    .local v0, "-l_3_I":I
    :goto_0
    if-ge v0, v1, :cond_4

    aget-object v3, v2, v0

    .line 104
    .local v3, "version":Lcom/google/zxing/datamatrix/decoder/Version;
    iget v4, v3, Lcom/google/zxing/datamatrix/decoder/Version;->symbolSizeRows:I

    if-eq v4, p0, :cond_3

    .line 103
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_3
    iget v4, v3, Lcom/google/zxing/datamatrix/decoder/Version;->symbolSizeColumns:I

    if-ne v4, p1, :cond_2

    .line 105
    return-object v3

    .line 109
    .end local v3    # "version":Lcom/google/zxing/datamatrix/decoder/Version;
    :cond_4
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4
.end method


# virtual methods
.method public getDataRegionSizeColumns()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/google/zxing/datamatrix/decoder/Version;->dataRegionSizeColumns:I

    return v0
.end method

.method public getDataRegionSizeRows()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/google/zxing/datamatrix/decoder/Version;->dataRegionSizeRows:I

    return v0
.end method

.method getECBlocks()Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/Version;->ecBlocks:Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    return-object v0
.end method

.method public getSymbolSizeColumns()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/google/zxing/datamatrix/decoder/Version;->symbolSizeColumns:I

    return v0
.end method

.method public getSymbolSizeRows()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/google/zxing/datamatrix/decoder/Version;->symbolSizeRows:I

    return v0
.end method

.method public getTotalCodewords()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/google/zxing/datamatrix/decoder/Version;->totalCodewords:I

    return v0
.end method

.method public getVersionNumber()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/google/zxing/datamatrix/decoder/Version;->versionNumber:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/google/zxing/datamatrix/decoder/Version;->versionNumber:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
