#
# AOSPMod versioning
#

AM_VERSION := OREO-R.03
AOSP_TAG_ID := android-8.1.0_r18

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/aospmod/overlay/

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.com.android.dateformat=dd-MM-yyyy

# SetupWizard
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enterprise_mode=1

# Enable assistant on all devices
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opa.eligible_device=true

# Expose SELinux settings
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# World APN list
PRODUCT_COPY_FILES += \
    vendor/aospmod/extra/apns-conf.xml:system/etc/apns-conf.xml

# ADBlock file
PRODUCT_COPY_FILES += \
    vendor/aospmod/extra/hosts:system/etc/hosts

# Eleven
# https://github.com/LineageOS/android_packages_apps_Eleven
PRODUCT_PACKAGES += \
    Eleven

PRODUCT_PROPERTY_OVERRIDES += \
    ro.aospmod.version=$(AM_VERSION) \
    ro.aosptag.id=$(AOSP_TAG_ID)

# Include Google Apps
include vendor/google/gapps/gapps.mk
