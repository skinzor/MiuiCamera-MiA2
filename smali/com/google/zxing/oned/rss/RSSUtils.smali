.class public final Lcom/google/zxing/oned/rss/RSSUtils;
.super Ljava/lang/Object;
.source "RSSUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static combins(II)I
    .locals 6
    .param p0, "n"    # I
    .param p1, "r"    # I

    .prologue
    .line 106
    sub-int v5, p0, p1

    if-gt v5, p1, :cond_0

    .line 110
    sub-int v3, p0, p1

    .line 111
    .local v3, "minDenom":I
    move v2, p1

    .line 113
    .local v2, "maxDenom":I
    :goto_0
    const/4 v4, 0x1

    .line 114
    .local v4, "val":I
    const/4 v1, 0x1

    .line 115
    .local v1, "j":I
    move v0, p0

    .local v0, "i":I
    :goto_1
    if-le v0, v2, :cond_3

    .line 116
    mul-int/2addr v4, v0

    .line 117
    if-le v1, v3, :cond_1

    .line 115
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 107
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "maxDenom":I
    .end local v3    # "minDenom":I
    .end local v4    # "val":I
    :cond_0
    move v3, p1

    .line 108
    .restart local v3    # "minDenom":I
    sub-int v2, p0, p1

    .restart local v2    # "maxDenom":I
    goto :goto_0

    .line 118
    .restart local v0    # "i":I
    .restart local v1    # "j":I
    .restart local v4    # "val":I
    :cond_1
    div-int/2addr v4, v1

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 123
    :cond_2
    div-int/2addr v4, v1

    .line 124
    add-int/lit8 v1, v1, 0x1

    .line 122
    :cond_3
    if-le v1, v3, :cond_2

    .line 126
    return v4
.end method

.method public static getRSSvalue([IIZ)I
    .locals 16
    .param p0, "widths"    # [I
    .param p1, "maxWidth"    # I
    .param p2, "noNarrow"    # Z

    .prologue
    .line 67
    move-object/from16 v0, p0

    array-length v5, v0

    .line 68
    .local v5, "elements":I
    const/4 v9, 0x0

    .line 69
    .local v9, "n":I
    move-object/from16 v3, p0

    .local v3, "-l_8_R":Ljava/lang/Object;
    move-object/from16 v0, p0

    array-length v2, v0

    .local v2, "-l_7_I":I
    const/4 v1, 0x0

    .local v1, "-l_6_I":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v13, p0, v1

    .line 70
    .local v13, "width":I
    add-int/2addr v9, v13

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    .end local v13    # "width":I
    :cond_0
    const/4 v12, 0x0

    .line 73
    .local v12, "val":I
    const/4 v10, 0x0

    .line 74
    .local v10, "narrowMask":I
    const/4 v4, 0x0

    .local v4, "bar":I
    :goto_1
    add-int/lit8 v14, v5, -0x1

    if-ge v4, v14, :cond_7

    .line 76
    const/4 v6, 0x1

    .local v6, "elmWidth":I
    const/4 v14, 0x1

    shl-int/2addr v14, v4

    or-int/2addr v10, v14

    .line 77
    :goto_2
    aget v14, p0, v4

    .line 76
    if-ge v6, v14, :cond_6

    .line 79
    sub-int v14, v9, v6

    add-int/lit8 v14, v14, -0x1

    sub-int v15, v5, v4

    add-int/lit8 v15, v15, -0x2

    invoke-static {v14, v15}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    move-result v11

    .line 80
    .local v11, "subVal":I
    if-nez p2, :cond_2

    .line 85
    :cond_1
    :goto_3
    sub-int v14, v5, v4

    add-int/lit8 v14, v14, -0x1

    const/4 v15, 0x1

    if-gt v14, v15, :cond_3

    .line 93
    sub-int v14, v9, v6

    move/from16 v0, p1

    if-gt v14, v0, :cond_5

    .line 96
    :goto_4
    add-int/2addr v12, v11

    .line 78
    add-int/lit8 v6, v6, 0x1

    const/4 v14, 0x1

    shl-int/2addr v14, v4

    xor-int/lit8 v14, v14, -0x1

    and-int/2addr v10, v14

    goto :goto_2

    .line 80
    :cond_2
    if-nez v10, :cond_1

    .line 81
    sub-int v14, v9, v6

    sub-int v15, v5, v4

    add-int/lit8 v15, v15, -0x1

    sub-int/2addr v14, v15

    sub-int v15, v5, v4

    add-int/lit8 v15, v15, -0x1

    if-lt v14, v15, :cond_1

    .line 82
    sub-int v14, v9, v6

    sub-int v15, v5, v4

    sub-int/2addr v14, v15

    .line 83
    sub-int v15, v5, v4

    add-int/lit8 v15, v15, -0x2

    invoke-static {v14, v15}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    move-result v14

    sub-int/2addr v11, v14

    goto :goto_3

    .line 86
    :cond_3
    const/4 v7, 0x0

    .line 87
    .local v7, "lessVal":I
    sub-int v14, v9, v6

    sub-int v15, v5, v4

    add-int/lit8 v15, v15, -0x2

    sub-int v8, v14, v15

    .local v8, "mxwElement":I
    :goto_5
    move/from16 v0, p1

    if-le v8, v0, :cond_4

    .line 89
    sub-int v14, v9, v6

    sub-int/2addr v14, v8

    add-int/lit8 v14, v14, -0x1

    .line 90
    sub-int v15, v5, v4

    add-int/lit8 v15, v15, -0x3

    invoke-static {v14, v15}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    move-result v14

    add-int/2addr v7, v14

    .line 88
    add-int/lit8 v8, v8, -0x1

    goto :goto_5

    .line 92
    :cond_4
    add-int/lit8 v14, v5, -0x1

    sub-int/2addr v14, v4

    mul-int/2addr v14, v7

    sub-int/2addr v11, v14

    goto :goto_4

    .line 94
    .end local v7    # "lessVal":I
    .end local v8    # "mxwElement":I
    :cond_5
    add-int/lit8 v11, v11, -0x1

    goto :goto_4

    .line 98
    .end local v11    # "subVal":I
    :cond_6
    sub-int/2addr v9, v6

    .line 74
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 100
    .end local v6    # "elmWidth":I
    :cond_7
    return v12
.end method
