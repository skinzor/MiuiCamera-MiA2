.class public final Lcom/android/camera/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# static fields
.field public static final CameraPreference:[I

.field public static final IconIndicator:[I

.field public static final IconListPreference:[I

.field public static final ListPreference:[I

.field public static final PreviewListPreference:[I

.field public static final RecyclerView:[I

.field public static final ToggleSwitch:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const v3, 0x7f01000a

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2986
    new-array v0, v6, [I

    .line 2987
    const v1, 0x7f010004

    aput v1, v0, v5

    .line 2986
    sput-object v0, Lcom/android/camera/R$styleable;->CameraPreference:[I

    .line 3016
    const v0, 0x7f01000b

    .line 3015
    filled-new-array {v3, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/camera/R$styleable;->IconIndicator:[I

    .line 3055
    const v0, 0x7f01000c

    const v1, 0x7f01000d

    const v2, 0x7f01000e

    .line 3054
    filled-new-array {v3, v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/camera/R$styleable;->IconListPreference:[I

    .line 3118
    const v0, 0x7f010005

    const v1, 0x7f010006

    const v2, 0x7f010007

    const v3, 0x7f010008

    .line 3119
    const v4, 0x7f010009

    .line 3117
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/camera/R$styleable;->ListPreference:[I

    .line 3190
    new-array v0, v6, [I

    .line 3191
    const v1, 0x7f01000f

    aput v1, v0, v5

    .line 3190
    sput-object v0, Lcom/android/camera/R$styleable;->PreviewListPreference:[I

    .line 3222
    const v0, 0x10100c4

    const/high16 v1, 0x7f010000

    const v2, 0x7f010001

    const v3, 0x7f010002

    .line 3223
    const v4, 0x7f010003

    .line 3221
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/camera/R$styleable;->RecyclerView:[I

    .line 3337
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/R$styleable;->ToggleSwitch:[I

    .line 2975
    return-void

    .line 3337
    :array_0
    .array-data 4
        0x7f010010
        0x7f010011
        0x7f010012
        0x7f010013
        0x7f010014
        0x7f010015
        0x7f010016
        0x7f010017
        0x7f010018
        0x7f010019
        0x7f01001a
        0x7f01001b
        0x7f01001c
        0x7f01001d
        0x7f01001e
        0x7f01001f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2975
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
