.class public Lcom/android/camera/preferences/SecureCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "SecureCheckBoxPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method


# virtual methods
.method protected getPersistedBoolean(Z)Z
    .locals 5
    .param p1, "defaultReturnValue"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    invoke-virtual {p0}, Lcom/android/camera/preferences/SecureCheckBoxPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    return p1

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/preferences/SecureCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 58
    invoke-virtual {p0}, Lcom/android/camera/preferences/SecureCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_1

    move v0, v1

    .line 57
    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 58
    goto :goto_0

    :cond_2
    move v1, v2

    .line 57
    goto :goto_1
.end method

.method protected isPersisted()Z
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/camera/preferences/SecureCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/preferences/SecureCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onClick()V
    .locals 3

    .prologue
    .line 63
    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->onClick()V

    .line 64
    invoke-virtual {p0}, Lcom/android/camera/preferences/SecureCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/preferences/SecureCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/preferences/SecureCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 65
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected persistBoolean(Z)Z
    .locals 4
    .param p1, "value"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 39
    invoke-virtual {p0}, Lcom/android/camera/preferences/SecureCheckBoxPreference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 40
    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lcom/android/camera/preferences/SecureCheckBoxPreference;->getPersistedBoolean(Z)Z

    move-result v2

    if-ne p1, v2, :cond_0

    .line 42
    return v1

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/preferences/SecureCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/preferences/SecureCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 46
    return v1

    .line 48
    :cond_2
    return v0
.end method
