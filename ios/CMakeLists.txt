cmake_minimum_required(VERSION 3.18)

# Setup basic project settings

project("DevilutionX-Dependencies")

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

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_THREAD_PREFER_PTHREAD ON)
set(THREADS_PREFER_PTHREAD_FLAG ON)

if(HELLFIRE)
  add_definitions(-DHELLFIRE)
endif()

# 3rd party libs

add_library(smacker STATIC
  ../3rdParty/libsmacker/smk_bitstream.c
  ../3rdParty/libsmacker/smk_hufftree.c
  ../3rdParty/libsmacker/smacker.c)

add_library(Radon STATIC
  ../3rdParty/Radon/Radon/Source/File.cpp
  ../3rdParty/Radon/Radon/Source/Key.cpp
  ../3rdParty/Radon/Radon/Source/Named.cpp
  ../3rdParty/Radon/Radon/Source/Section.cpp)

add_library(StormLib STATIC
  ../3rdParty/StormLib/src/FileStream.cpp
  ../3rdParty/StormLib/src/SBaseCommon.cpp
  ../3rdParty/StormLib/src/SBaseFileTable.cpp
  ../3rdParty/StormLib/src/SBaseSubTypes.cpp
  ../3rdParty/StormLib/src/SCompression.cpp
  ../3rdParty/StormLib/src/SFileExtractFile.cpp
  ../3rdParty/StormLib/src/SFileFindFile.cpp
  ../3rdParty/StormLib/src/SFileGetFileInfo.cpp
  ../3rdParty/StormLib/src/SFileOpenArchive.cpp
  ../3rdParty/StormLib/src/SFileOpenFileEx.cpp
  ../3rdParty/StormLib/src/SFileReadFile.cpp)

add_library(PKWare STATIC
  ../3rdParty/PKWare/explode.cpp
  ../3rdParty/PKWare/implode.cpp)

# devilution libraries

add_library(devilution STATIC
  ../Source/appfat.cpp
  ../Source/automap.cpp
  ../Source/capture.cpp
  ../Source/codec.cpp
  ../Source/control.cpp
  ../Source/cursor.cpp
  ../Source/dead.cpp
  ../Source/debug.cpp
  ../Source/diablo.cpp
  ../Source/doom.cpp
  ../Source/drlg_l1.cpp
  ../Source/drlg_l2.cpp
  ../Source/drlg_l3.cpp
  ../Source/drlg_l4.cpp
  ../Source/dthread.cpp
  ../Source/effects.cpp
  ../Source/encrypt.cpp
  ../Source/engine.cpp
  ../Source/error.cpp
  ../Source/gamemenu.cpp
  ../Source/gendung.cpp
  ../Source/gmenu.cpp
  ../Source/help.cpp
  ../Source/init.cpp
  ../Source/interfac.cpp
  ../Source/inv.cpp
  ../Source/itemdat.cpp
  ../Source/items.cpp
  ../Source/lighting.cpp
  ../Source/loadsave.cpp
  ../Source/mainmenu.cpp
  ../Source/minitext.cpp
  ../Source/misdat.cpp
  ../Source/missiles.cpp
  ../Source/monstdat.cpp
  ../Source/monster.cpp
  ../Source/movie.cpp
  ../Source/mpqapi.cpp
  ../Source/msg.cpp
  ../Source/multi.cpp
  ../Source/nthread.cpp
  ../Source/objdat.cpp
  ../Source/objects.cpp
  ../Source/pack.cpp
  ../Source/palette.cpp
  ../Source/path.cpp
  ../Source/pfile.cpp
  ../Source/player.cpp
  ../Source/plrmsg.cpp
  ../Source/portal.cpp
  ../Source/quests.cpp
  ../Source/render.cpp
  ../Source/restrict.cpp
  ../Source/scrollrt.cpp
  ../Source/setmaps.cpp
  ../Source/sha.cpp
  ../Source/spelldat.cpp
  ../Source/spells.cpp
  ../Source/stores.cpp
  ../Source/sync.cpp
  ../Source/textdat.cpp
  ../Source/themes.cpp
  ../Source/tmsg.cpp
  ../Source/town.cpp
  ../Source/towners.cpp
  ../Source/track.cpp
  ../Source/trigs.cpp
  ../Source/wave.cpp)

add_library(devilutionx STATIC
  ../SourceX/dx.cpp
  ../SourceX/controls/devices/game_controller.cpp
  ../SourceX/controls/devices/joystick.cpp
  ../SourceX/controls/devices/kbcontroller.cpp
  ../SourceX/controls/controller.cpp
  ../SourceX/controls/controller_motion.cpp
  ../SourceX/controls/game_controls.cpp
  ../SourceX/controls/menu_controls.cpp
  ../SourceX/controls/modifier_hints.cpp
  ../SourceX/controls/plrctrls.cpp
  ../SourceX/controls/touch.cpp
  ../SourceX/display.cpp
  ../SourceX/miniwin/misc_msg.cpp
  ../SourceX/thread.cpp
  ../SourceX/sound.cpp
  ../SourceX/soundsample.cpp
  ../SourceX/storm/storm.cpp
  ../SourceX/storm/storm_net.cpp
  ../SourceX/dvlnet/abstract_net.cpp
  ../SourceX/dvlnet/loopback.cpp
  ../SourceX/dvlnet/packet.cpp
  ../SourceX/dvlnet/base.cpp
  ../SourceX/dvlnet/frame_queue.cpp
  ../SourceX/dvlnet/cdwrap.cpp
  ../SourceX/DiabloUI/art_draw.cpp
  ../SourceX/DiabloUI/errorart.cpp
  ../SourceX/DiabloUI/art.cpp
  ../SourceX/DiabloUI/button.cpp
  ../SourceX/DiabloUI/credits.cpp
  ../SourceX/DiabloUI/credits_lines.cpp
  ../SourceX/DiabloUI/diabloui.cpp
  ../SourceX/DiabloUI/dialogs.cpp
  ../SourceX/DiabloUI/fonts.cpp
  ../SourceX/DiabloUI/mainmenu.cpp
  ../SourceX/DiabloUI/progress.cpp
  ../SourceX/DiabloUI/scrollbar.cpp
  ../SourceX/DiabloUI/selconn.cpp
  ../SourceX/DiabloUI/selgame.cpp
  ../SourceX/DiabloUI/selhero.cpp
  ../SourceX/DiabloUI/selyesno.cpp
  ../SourceX/DiabloUI/selok.cpp
  ../SourceX/DiabloUI/text_draw.cpp
  ../SourceX/DiabloUI/text.cpp
  ../SourceX/DiabloUI/title.cpp
  ../SourceX/DiabloUI/ttf_render_wrapped.cpp
  ../SourceX/main.cpp
  ../Packaging/resources/CharisSILB.ttf)

# Linking and dependencies

find_package(Threads REQUIRED)

target_include_directories(devilution PUBLIC
  ../Source
  ../SourceS 
  ..)

target_include_directories(devilution PRIVATE 
  SDL/SDL/include
  SDL/SDL2_mixer 
  SDL/SDL2_ttf)

target_include_directories(devilutionx PRIVATE
  ../SourceX
  ../3rdParty/asio/include
  ../3rdParty/Radon/Radon/include
  ../3rdParty/libsmacker
  SDL/SDL/include
  SDL/SDL2_mixer 
  SDL/SDL2_ttf)

target_link_libraries(devilution PUBLIC Threads::Threads)
target_link_libraries(devilutionx PRIVATE
  devilution
  PKWare
  StormLib
  smacker
  Radon)
