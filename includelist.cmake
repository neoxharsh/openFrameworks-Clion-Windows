
set(OF_INCLUDE_DIR ${OF_MAIN_DIR}/libs/openFrameworks)
include_directories(${OF_INCLUDE_DIR})
include_directories(${OF_INCLUDE_DIR}/gl)
include_directories(${OF_INCLUDE_DIR}/3d)
include_directories(${OF_INCLUDE_DIR}/app)
include_directories(${OF_INCLUDE_DIR}/communication)
include_directories(${OF_INCLUDE_DIR}/events)
include_directories(${OF_INCLUDE_DIR}/graphics)
include_directories(${OF_INCLUDE_DIR}/math)
include_directories(${OF_INCLUDE_DIR}/sound)
include_directories(${OF_INCLUDE_DIR}/types)
include_directories(${OF_INCLUDE_DIR}/utils)
include_directories(${OF_INCLUDE_DIR}/video)


set(BOOST_DIR ${OF_MAIN_DIR}/libs/boost)
set(FMODEX_DIR ${OF_MAIN_DIR}/libs/fmodex)
set(FREEIMAGE_DIR ${OF_MAIN_DIR}/libs/FreeImage)
set(FREETYPE_DIR ${OF_MAIN_DIR}/libs/Freetype)
set(GLFW_DIR ${OF_MAIN_DIR}/libs/glfw)
set(POCO_DIR ${OF_MAIN_DIR}/libs/poco)
set(QUICKTIME_DIR ${OF_MAIN_DIR}/libs/quicktime)
set(RTAUDIO_DIR ${OF_MAIN_DIR}/libs/rtAudio)
set(TESS2_DIR ${OF_MAIN_DIR}/libs/tess2)
set(UTF8CPP_DIR ${OF_MAIN_DIR}/libs/utf8cpp)
set(VIDEOINPUT_DIR ${OF_MAIN_DIR}/libs/videoInput)
set(GLU_DIR ${OF_MAIN_DIR}/libs/glu)


include_directories(${BOOST_DIR}/include)
include_directories(${FMODEX_DIR}/include)
include_directories(${FREEIMAGE_DIR}/include)
include_directories(${FREETYPE_DIR}/include)
include_directories(${GLFW_DIR}/include)
include_directories(${GLU_DIR}/include)
include_directories(${POCO_DIR}/include)
include_directories(${QUICKTIME_DIR}/include)
include_directories(${RTAUDIO_DIR}/include)
include_directories(${TESS2_DIR}/include)
include_directories(${UTF8CPP_DIR}/include)
include_directories(${VIDEOINPUT_DIR}/include)


link_directories(${FMODEX_DIR}/lib/msys2)
link_directories(${GLFW_DIR}/lib/msys2)
link_directories(${RTAUDIO_DIR}/lib/msys2)
link_directories(${TESS2_DIR}/lib/msys2)
link_directories(${VIDEOINPUT_DIR}/lib/msys2)




link_directories(${OF_MAIN_DIR}/libs/openFrameworksCompiled/lib/msys2)

link_libraries(openFrameworks pthread fmodex fmodexL glfw3 rtaudio tess2 videoinput cairo z ssl crypto glew32
        PocoNetSSL PocoNet PocoCrypto PocoUtil PocoXML PocoFoundation PocoZip PocoJSON PocoData
        PocoDataSQLite ksuser opengl32 gdi32 msimg32 glu32 dsound winmm strmiids uuid ole32
        oleaut32 setupapi wsock32 ws2_32 Iphlpapi Comdlg32 freeimage boost_filesystem-mt
        boost_system-mt freetype cairo
        )