.class public Lcom/xiaomi/settingsdk/backup/data/KeyJsonSettingItem;
.super Lcom/xiaomi/settingsdk/backup/data/SettingItem;
.source "KeyJsonSettingItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/settingsdk/backup/data/KeyJsonSettingItem$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/settingsdk/backup/data/SettingItem",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xiaomi/settingsdk/backup/data/KeyJsonSettingItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/xiaomi/settingsdk/backup/data/KeyJsonSettingItem$1;

    invoke-direct {v0}, Lcom/xiaomi/settingsdk/backup/data/KeyJsonSettingItem$1;-><init>()V

    sput-object v0, Lcom/xiaomi/settingsdk/backup/data/KeyJsonSettingItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic stringToValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/xiaomi/settingsdk/backup/data/KeyJsonSettingItem;->stringToValue(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected stringToValue(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "rawValue"    # Ljava/lang/String;

    .prologue
    .line 15
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 16
    :catch_0
    move-exception v0

    .line 17
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v1, "SettingsBackup"

    const-string/jumbo v2, "JSONException occorred when stringToValue()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic valueToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/xiaomi/settingsdk/backup/data/KeyJsonSettingItem;->valueToString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected valueToString(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .param p1, "actualValue"    # Lorg/json/JSONObject;

    .prologue
    .line 24
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
