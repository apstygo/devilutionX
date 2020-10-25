cmake_minimum_required(VERSION 3.18)

# Setup basic project settings

set(DEVELOPMENT_PROJECT_NAME "DevilutionX_iOS")             # <== Set to your project name, e.g. project.xcodeproj
set(DEVELOPMENT_TEAM_ID "AAAAAAAAAA")                       # <== Set to your team ID from Apple
set(APP_NAME "DevilutionX")                                 # <== Set To your app's name
set(APP_VERSION "1.0")
set(APP_BUNDLE_IDENTIFIER "com.diasurgical.devilutionx.ios")# <== Set to your app's bundle identifier
set(CODE_SIGN_IDENTITY "iPhone Developer")                  # <== Set to your preferred code sign identity, to see list:
                                                            # /usr/bin/env xcrun security find-identity -v -p codesigning
set(DEPLOYMENT_TARGET 11.0)                                 # <== Set your deployment target version of iOS
set(DEVICE_FAMILY "1")                                      # <== Set to "1" to target iPhone, set to "2" to target iPad, set to "1,2" to target both

project(${DEVELOPMENT_PROJECT_NAME})

set(PRODUCT_NAME ${APP_NAME})
set(EXECUTABLE_NAME ${APP_NAME})
set(MACOSX_BUNDLE_EXECUTABLE_NAME ${APP_NAME})
set(MACOSX_BUNDLE_INFO_STRING ${APP_BUNDLE_IDENTIFIER})
set(MACOSX_BUNDLE_GUI_IDENTIFIER ${APP_BUNDLE_IDENTIFIER})
set(MACOSX_BUNDLE_BUNDLE_NAME ${APP_BUNDLE_IDENTIFIER})
set(MACOSX_BUNDLE_ICON_FILE "")
set(MACOSX_BUNDLE_LONG_VERSION_STRING ${APP_VERSION})
set(MACOSX_BUNDLE_SHORT_VERSION_STRING ${APP_VERSION})
set(MACOSX_BUNDLE_BUNDLE_VERSION ${APP_VERSION})
set(MACOSX_BUNDLE_COPYRIGHT "Unlicensed")
set(MACOSX_DEPLOYMENT_TARGET ${DEPLOYMENT_TARGET})
