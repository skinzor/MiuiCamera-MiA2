.class public final Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;
.super Lcom/google/zxing/oned/rss/AbstractRSSReader;
.source "RSSExpandedReader.java"


# static fields
.field private static final EVEN_TOTAL_SUBSET:[I

.field private static final FINDER_PATTERNS:[[I

.field private static final FINDER_PATTERN_SEQUENCES:[[I

.field private static final GSUM:[I

.field private static final SYMBOL_WIDEST:[I

.field private static final WEIGHTS:[[I


# instance fields
.field private final pairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation
.end field

.field private final rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;"
        }
    .end annotation
.end field

.field private final startEnd:[I

.field private startFromEven:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 54
    new-array v0, v9, [I

    const/4 v1, 0x7

    const/4 v2, 0x0

    aput v1, v0, v2

    aput v9, v0, v5

    aput v8, v0, v7

    aput v6, v0, v6

    aput v5, v0, v8

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->SYMBOL_WIDEST:[I

    .line 55
    new-array v0, v9, [I

    const/4 v1, 0x0

    aput v8, v0, v1

    const/16 v1, 0x14

    aput v1, v0, v5

    const/16 v1, 0x34

    aput v1, v0, v7

    const/16 v1, 0x68

    aput v1, v0, v6

    const/16 v1, 0xcc

    aput v1, v0, v8

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->EVEN_TOTAL_SUBSET:[I

    .line 56
    new-array v0, v9, [I

    const/16 v1, 0x15c

    aput v1, v0, v5

    const/16 v1, 0x56c

    aput v1, v0, v7

    const/16 v1, 0xb84

    aput v1, v0, v6

    const/16 v1, 0xf94

    aput v1, v0, v8

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->GSUM:[I

    .line 58
    const/4 v0, 0x6

    new-array v0, v0, [[I

    const/4 v1, 0x0

    .line 59
    new-array v2, v8, [I

    const/4 v3, 0x0

    aput v5, v2, v3

    const/16 v3, 0x8

    aput v3, v2, v5

    aput v8, v2, v7

    aput v5, v2, v6

    aput-object v2, v0, v1

    .line 60
    new-array v1, v8, [I

    const/4 v2, 0x0

    aput v6, v1, v2

    const/4 v2, 0x6

    aput v2, v1, v5

    aput v8, v1, v7

    aput v5, v1, v6

    aput-object v1, v0, v5

    .line 61
    new-array v1, v8, [I

    const/4 v2, 0x0

    aput v6, v1, v2

    aput v8, v1, v5

    const/4 v2, 0x6

    aput v2, v1, v7

    aput v5, v1, v6

    aput-object v1, v0, v7

    .line 62
    new-array v1, v8, [I

    const/4 v2, 0x0

    aput v6, v1, v2

    aput v7, v1, v5

    const/16 v2, 0x8

    aput v2, v1, v7

    aput v5, v1, v6

    aput-object v1, v0, v6

    .line 63
    new-array v1, v8, [I

    const/4 v2, 0x0

    aput v7, v1, v2

    const/4 v2, 0x6

    aput v2, v1, v5

    aput v9, v1, v7

    aput v5, v1, v6

    aput-object v1, v0, v8

    .line 64
    new-array v1, v8, [I

    const/4 v2, 0x0

    aput v7, v1, v2

    aput v7, v1, v5

    const/16 v2, 0x9

    aput v2, v1, v7

    aput v5, v1, v6

    aput-object v1, v0, v9

    .line 58
    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERNS:[[I

    .line 67
    const/16 v0, 0x17

    new-array v0, v0, [[I

    const/4 v1, 0x0

    .line 68
    const/16 v2, 0x8

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v5, v2, v3

    aput v6, v2, v5

    const/16 v3, 0x9

    aput v3, v2, v7

    const/16 v3, 0x1b

    aput v3, v2, v6

    const/16 v3, 0x51

    aput v3, v2, v8

    const/16 v3, 0x20

    aput v3, v2, v9

    const/16 v3, 0x60

    const/4 v4, 0x6

    aput v3, v2, v4

    const/16 v3, 0x4d

    const/4 v4, 0x7

    aput v3, v2, v4

    aput-object v2, v0, v1

    .line 69
    const/16 v1, 0x8

    new-array v1, v1, [I

    const/16 v2, 0x14

    const/4 v3, 0x0

    aput v2, v1, v3

    const/16 v2, 0x3c

    aput v2, v1, v5

    const/16 v2, 0xb4

    aput v2, v1, v7

    const/16 v2, 0x76

    aput v2, v1, v6

    const/16 v2, 0x8f

    aput v2, v1, v8

    const/4 v2, 0x7

    aput v2, v1, v9

    const/16 v2, 0x15

    const/4 v3, 0x6

    aput v2, v1, v3

    const/16 v2, 0x3f

    const/4 v3, 0x7

    aput v2, v1, v3

    aput-object v1, v0, v5

    .line 70
    const/16 v1, 0x8

    new-array v1, v1, [I

    const/16 v2, 0xbd

    const/4 v3, 0x0

    aput v2, v1, v3

    const/16 v2, 0x91

    aput v2, v1, v5

    const/16 v2, 0xd

    aput v2, v1, v7

    const/16 v2, 0x27

    aput v2, v1, v6

    const/16 v2, 0x75

    aput v2, v1, v8

    const/16 v2, 0x8c

    aput v2, v1, v9

    const/16 v2, 0xd1

    const/4 v3, 0x6

    aput v2, v1, v3

    const/16 v2, 0xcd

    const/4 v3, 0x7

    aput v2, v1, v3

    aput-object v1, v0, v7

    .line 71
    const/16 v1, 0x8

    new-array v1, v1, [I

    const/16 v2, 0xc1

    const/4 v3, 0x0

    aput v2, v1, v3

    const/16 v2, 0x9d

    aput v2, v1, v5

    const/16 v2, 0x31

    aput v2, v1, v7

    const/16 v2, 0x93

    aput v2, v1, v6

    const/16 v2, 0x13

    aput v2, v1, v8

    const/16 v2, 0x39

    aput v2, v1, v9

    const/16 v2, 0xab

    const/4 v3, 0x6

    aput v2, v1, v3

    const/16 v2, 0x5b

    const/4 v3, 0x7

    aput v2, v1, v3

    aput-object v1, v0, v6

    .line 72
    const/16 v1, 0x8

    new-array v1, v1, [I

    const/16 v2, 0x3e

    const/4 v3, 0x0

    aput v2, v1, v3

    const/16 v2, 0xba

    aput v2, v1, v5

    const/16 v2, 0x88

    aput v2, v1, v7

    const/16 v2, 0xc5

    aput v2, v1, v6

    const/16 v2, 0xa9

    aput v2, v1, v8

    const/16 v2, 0x55

    aput v2, v1, v9

    const/16 v2, 0x2c

    const/4 v3, 0x6

    aput v2, v1, v3

    const/16 v2, 0x84

    const/4 v3, 0x7

    aput v2, v1, v3

    aput-object v1, v0, v8

    .line 73
    const/16 v1, 0x8

    new-array v1, v1, [I

    const/16 v2, 0xb9

    const/4 v3, 0x0

    aput v2, v1, v3

    const/16 v2, 0x85

    aput v2, v1, v5

    const/16 v2, 0xbc

    aput v2, v1, v7

    const/16 v2, 0x8e

    aput v2, v1, v6

    aput v8, v1, v8

    const/16 v2, 0xc

    aput v2, v1, v9

    const/16 v2, 0x24

    const/4 v3, 0x6

    aput v2, v1, v3

    const/16 v2, 0x6c

    const/4 v3, 0x7

    aput v2, v1, v3

    aput-object v1, v0, v9

    const/4 v1, 0x6

    .line 74
    const/16 v2, 0x8

    new-array v2, v2, [I

    const/16 v3, 0x71

    const/4 v4, 0x0

    aput v3, v2, v4

    const/16 v3, 0x80

    aput v3, v2, v5

    const/16 v3, 0xad

    aput v3, v2, v7

    const/16 v3, 0x61

    aput v3, v2, v6

    const/16 v3, 0x50

    aput v3, v2, v8

    const/16 v3, 0x1d

    aput v3, v2, v9

    const/16 v3, 0x57

    const/4 v4, 0x6

    aput v3, v2, v4

    const/16 v3, 0x32

    const/4 v4, 0x7

    aput v3, v2, v4

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 75
    const/16 v2, 0x8

    new-array v2, v2, [I

    const/16 v3, 0x96

    const/4 v4, 0x0

    aput v3, v2, v4

    const/16 v3, 0x1c

    aput v3, v2, v5

    const/16 v3, 0x54

    aput v3, v2, v7

    const/16 v3, 0x29

    aput v3, v2, v6

    const/16 v3, 0x7b

    aput v3, v2, v8

    const/16 v3, 0x9e

    aput v3, v2, v9

    const/16 v3, 0x34

    const/4 v4, 0x6

    aput v3, v2, v4

    const/16 v3, 0x9c

    const/4 v4, 0x7

    aput v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 76
    const/16 v2, 0x8

    new-array v2, v2, [I

    const/16 v3, 0x2e

    const/4 v4, 0x0

    aput v3, v2, v4

    const/16 v3, 0x8a

    aput v3, v2, v5

    const/16 v3, 0xcb

    aput v3, v2, v7

    const/16 v3, 0xbb

    aput v3, v2, v6

    const/16 v3, 0x8b

    aput v3, v2, v8

    const/16 v3, 0xce

    aput v3, v2, v9

    const/16 v3, 0xc4

    const/4 v4, 0x6

    aput v3, v2, v4

    const/16 v3, 0xa6

    const/4 v4, 0x7

    aput v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 77
    const/16 v2, 0x8

    new-array v2, v2, [I

    const/16 v3, 0x4c

    const/4 v4, 0x0

    aput v3, v2, v4

    const/16 v3, 0x11

    aput v3, v2, v5

    const/16 v3, 0x33

    aput v3, v2, v7

    const/16 v3, 0x99

    aput v3, v2, v6

    const/16 v3, 0x25

    aput v3, v2, v8

    const/16 v3, 0x6f

    aput v3, v2, v9

    const/16 v3, 0x7a

    const/4 v4, 0x6

    aput v3, v2, v4

    const/16 v3, 0x9b

    const/4 v4, 0x7

    aput v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 78
    const/16 v2, 0x8

    new-array v2, v2, [I

    const/16 v3, 0x2b

    const/4 v4, 0x0

    aput v3, v2, v4

    const/16 v3, 0x81

    aput v3, v2, v5

    const/16 v3, 0xb0

    aput v3, v2, v7

    const/16 v3, 0x6a

    aput v3, v2, v6

    const/16 v3, 0x6b

    aput v3, v2, v8

    const/16 v3, 0x6e

    aput v3, v2, v9

    const/16 v3, 0x77

    const/4 v4, 0x6

    aput v3, v2, v4

    const/16 v3, 0x92

    const/4 v4, 0x7

    aput v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 79
    const/16 v2, 0x8

    new-array v2, v2, [I

    const/16 v3, 0x10

    const/4 v4, 0x0

    aput v3, v2, v4

    const/16 v3, 0x30

    aput v3, v2, v5

    const/16 v3, 0x90

    aput v3, v2, v7

    const/16 v3, 0xa

    aput v3, v2, v6

    const/16 v3, 0x1e

    aput v3, v2, v8

    const/16 v3, 0x5a

    aput v3, v2, v9

    const/16 v3, 0x3b

    const/4 v4, 0x6

    aput v3, v2, v4

    const/16 v3, 0xb1

    const/4 v4, 0x7

    aput v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 80
    const/16 v2, 0x8

    new-array v2, v2, [I

    const/16 v3, 0x6d

    const/4 v4, 0x0

    aput v3, v2, v4

    const/16 v3, 0x74

    aput v3, v2, v5

    const/16 v3, 0x89

    aput v3, v2, v7

    const/16 v3, 0xc8

    aput v3, v2, v6

    const/16 v3, 0xb2

    aput v3, v2, v8

    const/16 v3, 0x70

    aput v3, v2, v9

    const/16 v3, 0x7d

    const/4 v4, 0x6

    aput v3, v2, v4

    const/16 v3, 0xa4

    const/4 v4, 0x7

    aput v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 81
    const/16 v2, 0x8

    new-array v2, v2, [I

    const/16 v3, 0x46

    const/4 v4, 0x0

    aput v3, v2, v4

    const/16 v3, 0xd2

    aput v3, v2, v5

    const/16 v3, 0xd0

    aput v3, v2, v7

    const/16 v3, 0xca

    aput v3, v2, v6

    const/16 v3, 0xb8

    aput v3, v2, v8

    const/16 v3, 0x82

    aput v3, v2, v9

    const/16 v3, 0xb3

    const/4 v4, 0x6

    aput v3, v2, v4

    const/16 v3, 0x73

    const/4 v4, 0x7

    aput v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 82
    const/16 v2, 0x8

    new-array v2, v2, [I

    const/16 v3, 0x86

    const/4 v4, 0x0

    aput v3, v2, v4

    const/16 v3, 0xbf

    aput v3, v2, v5

    const/16 v3, 0x97

    aput v3, v2, v7

    const/16 v3, 0x1f

    aput v3, v2, v6

    const/16 v3, 0x5d

    aput v3, v2, v8

    const/16 v3, 0x44

    aput v3, v2, v9

    const/16 v3, 0xcc

    const/4 v4, 0x6

    aput v3, v2, v4

    const/16 v3, 0xbe

    const/4 v4, 0x7

    aput v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 83
    const/16 v2, 0x8

    new-array v2, v2, [I

    const/16 v3, 0x94

    const/4 v4, 0x0

    aput v3, v2, v4

    const/16 v3, 0x16

    aput v3, v2, v5

    const/16 v3, 0x42

    aput v3, v2, v7

    const/16 v3, 0xc6

    aput v3, v2, v6

    const/16 v3, 0xac

    aput v3, v2, v8

    const/16 v3, 0x5e

    aput v3, v2, v9

    const/16 v3, 0x47

    const/4 v4, 0x6

    aput v3, v2, v4

    const/4 v3, 0x7

    aput v7, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 84
    const/16 v2, 0x8

    new-array v2, v2, [I

    const/4 v3, 0x6

    const/4 v4, 0x0

    aput v3, v2, v4

    const/16 v3, 0x12

    aput v3, v2, v5

    const/16 v3, 0x36

    aput v3, v2, v7

    const/16 v3, 0xa2

    aput v3, v2, v6

    const/16 v3, 0x40

    aput v3, v2, v8

    const/16 v3, 0xc0

    aput v3, v2, v9

    const/16 v3, 0x9a

    const/4 v4, 0x6

    aput v3, v2, v4

    const/16 v3, 0x28

    const/4 v4, 0x7

    aput v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 85
    const/16 v2, 0x8

    new-array v2, v2, [I

    const/16 v3, 0x78

    const/4 v4, 0x0

    aput v3, v2, v4

    const/16 v3, 0x95

    aput v3, v2, v5

    const/16 v3, 0x19

    aput v3, v2, v7

    const/16 v3, 0x4b

    aput v3, v2, v6

    const/16 v3, 0xe

    aput v3, v2, v8

    const/16 v3, 0x2a

    aput v3, v2, v9

    const/16 v3, 0x7e

    const/4 v4, 0x6

    aput v3, v2, v4

    const/16 v3, 0xa7

    const/4 v4, 0x7

    aput v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 86
    const/16 v2, 0x8

    new-array v2, v2, [I

    const/16 v3, 0x4f

    const/4 v4, 0x0

    aput v3, v2, v4

    const/16 v3, 0x1a

    aput v3, v2, v5

    const/16 v3, 0x4e

    aput v3, v2, v7

    const/16 v3, 0x17

    aput v3, v2, v6

    const/16 v3, 0x45

    aput v3, v2, v8

    const/16 v3, 0xcf

    aput v3, v2, v9

    const/16 v3, 0xc7

    const/4 v4, 0x6

    aput v3, v2, v4

    const/16 v3, 0xaf

    const/4 v4, 0x7

    aput v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 87
    const/16 v2, 0x8

    new-array v2, v2, [I

    const/16 v3, 0x67

    const/4 v4, 0x0

    aput v3, v2, v4

    const/16 v3, 0x62

    aput v3, v2, v5

    const/16 v3, 0x53

    aput v3, v2, v7

    const/16 v3, 0x26

    aput v3, v2, v6

    const/16 v3, 0x72

    aput v3, v2, v8

    const/16 v3, 0x83

    aput v3, v2, v9

    const/16 v3, 0xb6

    const/4 v4, 0x6

    aput v3, v2, v4

    const/16 v3, 0x7c

    const/4 v4, 0x7

    aput v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 88
    const/16 v2, 0x8

    new-array v2, v2, [I

    const/16 v3, 0xa1

    const/4 v4, 0x0

    aput v3, v2, v4

    const/16 v3, 0x3d

    aput v3, v2, v5

    const/16 v3, 0xb7

    aput v3, v2, v7

    const/16 v3, 0x7f

    aput v3, v2, v6

    const/16 v3, 0xaa

    aput v3, v2, v8

    const/16 v3, 0x58

    aput v3, v2, v9

    const/16 v3, 0x35

    const/4 v4, 0x6

    aput v3, v2, v4

    const/16 v3, 0x9f

    const/4 v4, 0x7

    aput v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 89
    const/16 v2, 0x8

    new-array v2, v2, [I

    const/16 v3, 0x37

    const/4 v4, 0x0

    aput v3, v2, v4

    const/16 v3, 0xa5

    aput v3, v2, v5

    const/16 v3, 0x49

    aput v3, v2, v7

    const/16 v3, 0x8

    aput v3, v2, v6

    const/16 v3, 0x18

    aput v3, v2, v8

    const/16 v3, 0x48

    aput v3, v2, v9

    const/4 v3, 0x6

    aput v9, v2, v3

    const/16 v3, 0xf

    const/4 v4, 0x7

    aput v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 90
    const/16 v2, 0x8

    new-array v2, v2, [I

    const/16 v3, 0x2d

    const/4 v4, 0x0

    aput v3, v2, v4

    const/16 v3, 0x87

    aput v3, v2, v5

    const/16 v3, 0xc2

    aput v3, v2, v7

    const/16 v3, 0xa0

    aput v3, v2, v6

    const/16 v3, 0x3a

    aput v3, v2, v8

    const/16 v3, 0xae

    aput v3, v2, v9

    const/16 v3, 0x64

    const/4 v4, 0x6

    aput v3, v2, v4

    const/16 v3, 0x59

    const/4 v4, 0x7

    aput v3, v2, v4

    aput-object v2, v0, v1

    .line 67
    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    .line 100
    const/16 v0, 0xa

    new-array v0, v0, [[I

    const/4 v1, 0x0

    .line 101
    new-array v2, v7, [I

    aput-object v2, v0, v1

    .line 102
    new-array v1, v6, [I

    aput v5, v1, v5

    aput v5, v1, v7

    aput-object v1, v0, v5

    .line 103
    new-array v1, v8, [I

    aput v7, v1, v5

    aput v5, v1, v7

    aput v6, v1, v6

    aput-object v1, v0, v7

    .line 104
    new-array v1, v9, [I

    aput v8, v1, v5

    aput v5, v1, v7

    aput v6, v1, v6

    aput v7, v1, v8

    aput-object v1, v0, v6

    .line 105
    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v8, v1, v5

    aput v5, v1, v7

    aput v6, v1, v6

    aput v6, v1, v8

    aput v9, v1, v9

    aput-object v1, v0, v8

    .line 106
    const/4 v1, 0x7

    new-array v1, v1, [I

    aput v8, v1, v5

    aput v5, v1, v7

    aput v6, v1, v6

    aput v8, v1, v8

    aput v9, v1, v9

    const/4 v2, 0x6

    aput v9, v1, v2

    aput-object v1, v0, v9

    const/4 v1, 0x6

    .line 107
    const/16 v2, 0x8

    new-array v2, v2, [I

    aput v5, v2, v7

    aput v5, v2, v6

    aput v7, v2, v8

    aput v7, v2, v9

    const/4 v3, 0x6

    aput v6, v2, v3

    const/4 v3, 0x7

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 108
    const/16 v2, 0x9

    new-array v2, v2, [I

    aput v5, v2, v7

    aput v5, v2, v6

    aput v7, v2, v8

    aput v7, v2, v9

    const/4 v3, 0x6

    aput v6, v2, v3

    const/4 v3, 0x7

    aput v8, v2, v3

    const/16 v3, 0x8

    aput v8, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 109
    const/16 v2, 0xa

    new-array v2, v2, [I

    aput v5, v2, v7

    aput v5, v2, v6

    aput v7, v2, v8

    aput v7, v2, v9

    const/4 v3, 0x6

    aput v6, v2, v3

    const/4 v3, 0x7

    aput v8, v2, v3

    const/16 v3, 0x8

    aput v9, v2, v3

    const/16 v3, 0x9

    aput v9, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 110
    const/16 v2, 0xb

    new-array v2, v2, [I

    aput v5, v2, v7

    aput v5, v2, v6

    aput v7, v2, v8

    aput v6, v2, v9

    const/4 v3, 0x6

    aput v6, v2, v3

    const/4 v3, 0x7

    aput v8, v2, v3

    const/16 v3, 0x8

    aput v8, v2, v3

    const/16 v3, 0x9

    aput v9, v2, v3

    const/16 v3, 0xa

    aput v9, v2, v3

    aput-object v2, v0, v1

    .line 100
    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERN_SEQUENCES:[[I

    .line 115
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;-><init>()V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    .line 119
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    .line 52
    return-void
.end method

.method private adjustOddEvenCounts(I)V
    .locals 14
    .param p1, "numModules"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/16 v13, 0xd

    const/4 v12, 0x4

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 699
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v11

    invoke-static {v11}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->count([I)I

    move-result v8

    .line 700
    .local v8, "oddSum":I
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v11

    invoke-static {v11}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->count([I)I

    move-result v3

    .line 701
    .local v3, "evenSum":I
    add-int v11, v8, v3

    sub-int v6, v11, p1

    .line 702
    .local v6, "mismatch":I
    and-int/lit8 v11, v8, 0x1

    if-eq v11, v10, :cond_0

    move v7, v9

    .line 703
    .local v7, "oddParityBad":Z
    :goto_0
    and-int/lit8 v11, v3, 0x1

    if-eqz v11, :cond_1

    move v2, v9

    .line 705
    .local v2, "evenParityBad":Z
    :goto_1
    const/4 v5, 0x0

    .line 706
    .local v5, "incrementOdd":Z
    const/4 v1, 0x0

    .line 708
    .local v1, "decrementOdd":Z
    if-gt v8, v13, :cond_2

    .line 710
    if-lt v8, v12, :cond_3

    .line 713
    :goto_2
    const/4 v4, 0x0

    .line 714
    .local v4, "incrementEven":Z
    const/4 v0, 0x0

    .line 715
    .local v0, "decrementEven":Z
    if-gt v3, v13, :cond_4

    .line 717
    if-lt v3, v12, :cond_5

    .line 721
    :goto_3
    if-eq v6, v10, :cond_6

    .line 733
    const/4 v9, -0x1

    if-eq v6, v9, :cond_b

    .line 745
    if-eqz v6, :cond_f

    .line 765
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .end local v0    # "decrementEven":Z
    .end local v1    # "decrementOdd":Z
    .end local v2    # "evenParityBad":Z
    .end local v4    # "incrementEven":Z
    .end local v5    # "incrementOdd":Z
    .end local v7    # "oddParityBad":Z
    :cond_0
    move v7, v10

    .line 702
    goto :goto_0

    .restart local v7    # "oddParityBad":Z
    :cond_1
    move v2, v10

    .line 703
    goto :goto_1

    .line 709
    .restart local v1    # "decrementOdd":Z
    .restart local v2    # "evenParityBad":Z
    .restart local v5    # "incrementOdd":Z
    :cond_2
    const/4 v1, 0x1

    goto :goto_2

    .line 711
    :cond_3
    const/4 v5, 0x1

    goto :goto_2

    .line 716
    .restart local v0    # "decrementEven":Z
    .restart local v4    # "incrementEven":Z
    :cond_4
    const/4 v0, 0x1

    goto :goto_3

    .line 718
    :cond_5
    const/4 v4, 0x1

    goto :goto_3

    .line 722
    :cond_6
    if-nez v7, :cond_8

    .line 728
    if-eqz v2, :cond_a

    .line 731
    const/4 v0, 0x1

    .line 768
    :cond_7
    :goto_4
    if-nez v5, :cond_13

    .line 774
    :goto_5
    if-nez v1, :cond_15

    .line 777
    :goto_6
    if-nez v4, :cond_16

    .line 783
    :goto_7
    if-nez v0, :cond_18

    .line 786
    :goto_8
    return-void

    .line 723
    :cond_8
    if-nez v2, :cond_9

    .line 726
    const/4 v1, 0x1

    goto :goto_4

    .line 724
    :cond_9
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 729
    :cond_a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 734
    :cond_b
    if-nez v7, :cond_c

    .line 740
    if-eqz v2, :cond_e

    .line 743
    const/4 v4, 0x1

    goto :goto_4

    .line 735
    :cond_c
    if-nez v2, :cond_d

    .line 738
    const/4 v5, 0x1

    goto :goto_4

    .line 736
    :cond_d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 741
    :cond_e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 746
    :cond_f
    if-nez v7, :cond_10

    .line 759
    if-eqz v2, :cond_7

    .line 760
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 747
    :cond_10
    if-eqz v2, :cond_11

    .line 751
    if-lt v8, v3, :cond_12

    .line 755
    const/4 v1, 0x1

    .line 756
    const/4 v4, 0x1

    goto :goto_4

    .line 748
    :cond_11
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 752
    :cond_12
    const/4 v5, 0x1

    .line 753
    const/4 v0, 0x1

    goto :goto_4

    .line 769
    :cond_13
    if-nez v1, :cond_14

    .line 772
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->increment([I[F)V

    goto :goto_5

    .line 770
    :cond_14
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 775
    :cond_15
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decrement([I[F)V

    goto :goto_6

    .line 778
    :cond_16
    if-nez v0, :cond_17

    .line 781
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->increment([I[F)V

    goto :goto_7

    .line 779
    :cond_17
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 784
    :cond_18
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decrement([I[F)V

    goto :goto_8
.end method

.method private checkChecksum()Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 384
    iget-object v9, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 385
    .local v6, "firstPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v0

    .line 386
    .local v0, "checkCharacter":Lcom/google/zxing/oned/rss/DataCharacter;
    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v5

    .line 388
    .local v5, "firstCharacter":Lcom/google/zxing/oned/rss/DataCharacter;
    if-eqz v5, :cond_0

    .line 392
    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v2

    .line 393
    .local v2, "checksum":I
    const/4 v8, 0x2

    .line 395
    .local v8, "s":I
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_0
    iget-object v9, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_2

    .line 396
    iget-object v9, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 397
    .local v3, "currentPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v9

    add-int/2addr v2, v9

    .line 398
    add-int/lit8 v8, v8, 0x1

    .line 399
    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v4

    .line 400
    .local v4, "currentRightChar":Lcom/google/zxing/oned/rss/DataCharacter;
    if-nez v4, :cond_1

    .line 395
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 389
    .end local v2    # "checksum":I
    .end local v3    # "currentPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    .end local v4    # "currentRightChar":Lcom/google/zxing/oned/rss/DataCharacter;
    .end local v7    # "i":I
    .end local v8    # "s":I
    :cond_0
    return v10

    .line 401
    .restart local v2    # "checksum":I
    .restart local v3    # "currentPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    .restart local v4    # "currentRightChar":Lcom/google/zxing/oned/rss/DataCharacter;
    .restart local v7    # "i":I
    .restart local v8    # "s":I
    :cond_1
    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v9

    add-int/2addr v2, v9

    .line 402
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 406
    .end local v3    # "currentPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    .end local v4    # "currentRightChar":Lcom/google/zxing/oned/rss/DataCharacter;
    :cond_2
    rem-int/lit16 v2, v2, 0xd3

    .line 408
    add-int/lit8 v9, v8, -0x4

    mul-int/lit16 v9, v9, 0xd3

    add-int v1, v9, v2

    .line 410
    .local v1, "checkCharacterValue":I
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v9

    if-eq v1, v9, :cond_3

    return v10

    :cond_3
    const/4 v9, 0x1

    return v9
.end method

.method private checkRows(Ljava/util/List;I)Ljava/util/List;
    .locals 7
    .param p2, "currentRow"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 220
    .local p1, "collectedRows":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    move v0, p2

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 221
    iget-object v5, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    .line 222
    .local v2, "row":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    iget-object v5, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 223
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 224
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 225
    iget-object v6, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 227
    :cond_0
    iget-object v5, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 229
    iget-object v5, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-static {v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isValidSequence(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 233
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkChecksum()Z

    move-result v5

    if-nez v5, :cond_1

    .line 237
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v3, "rs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 239
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    add-int/lit8 v5, v0, 0x1

    :try_start_0
    invoke-direct {p0, v3, v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkRows(Ljava/util/List;I)Ljava/util/List;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 234
    .end local v3    # "rs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    :cond_1
    iget-object v5, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    return-object v5

    .line 243
    .restart local v3    # "rs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    :catch_0
    move-exception v5

    .line 220
    .end local v3    # "rs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    .end local v1    # "j":I
    .end local v2    # "row":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    .end local v4    # "size":I
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5
.end method

.method private checkRows(Z)Ljava/util/List;
    .locals 3
    .param p1, "reverse"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x19

    if-gt v1, v2, :cond_0

    .line 198
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 199
    if-nez p1, :cond_1

    .line 203
    :goto_0
    const/4 v0, 0x0

    .line 205
    .local v0, "ps":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkRows(Ljava/util/List;I)Ljava/util/List;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 210
    .end local v0    # "ps":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    :goto_1
    if-nez p1, :cond_2

    .line 214
    :goto_2
    return-object v0

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 195
    const/4 v1, 0x0

    return-object v1

    .line 200
    :cond_1
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_0

    .line 211
    :cond_2
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_2

    .line 206
    .restart local v0    # "ps":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method static constructResult(Ljava/util/List;)Lcom/google/zxing/Result;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;)",
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
    .local p0, "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 367
    invoke-static {p0}, Lcom/google/zxing/oned/rss/expanded/BitArrayBuilder;->buildBitArray(Ljava/util/List;)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    .line 369
    .local v0, "binary":Lcom/google/zxing/common/BitArray;
    invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->createDecoder(Lcom/google/zxing/common/BitArray;)Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;

    move-result-object v1

    .line 370
    .local v1, "decoder":Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->parseInformation()Ljava/lang/String;

    move-result-object v4

    .line 372
    .local v4, "resultingString":Ljava/lang/String;
    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v2

    .line 373
    .local v2, "firstPoints":[Lcom/google/zxing/ResultPoint;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v3

    .line 375
    .local v3, "lastPoints":[Lcom/google/zxing/ResultPoint;
    new-instance v5, Lcom/google/zxing/Result;

    .line 378
    const/4 v6, 0x4

    new-array v6, v6, [Lcom/google/zxing/ResultPoint;

    aget-object v7, v2, v8

    aput-object v7, v6, v8

    aget-object v7, v2, v9

    aput-object v7, v6, v9

    aget-object v7, v3, v8

    const/4 v8, 0x2

    aput-object v7, v6, v8

    aget-object v7, v3, v9

    const/4 v8, 0x3

    aput-object v7, v6, v8

    .line 379
    sget-object v7, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    .line 375
    invoke-direct {v5, v4, v10, v6, v7}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v5
.end method

.method private findNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)V
    .locals 11
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p3, "forcedOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 468
    .local p2, "previousPairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getDecodeFinderCounters()[I

    move-result-object v1

    .line 469
    .local v1, "counters":[I
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v9, v1, v10

    .line 470
    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v9, v1, v10

    .line 471
    const/4 v9, 0x0

    const/4 v10, 0x2

    aput v9, v1, v10

    .line 472
    const/4 v9, 0x0

    const/4 v10, 0x3

    aput v9, v1, v10

    .line 474
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    .line 477
    .local v7, "width":I
    if-gez p3, :cond_0

    .line 479
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 482
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 483
    .local v3, "lastPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v9

    const/4 v10, 0x1

    aget v5, v9, v10

    .line 485
    .end local v3    # "lastPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    .local v5, "rowOffset":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    rem-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_2

    const/4 v6, 0x0

    .line 486
    .local v6, "searchingEvenPair":Z
    :goto_1
    iget-boolean v9, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    if-nez v9, :cond_3

    .line 490
    :goto_2
    const/4 v2, 0x0

    .line 491
    .local v2, "isWhite":Z
    :goto_3
    if-ge v5, v7, :cond_6

    .line 492
    invoke-virtual {p1, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    if-nez v9, :cond_5

    const/4 v2, 0x1

    .line 493
    :goto_4
    if-eqz v2, :cond_6

    .line 496
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 478
    .end local v2    # "isWhite":Z
    .end local v5    # "rowOffset":I
    .end local v6    # "searchingEvenPair":Z
    :cond_0
    move v5, p3

    .restart local v5    # "rowOffset":I
    goto :goto_0

    .line 480
    .end local v5    # "rowOffset":I
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "rowOffset":I
    goto :goto_0

    .line 485
    :cond_2
    const/4 v6, 0x1

    goto :goto_1

    .line 487
    .restart local v6    # "searchingEvenPair":Z
    :cond_3
    if-nez v6, :cond_4

    const/4 v6, 0x1

    :goto_5
    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    goto :goto_5

    .line 492
    .restart local v2    # "isWhite":Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_4

    .line 499
    :cond_6
    const/4 v0, 0x0

    .line 500
    .local v0, "counterPosition":I
    move v4, v5

    .line 501
    .local v4, "patternStart":I
    move v8, v5

    .local v8, "x":I
    :goto_6
    if-ge v8, v7, :cond_d

    .line 502
    invoke-virtual {p1, v8}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    xor-int/2addr v9, v2

    if-nez v9, :cond_7

    .line 505
    const/4 v9, 0x3

    if-eq v0, v9, :cond_8

    .line 527
    add-int/lit8 v0, v0, 0x1

    .line 529
    :goto_7
    const/4 v9, 0x1

    aput v9, v1, v0

    .line 530
    if-nez v2, :cond_c

    const/4 v2, 0x1

    .line 501
    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 503
    :cond_7
    aget v9, v1, v0

    add-int/lit8 v9, v9, 0x1

    aput v9, v1, v0

    goto :goto_8

    .line 506
    :cond_8
    if-nez v6, :cond_9

    .line 510
    :goto_9
    invoke-static {v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isFinderPattern([I)Z

    move-result v9

    if-nez v9, :cond_a

    .line 516
    if-nez v6, :cond_b

    .line 520
    :goto_a
    const/4 v9, 0x0

    aget v9, v1, v9

    const/4 v10, 0x1

    aget v10, v1, v10

    add-int/2addr v9, v10

    add-int/2addr v4, v9

    .line 521
    const/4 v9, 0x2

    aget v9, v1, v9

    const/4 v10, 0x0

    aput v9, v1, v10

    .line 522
    const/4 v9, 0x3

    aget v9, v1, v9

    const/4 v10, 0x1

    aput v9, v1, v10

    .line 523
    const/4 v9, 0x0

    const/4 v10, 0x2

    aput v9, v1, v10

    .line 524
    const/4 v9, 0x0

    const/4 v10, 0x3

    aput v9, v1, v10

    .line 525
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 507
    :cond_9
    invoke-static {v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->reverseCounters([I)V

    goto :goto_9

    .line 511
    :cond_a
    iget-object v9, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    const/4 v10, 0x0

    aput v4, v9, v10

    .line 512
    iget-object v9, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    const/4 v10, 0x1

    aput v8, v9, v10

    .line 513
    return-void

    .line 517
    :cond_b
    invoke-static {v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->reverseCounters([I)V

    goto :goto_a

    .line 530
    :cond_c
    const/4 v2, 0x0

    goto :goto_8

    .line 533
    :cond_d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9
.end method

.method private static getNextSecondBar(Lcom/google/zxing/common/BitArray;I)I
    .locals 2
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "initialPos"    # I

    .prologue
    .line 415
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 419
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v0

    .line 420
    .local v0, "currentPos":I
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v0

    .line 422
    :goto_0
    return v0

    .line 416
    .end local v0    # "currentPos":I
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v0

    .line 417
    .restart local v0    # "currentPos":I
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v0

    goto :goto_0
.end method

.method private static isNotA1left(Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Z
    .locals 2
    .param p0, "pattern"    # Lcom/google/zxing/oned/rss/FinderPattern;
    .param p1, "isOddPattern"    # Z
    .param p2, "leftChar"    # Z

    .prologue
    const/4 v0, 0x0

    .line 694
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    goto :goto_0
.end method

.method private static isPartialRow(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "pairs":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    .local p1, "rows":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    const/4 v9, 0x0

    .line 337
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "-l_3_R":Ljava/lang/Object;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    .line 338
    .local v7, "r":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    const/4 v3, 0x1

    .line 339
    .local v3, "allFound":Z
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "-l_6_R":Ljava/lang/Object;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 340
    .local v5, "p":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    const/4 v4, 0x0

    .line 341
    .local v4, "found":Z
    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "-l_9_R":Ljava/lang/Object;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 342
    .local v6, "pp":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    invoke-virtual {v5, v6}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 343
    const/4 v4, 0x1

    .line 347
    .end local v6    # "pp":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    :cond_3
    if-nez v4, :cond_1

    .line 348
    const/4 v3, 0x0

    .line 352
    .end local v2    # "-l_9_R":Ljava/lang/Object;
    .end local v4    # "found":Z
    .end local v5    # "p":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    :cond_4
    if-eqz v3, :cond_0

    .line 354
    const/4 v8, 0x1

    return v8

    .line 357
    .end local v1    # "-l_6_R":Ljava/lang/Object;
    .end local v3    # "allFound":Z
    .end local v7    # "r":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    :cond_5
    return v9
.end method

.method private static isValidSequence(Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    const/4 v8, 0x0

    .line 254
    sget-object v2, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERN_SEQUENCES:[[I

    .local v2, "-l_4_R":Ljava/lang/Object;
    array-length v1, v2

    .local v1, "-l_3_I":I
    const/4 v0, 0x0

    .local v0, "-l_2_I":I
    :goto_0
    if-ge v0, v1, :cond_4

    aget-object v4, v2, v0

    .line 255
    .local v4, "sequence":[I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    array-length v7, v4

    if-gt v6, v7, :cond_2

    .line 259
    const/4 v5, 0x1

    .line 260
    .local v5, "stop":Z
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 261
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v6

    aget v7, v4, v3

    if-ne v6, v7, :cond_0

    .line 260
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 262
    :cond_0
    const/4 v5, 0x0

    .line 267
    :cond_1
    if-nez v5, :cond_3

    .line 254
    .end local v3    # "j":I
    .end local v5    # "stop":Z
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    .restart local v3    # "j":I
    .restart local v5    # "stop":Z
    :cond_3
    const/4 v6, 0x1

    return v6

    .line 272
    .end local v3    # "j":I
    .end local v4    # "sequence":[I
    .end local v5    # "stop":Z
    :cond_4
    return v8
.end method

.method private parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ)Lcom/google/zxing/oned/rss/FinderPattern;
    .locals 11
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "rowNumber"    # I
    .param p3, "oddPattern"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 551
    if-nez p3, :cond_0

    .line 568
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v3, v0, v5

    .line 570
    .local v3, "start":I
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v0, v0, v10

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v4

    .line 571
    .local v4, "end":I
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v0, v0, v10

    sub-int v7, v4, v0

    .line 575
    .local v7, "firstCounter":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getDecodeFinderCounters()[I

    move-result-object v6

    .line 576
    .local v6, "counters":[I
    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    invoke-static {v6, v5, v6, v10, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 578
    aput v7, v6, v5

    .line 581
    :try_start_0
    sget-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERNS:[[I

    invoke-static {v6, v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->parseFinderValue([I[[I)I
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 585
    .local v1, "value":I
    new-instance v0, Lcom/google/zxing/oned/rss/FinderPattern;

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v3, v2, v5

    aput v4, v2, v10

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/oned/rss/FinderPattern;-><init>(I[IIII)V

    return-object v0

    .line 554
    .end local v1    # "value":I
    .end local v3    # "start":I
    .end local v4    # "end":I
    .end local v6    # "counters":[I
    .end local v7    # "firstCounter":I
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v0, v0, v5

    add-int/lit8 v8, v0, -0x1

    .line 556
    .local v8, "firstElementStart":I
    :goto_1
    if-gez v8, :cond_2

    .line 560
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 561
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v0, v0, v5

    sub-int v7, v0, v8

    .line 562
    .restart local v7    # "firstCounter":I
    move v3, v8

    .line 563
    .restart local v3    # "start":I
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v4, v0, v10

    .restart local v4    # "end":I
    goto :goto_0

    .line 556
    .end local v3    # "start":I
    .end local v4    # "end":I
    .end local v7    # "firstCounter":I
    :cond_2
    invoke-virtual {p1, v8}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 557
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 582
    .end local v8    # "firstElementStart":I
    .restart local v3    # "start":I
    .restart local v4    # "end":I
    .restart local v6    # "counters":[I
    .restart local v7    # "firstCounter":I
    :catch_0
    move-exception v9

    .line 583
    .local v9, "ignored":Lcom/google/zxing/NotFoundException;
    const/4 v0, 0x0

    return-object v0
.end method

.method private static removePartialRows(Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 309
    .local p0, "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    .local p1, "rows":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 310
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    .line 311
    .local v7, "r":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    if-eq v8, v9, :cond_0

    .line 314
    const/4 v2, 0x1

    .line 315
    .local v2, "allFound":Z
    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "-l_6_R":Ljava/lang/Object;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 316
    .local v5, "p":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    const/4 v3, 0x0

    .line 317
    .local v3, "found":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "-l_9_R":Ljava/lang/Object;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 318
    .local v6, "pp":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    invoke-virtual {v5, v6}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 319
    const/4 v3, 0x1

    .line 323
    .end local v6    # "pp":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    :cond_3
    if-nez v3, :cond_1

    .line 324
    const/4 v2, 0x0

    .line 328
    .end local v1    # "-l_9_R":Ljava/lang/Object;
    .end local v3    # "found":Z
    .end local v5    # "p":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    :cond_4
    if-eqz v2, :cond_0

    .line 330
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 333
    .end local v0    # "-l_6_R":Ljava/lang/Object;
    .end local v2    # "allFound":Z
    .end local v7    # "r":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    :cond_5
    return-void
.end method

.method private static reverseCounters([I)V
    .locals 4
    .param p0, "counters"    # [I

    .prologue
    .line 537
    array-length v1, p0

    .line 538
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    div-int/lit8 v3, v1, 0x2

    if-ge v0, v3, :cond_0

    .line 539
    aget v2, p0, v0

    .line 540
    .local v2, "tmp":I
    sub-int v3, v1, v0

    add-int/lit8 v3, v3, -0x1

    aget v3, p0, v3

    aput v3, p0, v0

    .line 541
    sub-int v3, v1, v0

    add-int/lit8 v3, v3, -0x1

    aput v2, p0, v3

    .line 538
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 543
    .end local v2    # "tmp":I
    :cond_0
    return-void
.end method

.method private storeRow(IZ)V
    .locals 7
    .param p1, "rowNumber"    # I
    .param p2, "wasReversed"    # Z

    .prologue
    .line 277
    const/4 v1, 0x0

    .line 278
    .local v1, "insertPos":I
    const/4 v3, 0x0

    .line 279
    .local v3, "prevIsSame":Z
    const/4 v2, 0x0

    .line 280
    .local v2, "nextIsSame":Z
    :goto_0
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 281
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    .line 282
    .local v0, "erow":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getRowNumber()I

    move-result v4

    if-gt v4, p1, :cond_0

    .line 286
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {v0, v4}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->isEquivalent(Ljava/util/List;)Z

    move-result v3

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    :cond_0
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {v0, v4}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->isEquivalent(Ljava/util/List;)Z

    move-result v2

    .line 289
    .end local v0    # "erow":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    :cond_1
    if-eqz v2, :cond_3

    .line 290
    :cond_2
    return-void

    .line 289
    :cond_3
    if-nez v3, :cond_2

    .line 298
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    iget-object v5, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-static {v4, v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isPartialRow(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 302
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    new-instance v5, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    iget-object v6, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-direct {v5, v6, p1, p2}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;-><init>(Ljava/util/List;IZ)V

    invoke-interface {v4, v1, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 304
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    iget-object v5, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-static {v4, v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->removePartialRows(Ljava/util/List;Ljava/util/List;)V

    .line 305
    return-void

    .line 299
    :cond_4
    return-void
.end method


# virtual methods
.method decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;
    .locals 34
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "pattern"    # Lcom/google/zxing/oned/rss/FinderPattern;
    .param p3, "isOddPattern"    # Z
    .param p4, "leftChar"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 592
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getDataCharacterCounters()[I

    move-result-object v5

    .line 593
    .local v5, "counters":[I
    const/16 v31, 0x0

    const/16 v32, 0x0

    aput v31, v5, v32

    .line 594
    const/16 v31, 0x0

    const/16 v32, 0x1

    aput v31, v5, v32

    .line 595
    const/16 v31, 0x0

    const/16 v32, 0x2

    aput v31, v5, v32

    .line 596
    const/16 v31, 0x0

    const/16 v32, 0x3

    aput v31, v5, v32

    .line 597
    const/16 v31, 0x0

    const/16 v32, 0x4

    aput v31, v5, v32

    .line 598
    const/16 v31, 0x0

    const/16 v32, 0x5

    aput v31, v5, v32

    .line 599
    const/16 v31, 0x0

    const/16 v32, 0x6

    aput v31, v5, v32

    .line 600
    const/16 v31, 0x0

    const/16 v32, 0x7

    aput v31, v5, v32

    .line 602
    if-nez p4, :cond_0

    .line 605
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v31

    const/16 v32, 0x1

    aget v31, v31, v32

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-static {v0, v1, v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 607
    const/4 v14, 0x0

    .local v14, "i":I
    array-length v0, v5

    move/from16 v31, v0

    add-int/lit8 v15, v31, -0x1

    .local v15, "j":I
    :goto_0
    if-ge v14, v15, :cond_1

    .line 608
    aget v24, v5, v14

    .line 609
    .local v24, "temp":I
    aget v31, v5, v15

    aput v31, v5, v14

    .line 610
    aput v24, v5, v15

    .line 607
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v15, -0x1

    goto :goto_0

    .line 603
    .end local v14    # "i":I
    .end local v15    # "j":I
    .end local v24    # "temp":I
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v31

    const/16 v32, 0x0

    aget v31, v31, v32

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-static {v0, v1, v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->recordPatternInReverse(Lcom/google/zxing/common/BitArray;I[I)V

    .line 614
    :cond_1
    const/16 v16, 0x11

    .line 615
    .local v16, "numModules":I
    invoke-static {v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->count([I)I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    const/high16 v32, 0x41880000    # 17.0f

    div-float v6, v31, v32

    .line 618
    .local v6, "elementWidth":F
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v31

    const/16 v32, 0x1

    aget v31, v31, v32

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v32

    const/16 v33, 0x0

    aget v32, v32, v33

    sub-int v31, v31, v32

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    const/high16 v32, 0x41700000    # 15.0f

    div-float v11, v31, v32

    .line 619
    .local v11, "expectedElementWidth":F
    sub-float v31, v6, v11

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(F)F

    move-result v31

    div-float v31, v31, v11

    const v32, 0x3e99999a    # 0.3f

    cmpl-float v31, v31, v32

    if-lez v31, :cond_2

    .line 620
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v31

    throw v31

    .line 623
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v18

    .line 624
    .local v18, "oddCounts":[I
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v8

    .line 625
    .local v8, "evenCounts":[I
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v19

    .line 626
    .local v19, "oddRoundingErrors":[F
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenRoundingErrors()[F

    move-result-object v9

    .line 628
    .local v9, "evenRoundingErrors":[F
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_1
    array-length v0, v5

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v14, v0, :cond_8

    .line 629
    aget v31, v5, v14

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    const/high16 v32, 0x3f800000    # 1.0f

    mul-float v31, v31, v32

    div-float v27, v31, v6

    .line 630
    .local v27, "value":F
    const/high16 v31, 0x3f000000    # 0.5f

    add-float v31, v31, v27

    move/from16 v0, v31

    float-to-int v4, v0

    .line 631
    .local v4, "count":I
    const/16 v31, 0x1

    move/from16 v0, v31

    if-lt v4, v0, :cond_3

    .line 636
    const/16 v31, 0x8

    move/from16 v0, v31

    if-gt v4, v0, :cond_5

    .line 642
    :goto_2
    div-int/lit8 v22, v14, 0x2

    .line 643
    .local v22, "offset":I
    and-int/lit8 v31, v14, 0x1

    if-eqz v31, :cond_7

    .line 647
    aput v4, v8, v22

    .line 648
    int-to-float v0, v4

    move/from16 v31, v0

    sub-float v31, v27, v31

    aput v31, v9, v22

    .line 628
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 632
    .end local v22    # "offset":I
    :cond_3
    const v31, 0x3e99999a    # 0.3f

    cmpg-float v31, v27, v31

    if-gez v31, :cond_4

    .line 633
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v31

    throw v31

    .line 635
    :cond_4
    const/4 v4, 0x1

    goto :goto_2

    .line 637
    :cond_5
    const v31, 0x410b3333    # 8.7f

    cmpl-float v31, v27, v31

    if-lez v31, :cond_6

    .line 638
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v31

    throw v31

    .line 640
    :cond_6
    const/16 v4, 0x8

    goto :goto_2

    .line 644
    .restart local v22    # "offset":I
    :cond_7
    aput v4, v18, v22

    .line 645
    int-to-float v0, v4

    move/from16 v31, v0

    sub-float v31, v27, v31

    aput v31, v19, v22

    goto :goto_3

    .line 614
    .end local v4    # "count":I
    .end local v22    # "offset":I
    .end local v27    # "value":F
    :cond_8
    const/16 v31, 0x11

    .line 652
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->adjustOddEvenCounts(I)V

    .line 654
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v31

    mul-int/lit8 v32, v31, 0x4

    if-nez p3, :cond_9

    const/16 v31, 0x2

    :goto_4
    add-int v32, v32, v31

    if-nez p4, :cond_a

    const/16 v31, 0x1

    :goto_5
    add-int v31, v31, v32

    add-int/lit8 v30, v31, -0x1

    .line 656
    .local v30, "weightRowNumber":I
    const/16 v20, 0x0

    .line 657
    .local v20, "oddSum":I
    const/16 v17, 0x0

    .line 658
    .local v17, "oddChecksumPortion":I
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v31, v0

    add-int/lit8 v14, v31, -0x1

    :goto_6
    if-ltz v14, :cond_c

    .line 659
    invoke-static/range {p2 .. p4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isNotA1left(Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Z

    move-result v31

    if-nez v31, :cond_b

    .line 663
    :goto_7
    aget v31, v18, v14

    add-int v20, v20, v31

    .line 658
    add-int/lit8 v14, v14, -0x1

    goto :goto_6

    .line 654
    .end local v17    # "oddChecksumPortion":I
    .end local v20    # "oddSum":I
    .end local v30    # "weightRowNumber":I
    :cond_9
    const/16 v31, 0x0

    goto :goto_4

    :cond_a
    const/16 v31, 0x0

    goto :goto_5

    .line 660
    .restart local v17    # "oddChecksumPortion":I
    .restart local v20    # "oddSum":I
    .restart local v30    # "weightRowNumber":I
    :cond_b
    sget-object v31, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    aget-object v31, v31, v30

    mul-int/lit8 v32, v14, 0x2

    aget v29, v31, v32

    .line 661
    .local v29, "weight":I
    aget v31, v18, v14

    mul-int v31, v31, v29

    add-int v17, v17, v31

    goto :goto_7

    .line 665
    .end local v29    # "weight":I
    :cond_c
    const/4 v7, 0x0

    .line 667
    .local v7, "evenChecksumPortion":I
    array-length v0, v8

    move/from16 v31, v0

    add-int/lit8 v14, v31, -0x1

    :goto_8
    if-ltz v14, :cond_e

    .line 668
    invoke-static/range {p2 .. p4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isNotA1left(Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Z

    move-result v31

    if-nez v31, :cond_d

    .line 667
    :goto_9
    add-int/lit8 v14, v14, -0x1

    goto :goto_8

    .line 669
    :cond_d
    sget-object v31, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    aget-object v31, v31, v30

    mul-int/lit8 v32, v14, 0x2

    add-int/lit8 v32, v32, 0x1

    aget v29, v31, v32

    .line 670
    .restart local v29    # "weight":I
    aget v31, v8, v14

    mul-int v31, v31, v29

    add-int v7, v7, v31

    goto :goto_9

    .line 674
    .end local v29    # "weight":I
    :cond_e
    add-int v3, v17, v7

    .line 676
    .local v3, "checksumPortion":I
    and-int/lit8 v31, v20, 0x1

    if-eqz v31, :cond_10

    .line 677
    :cond_f
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v31

    throw v31

    .line 676
    :cond_10
    const/16 v31, 0xd

    move/from16 v0, v20

    move/from16 v1, v31

    if-gt v0, v1, :cond_f

    const/16 v31, 0x4

    move/from16 v0, v20

    move/from16 v1, v31

    if-lt v0, v1, :cond_f

    .line 680
    rsub-int/lit8 v31, v20, 0xd

    div-int/lit8 v13, v31, 0x2

    .line 681
    .local v13, "group":I
    sget-object v31, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->SYMBOL_WIDEST:[I

    aget v21, v31, v13

    .line 682
    .local v21, "oddWidest":I
    rsub-int/lit8 v10, v21, 0x9

    .line 683
    .local v10, "evenWidest":I
    const/16 v31, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v26

    .line 684
    .local v26, "vOdd":I
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-static {v8, v10, v0}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v25

    .line 685
    .local v25, "vEven":I
    sget-object v31, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->EVEN_TOTAL_SUBSET:[I

    aget v23, v31, v13

    .line 686
    .local v23, "tEven":I
    sget-object v31, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->GSUM:[I

    aget v12, v31, v13

    .line 687
    .local v12, "gSum":I
    mul-int v31, v26, v23

    add-int v31, v31, v25

    add-int v28, v31, v12

    .line 689
    .local v28, "value":I
    new-instance v31, Lcom/google/zxing/oned/rss/DataCharacter;

    move-object/from16 v0, v31

    move/from16 v1, v28

    invoke-direct {v0, v1, v3}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    return-object v31
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 3
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
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 129
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 130
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    .line 132
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeRow2pairs(ILcom/google/zxing/common/BitArray;)Ljava/util/List;

    move-result-object v1

    .line 133
    .local v1, "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    invoke-static {v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->constructResult(Ljava/util/List;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 134
    .end local v1    # "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    :catch_0
    move-exception v0

    .line 138
    .local v0, "-l_4_R":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 139
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    .line 140
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeRow2pairs(ILcom/google/zxing/common/BitArray;)Ljava/util/List;

    move-result-object v1

    .line 141
    .restart local v1    # "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    invoke-static {v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->constructResult(Ljava/util/List;)Lcom/google/zxing/Result;

    move-result-object v2

    return-object v2
.end method

.method decodeRow2pairs(ILcom/google/zxing/common/BitArray;)Ljava/util/List;
    .locals 8
    .param p1, "rowNumber"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 154
    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {p0, p2, v7, p1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->retrieveNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    move-result-object v0

    .line 155
    .local v0, "nextPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    iget-object v7, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    .end local v0    # "nextPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    :catch_0
    move-exception v1

    .line 160
    .local v1, "nfe":Lcom/google/zxing/NotFoundException;
    iget-object v7, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 166
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkChecksum()Z

    move-result v7

    if-nez v7, :cond_2

    .line 170
    iget-object v7, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    move v3, v5

    .line 171
    .local v3, "tryStackedDecode":Z
    :goto_1
    const/4 v4, 0x0

    .line 172
    .local v4, "wasReversed":Z
    invoke-direct {p0, p1, v6}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->storeRow(IZ)V

    .line 173
    if-nez v3, :cond_4

    .line 186
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5

    .line 161
    .end local v3    # "tryStackedDecode":Z
    .end local v4    # "wasReversed":Z
    :cond_1
    throw v1

    .line 167
    :cond_2
    iget-object v5, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    return-object v5

    :cond_3
    move v3, v6

    .line 170
    goto :goto_1

    .line 176
    .restart local v3    # "tryStackedDecode":Z
    .restart local v4    # "wasReversed":Z
    :cond_4
    invoke-direct {p0, v6}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkRows(Z)Ljava/util/List;

    move-result-object v2

    .line 177
    .local v2, "ps":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    if-nez v2, :cond_5

    .line 180
    invoke-direct {p0, v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkRows(Z)Ljava/util/List;

    move-result-object v2

    .line 181
    if-eqz v2, :cond_0

    .line 182
    return-object v2

    .line 178
    :cond_5
    return-object v2
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 147
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 148
    return-void
.end method

.method retrieveNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    .locals 11
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p3, "rowNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;I)",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .local p2, "previousPairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 428
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v10

    rem-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_2

    move v2, v8

    .line 429
    .local v2, "isOddPattern":Z
    :goto_0
    iget-boolean v10, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    if-nez v10, :cond_3

    .line 435
    :goto_1
    const/4 v3, 0x1

    .line 436
    .local v3, "keepFinding":Z
    const/4 v0, -0x1

    .line 438
    .local v0, "forcedOffset":I
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->findNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)V

    .line 439
    invoke-direct {p0, p1, p3, v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ)Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v6

    .line 440
    .local v6, "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    if-eqz v6, :cond_5

    .line 443
    const/4 v3, 0x0

    .line 445
    :goto_2
    if-nez v3, :cond_0

    .line 450
    invoke-virtual {p0, p1, v6, v2, v9}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v4

    .line 452
    .local v4, "leftChar":Lcom/google/zxing/oned/rss/DataCharacter;
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 458
    :cond_1
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v6, v2, v8}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 462
    :goto_3
    const/4 v5, 0x1

    .line 463
    .local v5, "mayBeLast":Z
    new-instance v8, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-direct {v8, v4, v7, v6, v9}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;-><init>(Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/FinderPattern;Z)V

    return-object v8

    .end local v0    # "forcedOffset":I
    .end local v2    # "isOddPattern":Z
    .end local v3    # "keepFinding":Z
    .end local v4    # "leftChar":Lcom/google/zxing/oned/rss/DataCharacter;
    .end local v5    # "mayBeLast":Z
    .end local v6    # "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    :cond_2
    move v2, v9

    .line 428
    goto :goto_0

    .line 430
    .restart local v2    # "isOddPattern":Z
    :cond_3
    if-nez v2, :cond_4

    move v2, v9

    :goto_4
    goto :goto_1

    :cond_4
    move v2, v8

    goto :goto_4

    .line 441
    .restart local v0    # "forcedOffset":I
    .restart local v3    # "keepFinding":Z
    .restart local v6    # "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    :cond_5
    iget-object v10, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v10, v10, v8

    invoke-static {p1, v10}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getNextSecondBar(Lcom/google/zxing/common/BitArray;I)I

    move-result v0

    goto :goto_2

    .line 452
    .restart local v4    # "leftChar":Lcom/google/zxing/oned/rss/DataCharacter;
    :cond_6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v8}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->mustBeLast()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 453
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v8

    throw v8

    .line 459
    :catch_0
    move-exception v1

    .line 460
    .local v1, "ignored":Lcom/google/zxing/NotFoundException;
    const/4 v7, 0x0

    .local v7, "rightChar":Lcom/google/zxing/oned/rss/DataCharacter;
    goto :goto_3
.end method
