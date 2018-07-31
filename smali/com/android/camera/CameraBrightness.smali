.class public Lcom/android/camera/CameraBrightness;
.super Ljava/lang/Object;
.source "CameraBrightness.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraBrightness$CameraBrightnessTask;
    }
.end annotation


# static fields
.field private static mPositiveScreenManualBrightnessSpline:Landroid/util/Spline;

.field private static mScreenManualBrightnessSpline:Landroid/util/Spline;


# instance fields
.field private mBrightness:I

.field private mCameraBrightnessTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentActivity:Landroid/app/Activity;

.field private mFirstFocusChanged:Z

.field private mPaused:Z

.field private mUseDefaultValue:Z


# direct methods
.method static synthetic -get0(Lcom/android/camera/CameraBrightness;)Landroid/app/Activity;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/CameraBrightness;

    .prologue
    iget-object v0, p0, Lcom/android/camera/CameraBrightness;->mCurrentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/CameraBrightness;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/CameraBrightness;

    .prologue
    iget-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mPaused:Z

    return v0
.end method

.method static synthetic -get2()Landroid/util/Spline;
    .locals 1

    sget-object v0, Lcom/android/camera/CameraBrightness;->mPositiveScreenManualBrightnessSpline:Landroid/util/Spline;

    return-object v0
.end method

.method static synthetic -get3()Landroid/util/Spline;
    .locals 1

    sget-object v0, Lcom/android/camera/CameraBrightness;->mScreenManualBrightnessSpline:Landroid/util/Spline;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/camera/CameraBrightness;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/CameraBrightness;

    .prologue
    iget-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/camera/CameraBrightness;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/CameraBrightness;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/camera/CameraBrightness;->mBrightness:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/CameraBrightness;Ljava/lang/String;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/CameraBrightness;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/CameraBrightness;->getAndroidIntResource(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/camera/CameraBrightness;Ljava/lang/String;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/CameraBrightness;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/CameraBrightness;->getMiuiIntResource(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/camera/CameraBrightness;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/CameraBrightness;

    .prologue
    invoke-direct {p0}, Lcom/android/camera/CameraBrightness;->createSpline()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/camera/CameraBrightness;->mCurrentActivity:Landroid/app/Activity;

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mFirstFocusChanged:Z

    .line 37
    return-void
.end method

.method private adjustBrightness()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 184
    invoke-static {}, Lcom/android/camera/Device;->adjustScreenLight()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraBrightness;->mCurrentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/android/camera/CameraBrightness;->cancelLastTask()V

    .line 186
    new-instance v0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;-><init>(Lcom/android/camera/CameraBrightness;Lcom/android/camera/CameraBrightness$CameraBrightnessTask;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraBrightness;->mCameraBrightnessTask:Landroid/os/AsyncTask;

    .line 188
    :cond_0
    return-void
.end method

.method private cancelLastTask()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/camera/CameraBrightness;->mCameraBrightnessTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/camera/CameraBrightness;->mCameraBrightnessTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 194
    :cond_0
    return-void
.end method

.method private static createManualBrightnessSpline([I[I)Landroid/util/Spline;
    .locals 8
    .param p0, "inBrightness"    # [I
    .param p1, "outBrightness"    # [I

    .prologue
    .line 301
    :try_start_0
    array-length v2, p0

    .line 302
    .local v2, "n":I
    new-array v4, v2, [F

    .line 303
    .local v4, "x":[F
    new-array v5, v2, [F

    .line 305
    .local v5, "y":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 306
    aget v6, p0, v1

    int-to-float v6, v6

    aput v6, v4, v1

    .line 307
    aget v6, p1, v1

    int-to-float v6, v6

    aput v6, v5, v1

    .line 305
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 310
    :cond_0
    invoke-static {v4, v5}, Landroid/util/Spline;->createMonotoneCubicSpline([F[F)Landroid/util/Spline;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 317
    .local v3, "spline":Landroid/util/Spline;
    return-object v3

    .line 318
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "spline":Landroid/util/Spline;
    .end local v4    # "x":[F
    .end local v5    # "y":[F
    :catch_0
    move-exception v0

    .line 319
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v6, "CameraBrightness"

    const-string/jumbo v7, "Could not create manual-brightness spline."

    invoke-static {v6, v7, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 320
    const/4 v6, 0x0

    return-object v6
.end method

.method private createSpline()V
    .locals 4

    .prologue
    .line 233
    sget-object v2, Lcom/android/camera/CameraBrightness;->mScreenManualBrightnessSpline:Landroid/util/Spline;

    if-eqz v2, :cond_0

    .line 234
    sget-object v2, Lcom/android/camera/CameraBrightness;->mPositiveScreenManualBrightnessSpline:Landroid/util/Spline;

    if-nez v2, :cond_2

    .line 235
    :cond_0
    const-string/jumbo v2, "config_manual_spline_available"

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/camera/CameraBrightness;->getAndroidBoolRes(Ljava/lang/String;Z)Z

    move-result v2

    .line 233
    if-eqz v2, :cond_2

    .line 236
    const-string/jumbo v2, "config_manualBrightnessRemapIn"

    invoke-direct {p0, v2}, Lcom/android/camera/CameraBrightness;->getAndroidArrayRes(Ljava/lang/String;)[I

    move-result-object v0

    .line 237
    .local v0, "inBrightness":[I
    const-string/jumbo v2, "config_manualBrightnessRemapOut"

    invoke-direct {p0, v2}, Lcom/android/camera/CameraBrightness;->getAndroidArrayRes(Ljava/lang/String;)[I

    move-result-object v1

    .line 239
    .local v1, "outBrightness":[I
    invoke-static {v1, v0}, Lcom/android/camera/CameraBrightness;->createManualBrightnessSpline([I[I)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/android/camera/CameraBrightness;->mScreenManualBrightnessSpline:Landroid/util/Spline;

    .line 240
    invoke-static {v0, v1}, Lcom/android/camera/CameraBrightness;->createManualBrightnessSpline([I[I)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/android/camera/CameraBrightness;->mPositiveScreenManualBrightnessSpline:Landroid/util/Spline;

    .line 241
    sget-object v2, Lcom/android/camera/CameraBrightness;->mScreenManualBrightnessSpline:Landroid/util/Spline;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/camera/CameraBrightness;->mPositiveScreenManualBrightnessSpline:Landroid/util/Spline;

    if-nez v2, :cond_2

    .line 242
    :cond_1
    const-string/jumbo v2, "CameraBrightness"

    const-string/jumbo v3, "Error to create manual brightness spline"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    .end local v0    # "inBrightness":[I
    .end local v1    # "outBrightness":[I
    :cond_2
    return-void
.end method

.method private getAndroidArrayRes(Ljava/lang/String;)[I
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 262
    :try_start_0
    const-class v3, Lcom/android/internal/R$array;

    const-string/jumbo v4, "I"

    invoke-static {v3, p1, v4}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v2

    .line 263
    .local v2, "field":Lmiui/reflect/Field;
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 264
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 263
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I
    :try_end_0
    .catch Lmiui/reflect/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 267
    .end local v2    # "field":Lmiui/reflect/Field;
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "CameraBrightness"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    const/4 v3, 0x0

    const/16 v4, 0xff

    filled-new-array {v3, v4}, [I

    move-result-object v3

    return-object v3

    .line 265
    :catch_1
    move-exception v1

    .line 266
    .local v1, "e":Lmiui/reflect/NoSuchFieldException;
    const-string/jumbo v3, "CameraBrightness"

    invoke-virtual {v1}, Lmiui/reflect/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getAndroidBoolRes(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 249
    :try_start_0
    const-class v3, Lcom/android/internal/R$bool;

    const-string/jumbo v4, "I"

    invoke-static {v3, p1, v4}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v2

    .line 250
    .local v2, "field":Lmiui/reflect/Field;
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 251
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 250
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Lmiui/reflect/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 254
    .end local v2    # "field":Lmiui/reflect/Field;
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "CameraBrightness"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return p2

    .line 252
    :catch_1
    move-exception v1

    .line 253
    .local v1, "e":Lmiui/reflect/NoSuchFieldException;
    const-string/jumbo v3, "CameraBrightness"

    invoke-virtual {v1}, Lmiui/reflect/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getAndroidIntResource(Ljava/lang/String;)I
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 275
    :try_start_0
    const-class v3, Lcom/android/internal/R$integer;

    const-string/jumbo v4, "I"

    invoke-static {v3, p1, v4}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v2

    .line 276
    .local v2, "field":Lmiui/reflect/Field;
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 277
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 276
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_0
    .catch Lmiui/reflect/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 280
    .end local v2    # "field":Lmiui/reflect/Field;
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "CameraBrightness"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 278
    :catch_1
    move-exception v1

    .line 279
    .local v1, "e":Lmiui/reflect/NoSuchFieldException;
    const-string/jumbo v3, "CameraBrightness"

    invoke-virtual {v1}, Lmiui/reflect/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getMiuiIntResource(Ljava/lang/String;)I
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 288
    :try_start_0
    const-class v3, Landroid/miui/R$integer;

    const-string/jumbo v4, "I"

    invoke-static {v3, p1, v4}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v2

    .line 289
    .local v2, "field":Lmiui/reflect/Field;
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 290
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 289
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_0
    .catch Lmiui/reflect/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 293
    .end local v2    # "field":Lmiui/reflect/Field;
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "CameraBrightness"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 291
    :catch_1
    move-exception v1

    .line 292
    .local v1, "e":Lmiui/reflect/NoSuchFieldException;
    const-string/jumbo v3, "CameraBrightness"

    invoke-virtual {v1}, Lmiui/reflect/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getCurrentBrightness()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/android/camera/CameraBrightness;->mBrightness:I

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mFirstFocusChanged:Z

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mPaused:Z

    .line 225
    invoke-direct {p0}, Lcom/android/camera/CameraBrightness;->cancelLastTask()V

    .line 226
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/camera/CameraBrightness;->mCurrentActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/camera/BasePreferenceActivity;

    iput-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mPaused:Z

    .line 218
    const-string/jumbo v0, "CameraBrightness"

    const-string/jumbo v1, "onResume adjustBrightness"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-direct {p0}, Lcom/android/camera/CameraBrightness;->adjustBrightness()V

    .line 220
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasFocus"    # Z

    .prologue
    const/4 v0, 0x1

    .line 197
    const-string/jumbo v1, "CameraBrightness"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onWindowFocusChanged hasFocus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mFirstFocusChanged="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/CameraBrightness;->mFirstFocusChanged:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-boolean v1, p0, Lcom/android/camera/CameraBrightness;->mFirstFocusChanged:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 199
    iput-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mFirstFocusChanged:Z

    .line 200
    return-void

    .line 202
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/CameraBrightness;->mPaused:Z

    if-eqz v1, :cond_1

    .line 203
    return-void

    .line 207
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CameraBrightness;->mCurrentActivity:Landroid/app/Activity;

    instance-of v1, v1, Lcom/android/camera/BasePreferenceActivity;

    if-eqz v1, :cond_2

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z

    .line 208
    invoke-direct {p0}, Lcom/android/camera/CameraBrightness;->adjustBrightness()V

    .line 209
    return-void

    .line 207
    :cond_2
    xor-int/lit8 v0, p1, 0x1

    goto :goto_0
.end method
