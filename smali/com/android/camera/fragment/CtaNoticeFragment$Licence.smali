.class Lcom/android/camera/fragment/CtaNoticeFragment$Licence;
.super Ljava/lang/Object;
.source "CtaNoticeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/CtaNoticeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Licence"
.end annotation


# static fields
.field private static URL_MIUI_PRIVACY_POLICY:Ljava/lang/String;

.field private static URL_MIUI_USER_AGREEMENT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    const-string/jumbo v0, "http://www.miui.com/res/doc/eula.html"

    sput-object v0, Lcom/android/camera/fragment/CtaNoticeFragment$Licence;->URL_MIUI_USER_AGREEMENT:Ljava/lang/String;

    .line 138
    const-string/jumbo v0, "http://www.miui.com/res/doc/privacy.html"

    sput-object v0, Lcom/android/camera/fragment/CtaNoticeFragment$Licence;->URL_MIUI_PRIVACY_POLICY:Ljava/lang/String;

    .line 136
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPrivacyIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 147
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/android/camera/fragment/CtaNoticeFragment$Licence;->URL_MIUI_PRIVACY_POLICY:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/fragment/CtaNoticeFragment$Licence;->getUrlByLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 149
    return-object v0
.end method

.method private static getUrlByLocale(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?lang="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "zh"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "zh_CN"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "en_US"

    goto :goto_0
.end method

.method public static getUserAgreementIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 141
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/android/camera/fragment/CtaNoticeFragment$Licence;->URL_MIUI_USER_AGREEMENT:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/fragment/CtaNoticeFragment$Licence;->getUrlByLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 143
    return-object v0
.end method
