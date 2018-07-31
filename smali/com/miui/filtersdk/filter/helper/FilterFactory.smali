.class public Lcom/miui/filtersdk/filter/helper/FilterFactory;
.super Ljava/lang/Object;
.source "FilterFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/miui/filtersdk/filter/helper/FilterFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/filtersdk/filter/helper/FilterFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFilterByType(Lcom/miui/filtersdk/filter/helper/FilterType;)Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;
    .locals 3
    .param p0, "type"    # Lcom/miui/filtersdk/filter/helper/FilterType;

    .prologue
    .line 74
    sget-object v0, Lcom/miui/filtersdk/filter/helper/FilterFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getFilterByType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; ordinal = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-object v0, Lcom/miui/filtersdk/filter/helper/FilterFactory$1;->$SwitchMap$com$miui$filtersdk$filter$helper$FilterType:[I

    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/helper/FilterType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 189
    const/4 v0, 0x0

    return-object v0

    .line 77
    :pswitch_0
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string/jumbo v1, "filter/aiscene/A-DOC.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 79
    :pswitch_1
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string/jumbo v1, "filter/aiscene/A-FLOWER.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 81
    :pswitch_2
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string/jumbo v1, "filter/aiscene/A-FOOD.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 83
    :pswitch_3
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string/jumbo v1, "filter/aiscene/A-PPT.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 85
    :pswitch_4
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string/jumbo v1, "filter/aiscene/A-SKY.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 87
    :pswitch_5
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string/jumbo v1, "filter/aiscene/A-SUNRISE_SUNSET.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 89
    :pswitch_6
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string/jumbo v1, "filter/aiscene/A-CAT.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 91
    :pswitch_7
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string/jumbo v1, "filter/aiscene/A-DOG.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 93
    :pswitch_8
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string/jumbo v1, "filter/aiscene/A-GREEN_PLANTS.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 95
    :pswitch_9
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string/jumbo v1, "filter/aiscene/A-NIGHT.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 97
    :pswitch_a
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string/jumbo v1, "filter/aiscene/A-SNOW.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 99
    :pswitch_b
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string/jumbo v1, "filter/aiscene/A-SEA.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 101
    :pswitch_c
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string/jumbo v1, "filter/aiscene/A-AUTUMN.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 103
    :pswitch_d
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string/jumbo v1, "filter/aiscene/A-CANDLELIGHT.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 105
    :pswitch_e
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string/jumbo v1, "filter/aiscene/A-CAR.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 107
    :pswitch_f
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string/jumbo v1, "filter/aiscene/A-GRASS.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 109
    :pswitch_10
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string/jumbo v1, "filter/aiscene/A-MAPLE_LEAVES.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 111
    :pswitch_11
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string/jumbo v1, "filter/aiscene/A-SUCCULENT.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 113
    :pswitch_12
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string/jumbo v1, "filter/aiscene/A-BUILDING.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 115
    :pswitch_13
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string/jumbo v1, "filter/aiscene/A-CITY.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 117
    :pswitch_14
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string/jumbo v1, "filter/aiscene/A-CLOUD.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 119
    :pswitch_15
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string/jumbo v1, "filter/aiscene/A-OVERCAST.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 121
    :pswitch_16
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string/jumbo v1, "filter/aiscene/A-GLOBAL-NONE.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 123
    :pswitch_17
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string/jumbo v1, "filter/aiscene/A-SILHOUETTE.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 125
    :pswitch_18
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;

    const-string/jumbo v1, "filter/aiscene/A-HUMAN.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 128
    :pswitch_19
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/normal/N-BERRY.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 130
    :pswitch_1a
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/normal/N-COOKIE.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 132
    :pswitch_1b
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/normal/N-DELICACY.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 134
    :pswitch_1c
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/normal/N-FADE.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 136
    :pswitch_1d
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/normal/N-FILM.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 138
    :pswitch_1e
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/normal/N-KOIZORA.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 140
    :pswitch_1f
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/normal/N-LATTE.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 142
    :pswitch_20
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/normal/N-LIGHT.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 144
    :pswitch_21
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/normal/N-LIVELY.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 146
    :pswitch_22
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/normal/N-QUIET.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 148
    :pswitch_23
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/normal/N-SODA.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 150
    :pswitch_24
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/normal/N-WARM.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 152
    :pswitch_25
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/beauty/B-FAIRYTALE.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 154
    :pswitch_26
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/beauty/B-JAPANESE.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 156
    :pswitch_27
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/beauty/B-MINT.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 158
    :pswitch_28
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/beauty/B-HEART.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 160
    :pswitch_29
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/beauty/B-NATURE.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 162
    :pswitch_2a
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/beauty/B-PINK.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 164
    :pswitch_2b
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/beauty/B-ROMANCE.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 166
    :pswitch_2c
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/beauty/B-MAZE.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 168
    :pswitch_2d
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/beauty/B-WHITEANDBLACK.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 170
    :pswitch_2e
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/beauty/B-STORY.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 172
    :pswitch_2f
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/beauty/B-RIDDLE.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 174
    :pswitch_30
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/beauty/B-MOVIE.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 176
    :pswitch_31
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/video/S-FILM.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 178
    :pswitch_32
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/video/S-YEARS.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 180
    :pswitch_33
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/video/S-POLAROID.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 182
    :pswitch_34
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/video/S-FOREST.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 185
    :pswitch_35
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/common/WHITEANDBLACK.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 187
    :pswitch_36
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    const-string/jumbo v1, "filter/video/S-BYGONE.png"

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_35
        :pswitch_36
    .end packed-switch
.end method

.method public static getFiltersByScene(Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;)[Lcom/miui/filtersdk/filter/helper/FilterType;
    .locals 7
    .param p0, "scene"    # Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

    .prologue
    .line 198
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v5, "types":Ljava/util/List;, "Ljava/util/List<Lcom/miui/filtersdk/filter/helper/FilterType;>;"
    invoke-static {}, Lcom/miui/filtersdk/filter/helper/FilterType;->values()[Lcom/miui/filtersdk/filter/helper/FilterType;

    move-result-object v0

    .local v0, "-l_2_R":Ljava/lang/Object;
    array-length v1, v0

    .local v1, "-l_3_I":I
    const/4 v2, 0x0

    .local v2, "-l_4_I":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 206
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v4, v6, [Lcom/miui/filtersdk/filter/helper/FilterType;

    .line 207
    .local v4, "result":[Lcom/miui/filtersdk/filter/helper/FilterType;
    invoke-interface {v5, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/miui/filtersdk/filter/helper/FilterType;

    return-object v6

    .line 200
    .end local v4    # "result":[Lcom/miui/filtersdk/filter/helper/FilterType;
    :cond_0
    aget-object v3, v0, v2

    .line 201
    .local v3, "filterType":Lcom/miui/filtersdk/filter/helper/FilterType;
    invoke-virtual {v3}, Lcom/miui/filtersdk/filter/helper/FilterType;->getFilterScene()Lcom/miui/filtersdk/filter/helper/FilterFactory$FilterScene;

    move-result-object v6

    if-eq v6, p0, :cond_1

    .line 200
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 202
    :cond_1
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
