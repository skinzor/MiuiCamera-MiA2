.class public final Lcom/google/zxing/oned/Code128Reader;
.super Lcom/google/zxing/oned/OneDReader;
.source "Code128Reader.java"


# static fields
.field static final CODE_PATTERNS:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 39
    const/16 v0, 0x6b

    new-array v0, v0, [[I

    .line 40
    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v5, v1, v8

    aput v4, v1, v4

    aput v5, v1, v5

    aput v5, v1, v6

    aput v5, v1, v7

    const/4 v2, 0x5

    aput v5, v1, v2

    aput-object v1, v0, v8

    .line 41
    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v5, v1, v8

    aput v5, v1, v4

    aput v5, v1, v5

    aput v4, v1, v6

    aput v5, v1, v7

    const/4 v2, 0x5

    aput v5, v1, v2

    aput-object v1, v0, v4

    .line 42
    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v5, v1, v8

    aput v5, v1, v4

    aput v5, v1, v5

    aput v5, v1, v6

    aput v5, v1, v7

    const/4 v2, 0x5

    aput v4, v1, v2

    aput-object v1, v0, v5

    .line 43
    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v4, v1, v8

    aput v5, v1, v4

    aput v4, v1, v5

    aput v5, v1, v6

    aput v5, v1, v7

    const/4 v2, 0x5

    aput v6, v1, v2

    aput-object v1, v0, v6

    .line 44
    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v4, v1, v8

    aput v5, v1, v4

    aput v4, v1, v5

    aput v6, v1, v6

    aput v5, v1, v7

    const/4 v2, 0x5

    aput v5, v1, v2

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 45
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v6, v2, v4

    aput v4, v2, v5

    aput v5, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 46
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v5, v2, v4

    aput v5, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 47
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v5, v2, v4

    aput v5, v2, v5

    aput v6, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 48
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v6, v2, v4

    aput v5, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 49
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v5, v2, v4

    aput v4, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 50
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v5, v2, v4

    aput v4, v2, v5

    aput v6, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 51
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v6, v2, v4

    aput v4, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 52
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v5, v2, v5

    aput v5, v2, v6

    aput v6, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 53
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v5, v2, v4

    aput v5, v2, v5

    aput v4, v2, v6

    aput v6, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 54
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v5, v2, v4

    aput v5, v2, v5

    aput v5, v2, v6

    aput v6, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 55
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v6, v2, v5

    aput v5, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 56
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v5, v2, v4

    aput v6, v2, v5

    aput v4, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 57
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v5, v2, v4

    aput v6, v2, v5

    aput v5, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 58
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v5, v2, v4

    aput v6, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 59
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v5, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v6, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 60
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v5, v2, v4

    aput v4, v2, v5

    aput v5, v2, v6

    aput v6, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 61
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v4, v2, v4

    aput v6, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 62
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v5, v2, v4

    aput v6, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 63
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v6, v2, v8

    aput v4, v2, v4

    aput v5, v2, v5

    aput v4, v2, v6

    aput v6, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 64
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v6, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v5, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 65
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v6, v2, v8

    aput v5, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 66
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v6, v2, v8

    aput v5, v2, v4

    aput v4, v2, v5

    aput v5, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 67
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v6, v2, v8

    aput v4, v2, v4

    aput v5, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 68
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v6, v2, v8

    aput v5, v2, v4

    aput v5, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 69
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v6, v2, v8

    aput v5, v2, v4

    aput v5, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 70
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v4, v2, v4

    aput v5, v2, v5

    aput v4, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 71
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v4, v2, v4

    aput v5, v2, v5

    aput v6, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 72
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v6, v2, v4

    aput v5, v2, v5

    aput v4, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 73
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v6, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 74
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v6, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x23

    .line 75
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v6, v2, v4

    aput v4, v2, v5

    aput v6, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 76
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v5, v2, v5

    aput v6, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x25

    .line 77
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v6, v2, v4

    aput v5, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x26

    .line 78
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v6, v2, v4

    aput v5, v2, v5

    aput v6, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x27

    .line 79
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v6, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x28

    .line 80
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v6, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x29

    .line 81
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v6, v2, v4

    aput v4, v2, v5

    aput v6, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    .line 82
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v5, v2, v5

    aput v4, v2, v6

    aput v6, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    .line 83
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v5, v2, v5

    aput v6, v2, v6

    aput v6, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    .line 84
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v6, v2, v4

    aput v5, v2, v5

    aput v4, v2, v6

    aput v6, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    .line 85
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v6, v2, v5

    aput v4, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    .line 86
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v6, v2, v5

    aput v6, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    .line 87
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v6, v2, v4

    aput v6, v2, v5

    aput v4, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x30

    .line 88
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v6, v2, v8

    aput v4, v2, v4

    aput v6, v2, v5

    aput v4, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x31

    .line 89
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v6, v2, v6

    aput v6, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x32

    .line 90
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v6, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v6, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x33

    .line 91
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v4, v2, v4

    aput v6, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x34

    .line 92
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v4, v2, v4

    aput v6, v2, v5

    aput v6, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x35

    .line 93
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v4, v2, v4

    aput v6, v2, v5

    aput v4, v2, v6

    aput v6, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x36

    .line 94
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v6, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x37

    .line 95
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v6, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v6, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x38

    .line 96
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v6, v2, v8

    aput v6, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x39

    .line 97
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v6, v2, v8

    aput v4, v2, v4

    aput v5, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    .line 98
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v6, v2, v8

    aput v4, v2, v4

    aput v5, v2, v5

    aput v6, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    .line 99
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v6, v2, v8

    aput v6, v2, v4

    aput v5, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    .line 100
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v6, v2, v8

    aput v4, v2, v4

    aput v7, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    .line 101
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v5, v2, v4

    aput v4, v2, v5

    aput v7, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    .line 102
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v7, v2, v8

    aput v6, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    .line 103
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v5, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v7, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x40

    .line 104
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v7, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x41

    .line 105
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v5, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v7, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x42

    .line 106
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v5, v2, v4

    aput v4, v2, v5

    aput v7, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x43

    .line 107
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v7, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x44

    .line 108
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v7, v2, v4

    aput v4, v2, v5

    aput v5, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x45

    .line 109
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v5, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v7, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x46

    .line 110
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v5, v2, v5

    aput v7, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x47

    .line 111
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v5, v2, v4

    aput v5, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v7, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x48

    .line 112
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v5, v2, v4

    aput v5, v2, v5

    aput v7, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x49

    .line 113
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v7, v2, v4

    aput v5, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    .line 114
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v7, v2, v4

    aput v5, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    .line 115
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v7, v2, v4

    aput v4, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    .line 116
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v5, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v7, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    .line 117
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v7, v2, v8

    aput v4, v2, v4

    aput v6, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    .line 118
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v7, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    .line 119
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v6, v2, v4

    aput v7, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x50

    .line 120
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v5, v2, v6

    aput v7, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x51

    .line 121
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v5, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v7, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x52

    .line 122
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v5, v2, v4

    aput v4, v2, v5

    aput v5, v2, v6

    aput v7, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x53

    .line 123
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v7, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x54

    .line 124
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v5, v2, v4

    aput v7, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x55

    .line 125
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v5, v2, v4

    aput v7, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x56

    .line 126
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v7, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x57

    .line 127
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v7, v2, v8

    aput v5, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x58

    .line 128
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v7, v2, v8

    aput v5, v2, v4

    aput v4, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x59

    .line 129
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v4, v2, v4

    aput v5, v2, v5

    aput v4, v2, v6

    aput v7, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    .line 130
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v4, v2, v4

    aput v7, v2, v5

    aput v4, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    .line 131
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v7, v2, v8

    aput v4, v2, v4

    aput v5, v2, v5

    aput v4, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    .line 132
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v7, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    .line 133
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v6, v2, v6

    aput v7, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    .line 134
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v6, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v7, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    .line 135
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v7, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x60

    .line 136
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v7, v2, v5

    aput v6, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x61

    .line 137
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v7, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x62

    .line 138
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v7, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v6, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x63

    .line 139
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v6, v2, v5

    aput v4, v2, v6

    aput v7, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x64

    .line 140
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v7, v2, v5

    aput v4, v2, v6

    aput v6, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x65

    .line 141
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v6, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v7, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x66

    .line 142
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v7, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v6, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x67

    .line 143
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v7, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x68

    .line 144
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v7, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x69

    .line 145
    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v5, v2, v6

    aput v6, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    .line 146
    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v6, v2, v4

    aput v6, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    const/4 v3, 0x6

    aput v5, v2, v3

    aput-object v2, v0, v1

    .line 39
    sput-object v0, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    .line 167
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    return-void
.end method

.method private static decodeCode(Lcom/google/zxing/common/BitArray;[II)I
    .locals 6
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "counters"    # [I
    .param p2, "rowOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-static {p0, p2, p1}, Lcom/google/zxing/oned/Code128Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 217
    const/high16 v1, 0x3e800000    # 0.25f

    .line 218
    .local v1, "bestVariance":F
    const/4 v0, -0x1

    .line 219
    .local v0, "bestMatch":I
    const/4 v2, 0x0

    .local v2, "d":I
    :goto_0
    sget-object v5, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 220
    sget-object v5, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v3, v5, v2

    .line 221
    .local v3, "pattern":[I
    const v5, 0x3f333333    # 0.7f

    invoke-static {p1, v3, v5}, Lcom/google/zxing/oned/Code128Reader;->patternMatchVariance([I[IF)F

    move-result v4

    .line 222
    .local v4, "variance":F
    cmpg-float v5, v4, v1

    if-gez v5, :cond_0

    .line 223
    move v1, v4

    .line 224
    move v0, v2

    .line 219
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    .end local v3    # "pattern":[I
    .end local v4    # "variance":F
    :cond_1
    if-gez v0, :cond_2

    .line 231
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5

    .line 229
    :cond_2
    return v0
.end method

.method private static findStartPattern(Lcom/google/zxing/common/BitArray;)[I
    .locals 15
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v11

    .line 171
    .local v11, "width":I
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v8

    .line 173
    .local v8, "rowOffset":I
    const/4 v2, 0x0

    .line 174
    .local v2, "counterPosition":I
    const/4 v12, 0x6

    new-array v3, v12, [I

    .line 175
    .local v3, "counters":[I
    move v7, v8

    .line 176
    .local v7, "patternStart":I
    const/4 v5, 0x0

    .line 177
    .local v5, "isWhite":Z
    array-length v6, v3

    .line 179
    .local v6, "patternLength":I
    move v4, v8

    .local v4, "i":I
    :goto_0
    if-ge v4, v11, :cond_7

    .line 180
    invoke-virtual {p0, v4}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v12

    xor-int/2addr v12, v5

    if-nez v12, :cond_0

    .line 183
    add-int/lit8 v12, v6, -0x1

    if-eq v2, v12, :cond_1

    .line 205
    add-int/lit8 v2, v2, 0x1

    .line 207
    :goto_1
    const/4 v12, 0x1

    aput v12, v3, v2

    .line 208
    if-nez v5, :cond_6

    const/4 v5, 0x1

    .line 179
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 181
    :cond_0
    aget v12, v3, v2

    add-int/lit8 v12, v12, 0x1

    aput v12, v3, v2

    goto :goto_2

    .line 184
    :cond_1
    const/high16 v1, 0x3e800000    # 0.25f

    .line 185
    .local v1, "bestVariance":F
    const/4 v0, -0x1

    .line 186
    .local v0, "bestMatch":I
    const/16 v9, 0x67

    .local v9, "startCode":I
    :goto_3
    const/16 v12, 0x69

    if-gt v9, v12, :cond_3

    .line 187
    sget-object v12, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v12, v12, v9

    .line 188
    const v13, 0x3f333333    # 0.7f

    .line 187
    invoke-static {v3, v12, v13}, Lcom/google/zxing/oned/Code128Reader;->patternMatchVariance([I[IF)F

    move-result v10

    .line 189
    .local v10, "variance":F
    cmpg-float v12, v10, v1

    if-gez v12, :cond_2

    .line 190
    move v1, v10

    .line 191
    move v0, v9

    .line 186
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 195
    .end local v10    # "variance":F
    :cond_3
    if-gez v0, :cond_5

    .line 199
    :cond_4
    const/4 v12, 0x0

    aget v12, v3, v12

    const/4 v13, 0x1

    aget v13, v3, v13

    add-int/2addr v12, v13

    add-int/2addr v7, v12

    .line 200
    add-int/lit8 v12, v6, -0x2

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-static {v3, v13, v3, v14, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    add-int/lit8 v12, v6, -0x2

    const/4 v13, 0x0

    aput v13, v3, v12

    .line 202
    add-int/lit8 v12, v6, -0x1

    const/4 v13, 0x0

    aput v13, v3, v12

    .line 203
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 196
    :cond_5
    sub-int v12, v4, v7

    div-int/lit8 v12, v12, 0x2

    sub-int v12, v7, v12

    const/4 v13, 0x0

    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v7, v13}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 197
    const/4 v12, 0x3

    new-array v12, v12, [I

    const/4 v13, 0x0

    aput v7, v12, v13

    const/4 v13, 0x1

    aput v4, v12, v13

    const/4 v13, 0x2

    aput v0, v12, v13

    return-object v12

    .line 208
    .end local v0    # "bestMatch":I
    .end local v1    # "bestVariance":F
    .end local v9    # "startCode":I
    :cond_6
    const/4 v5, 0x0

    goto :goto_2

    .line 211
    :cond_7
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v12

    throw v12
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 41
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
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 239
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    if-nez p3, :cond_1

    :cond_0
    const/4 v11, 0x0

    .line 241
    .local v11, "convertFNC1":Z
    :goto_0
    invoke-static/range {p2 .. p2}, Lcom/google/zxing/oned/Code128Reader;->findStartPattern(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v32

    .line 242
    .local v32, "startPatternInfo":[I
    const/16 v35, 0x2

    aget v31, v32, v35

    .line 244
    .local v31, "startCode":I
    new-instance v25, Ljava/util/ArrayList;

    const/16 v35, 0x14

    move-object/from16 v0, v25

    move/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 245
    .local v25, "rawCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    move/from16 v0, v31

    int-to-byte v0, v0

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v35

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    packed-switch v31, :pswitch_data_0

    .line 259
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v35

    throw v35

    .line 239
    .end local v11    # "convertFNC1":Z
    .end local v25    # "rawCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .end local v31    # "startCode":I
    .end local v32    # "startPatternInfo":[I
    :cond_1
    sget-object v35, Lcom/google/zxing/DecodeHintType;->ASSUME_GS1:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    .line 250
    .restart local v11    # "convertFNC1":Z
    .restart local v25    # "rawCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .restart local v31    # "startCode":I
    .restart local v32    # "startPatternInfo":[I
    :pswitch_0
    const/16 v10, 0x65

    .line 262
    .local v10, "codeSet":I
    :goto_1
    const/4 v14, 0x0

    .line 263
    .local v14, "done":Z
    const/16 v16, 0x0

    .line 265
    .local v16, "isNextShifted":Z
    new-instance v27, Ljava/lang/StringBuilder;

    const/16 v35, 0x14

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 267
    .local v27, "result":Ljava/lang/StringBuilder;
    const/16 v35, 0x0

    aget v20, v32, v35

    .line 268
    .local v20, "lastStart":I
    const/16 v35, 0x1

    aget v23, v32, v35

    .line 269
    .local v23, "nextStart":I
    const/16 v35, 0x6

    move/from16 v0, v35

    new-array v13, v0, [I

    .line 271
    .local v13, "counters":[I
    const/16 v18, 0x0

    .line 272
    .local v18, "lastCode":I
    const/4 v9, 0x0

    .line 273
    .local v9, "code":I
    move/from16 v8, v31

    .line 274
    .local v8, "checksumTotal":I
    const/16 v22, 0x0

    .line 275
    .local v22, "multiplier":I
    const/16 v17, 0x1

    .line 276
    .local v17, "lastCharacterWasPrintable":Z
    const/16 v34, 0x0

    .line 277
    .local v34, "upperMode":Z
    const/16 v30, 0x0

    .line 279
    .local v30, "shiftUpperMode":Z
    :cond_2
    :goto_2
    if-nez v14, :cond_1e

    .line 281
    move/from16 v33, v16

    .line 282
    .local v33, "unshift":Z
    const/16 v16, 0x0

    .line 285
    move/from16 v18, v9

    .line 288
    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-static {v0, v13, v1}, Lcom/google/zxing/oned/Code128Reader;->decodeCode(Lcom/google/zxing/common/BitArray;[II)I

    move-result v9

    .line 290
    int-to-byte v0, v9

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v35

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    const/16 v35, 0x6a

    move/from16 v0, v35

    if-ne v9, v0, :cond_3

    .line 298
    :goto_3
    const/16 v35, 0x6a

    move/from16 v0, v35

    if-ne v9, v0, :cond_4

    .line 304
    :goto_4
    move/from16 v20, v23

    .line 305
    move-object v7, v13

    .local v7, "-l_26_R":Ljava/lang/Object;
    array-length v6, v13

    .local v6, "-l_25_I":I
    const/4 v5, 0x0

    .local v5, "-l_24_I":I
    :goto_5
    if-ge v5, v6, :cond_5

    aget v12, v13, v5

    .line 306
    .local v12, "counter":I
    add-int v23, v23, v12

    .line 305
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 253
    .end local v5    # "-l_24_I":I
    .end local v6    # "-l_25_I":I
    .end local v7    # "-l_26_R":Ljava/lang/Object;
    .end local v8    # "checksumTotal":I
    .end local v9    # "code":I
    .end local v10    # "codeSet":I
    .end local v12    # "counter":I
    .end local v13    # "counters":[I
    .end local v14    # "done":Z
    .end local v16    # "isNextShifted":Z
    .end local v17    # "lastCharacterWasPrintable":Z
    .end local v18    # "lastCode":I
    .end local v20    # "lastStart":I
    .end local v22    # "multiplier":I
    .end local v23    # "nextStart":I
    .end local v27    # "result":Ljava/lang/StringBuilder;
    .end local v30    # "shiftUpperMode":Z
    .end local v33    # "unshift":Z
    .end local v34    # "upperMode":Z
    :pswitch_1
    const/16 v10, 0x64

    .restart local v10    # "codeSet":I
    goto :goto_1

    .line 256
    .end local v10    # "codeSet":I
    :pswitch_2
    const/16 v10, 0x63

    .restart local v10    # "codeSet":I
    goto :goto_1

    .line 294
    .restart local v8    # "checksumTotal":I
    .restart local v9    # "code":I
    .restart local v13    # "counters":[I
    .restart local v14    # "done":Z
    .restart local v16    # "isNextShifted":Z
    .restart local v17    # "lastCharacterWasPrintable":Z
    .restart local v18    # "lastCode":I
    .restart local v20    # "lastStart":I
    .restart local v22    # "multiplier":I
    .restart local v23    # "nextStart":I
    .restart local v27    # "result":Ljava/lang/StringBuilder;
    .restart local v30    # "shiftUpperMode":Z
    .restart local v33    # "unshift":Z
    .restart local v34    # "upperMode":Z
    :cond_3
    const/16 v17, 0x1

    goto :goto_3

    .line 299
    :cond_4
    add-int/lit8 v22, v22, 0x1

    .line 300
    mul-int v35, v22, v9

    add-int v8, v8, v35

    goto :goto_4

    .line 310
    .restart local v5    # "-l_24_I":I
    .restart local v6    # "-l_25_I":I
    .restart local v7    # "-l_26_R":Ljava/lang/Object;
    :cond_5
    packed-switch v9, :pswitch_data_1

    .line 317
    packed-switch v10, :pswitch_data_2

    .line 478
    :cond_6
    :goto_6
    :pswitch_3
    if-eqz v33, :cond_2

    .line 479
    const/16 v35, 0x65

    move/from16 v0, v35

    if-eq v10, v0, :cond_1d

    const/16 v10, 0x65

    :goto_7
    goto :goto_2

    .line 314
    :pswitch_4
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v35

    throw v35

    .line 320
    :pswitch_5
    const/16 v35, 0x40

    move/from16 v0, v35

    if-lt v9, v0, :cond_7

    .line 327
    const/16 v35, 0x60

    move/from16 v0, v35

    if-lt v9, v0, :cond_9

    .line 337
    const/16 v35, 0x6a

    move/from16 v0, v35

    if-ne v9, v0, :cond_b

    .line 340
    :goto_8
    packed-switch v9, :pswitch_data_3

    goto :goto_6

    .line 369
    :pswitch_6
    const/16 v16, 0x1

    .line 370
    const/16 v10, 0x64

    goto :goto_6

    .line 321
    :cond_7
    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_8

    .line 324
    add-int/lit8 v35, v9, 0x20

    move/from16 v0, v35

    add-int/lit16 v0, v0, 0x80

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-char v0, v0

    move/from16 v35, v0

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 326
    :goto_9
    const/16 v30, 0x0

    goto :goto_6

    .line 322
    :cond_8
    add-int/lit8 v35, v9, 0x20

    move/from16 v0, v35

    int-to-char v0, v0

    move/from16 v35, v0

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 328
    :cond_9
    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_a

    .line 331
    add-int/lit8 v35, v9, 0x40

    move/from16 v0, v35

    int-to-char v0, v0

    move/from16 v35, v0

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 333
    :goto_a
    const/16 v30, 0x0

    goto :goto_6

    .line 329
    :cond_a
    add-int/lit8 v35, v9, -0x40

    move/from16 v0, v35

    int-to-char v0, v0

    move/from16 v35, v0

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 338
    :cond_b
    const/16 v17, 0x0

    goto :goto_8

    .line 342
    :pswitch_7
    if-eqz v11, :cond_6

    .line 343
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->length()I

    move-result v35

    if-eqz v35, :cond_c

    .line 349
    const/16 v35, 0x1d

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 346
    :cond_c
    const-string/jumbo v35, "]C1"

    move-object/from16 v0, v27

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 358
    :pswitch_8
    if-eqz v34, :cond_f

    .line 361
    :cond_d
    if-nez v34, :cond_10

    .line 365
    :cond_e
    const/16 v30, 0x1

    goto/16 :goto_6

    .line 358
    :cond_f
    if-eqz v30, :cond_d

    .line 359
    const/16 v34, 0x1

    .line 360
    const/16 v30, 0x0

    goto/16 :goto_6

    .line 361
    :cond_10
    if-eqz v30, :cond_e

    .line 362
    const/16 v34, 0x0

    .line 363
    const/16 v30, 0x0

    goto/16 :goto_6

    .line 373
    :pswitch_9
    const/16 v10, 0x64

    goto/16 :goto_6

    .line 376
    :pswitch_a
    const/16 v10, 0x63

    goto/16 :goto_6

    .line 379
    :pswitch_b
    const/4 v14, 0x1

    goto/16 :goto_6

    .line 385
    :pswitch_c
    const/16 v35, 0x60

    move/from16 v0, v35

    if-lt v9, v0, :cond_11

    .line 393
    const/16 v35, 0x6a

    move/from16 v0, v35

    if-ne v9, v0, :cond_13

    .line 396
    :goto_b
    packed-switch v9, :pswitch_data_4

    goto/16 :goto_6

    .line 425
    :pswitch_d
    const/16 v16, 0x1

    .line 426
    const/16 v10, 0x65

    goto/16 :goto_6

    .line 386
    :cond_11
    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_12

    .line 389
    add-int/lit8 v35, v9, 0x20

    move/from16 v0, v35

    add-int/lit16 v0, v0, 0x80

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-char v0, v0

    move/from16 v35, v0

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 391
    :goto_c
    const/16 v30, 0x0

    goto/16 :goto_6

    .line 387
    :cond_12
    add-int/lit8 v35, v9, 0x20

    move/from16 v0, v35

    int-to-char v0, v0

    move/from16 v35, v0

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 394
    :cond_13
    const/16 v17, 0x0

    goto :goto_b

    .line 398
    :pswitch_e
    if-eqz v11, :cond_6

    .line 399
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->length()I

    move-result v35

    if-eqz v35, :cond_14

    .line 405
    const/16 v35, 0x1d

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 402
    :cond_14
    const-string/jumbo v35, "]C1"

    move-object/from16 v0, v27

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 414
    :pswitch_f
    if-eqz v34, :cond_17

    .line 417
    :cond_15
    if-nez v34, :cond_18

    .line 421
    :cond_16
    const/16 v30, 0x1

    goto/16 :goto_6

    .line 414
    :cond_17
    if-eqz v30, :cond_15

    .line 415
    const/16 v34, 0x1

    .line 416
    const/16 v30, 0x0

    goto/16 :goto_6

    .line 417
    :cond_18
    if-eqz v30, :cond_16

    .line 418
    const/16 v34, 0x0

    .line 419
    const/16 v30, 0x0

    goto/16 :goto_6

    .line 429
    :pswitch_10
    const/16 v10, 0x65

    goto/16 :goto_6

    .line 432
    :pswitch_11
    const/16 v10, 0x63

    goto/16 :goto_6

    .line 435
    :pswitch_12
    const/4 v14, 0x1

    goto/16 :goto_6

    .line 441
    :pswitch_13
    const/16 v35, 0x64

    move/from16 v0, v35

    if-lt v9, v0, :cond_19

    .line 447
    const/16 v35, 0x6a

    move/from16 v0, v35

    if-ne v9, v0, :cond_1b

    .line 450
    :goto_d
    packed-switch v9, :pswitch_data_5

    goto/16 :goto_6

    .line 467
    :pswitch_14
    const/16 v10, 0x64

    goto/16 :goto_6

    .line 442
    :cond_19
    const/16 v35, 0xa

    move/from16 v0, v35

    if-lt v9, v0, :cond_1a

    .line 445
    :goto_e
    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 443
    :cond_1a
    const/16 v35, 0x30

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 448
    :cond_1b
    const/16 v17, 0x0

    goto :goto_d

    .line 452
    :pswitch_15
    if-eqz v11, :cond_6

    .line 453
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->length()I

    move-result v35

    if-eqz v35, :cond_1c

    .line 459
    const/16 v35, 0x1d

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 456
    :cond_1c
    const-string/jumbo v35, "]C1"

    move-object/from16 v0, v27

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 464
    :pswitch_16
    const/16 v10, 0x65

    goto/16 :goto_6

    .line 470
    :pswitch_17
    const/4 v14, 0x1

    goto/16 :goto_6

    .line 479
    :cond_1d
    const/16 v10, 0x64

    goto/16 :goto_7

    .line 484
    .end local v5    # "-l_24_I":I
    .end local v6    # "-l_25_I":I
    .end local v7    # "-l_26_R":Ljava/lang/Object;
    .end local v33    # "unshift":Z
    :cond_1e
    sub-int v19, v23, v20

    .line 489
    .local v19, "lastPatternSize":I
    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v23

    .line 491
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v35

    sub-int v36, v23, v20

    div-int/lit8 v36, v36, 0x2

    add-int v36, v36, v23

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->min(II)I

    move-result v35

    .line 490
    const/16 v36, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v35

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v35

    .line 492
    if-eqz v35, :cond_20

    .line 497
    mul-int v35, v22, v18

    sub-int v8, v8, v35

    .line 499
    rem-int/lit8 v35, v8, 0x67

    move/from16 v0, v35

    move/from16 v1, v18

    if-ne v0, v1, :cond_21

    .line 504
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->length()I

    move-result v28

    .line 505
    .local v28, "resultLength":I
    if-eqz v28, :cond_22

    .line 512
    if-gtz v28, :cond_23

    .line 520
    :cond_1f
    :goto_f
    const/16 v35, 0x1

    aget v35, v32, v35

    const/16 v36, 0x0

    aget v36, v32, v36

    add-int v35, v35, v36

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    const/high16 v36, 0x40000000    # 2.0f

    div-float v21, v35, v36

    .line 521
    .local v21, "left":F
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v35, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v36, v0

    const/high16 v37, 0x40000000    # 2.0f

    div-float v36, v36, v37

    add-float v29, v35, v36

    .line 523
    .local v29, "right":F
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v26

    .line 524
    .local v26, "rawCodesSize":I
    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v24, v0

    .line 525
    .local v24, "rawBytes":[B
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_10
    move/from16 v0, v26

    if-ge v15, v0, :cond_25

    .line 526
    move-object/from16 v0, v25

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Byte;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Byte;->byteValue()B

    move-result v35

    move/from16 v0, v35

    int-to-byte v0, v0

    move/from16 v35, v0

    aput-byte v35, v24, v15

    .line 525
    add-int/lit8 v15, v15, 0x1

    goto :goto_10

    .line 493
    .end local v15    # "i":I
    .end local v21    # "left":F
    .end local v24    # "rawBytes":[B
    .end local v26    # "rawCodesSize":I
    .end local v28    # "resultLength":I
    .end local v29    # "right":F
    :cond_20
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v35

    throw v35

    .line 500
    :cond_21
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v35

    throw v35

    .line 507
    .restart local v28    # "resultLength":I
    :cond_22
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v35

    throw v35

    .line 512
    :cond_23
    if-eqz v17, :cond_1f

    .line 513
    const/16 v35, 0x63

    move/from16 v0, v35

    if-eq v10, v0, :cond_24

    .line 516
    add-int/lit8 v35, v28, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v35

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 514
    :cond_24
    add-int/lit8 v35, v28, -0x2

    move-object/from16 v0, v27

    move/from16 v1, v35

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 529
    .restart local v15    # "i":I
    .restart local v21    # "left":F
    .restart local v24    # "rawBytes":[B
    .restart local v26    # "rawCodesSize":I
    .restart local v29    # "right":F
    :cond_25
    new-instance v35, Lcom/google/zxing/Result;

    .line 530
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 532
    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    .line 533
    new-instance v39, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v40, v0

    move-object/from16 v0, v39

    move/from16 v1, v21

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v39, v37, v38

    const/16 v38, 0x1

    .line 534
    new-instance v39, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v40, v0

    move-object/from16 v0, v39

    move/from16 v1, v29

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v39, v37, v38

    .line 535
    sget-object v38, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    .line 529
    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v24

    move-object/from16 v3, v37

    move-object/from16 v4, v38

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v35

    .line 248
    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 310
    :pswitch_data_1
    .packed-switch 0x67
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 317
    :pswitch_data_2
    .packed-switch 0x63
        :pswitch_13
        :pswitch_c
        :pswitch_5
    .end packed-switch

    .line 340
    :pswitch_data_3
    .packed-switch 0x60
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_b
    .end packed-switch

    .line 396
    :pswitch_data_4
    .packed-switch 0x60
        :pswitch_3
        :pswitch_3
        :pswitch_d
        :pswitch_11
        :pswitch_f
        :pswitch_10
        :pswitch_e
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_12
    .end packed-switch

    .line 450
    :pswitch_data_5
    .packed-switch 0x64
        :pswitch_14
        :pswitch_16
        :pswitch_15
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_17
    .end packed-switch
.end method
