.class final Lcom/google/zxing/oned/EANManufacturerOrgSupport;
.super Ljava/lang/Object;
.source "EANManufacturerOrgSupport.java"


# instance fields
.field private final countryIdentifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final ranges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->ranges:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->countryIdentifiers:Ljava/util/List;

    .line 31
    return-void
.end method

.method private add([ILjava/lang/String;)V
    .locals 1
    .param p1, "range"    # [I
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->ranges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->countryIdentifiers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method private declared-synchronized initIfNeeded()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->ranges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/16 v1, 0x13

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string/jumbo v1, "US/CA"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/16 v1, 0x1e

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x27

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string/jumbo v1, "US"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/16 v1, 0x3c

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x8b

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string/jumbo v1, "US/CA"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/16 v1, 0x12c

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x17b

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string/jumbo v1, "FR"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 67
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x17c

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "BG"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 68
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x17f

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "SI"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 69
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x181

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "HR"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 70
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x183

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "BA"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/16 v1, 0x190

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x1b8

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string/jumbo v1, "DE"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 72
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/16 v1, 0x1c2

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x1cb

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string/jumbo v1, "JP"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 73
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/16 v1, 0x1cc

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x1d5

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string/jumbo v1, "RU"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 74
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x1d7

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "TW"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 75
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x1da

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "EE"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x1db

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "LV"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 77
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x1dc

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "AZ"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 78
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x1dd

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "LT"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 79
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x1de

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "UZ"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 80
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x1df

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "LK"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 81
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x1e0

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "PH"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 82
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x1e1

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "BY"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 83
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x1e2

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "UA"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x1e4

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "MD"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 85
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x1e5

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "AM"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 86
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x1e6

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "GE"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 87
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x1e7

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "KZ"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 88
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x1e9

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "HK"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 89
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/16 v1, 0x1ea

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x1f3

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string/jumbo v1, "JP"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 90
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/16 v1, 0x1f4

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x1fd

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string/jumbo v1, "GB"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 91
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x208

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "GR"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 92
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x210

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "LB"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 93
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x211

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "CY"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 94
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x213

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "MK"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 95
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x217

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "MT"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 96
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x21b

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "IE"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 97
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/16 v1, 0x21c

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x225

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string/jumbo v1, "BE/LU"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 98
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x230

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "PT"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 99
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x239

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "IS"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 100
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/16 v1, 0x23a

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x243

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string/jumbo v1, "DK"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 101
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x24e

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "PL"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 102
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x252

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "RO"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 103
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x257

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "HU"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 104
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/16 v1, 0x258

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x259

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string/jumbo v1, "ZA"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 105
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x25b

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "GH"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 106
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x260

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "BH"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 107
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x261

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "MU"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 108
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x263

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "MA"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 109
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x265

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "DZ"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 110
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x268

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "KE"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 111
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x26a

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "CI"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 112
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x26b

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "TN"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 113
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x26d

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "SY"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 114
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x26e

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "EG"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 115
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x270

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "LY"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 116
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x271

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "JO"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 117
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x272

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "IR"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 118
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x273

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "KW"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 119
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x274

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "SA"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 120
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x275

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "AE"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 121
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/16 v1, 0x280

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x289

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string/jumbo v1, "FI"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 122
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/16 v1, 0x2b2

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x2b7

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string/jumbo v1, "CN"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 123
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/16 v1, 0x2bc

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x2c5

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string/jumbo v1, "NO"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 124
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x2d9

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "IL"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 125
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/16 v1, 0x2da

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x2e3

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string/jumbo v1, "SE"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 126
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x2e4

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "GT"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 127
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x2e5

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "SV"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 128
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x2e6

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "HN"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 129
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x2e7

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "NI"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 130
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x2e8

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "CR"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 131
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x2e9

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "PA"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 132
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x2ea

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "DO"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 133
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x2ee

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "MX"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 134
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/16 v1, 0x2f2

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x2f3

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string/jumbo v1, "CA"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 135
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x2f7

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "VE"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 136
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/16 v1, 0x2f8

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x301

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string/jumbo v1, "CH"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 137
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x302

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "CO"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 138
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x305

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "UY"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 139
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x307

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "PE"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 140
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x309

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "BO"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 141
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x30b

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "AR"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 142
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x30c

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "CL"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 143
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x310

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "PY"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 144
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x311

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "PE"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 145
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x312

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "EC"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 146
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/16 v1, 0x315

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x316

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string/jumbo v1, "BR"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 147
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/16 v1, 0x320

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x347

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string/jumbo v1, "IT"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 148
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/16 v1, 0x348

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x351

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string/jumbo v1, "ES"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 149
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x352

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "CU"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 150
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x35a

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "SK"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 151
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x35b

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "CZ"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 152
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x35c

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "YU"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 153
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x361

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "MN"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 154
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x363

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "KP"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 155
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/16 v1, 0x364

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x365

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string/jumbo v1, "TR"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 156
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/16 v1, 0x366

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x36f

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string/jumbo v1, "NL"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 157
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x370

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "KR"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 158
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x375

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "TH"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 159
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x378

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "SG"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 160
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x37a

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "IN"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 161
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x37d

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "VN"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 162
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x380

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "PK"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 163
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x383

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "ID"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 164
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/16 v1, 0x384

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x397

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string/jumbo v1, "AT"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 165
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/16 v1, 0x3a2

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x3ab

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string/jumbo v1, "AU"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 166
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/16 v1, 0x3ac

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x3b5

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string/jumbo v1, "AZ"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 167
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x3bb

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "MY"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 168
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x3be

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string/jumbo v1, "MO"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 169
    return-void

    :cond_0
    monitor-exit p0

    .line 61
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method lookupCountryIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "productCode"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 37
    invoke-direct {p0}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->initIfNeeded()V

    .line 38
    const/4 v6, 0x3

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 39
    .local v3, "prefix":I
    iget-object v6, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->ranges:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .line 40
    .local v2, "max":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 41
    iget-object v6, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->ranges:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 42
    .local v4, "range":[I
    aget v5, v4, v7

    .line 43
    .local v5, "start":I
    if-lt v3, v5, :cond_0

    .line 46
    array-length v6, v4

    if-eq v6, v8, :cond_1

    aget v0, v4, v8

    .line 47
    .local v0, "end":I
    :goto_1
    if-le v3, v0, :cond_2

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    .end local v0    # "end":I
    :cond_0
    return-object v9

    :cond_1
    move v0, v5

    .line 46
    goto :goto_1

    .line 48
    .restart local v0    # "end":I
    :cond_2
    iget-object v6, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->countryIdentifiers:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    return-object v6

    .line 51
    .end local v0    # "end":I
    .end local v4    # "range":[I
    .end local v5    # "start":I
    :cond_3
    return-object v9
.end method
