# Install script for directory: /mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/build_o0/taglib/taglib/libtag.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/taglib" TYPE FILE FILES
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/tag.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/fileref.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/audioproperties.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/taglib_export.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/toolkit/taglib.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/toolkit/tstring.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/toolkit/tlist.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/toolkit/tlist.tcc"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/toolkit/tstringlist.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/toolkit/tbytevector.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/toolkit/tbytevectorlist.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/toolkit/tvariant.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/toolkit/tbytevectorstream.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/toolkit/tiostream.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/toolkit/tfile.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/toolkit/tfilestream.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/toolkit/tmap.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/toolkit/tmap.tcc"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/toolkit/tpicturetype.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/toolkit/tpropertymap.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/toolkit/tdebuglistener.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/toolkit/tversionnumber.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/mpeg/mpegfile.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/mpeg/mpegproperties.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/mpeg/mpegheader.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/mpeg/xingheader.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/mpeg/id3v1/id3v1tag.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/mpeg/id3v1/id3v1genres.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/mpeg/id3v2/id3v2.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/mpeg/id3v2/id3v2extendedheader.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/mpeg/id3v2/id3v2frame.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/mpeg/id3v2/id3v2header.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/mpeg/id3v2/id3v2synchdata.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/mpeg/id3v2/id3v2footer.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/mpeg/id3v2/id3v2framefactory.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/mpeg/id3v2/id3v2tag.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/mpeg/id3v2/frames/attachedpictureframe.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/mpeg/id3v2/frames/commentsframe.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/mpeg/id3v2/frames/eventtimingcodesframe.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/mpeg/id3v2/frames/generalencapsulatedobjectframe.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/mpeg/id3v2/frames/ownershipframe.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/mpeg/id3v2/frames/popularimeterframe.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/mpeg/id3v2/frames/privateframe.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/mpeg/id3v2/frames/relativevolumeframe.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/mpeg/id3v2/frames/synchronizedlyricsframe.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/mpeg/id3v2/frames/textidentificationframe.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/mpeg/id3v2/frames/uniquefileidentifierframe.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/mpeg/id3v2/frames/unknownframe.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/mpeg/id3v2/frames/unsynchronizedlyricsframe.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/mpeg/id3v2/frames/urllinkframe.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/mpeg/id3v2/frames/chapterframe.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/mpeg/id3v2/frames/tableofcontentsframe.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/mpeg/id3v2/frames/podcastframe.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/ogg/oggfile.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/ogg/oggpage.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/ogg/oggpageheader.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/ogg/xiphcomment.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/ogg/vorbis/vorbisfile.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/ogg/vorbis/vorbisproperties.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/ogg/flac/oggflacfile.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/ogg/speex/speexfile.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/ogg/speex/speexproperties.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/ogg/opus/opusfile.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/ogg/opus/opusproperties.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/flac/flacfile.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/flac/flacpicture.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/flac/flacproperties.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/flac/flacmetadatablock.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/ape/apefile.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/ape/apeproperties.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/ape/apetag.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/ape/apefooter.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/ape/apeitem.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/mpc/mpcfile.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/mpc/mpcproperties.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/wavpack/wavpackfile.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/wavpack/wavpackproperties.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/trueaudio/trueaudiofile.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/trueaudio/trueaudioproperties.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/riff/rifffile.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/riff/aiff/aifffile.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/riff/aiff/aiffproperties.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/riff/wav/wavfile.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/riff/wav/wavproperties.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/riff/wav/infotag.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/asf/asffile.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/asf/asfproperties.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/asf/asftag.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/asf/asfattribute.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/asf/asfpicture.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/mp4/mp4file.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/mp4/mp4atom.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/mp4/mp4tag.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/mp4/mp4item.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/mp4/mp4properties.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/mp4/mp4coverart.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/mp4/mp4itemfactory.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/mod/modfilebase.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/mod/modfile.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/mod/modtag.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/mod/modproperties.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/it/itfile.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/it/itproperties.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/s3m/s3mfile.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/s3m/s3mproperties.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/xm/xmfile.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/xm/xmproperties.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/dsf/dsffile.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/dsf/dsfproperties.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/dsdiff/dsdifffile.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/dsdiff/dsdiffproperties.h"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/taglib/taglib/dsdiff/dsdiffdiintag.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/taglib/taglib-targets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/taglib/taglib-targets.cmake"
         "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/build_o0/taglib/taglib/CMakeFiles/Export/lib/cmake/taglib/taglib-targets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/taglib/taglib-targets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/taglib/taglib-targets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/taglib" TYPE FILE FILES "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/build_o0/taglib/taglib/CMakeFiles/Export/lib/cmake/taglib/taglib-targets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/taglib" TYPE FILE FILES "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/build_o0/taglib/taglib/CMakeFiles/Export/lib/cmake/taglib/taglib-targets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/taglib" TYPE FILE FILES
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/build_o0/taglib/taglib-config.cmake"
    "/mnt/e/srtp/Software_Vulnerality/diffcomp/ncmdump/build_o0/taglib/taglib-config-version.cmake"
    )
endif()

